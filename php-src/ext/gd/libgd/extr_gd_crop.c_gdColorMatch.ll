; ModuleID = '/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gd_crop.c_gdColorMatch.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gd_crop.c_gdColorMatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, float)* @gdColorMatch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gdColorMatch(i32 %0, i32 %1, i32 %2, float %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca float, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store float %3, float* %8, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @gdImageRed(i32 %14, i32 %15)
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @gdImageRed(i32 %17, i32 %18)
  %20 = sub nsw i32 %16, %19
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @gdImageGreen(i32 %21, i32 %22)
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @gdImageGreen(i32 %24, i32 %25)
  %27 = sub nsw i32 %23, %26
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @gdImageBlue(i32 %28, i32 %29)
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @gdImageBlue(i32 %31, i32 %32)
  %34 = sub nsw i32 %30, %33
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @gdImageAlpha(i32 %35, i32 %36)
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @gdImageAlpha(i32 %38, i32 %39)
  %41 = sub nsw i32 %37, %40
  store i32 %41, i32* %12, align 4
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* %9, align 4
  %44 = mul nsw i32 %42, %43
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* %10, align 4
  %47 = mul nsw i32 %45, %46
  %48 = add nsw i32 %44, %47
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* %11, align 4
  %51 = mul nsw i32 %49, %50
  %52 = add nsw i32 %48, %51
  %53 = load i32, i32* %12, align 4
  %54 = load i32, i32* %12, align 4
  %55 = mul nsw i32 %53, %54
  %56 = add nsw i32 %52, %55
  store i32 %56, i32* %13, align 4
  %57 = load i32, i32* %13, align 4
  %58 = sitofp i32 %57 to double
  %59 = fmul double 1.000000e+02, %58
  %60 = fdiv double %59, 1.950750e+05
  %61 = load float, float* %8, align 4
  %62 = fpext float %61 to double
  %63 = fcmp olt double %60, %62
  %64 = zext i1 %63 to i32
  ret i32 %64
}

declare dso_local i32 @gdImageRed(i32, i32) #1

declare dso_local i32 @gdImageGreen(i32, i32) #1

declare dso_local i32 @gdImageBlue(i32, i32) #1

declare dso_local i32 @gdImageAlpha(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
