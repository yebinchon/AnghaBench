; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/linux-pulseaudio/extr_pulse-wrapper.c_pulse_get_source_info_list.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/linux-pulseaudio/extr_pulse-wrapper.c_pulse_get_source_info_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pulse_context = common dso_local global i32 0, align 4
@PA_OPERATION_RUNNING = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pulse_get_source_info_list(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %7 = call i64 (...) @pulse_context_ready()
  %8 = icmp slt i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %32

10:                                               ; preds = %2
  %11 = call i32 (...) @pulse_lock()
  %12 = load i32, i32* @pulse_context, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load i8*, i8** %5, align 8
  %15 = call i32* @pa_context_get_source_info_list(i32 %12, i32 %13, i8* %14)
  store i32* %15, i32** %6, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %10
  %19 = call i32 (...) @pulse_unlock()
  store i32 -1, i32* %3, align 4
  br label %32

20:                                               ; preds = %10
  br label %21

21:                                               ; preds = %26, %20
  %22 = load i32*, i32** %6, align 8
  %23 = call i64 @pa_operation_get_state(i32* %22)
  %24 = load i64, i64* @PA_OPERATION_RUNNING, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = call i32 (...) @pulse_wait()
  br label %21

28:                                               ; preds = %21
  %29 = load i32*, i32** %6, align 8
  %30 = call i32 @pa_operation_unref(i32* %29)
  %31 = call i32 (...) @pulse_unlock()
  store i32 0, i32* %3, align 4
  br label %32

32:                                               ; preds = %28, %18, %9
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i64 @pulse_context_ready(...) #1

declare dso_local i32 @pulse_lock(...) #1

declare dso_local i32* @pa_context_get_source_info_list(i32, i32, i8*) #1

declare dso_local i32 @pulse_unlock(...) #1

declare dso_local i64 @pa_operation_get_state(i32*) #1

declare dso_local i32 @pulse_wait(...) #1

declare dso_local i32 @pa_operation_unref(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
