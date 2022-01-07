; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_destest.c_test_des_quad_cksum.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_destest.c_test_des_quad_cksum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cbc_data = common dso_local global i64 0, align 8
@cbc_iv = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_des_quad_cksum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_des_quad_cksum() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca [4 x i32], align 16
  %4 = load i64, i64* @cbc_data, align 8
  %5 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 0
  %6 = load i64, i64* @cbc_data, align 8
  %7 = inttoptr i64 %6 to i8*
  %8 = call i64 @strlen(i8* %7)
  %9 = load i64, i64* @cbc_iv, align 8
  %10 = inttoptr i64 %9 to i32*
  %11 = call i32 @DES_quad_cksum(i64 %4, i32* %5, i64 %8, i32 2, i32* %10)
  store i32 %11, i32* %2, align 4
  %12 = load i32, i32* %2, align 4
  %13 = call i32 @TEST_cs_eq(i32 %12, i32 1893180986)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %0
  store i32 0, i32* %1, align 4
  br label %41

16:                                               ; preds = %0
  %17 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 0
  %18 = load i32, i32* %17, align 16
  %19 = call i32 @TEST_cs_eq(i32 %18, i32 847166093)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %16
  store i32 0, i32* %1, align 4
  br label %41

22:                                               ; preds = %16
  %23 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @TEST_cs_eq(i32 %24, i32 538593740)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %22
  store i32 0, i32* %1, align 4
  br label %41

28:                                               ; preds = %22
  %29 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 2
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @TEST_cs_eq(i32 %30, i32 1893180986)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %28
  store i32 0, i32* %1, align 4
  br label %41

34:                                               ; preds = %28
  %35 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 3
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @TEST_cs_eq(i32 %36, i32 1344023590)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %34
  store i32 0, i32* %1, align 4
  br label %41

40:                                               ; preds = %34
  store i32 1, i32* %1, align 4
  br label %41

41:                                               ; preds = %40, %39, %33, %27, %21, %15
  %42 = load i32, i32* %1, align 4
  ret i32 %42
}

declare dso_local i32 @DES_quad_cksum(i64, i32*, i64, i32, i32*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @TEST_cs_eq(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
