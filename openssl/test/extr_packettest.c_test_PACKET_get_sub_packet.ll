; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_packettest.c_test_PACKET_get_sub_packet.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_packettest.c_test_PACKET_get_sub_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@smbuf = common dso_local global i32 0, align 4
@BUF_LEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_PACKET_get_sub_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_PACKET_get_sub_packet() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store i64 0, i64* %4, align 8
  %5 = load i32, i32* @smbuf, align 4
  %6 = load i64, i64* @BUF_LEN, align 8
  %7 = call i32 @PACKET_buf_init(i32* %2, i32 %5, i64 %6)
  %8 = call i32 @TEST_true(i32 %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %52

10:                                               ; preds = %0
  %11 = call i32 @PACKET_get_sub_packet(i32* %2, i32* %3, i32 4)
  %12 = call i32 @TEST_true(i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %52

14:                                               ; preds = %10
  %15 = call i32 @PACKET_get_net_4(i32* %3, i64* %4)
  %16 = call i32 @TEST_true(i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %52

18:                                               ; preds = %14
  %19 = load i64, i64* %4, align 8
  %20 = call i32 @TEST_ulong_eq(i64 %19, i32 33818120)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %52

22:                                               ; preds = %18
  %23 = call i32 @PACKET_remaining(i32* %3)
  %24 = call i32 @TEST_size_t_eq(i32 %23, i32 0)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %52

26:                                               ; preds = %22
  %27 = load i64, i64* @BUF_LEN, align 8
  %28 = sub nsw i64 %27, 8
  %29 = call i32 @PACKET_forward(i32* %2, i64 %28)
  %30 = call i32 @TEST_true(i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %52

32:                                               ; preds = %26
  %33 = call i32 @PACKET_get_sub_packet(i32* %2, i32* %3, i32 4)
  %34 = call i32 @TEST_true(i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %52

36:                                               ; preds = %32
  %37 = call i32 @PACKET_get_net_4(i32* %3, i64* %4)
  %38 = call i32 @TEST_true(i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %52

40:                                               ; preds = %36
  %41 = load i64, i64* %4, align 8
  %42 = call i32 @TEST_ulong_eq(i64 %41, i32 -117768962)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %40
  %45 = call i32 @PACKET_remaining(i32* %3)
  %46 = call i32 @TEST_size_t_eq(i32 %45, i32 0)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %44
  %49 = call i32 @PACKET_get_sub_packet(i32* %2, i32* %3, i32 4)
  %50 = call i32 @TEST_false(i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %48, %44, %40, %36, %32, %26, %22, %18, %14, %10, %0
  store i32 0, i32* %1, align 4
  br label %54

53:                                               ; preds = %48
  store i32 1, i32* %1, align 4
  br label %54

54:                                               ; preds = %53, %52
  %55 = load i32, i32* %1, align 4
  ret i32 %55
}

declare dso_local i32 @TEST_true(i32) #1

declare dso_local i32 @PACKET_buf_init(i32*, i32, i64) #1

declare dso_local i32 @PACKET_get_sub_packet(i32*, i32*, i32) #1

declare dso_local i32 @PACKET_get_net_4(i32*, i64*) #1

declare dso_local i32 @TEST_ulong_eq(i64, i32) #1

declare dso_local i32 @TEST_size_t_eq(i32, i32) #1

declare dso_local i32 @PACKET_remaining(i32*) #1

declare dso_local i32 @PACKET_forward(i32*, i64) #1

declare dso_local i32 @TEST_false(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
