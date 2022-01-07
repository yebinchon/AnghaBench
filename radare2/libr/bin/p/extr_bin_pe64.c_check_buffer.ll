; ModuleID = '/home/carl/AnghaBench/radare2/libr/bin/p/extr_bin_pe64.c_check_buffer.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/bin/p/extr_bin_pe64.c_check_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"MZ\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"PE\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"\0B\02\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @check_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_buffer(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [2 x i32], align 4
  store i32* %0, i32** %3, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = call i32 @r_buf_size(i32* %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp sle i32 %9, 61
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %48

12:                                               ; preds = %1
  %13 = load i32*, i32** %3, align 8
  %14 = call i32 @r_buf_read_le16_at(i32* %13, i32 60)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = add nsw i32 %15, 26
  %17 = load i32, i32* %4, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %47

19:                                               ; preds = %12
  %20 = load i32*, i32** %3, align 8
  %21 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %22 = call i32 @r_buf_read_at(i32* %20, i32 0, i32* %21, i32 8)
  %23 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %24 = call i32 @memcmp(i32* %23, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 2)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %46, label %26

26:                                               ; preds = %19
  %27 = load i32*, i32** %3, align 8
  %28 = load i32, i32* %5, align 4
  %29 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %30 = call i32 @r_buf_read_at(i32* %27, i32 %28, i32* %29, i32 8)
  %31 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %32 = call i32 @memcmp(i32* %31, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 2)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %45, label %34

34:                                               ; preds = %26
  %35 = load i32*, i32** %3, align 8
  %36 = load i32, i32* %5, align 4
  %37 = add nsw i32 %36, 24
  %38 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %39 = call i32 @r_buf_read_at(i32* %35, i32 %37, i32* %38, i32 8)
  %40 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %41 = call i32 @memcmp(i32* %40, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 2)
  %42 = icmp ne i32 %41, 0
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  store i32 %44, i32* %2, align 4
  br label %48

45:                                               ; preds = %26
  br label %46

46:                                               ; preds = %45, %19
  br label %47

47:                                               ; preds = %46, %12
  store i32 0, i32* %2, align 4
  br label %48

48:                                               ; preds = %47, %34, %11
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i32 @r_buf_size(i32*) #1

declare dso_local i32 @r_buf_read_le16_at(i32*, i32) #1

declare dso_local i32 @r_buf_read_at(i32*, i32, i32*, i32) #1

declare dso_local i32 @memcmp(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
