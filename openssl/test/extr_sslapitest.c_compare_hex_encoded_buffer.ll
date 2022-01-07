; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_sslapitest.c_compare_hex_encoded_buffer.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_sslapitest.c_compare_hex_encoded_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i32*, i64)* @compare_hex_encoded_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compare_hex_encoded_buffer(i8* %0, i64 %1, i32* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca [3 x i8], align 1
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load i64, i64* %9, align 8
  %14 = mul i64 %13, 2
  %15 = load i64, i64* %7, align 8
  %16 = call i32 @TEST_size_t_eq(i64 %14, i64 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %4
  store i32 1, i32* %5, align 4
  br label %64

19:                                               ; preds = %4
  store i64 0, i64* %11, align 8
  store i64 0, i64* %10, align 8
  br label %20

20:                                               ; preds = %58, %19
  %21 = load i64, i64* %10, align 8
  %22 = load i64, i64* %9, align 8
  %23 = icmp ult i64 %21, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %20
  %25 = load i64, i64* %11, align 8
  %26 = add i64 %25, 1
  %27 = load i64, i64* %7, align 8
  %28 = icmp ult i64 %26, %27
  br label %29

29:                                               ; preds = %24, %20
  %30 = phi i1 [ false, %20 ], [ %28, %24 ]
  br i1 %30, label %31, label %63

31:                                               ; preds = %29
  %32 = getelementptr inbounds [3 x i8], [3 x i8]* %12, i64 0, i64 0
  %33 = load i32*, i32** %8, align 8
  %34 = load i64, i64* %10, align 8
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @sprintf(i8* %32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = getelementptr inbounds [3 x i8], [3 x i8]* %12, i64 0, i64 0
  %39 = load i8, i8* %38, align 1
  %40 = load i8*, i8** %6, align 8
  %41 = load i64, i64* %11, align 8
  %42 = getelementptr inbounds i8, i8* %40, i64 %41
  %43 = load i8, i8* %42, align 1
  %44 = call i32 @TEST_int_eq(i8 signext %39, i8 signext %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %56

46:                                               ; preds = %31
  %47 = getelementptr inbounds [3 x i8], [3 x i8]* %12, i64 0, i64 1
  %48 = load i8, i8* %47, align 1
  %49 = load i8*, i8** %6, align 8
  %50 = load i64, i64* %11, align 8
  %51 = add i64 %50, 1
  %52 = getelementptr inbounds i8, i8* %49, i64 %51
  %53 = load i8, i8* %52, align 1
  %54 = call i32 @TEST_int_eq(i8 signext %48, i8 signext %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %46, %31
  store i32 1, i32* %5, align 4
  br label %64

57:                                               ; preds = %46
  br label %58

58:                                               ; preds = %57
  %59 = load i64, i64* %10, align 8
  %60 = add i64 %59, 1
  store i64 %60, i64* %10, align 8
  %61 = load i64, i64* %11, align 8
  %62 = add i64 %61, 2
  store i64 %62, i64* %11, align 8
  br label %20

63:                                               ; preds = %29
  store i32 0, i32* %5, align 4
  br label %64

64:                                               ; preds = %63, %56, %18
  %65 = load i32, i32* %5, align 4
  ret i32 %65
}

declare dso_local i32 @TEST_size_t_eq(i64, i64) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @TEST_int_eq(i8 signext, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
