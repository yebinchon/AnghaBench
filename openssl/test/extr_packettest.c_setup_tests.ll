; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_packettest.c_setup_tests.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_packettest.c_setup_tests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BUF_LEN = common dso_local global i32 0, align 4
@smbuf = common dso_local global i32* null, align 8
@test_PACKET_buf_init = common dso_local global i32 0, align 4
@test_PACKET_null_init = common dso_local global i32 0, align 4
@test_PACKET_remaining = common dso_local global i32 0, align 4
@test_PACKET_end = common dso_local global i32 0, align 4
@test_PACKET_equal = common dso_local global i32 0, align 4
@test_PACKET_get_1 = common dso_local global i32 0, align 4
@test_PACKET_get_4 = common dso_local global i32 0, align 4
@test_PACKET_get_net_2 = common dso_local global i32 0, align 4
@test_PACKET_get_net_3 = common dso_local global i32 0, align 4
@test_PACKET_get_net_4 = common dso_local global i32 0, align 4
@test_PACKET_get_sub_packet = common dso_local global i32 0, align 4
@test_PACKET_get_bytes = common dso_local global i32 0, align 4
@test_PACKET_copy_bytes = common dso_local global i32 0, align 4
@test_PACKET_copy_all = common dso_local global i32 0, align 4
@test_PACKET_memdup = common dso_local global i32 0, align 4
@test_PACKET_strndup = common dso_local global i32 0, align 4
@test_PACKET_contains_zero_byte = common dso_local global i32 0, align 4
@test_PACKET_forward = common dso_local global i32 0, align 4
@test_PACKET_get_length_prefixed_1 = common dso_local global i32 0, align 4
@test_PACKET_get_length_prefixed_2 = common dso_local global i32 0, align 4
@test_PACKET_get_length_prefixed_3 = common dso_local global i32 0, align 4
@test_PACKET_as_length_prefixed_1 = common dso_local global i32 0, align 4
@test_PACKET_as_length_prefixed_2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @setup_tests() #0 {
  %1 = alloca i32, align 4
  store i32 1, i32* %1, align 4
  br label %2

2:                                                ; preds = %15, %0
  %3 = load i32, i32* %1, align 4
  %4 = load i32, i32* @BUF_LEN, align 4
  %5 = icmp ule i32 %3, %4
  br i1 %5, label %6, label %18

6:                                                ; preds = %2
  %7 = load i32, i32* %1, align 4
  %8 = mul i32 %7, 2
  %9 = and i32 %8, 255
  %10 = load i32*, i32** @smbuf, align 8
  %11 = load i32, i32* %1, align 4
  %12 = sub i32 %11, 1
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds i32, i32* %10, i64 %13
  store i32 %9, i32* %14, align 4
  br label %15

15:                                               ; preds = %6
  %16 = load i32, i32* %1, align 4
  %17 = add i32 %16, 1
  store i32 %17, i32* %1, align 4
  br label %2

18:                                               ; preds = %2
  %19 = load i32, i32* @test_PACKET_buf_init, align 4
  %20 = call i32 @ADD_TEST(i32 %19)
  %21 = load i32, i32* @test_PACKET_null_init, align 4
  %22 = call i32 @ADD_TEST(i32 %21)
  %23 = load i32, i32* @test_PACKET_remaining, align 4
  %24 = call i32 @ADD_TEST(i32 %23)
  %25 = load i32, i32* @test_PACKET_end, align 4
  %26 = call i32 @ADD_TEST(i32 %25)
  %27 = load i32, i32* @test_PACKET_equal, align 4
  %28 = call i32 @ADD_TEST(i32 %27)
  %29 = load i32, i32* @test_PACKET_get_1, align 4
  %30 = call i32 @ADD_TEST(i32 %29)
  %31 = load i32, i32* @test_PACKET_get_4, align 4
  %32 = call i32 @ADD_TEST(i32 %31)
  %33 = load i32, i32* @test_PACKET_get_net_2, align 4
  %34 = call i32 @ADD_TEST(i32 %33)
  %35 = load i32, i32* @test_PACKET_get_net_3, align 4
  %36 = call i32 @ADD_TEST(i32 %35)
  %37 = load i32, i32* @test_PACKET_get_net_4, align 4
  %38 = call i32 @ADD_TEST(i32 %37)
  %39 = load i32, i32* @test_PACKET_get_sub_packet, align 4
  %40 = call i32 @ADD_TEST(i32 %39)
  %41 = load i32, i32* @test_PACKET_get_bytes, align 4
  %42 = call i32 @ADD_TEST(i32 %41)
  %43 = load i32, i32* @test_PACKET_copy_bytes, align 4
  %44 = call i32 @ADD_TEST(i32 %43)
  %45 = load i32, i32* @test_PACKET_copy_all, align 4
  %46 = call i32 @ADD_TEST(i32 %45)
  %47 = load i32, i32* @test_PACKET_memdup, align 4
  %48 = call i32 @ADD_TEST(i32 %47)
  %49 = load i32, i32* @test_PACKET_strndup, align 4
  %50 = call i32 @ADD_TEST(i32 %49)
  %51 = load i32, i32* @test_PACKET_contains_zero_byte, align 4
  %52 = call i32 @ADD_TEST(i32 %51)
  %53 = load i32, i32* @test_PACKET_forward, align 4
  %54 = call i32 @ADD_TEST(i32 %53)
  %55 = load i32, i32* @test_PACKET_get_length_prefixed_1, align 4
  %56 = call i32 @ADD_TEST(i32 %55)
  %57 = load i32, i32* @test_PACKET_get_length_prefixed_2, align 4
  %58 = call i32 @ADD_TEST(i32 %57)
  %59 = load i32, i32* @test_PACKET_get_length_prefixed_3, align 4
  %60 = call i32 @ADD_TEST(i32 %59)
  %61 = load i32, i32* @test_PACKET_as_length_prefixed_1, align 4
  %62 = call i32 @ADD_TEST(i32 %61)
  %63 = load i32, i32* @test_PACKET_as_length_prefixed_2, align 4
  %64 = call i32 @ADD_TEST(i32 %63)
  ret i32 1
}

declare dso_local i32 @ADD_TEST(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
