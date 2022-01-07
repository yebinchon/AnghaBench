; ModuleID = '/home/carl/AnghaBench/postgres/src/timezone/extr_zic.c_abbroffset.c'
source_filename = "/home/carl/AnghaBench/postgres/src/timezone/extr_zic.c_abbroffset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SECSPERMIN = common dso_local global i32 0, align 4
@MINSPERHOUR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"%%z UT offset magnitude exceeds 99:59:59\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%z\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i32)* @abbroffset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @abbroffset(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8 43, i8* %6, align 1
  %10 = load i32, i32* %5, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %5, align 4
  store i8 45, i8* %6, align 1
  br label %15

15:                                               ; preds = %12, %2
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @SECSPERMIN, align 4
  %18 = srem i32 %16, %17
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* @SECSPERMIN, align 4
  %20 = load i32, i32* %5, align 4
  %21 = sdiv i32 %20, %19
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @MINSPERHOUR, align 4
  %24 = srem i32 %22, %23
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* @MINSPERHOUR, align 4
  %26 = load i32, i32* %5, align 4
  %27 = sdiv i32 %26, %25
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp sle i32 100, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %15
  %31 = call i32 @_(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %32 = call i32 @error(i32 %31)
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8** %3, align 8
  br label %86

33:                                               ; preds = %15
  %34 = load i8*, i8** %4, align 8
  store i8* %34, i8** %9, align 8
  %35 = load i8, i8* %6, align 1
  %36 = load i8*, i8** %9, align 8
  %37 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %37, i8** %9, align 8
  store i8 %35, i8* %36, align 1
  %38 = load i32, i32* %5, align 4
  %39 = sdiv i32 %38, 10
  %40 = add nsw i32 48, %39
  %41 = trunc i32 %40 to i8
  %42 = load i8*, i8** %9, align 8
  %43 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %43, i8** %9, align 8
  store i8 %41, i8* %42, align 1
  %44 = load i32, i32* %5, align 4
  %45 = srem i32 %44, 10
  %46 = add nsw i32 48, %45
  %47 = trunc i32 %46 to i8
  %48 = load i8*, i8** %9, align 8
  %49 = getelementptr inbounds i8, i8* %48, i32 1
  store i8* %49, i8** %9, align 8
  store i8 %47, i8* %48, align 1
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* %7, align 4
  %52 = or i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %83

54:                                               ; preds = %33
  %55 = load i32, i32* %8, align 4
  %56 = sdiv i32 %55, 10
  %57 = add nsw i32 48, %56
  %58 = trunc i32 %57 to i8
  %59 = load i8*, i8** %9, align 8
  %60 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %60, i8** %9, align 8
  store i8 %58, i8* %59, align 1
  %61 = load i32, i32* %8, align 4
  %62 = srem i32 %61, 10
  %63 = add nsw i32 48, %62
  %64 = trunc i32 %63 to i8
  %65 = load i8*, i8** %9, align 8
  %66 = getelementptr inbounds i8, i8* %65, i32 1
  store i8* %66, i8** %9, align 8
  store i8 %64, i8* %65, align 1
  %67 = load i32, i32* %7, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %82

69:                                               ; preds = %54
  %70 = load i32, i32* %7, align 4
  %71 = sdiv i32 %70, 10
  %72 = add nsw i32 48, %71
  %73 = trunc i32 %72 to i8
  %74 = load i8*, i8** %9, align 8
  %75 = getelementptr inbounds i8, i8* %74, i32 1
  store i8* %75, i8** %9, align 8
  store i8 %73, i8* %74, align 1
  %76 = load i32, i32* %7, align 4
  %77 = srem i32 %76, 10
  %78 = add nsw i32 48, %77
  %79 = trunc i32 %78 to i8
  %80 = load i8*, i8** %9, align 8
  %81 = getelementptr inbounds i8, i8* %80, i32 1
  store i8* %81, i8** %9, align 8
  store i8 %79, i8* %80, align 1
  br label %82

82:                                               ; preds = %69, %54
  br label %83

83:                                               ; preds = %82, %33
  %84 = load i8*, i8** %9, align 8
  store i8 0, i8* %84, align 1
  %85 = load i8*, i8** %4, align 8
  store i8* %85, i8** %3, align 8
  br label %86

86:                                               ; preds = %83, %30
  %87 = load i8*, i8** %3, align 8
  ret i8* %87
}

declare dso_local i32 @error(i32) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
