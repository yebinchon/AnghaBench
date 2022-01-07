; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_packettest.c_test_PACKET_equal.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_packettest.c_test_PACKET_equal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@smbuf = common dso_local global i64 0, align 8
@BUF_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_PACKET_equal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_PACKET_equal() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i64, i64* @smbuf, align 8
  %4 = call i32 @PACKET_buf_init(i32* %2, i64 %3, i32 4)
  %5 = call i32 @TEST_true(i32 %4)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %49

7:                                                ; preds = %0
  %8 = load i64, i64* @smbuf, align 8
  %9 = call i32 @PACKET_equal(i32* %2, i64 %8, i32 4)
  %10 = call i32 @TEST_true(i32 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %49

12:                                               ; preds = %7
  %13 = load i64, i64* @smbuf, align 8
  %14 = add nsw i64 %13, 1
  %15 = call i32 @PACKET_equal(i32* %2, i64 %14, i32 4)
  %16 = call i32 @TEST_false(i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %49

18:                                               ; preds = %12
  %19 = load i64, i64* @smbuf, align 8
  %20 = load i32, i32* @BUF_LEN, align 4
  %21 = call i32 @PACKET_buf_init(i32* %2, i64 %19, i32 %20)
  %22 = call i32 @TEST_true(i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %49

24:                                               ; preds = %18
  %25 = load i64, i64* @smbuf, align 8
  %26 = load i32, i32* @BUF_LEN, align 4
  %27 = call i32 @PACKET_equal(i32* %2, i64 %25, i32 %26)
  %28 = call i32 @TEST_true(i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %49

30:                                               ; preds = %24
  %31 = load i64, i64* @smbuf, align 8
  %32 = load i32, i32* @BUF_LEN, align 4
  %33 = sub nsw i32 %32, 1
  %34 = call i32 @PACKET_equal(i32* %2, i64 %31, i32 %33)
  %35 = call i32 @TEST_false(i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %49

37:                                               ; preds = %30
  %38 = load i64, i64* @smbuf, align 8
  %39 = load i32, i32* @BUF_LEN, align 4
  %40 = add nsw i32 %39, 1
  %41 = call i32 @PACKET_equal(i32* %2, i64 %38, i32 %40)
  %42 = call i32 @TEST_false(i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %37
  %45 = load i64, i64* @smbuf, align 8
  %46 = call i32 @PACKET_equal(i32* %2, i64 %45, i32 0)
  %47 = call i32 @TEST_false(i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %44, %37, %30, %24, %18, %12, %7, %0
  store i32 0, i32* %1, align 4
  br label %51

50:                                               ; preds = %44
  store i32 1, i32* %1, align 4
  br label %51

51:                                               ; preds = %50, %49
  %52 = load i32, i32* %1, align 4
  ret i32 %52
}

declare dso_local i32 @TEST_true(i32) #1

declare dso_local i32 @PACKET_buf_init(i32*, i64, i32) #1

declare dso_local i32 @PACKET_equal(i32*, i64, i32) #1

declare dso_local i32 @TEST_false(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
