; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_packettest.c_test_PACKET_get_net_2.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_packettest.c_test_PACKET_get_net_2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@smbuf = common dso_local global i32 0, align 4
@BUF_LEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_PACKET_get_net_2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_PACKET_get_net_2() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  %4 = load i32, i32* @smbuf, align 4
  %5 = load i64, i64* @BUF_LEN, align 8
  %6 = call i32 @PACKET_buf_init(i32* %3, i32 %4, i64 %5)
  %7 = call i32 @TEST_true(i32 %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %35

9:                                                ; preds = %0
  %10 = call i32 @PACKET_get_net_2(i32* %3, i32* %2)
  %11 = call i32 @TEST_true(i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %35

13:                                               ; preds = %9
  %14 = load i32, i32* %2, align 4
  %15 = call i32 @TEST_uint_eq(i32 %14, i32 516)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %35

17:                                               ; preds = %13
  %18 = load i64, i64* @BUF_LEN, align 8
  %19 = sub nsw i64 %18, 4
  %20 = call i32 @PACKET_forward(i32* %3, i64 %19)
  %21 = call i32 @TEST_true(i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %35

23:                                               ; preds = %17
  %24 = call i32 @PACKET_get_net_2(i32* %3, i32* %2)
  %25 = call i32 @TEST_true(i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %23
  %28 = load i32, i32* %2, align 4
  %29 = call i32 @TEST_uint_eq(i32 %28, i32 64766)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %27
  %32 = call i32 @PACKET_get_net_2(i32* %3, i32* %2)
  %33 = call i32 @TEST_false(i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %31, %27, %23, %17, %13, %9, %0
  store i32 0, i32* %1, align 4
  br label %37

36:                                               ; preds = %31
  store i32 1, i32* %1, align 4
  br label %37

37:                                               ; preds = %36, %35
  %38 = load i32, i32* %1, align 4
  ret i32 %38
}

declare dso_local i32 @TEST_true(i32) #1

declare dso_local i32 @PACKET_buf_init(i32*, i32, i64) #1

declare dso_local i32 @PACKET_get_net_2(i32*, i32*) #1

declare dso_local i32 @TEST_uint_eq(i32, i32) #1

declare dso_local i32 @PACKET_forward(i32*, i64) #1

declare dso_local i32 @TEST_false(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
