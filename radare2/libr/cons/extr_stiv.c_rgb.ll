; ModuleID = '/home/carl/AnghaBench/radare2/libr/cons/extr_stiv.c_rgb.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/cons/extr_stiv.c_rgb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @rgb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rgb(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %4, align 4
  %8 = call i32 @R_DIM(i32 %7, i32 0, i32 255)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %5, align 4
  %10 = call i32 @R_DIM(i32 %9, i32 0, i32 255)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %6, align 4
  %12 = call i32 @R_DIM(i32 %11, i32 0, i32 255)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %4, align 4
  %14 = sitofp i32 %13 to double
  %15 = fdiv double %14, 5.060000e+01
  %16 = fptosi double %15 to i32
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %5, align 4
  %18 = sitofp i32 %17 to double
  %19 = fdiv double %18, 5.060000e+01
  %20 = fptosi double %19 to i32
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %6, align 4
  %22 = sitofp i32 %21 to double
  %23 = fdiv double %22, 5.060000e+01
  %24 = fptosi double %23 to i32
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %4, align 4
  %26 = mul nsw i32 %25, 36
  %27 = add nsw i32 16, %26
  %28 = load i32, i32* %5, align 4
  %29 = mul nsw i32 %28, 6
  %30 = add nsw i32 %27, %29
  %31 = load i32, i32* %6, align 4
  %32 = add nsw i32 %30, %31
  ret i32 %32
}

declare dso_local i32 @R_DIM(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
