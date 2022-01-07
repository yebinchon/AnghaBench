; ModuleID = '/home/carl/AnghaBench/openpilot/phonelibs/nanovg/extr_fontstash.h_fonsAddFont.c'
source_filename = "/home/carl/AnghaBench/openpilot/phonelibs/nanovg/extr_fontstash.h_fonsAddFont.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@SEEK_END = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@FONS_INVALID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fonsAddFont(i32* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32* null, i32** %8, align 8
  store i32 0, i32* %9, align 4
  store i8* null, i8** %10, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = call i32* @fopen(i8* %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %12, i32** %8, align 8
  %13 = load i32*, i32** %8, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  br label %44

16:                                               ; preds = %3
  %17 = load i32*, i32** %8, align 8
  %18 = load i32, i32* @SEEK_END, align 4
  %19 = call i32 @fseek(i32* %17, i32 0, i32 %18)
  %20 = load i32*, i32** %8, align 8
  %21 = call i64 @ftell(i32* %20)
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %9, align 4
  %23 = load i32*, i32** %8, align 8
  %24 = load i32, i32* @SEEK_SET, align 4
  %25 = call i32 @fseek(i32* %23, i32 0, i32 %24)
  %26 = load i32, i32* %9, align 4
  %27 = call i64 @malloc(i32 %26)
  %28 = inttoptr i64 %27 to i8*
  store i8* %28, i8** %10, align 8
  %29 = load i8*, i8** %10, align 8
  %30 = icmp eq i8* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %16
  br label %44

32:                                               ; preds = %16
  %33 = load i8*, i8** %10, align 8
  %34 = load i32, i32* %9, align 4
  %35 = load i32*, i32** %8, align 8
  %36 = call i32 @fread(i8* %33, i32 1, i32 %34, i32* %35)
  %37 = load i32*, i32** %8, align 8
  %38 = call i32 @fclose(i32* %37)
  store i32* null, i32** %8, align 8
  %39 = load i32*, i32** %5, align 8
  %40 = load i8*, i8** %6, align 8
  %41 = load i8*, i8** %10, align 8
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @fonsAddFontMem(i32* %39, i8* %40, i8* %41, i32 %42, i32 1)
  store i32 %43, i32* %4, align 4
  br label %58

44:                                               ; preds = %31, %15
  %45 = load i8*, i8** %10, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = load i8*, i8** %10, align 8
  %49 = call i32 @free(i8* %48)
  br label %50

50:                                               ; preds = %47, %44
  %51 = load i32*, i32** %8, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = load i32*, i32** %8, align 8
  %55 = call i32 @fclose(i32* %54)
  br label %56

56:                                               ; preds = %53, %50
  %57 = load i32, i32* @FONS_INVALID, align 4
  store i32 %57, i32* %4, align 4
  br label %58

58:                                               ; preds = %56, %32
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fseek(i32*, i32, i32) #1

declare dso_local i64 @ftell(i32*) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @fread(i8*, i32, i32, i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @fonsAddFontMem(i32*, i8*, i8*, i32, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
