; ModuleID = '/home/carl/AnghaBench/radare2/libr/bin/p/extr_bin_ne.c_check_buffer.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/bin/p/extr_bin_ne.c_check_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"MZ\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"NE\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @check_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_buffer(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
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
  br label %39

12:                                               ; preds = %1
  %13 = load i32*, i32** %3, align 8
  %14 = call i64 @r_buf_read_le16_at(i32* %13, i32 60)
  store i64 %14, i64* %5, align 8
  %15 = load i64, i64* %5, align 8
  %16 = trunc i64 %15 to i32
  %17 = add nsw i32 %16, 26
  %18 = load i32, i32* %4, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %38

20:                                               ; preds = %12
  %21 = load i32*, i32** %3, align 8
  %22 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %23 = call i32 @r_buf_read_at(i32* %21, i64 0, i32* %22, i32 8)
  %24 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %25 = call i32 @memcmp(i32* %24, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 2)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %37, label %27

27:                                               ; preds = %20
  %28 = load i32*, i32** %3, align 8
  %29 = load i64, i64* %5, align 8
  %30 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %31 = call i32 @r_buf_read_at(i32* %28, i64 %29, i32* %30, i32 8)
  %32 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %33 = call i32 @memcmp(i32* %32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 2)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %27
  store i32 1, i32* %2, align 4
  br label %39

36:                                               ; preds = %27
  br label %37

37:                                               ; preds = %36, %20
  br label %38

38:                                               ; preds = %37, %12
  store i32 0, i32* %2, align 4
  br label %39

39:                                               ; preds = %38, %35, %11
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i32 @r_buf_size(i32*) #1

declare dso_local i64 @r_buf_read_le16_at(i32*, i32) #1

declare dso_local i32 @r_buf_read_at(i32*, i64, i32*, i32) #1

declare dso_local i32 @memcmp(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
