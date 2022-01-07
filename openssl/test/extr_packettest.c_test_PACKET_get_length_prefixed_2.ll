; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_packettest.c_test_PACKET_get_length_prefixed_2.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_packettest.c_test_PACKET_get_length_prefixed_2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_PACKET_get_length_prefixed_2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_PACKET_get_length_prefixed_2() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [1024 x i8], align 16
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i64 516, i64* %3, align 8
  %8 = call i32 @memset(i32* %7, i32 0, i32 4)
  store i32 1, i32* %4, align 4
  br label %9

9:                                                ; preds = %21, %0
  %10 = load i32, i32* %4, align 4
  %11 = icmp ule i32 %10, 1024
  br i1 %11, label %12, label %24

12:                                               ; preds = %9
  %13 = load i32, i32* %4, align 4
  %14 = mul i32 %13, 2
  %15 = and i32 %14, 255
  %16 = trunc i32 %15 to i8
  %17 = load i32, i32* %4, align 4
  %18 = sub i32 %17, 1
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 %19
  store i8 %16, i8* %20, align 1
  br label %21

21:                                               ; preds = %12
  %22 = load i32, i32* %4, align 4
  %23 = add i32 %22, 1
  store i32 %23, i32* %4, align 4
  br label %9

24:                                               ; preds = %9
  %25 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0
  %26 = call i32 @PACKET_buf_init(i32* %5, i8* %25, i64 1024)
  %27 = call i32 @TEST_true(i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %58

29:                                               ; preds = %24
  %30 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0
  %31 = call i32 @PACKET_buf_init(i32* %6, i8* %30, i64 516)
  %32 = call i32 @TEST_true(i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %58

34:                                               ; preds = %29
  %35 = call i32 @PACKET_get_length_prefixed_2(i32* %5, i32* %7)
  %36 = call i32 @TEST_true(i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %58

38:                                               ; preds = %34
  %39 = call i32 @PACKET_remaining(i32* %7)
  %40 = call i32 @TEST_size_t_eq(i32 %39, i64 516)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %58

42:                                               ; preds = %38
  %43 = call i32 @PACKET_get_net_2(i32* %7, i32* %4)
  %44 = call i32 @TEST_true(i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %58

46:                                               ; preds = %42
  %47 = load i32, i32* %4, align 4
  %48 = call i32 @TEST_uint_eq(i32 %47, i32 1544)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %46
  %51 = call i32 @PACKET_get_length_prefixed_2(i32* %6, i32* %7)
  %52 = call i32 @TEST_false(i32 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %50
  %55 = call i32 @PACKET_remaining(i32* %6)
  %56 = call i32 @TEST_size_t_eq(i32 %55, i64 516)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %54, %50, %46, %42, %38, %34, %29, %24
  store i32 0, i32* %1, align 4
  br label %60

59:                                               ; preds = %54
  store i32 1, i32* %1, align 4
  br label %60

60:                                               ; preds = %59, %58
  %61 = load i32, i32* %1, align 4
  ret i32 %61
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @TEST_true(i32) #1

declare dso_local i32 @PACKET_buf_init(i32*, i8*, i64) #1

declare dso_local i32 @PACKET_get_length_prefixed_2(i32*, i32*) #1

declare dso_local i32 @TEST_size_t_eq(i32, i64) #1

declare dso_local i32 @PACKET_remaining(i32*) #1

declare dso_local i32 @PACKET_get_net_2(i32*, i32*) #1

declare dso_local i32 @TEST_uint_eq(i32, i32) #1

declare dso_local i32 @TEST_false(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
