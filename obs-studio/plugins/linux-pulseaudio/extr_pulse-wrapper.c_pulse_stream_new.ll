; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/linux-pulseaudio/extr_pulse-wrapper.c_pulse_stream_new.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/linux-pulseaudio/extr_pulse-wrapper.c_pulse_stream_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pulse_context = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @pulse_stream_new(i8* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = call i64 (...) @pulse_context_ready()
  %11 = icmp slt i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  store i32* null, i32** %4, align 8
  br label %26

13:                                               ; preds = %3
  %14 = call i32 (...) @pulse_lock()
  %15 = call i32* (...) @pulse_properties()
  store i32* %15, i32** %8, align 8
  %16 = load i32, i32* @pulse_context, align 4
  %17 = load i8*, i8** %5, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = load i32*, i32** %7, align 8
  %20 = load i32*, i32** %8, align 8
  %21 = call i32* @pa_stream_new_with_proplist(i32 %16, i8* %17, i32* %18, i32* %19, i32* %20)
  store i32* %21, i32** %9, align 8
  %22 = load i32*, i32** %8, align 8
  %23 = call i32 @pa_proplist_free(i32* %22)
  %24 = call i32 (...) @pulse_unlock()
  %25 = load i32*, i32** %9, align 8
  store i32* %25, i32** %4, align 8
  br label %26

26:                                               ; preds = %13, %12
  %27 = load i32*, i32** %4, align 8
  ret i32* %27
}

declare dso_local i64 @pulse_context_ready(...) #1

declare dso_local i32 @pulse_lock(...) #1

declare dso_local i32* @pulse_properties(...) #1

declare dso_local i32* @pa_stream_new_with_proplist(i32, i8*, i32*, i32*, i32*) #1

declare dso_local i32 @pa_proplist_free(i32*) #1

declare dso_local i32 @pulse_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
