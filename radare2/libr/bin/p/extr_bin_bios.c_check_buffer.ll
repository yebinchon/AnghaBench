; ModuleID = '/home/carl/AnghaBench/radare2/libr/bin/p/extr_bin_bios.c_check_buffer.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/bin/p/extr_bin_bios.c_check_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"dex\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"MZ\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @check_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_buffer(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [3 x i32], align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = call i32 @r_return_val_if_fail(i32* %10, i32 0)
  %12 = load i32*, i32** %3, align 8
  %13 = call i32 @r_buf_size(i32* %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp sle i32 %14, 65535
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %56

17:                                               ; preds = %1
  %18 = load i32*, i32** %3, align 8
  %19 = call i32 @r_buf_read8_at(i32* %18, i32 0)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp eq i32 %20, 207
  br i1 %21, label %25, label %22

22:                                               ; preds = %17
  %23 = load i32, i32* %5, align 4
  %24 = icmp eq i32 %23, 127
  br i1 %24, label %25, label %26

25:                                               ; preds = %22, %17
  store i32 0, i32* %2, align 4
  br label %56

26:                                               ; preds = %22
  %27 = load i32, i32* %4, align 4
  %28 = sub nsw i32 %27, 65536
  %29 = add nsw i32 %28, 65520
  store i32 %29, i32* %6, align 4
  %30 = load i32*, i32** %3, align 8
  %31 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %32 = call i32 @r_buf_read_at(i32* %30, i32 0, i32* %31, i32 12)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp sle i32 %33, 0
  br i1 %34, label %43, label %35

35:                                               ; preds = %26
  %36 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %37 = call i32 @memcmp(i32* %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 3)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %35
  %40 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %41 = call i32 @memcmp(i32* %40, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 2)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %39, %35, %26
  store i32 0, i32* %2, align 4
  br label %56

44:                                               ; preds = %39
  %45 = load i32*, i32** %3, align 8
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @r_buf_read8_at(i32* %45, i32 %46)
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %9, align 4
  %49 = icmp eq i32 %48, 234
  br i1 %49, label %53, label %50

50:                                               ; preds = %44
  %51 = load i32, i32* %9, align 4
  %52 = icmp eq i32 %51, 233
  br label %53

53:                                               ; preds = %50, %44
  %54 = phi i1 [ true, %44 ], [ %52, %50 ]
  %55 = zext i1 %54 to i32
  store i32 %55, i32* %2, align 4
  br label %56

56:                                               ; preds = %53, %43, %25, %16
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i32 @r_return_val_if_fail(i32*, i32) #1

declare dso_local i32 @r_buf_size(i32*) #1

declare dso_local i32 @r_buf_read8_at(i32*, i32) #1

declare dso_local i32 @r_buf_read_at(i32*, i32, i32*, i32) #1

declare dso_local i32 @memcmp(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
