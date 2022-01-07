; ModuleID = '/home/carl/AnghaBench/radare2/libr/bin/p/extr_bin_dex.c_check_buffer.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/bin/p/extr_bin_dex.c_check_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"dex\0A035\00\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"dex\0A036\00\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"dex\0A038\00\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"dex\0A009\00\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"dex\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @check_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_buffer(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca [8 x i32], align 16
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0
  %8 = call i32 @r_buf_read_at(i32* %6, i32 0, i32* %7, i32 32)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = sext i32 %9 to i64
  %11 = icmp ult i64 %10, 32
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %44

13:                                               ; preds = %1
  %14 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0
  %15 = call i32 @memcmp(i32* %14, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 8)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  store i32 1, i32* %2, align 4
  br label %44

18:                                               ; preds = %13
  %19 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0
  %20 = call i32 @memcmp(i32* %19, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 8)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %18
  store i32 1, i32* %2, align 4
  br label %44

23:                                               ; preds = %18
  %24 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0
  %25 = call i32 @memcmp(i32* %24, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 8)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %23
  store i32 1, i32* %2, align 4
  br label %44

28:                                               ; preds = %23
  %29 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0
  %30 = call i32 @memcmp(i32* %29, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 8)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %28
  store i32 1, i32* %2, align 4
  br label %44

33:                                               ; preds = %28
  %34 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0
  %35 = call i32 @memcmp(i32* %34, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 8)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %33
  store i32 1, i32* %2, align 4
  br label %44

38:                                               ; preds = %33
  %39 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0
  %40 = call i32 @memcmp(i32* %39, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 4)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %38
  store i32 1, i32* %2, align 4
  br label %44

43:                                               ; preds = %38
  store i32 0, i32* %2, align 4
  br label %44

44:                                               ; preds = %43, %42, %37, %32, %27, %22, %17, %12
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i32 @r_buf_read_at(i32*, i32, i32*, i32) #1

declare dso_local i32 @memcmp(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
