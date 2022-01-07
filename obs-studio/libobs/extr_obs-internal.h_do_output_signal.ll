; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-internal.h_do_output_signal.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-internal.h_do_output_signal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obs_output = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.calldata = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"output\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.obs_output*, i8*)* @do_output_signal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_output_signal(%struct.obs_output* %0, i8* %1) #0 {
  %3 = alloca %struct.obs_output*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.calldata, align 4
  store %struct.obs_output* %0, %struct.obs_output** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = bitcast %struct.calldata* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %6, i8 0, i64 4, i1 false)
  %7 = load %struct.obs_output*, %struct.obs_output** %3, align 8
  %8 = call i32 @calldata_set_ptr(%struct.calldata* %5, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), %struct.obs_output* %7)
  %9 = load %struct.obs_output*, %struct.obs_output** %3, align 8
  %10 = getelementptr inbounds %struct.obs_output, %struct.obs_output* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i8*, i8** %4, align 8
  %14 = call i32 @signal_handler_signal(i32 %12, i8* %13, %struct.calldata* %5)
  %15 = call i32 @calldata_free(%struct.calldata* %5)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @calldata_set_ptr(%struct.calldata*, i8*, %struct.obs_output*) #2

declare dso_local i32 @signal_handler_signal(i32, i8*, %struct.calldata*) #2

declare dso_local i32 @calldata_free(%struct.calldata*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
