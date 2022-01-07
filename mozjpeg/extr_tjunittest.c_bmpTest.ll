; ModuleID = '/home/carl/AnghaBench/mozjpeg/extr_tjunittest.c_bmpTest.c'
source_filename = "/home/carl/AnghaBench/mozjpeg/extr_tjunittest.c_bmpTest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TJ_NUMPF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"%s Top-Down BMP (row alignment = %d bytes)  ...  \00", align 1
@pixFormatStr = common dso_local global i8** null, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"bmp\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"OK.\0A\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"%s Top-Down PPM (row alignment = %d bytes)  ...  \00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"ppm\00", align 1
@TJFLAG_BOTTOMUP = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [51 x i8] c"%s Bottom-Up BMP (row alignment = %d bytes)  ...  \00", align 1
@.str.6 = private unnamed_addr constant [51 x i8] c"%s Bottom-Up PPM (row alignment = %d bytes)  ...  \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bmpTest() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 35, i32* %3, align 4
  store i32 39, i32* %4, align 4
  store i32 1, i32* %2, align 4
  br label %6

6:                                                ; preds = %85, %0
  %7 = load i32, i32* %2, align 4
  %8 = icmp sle i32 %7, 8
  br i1 %8, label %9, label %88

9:                                                ; preds = %6
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %81, %9
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @TJ_NUMPF, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %84

14:                                               ; preds = %10
  %15 = load i8**, i8*** @pixFormatStr, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i8*, i8** %15, i64 %17
  %19 = load i8*, i8** %18, align 8
  %20 = load i32, i32* %2, align 4
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i8* %19, i32 %20)
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* %2, align 4
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @doBmpTest(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %22, i32 %23, i32 %24, i32 %25, i32 0)
  %27 = icmp eq i32 %26, -1
  br i1 %27, label %28, label %29

28:                                               ; preds = %14
  store i32 -1, i32* %1, align 4
  br label %89

29:                                               ; preds = %14
  %30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %31 = load i8**, i8*** @pixFormatStr, align 8
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8*, i8** %31, i64 %33
  %35 = load i8*, i8** %34, align 8
  %36 = load i32, i32* %2, align 4
  %37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0), i8* %35, i32 %36)
  %38 = load i32, i32* %3, align 4
  %39 = load i32, i32* %2, align 4
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @TJFLAG_BOTTOMUP, align 4
  %43 = call i32 @doBmpTest(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %38, i32 %39, i32 %40, i32 %41, i32 %42)
  %44 = icmp eq i32 %43, -1
  br i1 %44, label %45, label %46

45:                                               ; preds = %29
  store i32 -1, i32* %1, align 4
  br label %89

46:                                               ; preds = %29
  %47 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %48 = load i8**, i8*** @pixFormatStr, align 8
  %49 = load i32, i32* %5, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8*, i8** %48, i64 %50
  %52 = load i8*, i8** %51, align 8
  %53 = load i32, i32* %2, align 4
  %54 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.5, i64 0, i64 0), i8* %52, i32 %53)
  %55 = load i32, i32* %3, align 4
  %56 = load i32, i32* %2, align 4
  %57 = load i32, i32* %4, align 4
  %58 = load i32, i32* %5, align 4
  %59 = call i32 @doBmpTest(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %55, i32 %56, i32 %57, i32 %58, i32 0)
  %60 = icmp eq i32 %59, -1
  br i1 %60, label %61, label %62

61:                                               ; preds = %46
  store i32 -1, i32* %1, align 4
  br label %89

62:                                               ; preds = %46
  %63 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %64 = load i8**, i8*** @pixFormatStr, align 8
  %65 = load i32, i32* %5, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8*, i8** %64, i64 %66
  %68 = load i8*, i8** %67, align 8
  %69 = load i32, i32* %2, align 4
  %70 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.6, i64 0, i64 0), i8* %68, i32 %69)
  %71 = load i32, i32* %3, align 4
  %72 = load i32, i32* %2, align 4
  %73 = load i32, i32* %4, align 4
  %74 = load i32, i32* %5, align 4
  %75 = load i32, i32* @TJFLAG_BOTTOMUP, align 4
  %76 = call i32 @doBmpTest(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %71, i32 %72, i32 %73, i32 %74, i32 %75)
  %77 = icmp eq i32 %76, -1
  br i1 %77, label %78, label %79

78:                                               ; preds = %62
  store i32 -1, i32* %1, align 4
  br label %89

79:                                               ; preds = %62
  %80 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  br label %81

81:                                               ; preds = %79
  %82 = load i32, i32* %5, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %5, align 4
  br label %10

84:                                               ; preds = %10
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %2, align 4
  %87 = mul nsw i32 %86, 2
  store i32 %87, i32* %2, align 4
  br label %6

88:                                               ; preds = %6
  store i32 0, i32* %1, align 4
  br label %89

89:                                               ; preds = %88, %78, %61, %45, %28
  %90 = load i32, i32* %1, align 4
  ret i32 %90
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @doBmpTest(i8*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
