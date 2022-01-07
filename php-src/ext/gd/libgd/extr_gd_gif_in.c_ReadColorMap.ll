; ModuleID = '/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gd_gif_in.c_ReadColorMap.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gd_gif_in.c_ReadColorMap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TRUE = common dso_local global i32 0, align 4
@CM_RED = common dso_local global i64 0, align 8
@CM_GREEN = common dso_local global i64 0, align 8
@CM_BLUE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, [256 x i8]*)* @ReadColorMap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ReadColorMap(i32* %0, i32 %1, [256 x i8]* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [256 x i8]*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [3 x i8], align 1
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store [256 x i8]* %2, [256 x i8]** %7, align 8
  store i32 0, i32* %8, align 4
  br label %10

10:                                               ; preds = %46, %3
  %11 = load i32, i32* %8, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %49

14:                                               ; preds = %10
  %15 = load i32*, i32** %5, align 8
  %16 = getelementptr inbounds [3 x i8], [3 x i8]* %9, i64 0, i64 0
  %17 = call i32 @ReadOK(i32* %15, i8* %16, i32 3)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %14
  %20 = load i32, i32* @TRUE, align 4
  store i32 %20, i32* %4, align 4
  br label %51

21:                                               ; preds = %14
  %22 = getelementptr inbounds [3 x i8], [3 x i8]* %9, i64 0, i64 0
  %23 = load i8, i8* %22, align 1
  %24 = load [256 x i8]*, [256 x i8]** %7, align 8
  %25 = load i64, i64* @CM_RED, align 8
  %26 = getelementptr inbounds [256 x i8], [256 x i8]* %24, i64 %25
  %27 = load i32, i32* %8, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [256 x i8], [256 x i8]* %26, i64 0, i64 %28
  store i8 %23, i8* %29, align 1
  %30 = getelementptr inbounds [3 x i8], [3 x i8]* %9, i64 0, i64 1
  %31 = load i8, i8* %30, align 1
  %32 = load [256 x i8]*, [256 x i8]** %7, align 8
  %33 = load i64, i64* @CM_GREEN, align 8
  %34 = getelementptr inbounds [256 x i8], [256 x i8]* %32, i64 %33
  %35 = load i32, i32* %8, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [256 x i8], [256 x i8]* %34, i64 0, i64 %36
  store i8 %31, i8* %37, align 1
  %38 = getelementptr inbounds [3 x i8], [3 x i8]* %9, i64 0, i64 2
  %39 = load i8, i8* %38, align 1
  %40 = load [256 x i8]*, [256 x i8]** %7, align 8
  %41 = load i64, i64* @CM_BLUE, align 8
  %42 = getelementptr inbounds [256 x i8], [256 x i8]* %40, i64 %41
  %43 = load i32, i32* %8, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [256 x i8], [256 x i8]* %42, i64 0, i64 %44
  store i8 %39, i8* %45, align 1
  br label %46

46:                                               ; preds = %21
  %47 = load i32, i32* %8, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %8, align 4
  br label %10

49:                                               ; preds = %10
  %50 = load i32, i32* @FALSE, align 4
  store i32 %50, i32* %4, align 4
  br label %51

51:                                               ; preds = %49, %19
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local i32 @ReadOK(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
