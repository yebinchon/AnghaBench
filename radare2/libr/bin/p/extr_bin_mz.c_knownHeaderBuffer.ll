; ModuleID = '/home/carl/AnghaBench/radare2/libr/bin/p/extr_bin_mz.c_knownHeaderBuffer.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/bin/p/extr_bin_mz.c_knownHeaderBuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"PE\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"\0B\01\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"NE\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"LE\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"LX\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"PL\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64)* @knownHeaderBuffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @knownHeaderBuffer(i32* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca [2 x i32], align 4
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = load i64, i64* %5, align 8
  %9 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %10 = call i32 @r_buf_read_at(i32* %7, i64 %8, i32* %9, i32 8)
  %11 = sext i32 %10 to i64
  %12 = icmp ne i64 %11, 8
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %58

14:                                               ; preds = %2
  %15 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %16 = call i32 @memcmp(i32* %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 2)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %39, label %18

18:                                               ; preds = %14
  %19 = load i64, i64* %5, align 8
  %20 = add nsw i64 %19, 32
  %21 = load i32*, i32** %4, align 8
  %22 = call i64 @r_buf_size(i32* %21)
  %23 = icmp slt i64 %20, %22
  br i1 %23, label %24, label %38

24:                                               ; preds = %18
  %25 = load i32*, i32** %4, align 8
  %26 = load i64, i64* %5, align 8
  %27 = add nsw i64 %26, 24
  %28 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %29 = call i32 @r_buf_read_at(i32* %25, i64 %27, i32* %28, i32 8)
  %30 = icmp ne i32 %29, 2
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  store i32 0, i32* %3, align 4
  br label %58

32:                                               ; preds = %24
  %33 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %34 = call i32 @memcmp(i32* %33, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 2)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %32
  store i32 1, i32* %3, align 4
  br label %58

37:                                               ; preds = %32
  br label %38

38:                                               ; preds = %37, %18
  br label %57

39:                                               ; preds = %14
  %40 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %41 = call i32 @memcmp(i32* %40, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 2)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %55

43:                                               ; preds = %39
  %44 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %45 = call i32 @memcmp(i32* %44, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 2)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %43
  %48 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %49 = call i32 @memcmp(i32* %48, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 2)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %47
  %52 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %53 = call i32 @memcmp(i32* %52, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 2)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %51, %47, %43, %39
  store i32 1, i32* %3, align 4
  br label %58

56:                                               ; preds = %51
  br label %57

57:                                               ; preds = %56, %38
  store i32 0, i32* %3, align 4
  br label %58

58:                                               ; preds = %57, %55, %36, %31, %13
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32 @r_buf_read_at(i32*, i64, i32*, i32) #1

declare dso_local i32 @memcmp(i32*, i8*, i32) #1

declare dso_local i64 @r_buf_size(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
