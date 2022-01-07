; ModuleID = '/home/carl/AnghaBench/openpilot/phonelibs/nanovg/extr_stb_image.h_stbi__loadf_main.c'
source_filename = "/home/carl/AnghaBench/openpilot/phonelibs/nanovg/extr_stb_image.h_stbi__loadf_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [19 x i8] c"unknown image type\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"Image not of any known type, or corrupt\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (float* (i32*, i32*, i32*, i32*, i32)* @stbi__loadf_main to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal float* @stbi__loadf_main(i32* %0, i32* %1, i32* %2, i32* %3, i32 %4) #0 {
  %6 = alloca float*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca float*, align 8
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = load i32*, i32** %7, align 8
  %15 = call i64 @stbi__hdr_test(i32* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %35

17:                                               ; preds = %5
  %18 = load i32*, i32** %7, align 8
  %19 = load i32*, i32** %8, align 8
  %20 = load i32*, i32** %9, align 8
  %21 = load i32*, i32** %10, align 8
  %22 = load i32, i32* %11, align 4
  %23 = call float* @stbi__hdr_load(i32* %18, i32* %19, i32* %20, i32* %21, i32 %22)
  store float* %23, float** %13, align 8
  %24 = load float*, float** %13, align 8
  %25 = icmp ne float* %24, null
  br i1 %25, label %26, label %33

26:                                               ; preds = %17
  %27 = load float*, float** %13, align 8
  %28 = load i32*, i32** %8, align 8
  %29 = load i32*, i32** %9, align 8
  %30 = load i32*, i32** %10, align 8
  %31 = load i32, i32* %11, align 4
  %32 = call i32 @stbi__float_postprocess(float* %27, i32* %28, i32* %29, i32* %30, i32 %31)
  br label %33

33:                                               ; preds = %26, %17
  %34 = load float*, float** %13, align 8
  store float* %34, float** %6, align 8
  br label %62

35:                                               ; preds = %5
  %36 = load i32*, i32** %7, align 8
  %37 = load i32*, i32** %8, align 8
  %38 = load i32*, i32** %9, align 8
  %39 = load i32*, i32** %10, align 8
  %40 = load i32, i32* %11, align 4
  %41 = call i8* @stbi__load_flip(i32* %36, i32* %37, i32* %38, i32* %39, i32 %40)
  store i8* %41, i8** %12, align 8
  %42 = load i8*, i8** %12, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %60

44:                                               ; preds = %35
  %45 = load i8*, i8** %12, align 8
  %46 = load i32*, i32** %8, align 8
  %47 = load i32, i32* %46, align 4
  %48 = load i32*, i32** %9, align 8
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %11, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %44
  %53 = load i32, i32* %11, align 4
  br label %57

54:                                               ; preds = %44
  %55 = load i32*, i32** %10, align 8
  %56 = load i32, i32* %55, align 4
  br label %57

57:                                               ; preds = %54, %52
  %58 = phi i32 [ %53, %52 ], [ %56, %54 ]
  %59 = call float* @stbi__ldr_to_hdr(i8* %45, i32 %47, i32 %49, i32 %58)
  store float* %59, float** %6, align 8
  br label %62

60:                                               ; preds = %35
  %61 = call float* @stbi__errpf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  store float* %61, float** %6, align 8
  br label %62

62:                                               ; preds = %60, %57, %33
  %63 = load float*, float** %6, align 8
  ret float* %63
}

declare dso_local i64 @stbi__hdr_test(i32*) #1

declare dso_local float* @stbi__hdr_load(i32*, i32*, i32*, i32*, i32) #1

declare dso_local i32 @stbi__float_postprocess(float*, i32*, i32*, i32*, i32) #1

declare dso_local i8* @stbi__load_flip(i32*, i32*, i32*, i32*, i32) #1

declare dso_local float* @stbi__ldr_to_hdr(i8*, i32, i32, i32) #1

declare dso_local float* @stbi__errpf(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
