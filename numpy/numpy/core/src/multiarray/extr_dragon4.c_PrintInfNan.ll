; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_dragon4.c_PrintInfNan.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_dragon4.c_PrintInfNan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"inf\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"nan\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i64, i64, i64, i8)* @PrintInfNan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @PrintInfNan(i8* %0, i64 %1, i64 %2, i64 %3, i8 signext %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8, align 1
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store i8* %0, i8** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i8 %4, i8* %11, align 1
  %16 = load i64, i64* %8, align 8
  %17 = sub nsw i64 %16, 1
  store i64 %17, i64* %12, align 8
  store i64 0, i64* %13, align 8
  %18 = load i64, i64* %8, align 8
  %19 = icmp sgt i64 %18, 0
  %20 = zext i1 %19 to i32
  %21 = call i32 @DEBUG_ASSERT(i32 %20)
  %22 = load i64, i64* %9, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %80

24:                                               ; preds = %5
  %25 = load i8, i8* %11, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp eq i32 %26, 43
  br i1 %27, label %28, label %39

28:                                               ; preds = %24
  %29 = load i64, i64* %13, align 8
  %30 = load i64, i64* %12, align 8
  %31 = sub nsw i64 %30, 1
  %32 = icmp slt i64 %29, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %28
  %34 = load i8*, i8** %7, align 8
  %35 = load i64, i64* %13, align 8
  %36 = add nsw i64 %35, 1
  store i64 %36, i64* %13, align 8
  %37 = getelementptr inbounds i8, i8* %34, i64 %35
  store i8 43, i8* %37, align 1
  br label %38

38:                                               ; preds = %33, %28
  br label %55

39:                                               ; preds = %24
  %40 = load i8, i8* %11, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %41, 45
  br i1 %42, label %43, label %54

43:                                               ; preds = %39
  %44 = load i64, i64* %13, align 8
  %45 = load i64, i64* %12, align 8
  %46 = sub nsw i64 %45, 1
  %47 = icmp slt i64 %44, %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %43
  %49 = load i8*, i8** %7, align 8
  %50 = load i64, i64* %13, align 8
  %51 = add nsw i64 %50, 1
  store i64 %51, i64* %13, align 8
  %52 = getelementptr inbounds i8, i8* %49, i64 %50
  store i8 45, i8* %52, align 1
  br label %53

53:                                               ; preds = %48, %43
  br label %54

54:                                               ; preds = %53, %39
  br label %55

55:                                               ; preds = %54, %38
  %56 = load i64, i64* %12, align 8
  %57 = load i64, i64* %13, align 8
  %58 = sub nsw i64 %56, %57
  %59 = icmp slt i64 3, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  br label %65

61:                                               ; preds = %55
  %62 = load i64, i64* %12, align 8
  %63 = load i64, i64* %13, align 8
  %64 = sub nsw i64 %62, %63
  br label %65

65:                                               ; preds = %61, %60
  %66 = phi i64 [ 3, %60 ], [ %64, %61 ]
  store i64 %66, i64* %14, align 8
  %67 = load i8*, i8** %7, align 8
  %68 = load i64, i64* %13, align 8
  %69 = getelementptr inbounds i8, i8* %67, i64 %68
  %70 = load i64, i64* %14, align 8
  %71 = call i32 @memcpy(i8* %69, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i64 %70)
  %72 = load i8*, i8** %7, align 8
  %73 = load i64, i64* %13, align 8
  %74 = load i64, i64* %14, align 8
  %75 = add nsw i64 %73, %74
  %76 = getelementptr inbounds i8, i8* %72, i64 %75
  store i8 0, i8* %76, align 1
  %77 = load i64, i64* %13, align 8
  %78 = load i64, i64* %14, align 8
  %79 = add nsw i64 %77, %78
  store i64 %79, i64* %6, align 8
  br label %105

80:                                               ; preds = %5
  %81 = load i64, i64* %12, align 8
  %82 = load i64, i64* %13, align 8
  %83 = sub nsw i64 %81, %82
  %84 = icmp slt i64 3, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %80
  br label %90

86:                                               ; preds = %80
  %87 = load i64, i64* %12, align 8
  %88 = load i64, i64* %13, align 8
  %89 = sub nsw i64 %87, %88
  br label %90

90:                                               ; preds = %86, %85
  %91 = phi i64 [ 3, %85 ], [ %89, %86 ]
  store i64 %91, i64* %15, align 8
  %92 = load i8*, i8** %7, align 8
  %93 = load i64, i64* %13, align 8
  %94 = getelementptr inbounds i8, i8* %92, i64 %93
  %95 = load i64, i64* %15, align 8
  %96 = call i32 @memcpy(i8* %94, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i64 %95)
  %97 = load i8*, i8** %7, align 8
  %98 = load i64, i64* %13, align 8
  %99 = load i64, i64* %15, align 8
  %100 = add nsw i64 %98, %99
  %101 = getelementptr inbounds i8, i8* %97, i64 %100
  store i8 0, i8* %101, align 1
  %102 = load i64, i64* %13, align 8
  %103 = load i64, i64* %15, align 8
  %104 = add nsw i64 %102, %103
  store i64 %104, i64* %6, align 8
  br label %105

105:                                              ; preds = %90, %65
  %106 = load i64, i64* %6, align 8
  ret i64 %106
}

declare dso_local i32 @DEBUG_ASSERT(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
