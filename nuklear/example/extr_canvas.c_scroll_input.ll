; ModuleID = '/home/carl/AnghaBench/nuklear/example/extr_canvas.c_scroll_input.c'
source_filename = "/home/carl/AnghaBench/nuklear/example/extr_canvas.c_scroll_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nk_context = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, double, double)* @scroll_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scroll_input(i32* %0, double %1, double %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  store i32* %0, i32** %4, align 8
  store double %1, double* %5, align 8
  store double %2, double* %6, align 8
  %7 = load double, double* %5, align 8
  %8 = call i32 @UNUSED(double %7)
  %9 = load i32*, i32** %4, align 8
  %10 = call i64 @glfwGetWindowUserPointer(i32* %9)
  %11 = inttoptr i64 %10 to %struct.nk_context*
  %12 = load double, double* %6, align 8
  %13 = fptrunc double %12 to float
  %14 = call i32 @nk_vec2(i32 0, float %13)
  %15 = call i32 @nk_input_scroll(%struct.nk_context* %11, i32 %14)
  ret void
}

declare dso_local i32 @UNUSED(double) #1

declare dso_local i32 @nk_input_scroll(%struct.nk_context*, i32) #1

declare dso_local i64 @glfwGetWindowUserPointer(i32*) #1

declare dso_local i32 @nk_vec2(i32, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
