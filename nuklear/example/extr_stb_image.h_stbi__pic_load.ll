; ModuleID = '/home/carl/AnghaBench/nuklear/example/extr_stb_image.h_stbi__pic_load.c'
source_filename = "/home/carl/AnghaBench/nuklear/example/extr_stb_image.h_stbi__pic_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"bad file\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"file too short (pic header)\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"too large\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"Image too large to decode\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i32*, i32*, i32)* @stbi__pic_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @stbi__pic_load(i32* %0, i32* %1, i32* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %13, align 4
  br label %16

16:                                               ; preds = %22, %5
  %17 = load i32, i32* %13, align 4
  %18 = icmp slt i32 %17, 92
  br i1 %18, label %19, label %25

19:                                               ; preds = %16
  %20 = load i32*, i32** %7, align 8
  %21 = call i32 @stbi__get8(i32* %20)
  br label %22

22:                                               ; preds = %19
  %23 = load i32, i32* %13, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %13, align 4
  br label %16

25:                                               ; preds = %16
  %26 = load i32*, i32** %7, align 8
  %27 = call i32 @stbi__get16be(i32* %26)
  store i32 %27, i32* %14, align 4
  %28 = load i32*, i32** %7, align 8
  %29 = call i32 @stbi__get16be(i32* %28)
  store i32 %29, i32* %15, align 4
  %30 = load i32*, i32** %7, align 8
  %31 = call i64 @stbi__at_eof(i32* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %25
  %34 = call i32* @stbi__errpuc(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  store i32* %34, i32** %6, align 8
  br label %88

35:                                               ; preds = %25
  %36 = load i32, i32* %14, align 4
  %37 = sdiv i32 268435456, %36
  %38 = load i32, i32* %15, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = call i32* @stbi__errpuc(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  store i32* %41, i32** %6, align 8
  br label %88

42:                                               ; preds = %35
  %43 = load i32*, i32** %7, align 8
  %44 = call i32 @stbi__get32be(i32* %43)
  %45 = load i32*, i32** %7, align 8
  %46 = call i32 @stbi__get16be(i32* %45)
  %47 = load i32*, i32** %7, align 8
  %48 = call i32 @stbi__get16be(i32* %47)
  %49 = load i32, i32* %14, align 4
  %50 = load i32, i32* %15, align 4
  %51 = mul nsw i32 %49, %50
  %52 = mul nsw i32 %51, 4
  %53 = call i64 @stbi__malloc(i32 %52)
  %54 = inttoptr i64 %53 to i32*
  store i32* %54, i32** %12, align 8
  %55 = load i32*, i32** %12, align 8
  %56 = load i32, i32* %14, align 4
  %57 = load i32, i32* %15, align 4
  %58 = mul nsw i32 %56, %57
  %59 = mul nsw i32 %58, 4
  %60 = call i32 @memset(i32* %55, i32 255, i32 %59)
  %61 = load i32*, i32** %7, align 8
  %62 = load i32, i32* %14, align 4
  %63 = load i32, i32* %15, align 4
  %64 = load i32*, i32** %10, align 8
  %65 = load i32*, i32** %12, align 8
  %66 = call i32 @stbi__pic_load_core(i32* %61, i32 %62, i32 %63, i32* %64, i32* %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %42
  %69 = load i32*, i32** %12, align 8
  %70 = call i32 @STBI_FREE(i32* %69)
  store i32* null, i32** %12, align 8
  br label %71

71:                                               ; preds = %68, %42
  %72 = load i32, i32* %14, align 4
  %73 = load i32*, i32** %8, align 8
  store i32 %72, i32* %73, align 4
  %74 = load i32, i32* %15, align 4
  %75 = load i32*, i32** %9, align 8
  store i32 %74, i32* %75, align 4
  %76 = load i32, i32* %11, align 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %71
  %79 = load i32*, i32** %10, align 8
  %80 = load i32, i32* %79, align 4
  store i32 %80, i32* %11, align 4
  br label %81

81:                                               ; preds = %78, %71
  %82 = load i32*, i32** %12, align 8
  %83 = load i32, i32* %11, align 4
  %84 = load i32, i32* %14, align 4
  %85 = load i32, i32* %15, align 4
  %86 = call i32* @stbi__convert_format(i32* %82, i32 4, i32 %83, i32 %84, i32 %85)
  store i32* %86, i32** %12, align 8
  %87 = load i32*, i32** %12, align 8
  store i32* %87, i32** %6, align 8
  br label %88

88:                                               ; preds = %81, %40, %33
  %89 = load i32*, i32** %6, align 8
  ret i32* %89
}

declare dso_local i32 @stbi__get8(i32*) #1

declare dso_local i32 @stbi__get16be(i32*) #1

declare dso_local i64 @stbi__at_eof(i32*) #1

declare dso_local i32* @stbi__errpuc(i8*, i8*) #1

declare dso_local i32 @stbi__get32be(i32*) #1

declare dso_local i64 @stbi__malloc(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @stbi__pic_load_core(i32*, i32, i32, i32*, i32*) #1

declare dso_local i32 @STBI_FREE(i32*) #1

declare dso_local i32* @stbi__convert_format(i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
