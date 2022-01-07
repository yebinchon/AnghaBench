; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_destest.c_test_des_crypt.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_destest.c_test_des_crypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [14 x i8] c"efGnQx2725bI2\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"testing\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"ef\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"yA1Rp/1hZXIJk\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"bca76;23\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"yA\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"y\82\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"\00A\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_des_crypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_des_crypt() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 @DES_crypt(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %3 = call i32 @TEST_str_eq(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %2)
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %27

6:                                                ; preds = %0
  %7 = call i32 @DES_crypt(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %8 = call i32 @TEST_str_eq(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %6
  store i32 0, i32* %1, align 4
  br label %27

11:                                               ; preds = %6
  %12 = call i32 @DES_crypt(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  %13 = call i32 @TEST_ptr_null(i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  store i32 0, i32* %1, align 4
  br label %27

16:                                               ; preds = %11
  %17 = call i32 @DES_crypt(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  %18 = call i32 @TEST_ptr_null(i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  store i32 0, i32* %1, align 4
  br label %27

21:                                               ; preds = %16
  %22 = call i32 @DES_crypt(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  %23 = call i32 @TEST_ptr_null(i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %21
  store i32 0, i32* %1, align 4
  br label %27

26:                                               ; preds = %21
  store i32 1, i32* %1, align 4
  br label %27

27:                                               ; preds = %26, %25, %20, %15, %10, %5
  %28 = load i32, i32* %1, align 4
  ret i32 %28
}

declare dso_local i32 @TEST_str_eq(i8*, i32) #1

declare dso_local i32 @DES_crypt(i8*, i8*) #1

declare dso_local i32 @TEST_ptr_null(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
