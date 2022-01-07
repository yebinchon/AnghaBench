; ModuleID = '/home/carl/AnghaBench/radare2/libr/bin/p/extr_bin_xtr_fatmach0.c_checkHeader.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/bin/p/extr_bin_xtr_fatmach0.c_checkHeader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"\CA\FE\BA\BE\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"\CE\FA\ED\FE\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"\FE\ED\FA\CE\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"\FE\ED\FA\CF\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"\CF\FA\ED\FE\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @checkHeader to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @checkHeader(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca [4 x i32], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = call i32 @r_buf_size(i32* %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32*, i32** %3, align 8
  %12 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 0
  %13 = call i32 @r_buf_read_at(i32* %11, i32 0, i32* %12, i32 4)
  %14 = load i32, i32* %5, align 4
  %15 = icmp sge i32 %14, 768
  br i1 %15, label %16, label %56

16:                                               ; preds = %1
  %17 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 0
  %18 = call i32 @memcmp(i32* %17, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %56, label %20

20:                                               ; preds = %16
  store i32 16, i32* %6, align 4
  %21 = load i32*, i32** %3, align 8
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @r_buf_read_be32_at(i32* %21, i32 %22)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %55

26:                                               ; preds = %20
  %27 = load i32, i32* %7, align 4
  %28 = add nsw i32 %27, 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %55

31:                                               ; preds = %26
  store i32 0, i32* %8, align 4
  %32 = load i32*, i32** %3, align 8
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* %7, align 4
  %35 = add nsw i32 %33, %34
  %36 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 0
  %37 = call i32 @r_buf_read_at(i32* %32, i32 %35, i32* %36, i32 4)
  %38 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 0
  %39 = call i32 @memcmp(i32* %38, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %53

41:                                               ; preds = %31
  %42 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 0
  %43 = call i32 @memcmp(i32* %42, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 4)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %41
  %46 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 0
  %47 = call i32 @memcmp(i32* %46, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 4)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %45
  %50 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 0
  %51 = call i32 @memcmp(i32* %50, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 4)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %49, %45, %41, %31
  store i32 1, i32* %2, align 4
  br label %57

54:                                               ; preds = %49
  br label %55

55:                                               ; preds = %54, %26, %20
  br label %56

56:                                               ; preds = %55, %16, %1
  store i32 0, i32* %2, align 4
  br label %57

57:                                               ; preds = %56, %53
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local i32 @r_buf_size(i32*) #1

declare dso_local i32 @r_buf_read_at(i32*, i32, i32*, i32) #1

declare dso_local i32 @memcmp(i32*, i8*, i32) #1

declare dso_local i32 @r_buf_read_be32_at(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
