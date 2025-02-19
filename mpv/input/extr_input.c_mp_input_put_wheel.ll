; ModuleID = '/home/carl/AnghaBench/mpv/input/extr_input.c_mp_input_put_wheel.c'
source_filename = "/home/carl/AnghaBench/mpv/input/extr_input.c_mp_input_put_wheel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_ctx = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mp_input_put_wheel(%struct.input_ctx* %0, i32 %1, double %2) #0 {
  %4 = alloca %struct.input_ctx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  store %struct.input_ctx* %0, %struct.input_ctx** %4, align 8
  store i32 %1, i32* %5, align 4
  store double %2, double* %6, align 8
  %7 = load double, double* %6, align 8
  %8 = fcmp oeq double %7, 0.000000e+00
  br i1 %8, label %9, label %10

9:                                                ; preds = %3
  br label %19

10:                                               ; preds = %3
  %11 = load %struct.input_ctx*, %struct.input_ctx** %4, align 8
  %12 = call i32 @input_lock(%struct.input_ctx* %11)
  %13 = load %struct.input_ctx*, %struct.input_ctx** %4, align 8
  %14 = load i32, i32* %5, align 4
  %15 = load double, double* %6, align 8
  %16 = call i32 @mp_input_feed_key(%struct.input_ctx* %13, i32 %14, double %15, i32 0)
  %17 = load %struct.input_ctx*, %struct.input_ctx** %4, align 8
  %18 = call i32 @input_unlock(%struct.input_ctx* %17)
  br label %19

19:                                               ; preds = %10, %9
  ret void
}

declare dso_local i32 @input_lock(%struct.input_ctx*) #1

declare dso_local i32 @mp_input_feed_key(%struct.input_ctx*, i32, double, i32) #1

declare dso_local i32 @input_unlock(%struct.input_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
