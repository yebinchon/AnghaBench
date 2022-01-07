; ModuleID = '/home/carl/AnghaBench/radare2/libr/bin/format/mdmp/extr_mdmp.c_check_pe64_buf.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/bin/format/mdmp/extr_mdmp.c_check_pe64_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"MZ\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"PE\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"\0B\02\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @check_pe64_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_pe64_buf(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [2 x i32], align 4
  %9 = alloca [2 x i32], align 4
  %10 = alloca [2 x i32], align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %7, align 4
  %11 = load i32*, i32** %4, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  %15 = icmp sle i32 %14, 61
  br i1 %15, label %16, label %17

16:                                               ; preds = %13, %2
  store i32 0, i32* %3, align 4
  br label %56

17:                                               ; preds = %13
  %18 = load i32*, i32** %4, align 8
  %19 = call i32 @r_buf_read8_at(i32* %18, i32 60)
  %20 = load i32*, i32** %4, align 8
  %21 = call i32 @r_buf_read8_at(i32* %20, i32 61)
  %22 = shl i32 %21, 8
  %23 = or i32 %19, %22
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* %6, align 4
  %26 = add nsw i32 %25, 32
  %27 = icmp sge i32 %24, %26
  br i1 %27, label %28, label %54

28:                                               ; preds = %17
  %29 = load i32*, i32** %4, align 8
  %30 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %31 = call i32 @r_buf_read_at(i32* %29, i32 0, i32* %30, i32 2)
  %32 = load i32*, i32** %4, align 8
  %33 = load i32, i32* %6, align 4
  %34 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %35 = call i32 @r_buf_read_at(i32* %32, i32 %33, i32* %34, i32 2)
  %36 = load i32*, i32** %4, align 8
  %37 = load i32, i32* %6, align 4
  %38 = add nsw i32 %37, 24
  %39 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %40 = call i32 @r_buf_read_at(i32* %36, i32 %38, i32* %39, i32 2)
  %41 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %42 = call i32 @memcmp(i32* %41, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 2)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %53, label %44

44:                                               ; preds = %28
  %45 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %46 = call i32 @memcmp(i32* %45, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 2)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %53, label %48

48:                                               ; preds = %44
  %49 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %50 = call i32 @memcmp(i32* %49, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 2)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %48
  store i32 1, i32* %7, align 4
  br label %53

53:                                               ; preds = %52, %48, %44, %28
  br label %54

54:                                               ; preds = %53, %17
  %55 = load i32, i32* %7, align 4
  store i32 %55, i32* %3, align 4
  br label %56

56:                                               ; preds = %54, %16
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @r_buf_read8_at(i32*, i32) #1

declare dso_local i32 @r_buf_read_at(i32*, i32, i32*, i32) #1

declare dso_local i32 @memcmp(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
