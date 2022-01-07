; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/audio-monitoring/pulse/extr_pulseaudio-wrapper.c_pulseaudio_get_source_info.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/audio-monitoring/pulse/extr_pulseaudio-wrapper.c_pulseaudio_get_source_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pulseaudio_context = common dso_local global i32 0, align 4
@PA_OPERATION_RUNNING = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pulseaudio_get_source_info(i32 %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = call i64 (...) @pulseaudio_context_ready()
  %10 = icmp slt i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %35

12:                                               ; preds = %3
  %13 = call i32 (...) @pulseaudio_lock()
  %14 = load i32, i32* @pulseaudio_context, align 4
  %15 = load i8*, i8** %6, align 8
  %16 = load i32, i32* %5, align 4
  %17 = load i8*, i8** %7, align 8
  %18 = call i32* @pa_context_get_source_info_by_name(i32 %14, i8* %15, i32 %16, i8* %17)
  store i32* %18, i32** %8, align 8
  %19 = load i32*, i32** %8, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %12
  %22 = call i32 (...) @pulseaudio_unlock()
  store i32 -1, i32* %4, align 4
  br label %35

23:                                               ; preds = %12
  br label %24

24:                                               ; preds = %29, %23
  %25 = load i32*, i32** %8, align 8
  %26 = call i64 @pa_operation_get_state(i32* %25)
  %27 = load i64, i64* @PA_OPERATION_RUNNING, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = call i32 (...) @pulseaudio_wait()
  br label %24

31:                                               ; preds = %24
  %32 = load i32*, i32** %8, align 8
  %33 = call i32 @pa_operation_unref(i32* %32)
  %34 = call i32 (...) @pulseaudio_unlock()
  store i32 0, i32* %4, align 4
  br label %35

35:                                               ; preds = %31, %21, %11
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

declare dso_local i64 @pulseaudio_context_ready(...) #1

declare dso_local i32 @pulseaudio_lock(...) #1

declare dso_local i32* @pa_context_get_source_info_by_name(i32, i8*, i32, i8*) #1

declare dso_local i32 @pulseaudio_unlock(...) #1

declare dso_local i64 @pa_operation_get_state(i32*) #1

declare dso_local i32 @pulseaudio_wait(...) #1

declare dso_local i32 @pa_operation_unref(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
