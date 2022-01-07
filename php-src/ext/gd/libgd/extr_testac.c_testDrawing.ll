; ModuleID = '/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_testac.c_testDrawing.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_testac.c_testDrawing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"wb\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @testDrawing(i32 %0, double %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store i32 %0, i32* %6, align 4
  store double %1, double* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call double @gdImageSX(i32 %13)
  %15 = load double, double* %7, align 8
  %16 = fmul double %14, %15
  %17 = fptosi double %16 to i32
  %18 = load i32, i32* %6, align 4
  %19 = call double @gdImageSY(i32 %18)
  %20 = load double, double* %7, align 8
  %21 = fmul double %19, %20
  %22 = fptosi double %21 to i32
  %23 = call i32 @gdImageCreateTrueColor(i32 %17, i32 %22)
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %11, align 4
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @gdImageAlphaBlending(i32 %24, i32 %25)
  %27 = load i32, i32* %11, align 4
  %28 = load i32, i32* %6, align 4
  %29 = call double @gdImageSX(i32 %28)
  %30 = load double, double* %7, align 8
  %31 = fmul double %29, %30
  %32 = fdiv double %31, 2.000000e+00
  %33 = fptosi double %32 to i32
  %34 = load i32, i32* %6, align 4
  %35 = call double @gdImageSY(i32 %34)
  %36 = load double, double* %7, align 8
  %37 = fmul double %35, %36
  %38 = fdiv double %37, 2.000000e+00
  %39 = fptosi double %38 to i32
  %40 = call i32 @gdTrueColor(i32 192, i32 192, i32 255)
  %41 = call i32 @gdImageFill(i32 %27, i32 %33, i32 %39, i32 %40)
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = call double @gdImageSX(i32 %44)
  %46 = load double, double* %7, align 8
  %47 = fmul double %45, %46
  %48 = fptosi double %47 to i32
  %49 = load i32, i32* %6, align 4
  %50 = call double @gdImageSY(i32 %49)
  %51 = load double, double* %7, align 8
  %52 = fmul double %50, %51
  %53 = fptosi double %52 to i32
  %54 = load i32, i32* %6, align 4
  %55 = call double @gdImageSX(i32 %54)
  %56 = load i32, i32* %6, align 4
  %57 = call double @gdImageSY(i32 %56)
  %58 = call i32 @gdImageCopyResampled(i32 %42, i32 %43, i32 0, i32 0, i32 0, i32 0, i32 %48, i32 %53, double %55, double %57)
  %59 = load i8*, i8** %10, align 8
  %60 = call i32* @fopen(i8* %59, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %60, i32** %12, align 8
  %61 = load i32, i32* %11, align 4
  %62 = load i32, i32* %8, align 4
  %63 = icmp ne i32 %62, 0
  %64 = xor i1 %63, true
  %65 = zext i1 %64 to i32
  %66 = call i32 @gdImageSaveAlpha(i32 %61, i32 %65)
  %67 = load i32, i32* %9, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %5
  %70 = load i32, i32* %11, align 4
  %71 = call i32 @gdImageTrueColorToPalette(i32 %70, i32 1, i32 256)
  br label %72

72:                                               ; preds = %69, %5
  %73 = load i32, i32* %11, align 4
  %74 = load i32*, i32** %12, align 8
  %75 = call i32 @gdImagePng(i32 %73, i32* %74)
  %76 = load i32*, i32** %12, align 8
  %77 = call i32 @fclose(i32* %76)
  %78 = load i32, i32* %11, align 4
  %79 = call i32 @gdImageDestroy(i32 %78)
  ret void
}

declare dso_local i32 @gdImageCreateTrueColor(i32, i32) #1

declare dso_local double @gdImageSX(i32) #1

declare dso_local double @gdImageSY(i32) #1

declare dso_local i32 @gdImageAlphaBlending(i32, i32) #1

declare dso_local i32 @gdImageFill(i32, i32, i32, i32) #1

declare dso_local i32 @gdTrueColor(i32, i32, i32) #1

declare dso_local i32 @gdImageCopyResampled(i32, i32, i32, i32, i32, i32, i32, i32, double, double) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @gdImageSaveAlpha(i32, i32) #1

declare dso_local i32 @gdImageTrueColorToPalette(i32, i32, i32) #1

declare dso_local i32 @gdImagePng(i32, i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @gdImageDestroy(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
