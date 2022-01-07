; ModuleID = '/home/carl/AnghaBench/mpv/audio/out/extr_ao_pulse.c_cork.c'
source_filename = "/home/carl/AnghaBench/mpv/audio/out/extr_ao_pulse.c_cork.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ao = type { %struct.priv* }
%struct.priv = type { i64, i32, i32 }

@success_cb = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"pa_stream_cork() failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ao*, i32)* @cork to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cork(%struct.ao* %0, i32 %1) #0 {
  %3 = alloca %struct.ao*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.priv*, align 8
  store %struct.ao* %0, %struct.ao** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.ao*, %struct.ao** %3, align 8
  %7 = getelementptr inbounds %struct.ao, %struct.ao* %6, i32 0, i32 0
  %8 = load %struct.priv*, %struct.priv** %7, align 8
  store %struct.priv* %8, %struct.priv** %5, align 8
  %9 = load %struct.priv*, %struct.priv** %5, align 8
  %10 = getelementptr inbounds %struct.priv, %struct.priv* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @pa_threaded_mainloop_lock(i32 %11)
  %13 = load %struct.priv*, %struct.priv** %5, align 8
  %14 = getelementptr inbounds %struct.priv, %struct.priv* %13, i32 0, i32 0
  store i64 0, i64* %14, align 8
  %15 = load %struct.priv*, %struct.priv** %5, align 8
  %16 = load %struct.priv*, %struct.priv** %5, align 8
  %17 = getelementptr inbounds %struct.priv, %struct.priv* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @success_cb, align 4
  %21 = load %struct.ao*, %struct.ao** %3, align 8
  %22 = call i32 @pa_stream_cork(i32 %18, i32 %19, i32 %20, %struct.ao* %21)
  %23 = call i32 @waitop(%struct.priv* %15, i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %2
  %26 = load %struct.priv*, %struct.priv** %5, align 8
  %27 = getelementptr inbounds %struct.priv, %struct.priv* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %25, %2
  %31 = call i32 @GENERIC_ERR_MSG(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %32

32:                                               ; preds = %30, %25
  ret void
}

declare dso_local i32 @pa_threaded_mainloop_lock(i32) #1

declare dso_local i32 @waitop(%struct.priv*, i32) #1

declare dso_local i32 @pa_stream_cork(i32, i32, i32, %struct.ao*) #1

declare dso_local i32 @GENERIC_ERR_MSG(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
