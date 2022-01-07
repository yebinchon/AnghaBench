; ModuleID = '/home/carl/AnghaBench/nuklear/example/extr_stb_image.h_stbi__pnm_info.c'
source_filename = "/home/carl/AnghaBench/nuklear/example/extr_stb_image.h_stbi__pnm_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"max value > 255\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"PPM image not 8-bit\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*, i32*)* @stbi__pnm_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stbi__pnm_info(i32* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = call i32 @stbi__rewind(i32* %14)
  %16 = load i32*, i32** %6, align 8
  %17 = call i64 @stbi__get8(i32* %16)
  %18 = trunc i64 %17 to i8
  store i8 %18, i8* %12, align 1
  %19 = load i32*, i32** %6, align 8
  %20 = call i64 @stbi__get8(i32* %19)
  %21 = trunc i64 %20 to i8
  store i8 %21, i8* %13, align 1
  %22 = load i8, i8* %12, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp ne i32 %23, 80
  br i1 %24, label %33, label %25

25:                                               ; preds = %4
  %26 = load i8, i8* %13, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp ne i32 %27, 53
  br i1 %28, label %29, label %36

29:                                               ; preds = %25
  %30 = load i8, i8* %13, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp ne i32 %31, 54
  br i1 %32, label %33, label %36

33:                                               ; preds = %29, %4
  %34 = load i32*, i32** %6, align 8
  %35 = call i32 @stbi__rewind(i32* %34)
  store i32 0, i32* %5, align 4
  br label %65

36:                                               ; preds = %29, %25
  %37 = load i8, i8* %13, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %38, 54
  %40 = zext i1 %39 to i64
  %41 = select i1 %39, i32 3, i32 1
  %42 = load i32*, i32** %9, align 8
  store i32 %41, i32* %42, align 4
  %43 = load i32*, i32** %6, align 8
  %44 = call i64 @stbi__get8(i32* %43)
  %45 = trunc i64 %44 to i8
  store i8 %45, i8* %11, align 1
  %46 = load i32*, i32** %6, align 8
  %47 = call i32 @stbi__pnm_skip_whitespace(i32* %46, i8* %11)
  %48 = load i32*, i32** %6, align 8
  %49 = call i32 @stbi__pnm_getinteger(i32* %48, i8* %11)
  %50 = load i32*, i32** %7, align 8
  store i32 %49, i32* %50, align 4
  %51 = load i32*, i32** %6, align 8
  %52 = call i32 @stbi__pnm_skip_whitespace(i32* %51, i8* %11)
  %53 = load i32*, i32** %6, align 8
  %54 = call i32 @stbi__pnm_getinteger(i32* %53, i8* %11)
  %55 = load i32*, i32** %8, align 8
  store i32 %54, i32* %55, align 4
  %56 = load i32*, i32** %6, align 8
  %57 = call i32 @stbi__pnm_skip_whitespace(i32* %56, i8* %11)
  %58 = load i32*, i32** %6, align 8
  %59 = call i32 @stbi__pnm_getinteger(i32* %58, i8* %11)
  store i32 %59, i32* %10, align 4
  %60 = load i32, i32* %10, align 4
  %61 = icmp sgt i32 %60, 255
  br i1 %61, label %62, label %64

62:                                               ; preds = %36
  %63 = call i32 @stbi__err(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  store i32 %63, i32* %5, align 4
  br label %65

64:                                               ; preds = %36
  store i32 1, i32* %5, align 4
  br label %65

65:                                               ; preds = %64, %62, %33
  %66 = load i32, i32* %5, align 4
  ret i32 %66
}

declare dso_local i32 @stbi__rewind(i32*) #1

declare dso_local i64 @stbi__get8(i32*) #1

declare dso_local i32 @stbi__pnm_skip_whitespace(i32*, i8*) #1

declare dso_local i32 @stbi__pnm_getinteger(i32*, i8*) #1

declare dso_local i32 @stbi__err(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
