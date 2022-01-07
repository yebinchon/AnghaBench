; ModuleID = '/home/carl/AnghaBench/mpv/input/extr_input.c_mp_input_get_mouse_event_counter.c'
source_filename = "/home/carl/AnghaBench/mpv/input/extr_input.c_mp_input_get_mouse_event_counter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_ctx = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mp_input_get_mouse_event_counter(%struct.input_ctx* %0) #0 {
  %2 = alloca %struct.input_ctx*, align 8
  %3 = alloca i32, align 4
  store %struct.input_ctx* %0, %struct.input_ctx** %2, align 8
  %4 = load %struct.input_ctx*, %struct.input_ctx** %2, align 8
  %5 = call i32 @input_lock(%struct.input_ctx* %4)
  %6 = load %struct.input_ctx*, %struct.input_ctx** %2, align 8
  %7 = load %struct.input_ctx*, %struct.input_ctx** %2, align 8
  %8 = getelementptr inbounds %struct.input_ctx, %struct.input_ctx* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.input_ctx*, %struct.input_ctx** %2, align 8
  %11 = getelementptr inbounds %struct.input_ctx, %struct.input_ctx* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @mp_input_test_mouse_active(%struct.input_ctx* %6, i32 %9, i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %1
  %16 = load %struct.input_ctx*, %struct.input_ctx** %2, align 8
  %17 = getelementptr inbounds %struct.input_ctx, %struct.input_ctx* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %17, align 4
  br label %20

20:                                               ; preds = %15, %1
  %21 = load %struct.input_ctx*, %struct.input_ctx** %2, align 8
  %22 = getelementptr inbounds %struct.input_ctx, %struct.input_ctx* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %3, align 4
  %24 = load %struct.input_ctx*, %struct.input_ctx** %2, align 8
  %25 = call i32 @input_unlock(%struct.input_ctx* %24)
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

declare dso_local i32 @input_lock(%struct.input_ctx*) #1

declare dso_local i64 @mp_input_test_mouse_active(%struct.input_ctx*, i32, i32) #1

declare dso_local i32 @input_unlock(%struct.input_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
