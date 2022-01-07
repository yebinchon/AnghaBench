; ModuleID = '/home/carl/AnghaBench/mpv/audio/out/extr_ao_pulse.c_waitop.c'
source_filename = "/home/carl/AnghaBench/mpv/audio/out/extr_ao_pulse.c_waitop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.priv = type { i32 }

@PA_OPERATION_RUNNING = common dso_local global i64 0, align 8
@PA_OPERATION_DONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.priv*, i32*)* @waitop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @waitop(%struct.priv* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.priv*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  store %struct.priv* %0, %struct.priv** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load i32*, i32** %5, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %2
  %10 = load %struct.priv*, %struct.priv** %4, align 8
  %11 = getelementptr inbounds %struct.priv, %struct.priv* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @pa_threaded_mainloop_unlock(i32 %12)
  store i32 0, i32* %3, align 4
  br label %39

14:                                               ; preds = %2
  %15 = load i32*, i32** %5, align 8
  %16 = call i64 @pa_operation_get_state(i32* %15)
  store i64 %16, i64* %6, align 8
  br label %17

17:                                               ; preds = %21, %14
  %18 = load i64, i64* %6, align 8
  %19 = load i64, i64* @PA_OPERATION_RUNNING, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %28

21:                                               ; preds = %17
  %22 = load %struct.priv*, %struct.priv** %4, align 8
  %23 = getelementptr inbounds %struct.priv, %struct.priv* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @pa_threaded_mainloop_wait(i32 %24)
  %26 = load i32*, i32** %5, align 8
  %27 = call i64 @pa_operation_get_state(i32* %26)
  store i64 %27, i64* %6, align 8
  br label %17

28:                                               ; preds = %17
  %29 = load i32*, i32** %5, align 8
  %30 = call i32 @pa_operation_unref(i32* %29)
  %31 = load %struct.priv*, %struct.priv** %4, align 8
  %32 = getelementptr inbounds %struct.priv, %struct.priv* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @pa_threaded_mainloop_unlock(i32 %33)
  %35 = load i64, i64* %6, align 8
  %36 = load i64, i64* @PA_OPERATION_DONE, align 8
  %37 = icmp eq i64 %35, %36
  %38 = zext i1 %37 to i32
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %28, %9
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @pa_threaded_mainloop_unlock(i32) #1

declare dso_local i64 @pa_operation_get_state(i32*) #1

declare dso_local i32 @pa_threaded_mainloop_wait(i32) #1

declare dso_local i32 @pa_operation_unref(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
