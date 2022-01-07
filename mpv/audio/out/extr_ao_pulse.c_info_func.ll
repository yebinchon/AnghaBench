; ModuleID = '/home/carl/AnghaBench/mpv/audio/out/extr_ao_pulse.c_info_func.c'
source_filename = "/home/carl/AnghaBench/mpv/audio/out/extr_ao_pulse.c_info_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pa_context = type { i32 }
%struct.pa_sink_input_info = type { i32 }
%struct.ao = type { %struct.priv* }
%struct.priv = type { i32, %struct.pa_sink_input_info }

@.str = private unnamed_addr constant [30 x i8] c"Failed to get sink input info\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pa_context*, %struct.pa_sink_input_info*, i32, i8*)* @info_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @info_func(%struct.pa_context* %0, %struct.pa_sink_input_info* %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.pa_context*, align 8
  %6 = alloca %struct.pa_sink_input_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.ao*, align 8
  %10 = alloca %struct.priv*, align 8
  store %struct.pa_context* %0, %struct.pa_context** %5, align 8
  store %struct.pa_sink_input_info* %1, %struct.pa_sink_input_info** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %11 = load i8*, i8** %8, align 8
  %12 = bitcast i8* %11 to %struct.ao*
  store %struct.ao* %12, %struct.ao** %9, align 8
  %13 = load %struct.ao*, %struct.ao** %9, align 8
  %14 = getelementptr inbounds %struct.ao, %struct.ao* %13, i32 0, i32 0
  %15 = load %struct.priv*, %struct.priv** %14, align 8
  store %struct.priv* %15, %struct.priv** %10, align 8
  %16 = load i32, i32* %7, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = call i32 @GENERIC_ERR_MSG(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %34

20:                                               ; preds = %4
  %21 = load %struct.pa_sink_input_info*, %struct.pa_sink_input_info** %6, align 8
  %22 = icmp ne %struct.pa_sink_input_info* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %20
  br label %34

24:                                               ; preds = %20
  %25 = load %struct.priv*, %struct.priv** %10, align 8
  %26 = getelementptr inbounds %struct.priv, %struct.priv* %25, i32 0, i32 1
  %27 = load %struct.pa_sink_input_info*, %struct.pa_sink_input_info** %6, align 8
  %28 = bitcast %struct.pa_sink_input_info* %26 to i8*
  %29 = bitcast %struct.pa_sink_input_info* %27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %28, i8* align 4 %29, i64 4, i1 false)
  %30 = load %struct.priv*, %struct.priv** %10, align 8
  %31 = getelementptr inbounds %struct.priv, %struct.priv* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @pa_threaded_mainloop_signal(i32 %32, i32 0)
  br label %34

34:                                               ; preds = %24, %23, %18
  ret void
}

declare dso_local i32 @GENERIC_ERR_MSG(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @pa_threaded_mainloop_signal(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
