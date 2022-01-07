; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_packettest.c_test_PACKET_get_length_prefixed_3.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_packettest.c_test_PACKET_get_length_prefixed_3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_PACKET_get_length_prefixed_3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_PACKET_get_length_prefixed_3() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [1024 x i8], align 16
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i64 516, i64* %3, align 8
  %8 = call i32 @memset(i32* %7, i32 0, i32 4)
  store i32 0, i32* %4, align 4
  br label %9

9:                                                ; preds = %20, %0
  %10 = load i32, i32* %4, align 4
  %11 = icmp ult i32 %10, 1024
  br i1 %11, label %12, label %23

12:                                               ; preds = %9
  %13 = load i32, i32* %4, align 4
  %14 = mul i32 %13, 2
  %15 = and i32 %14, 255
  %16 = trunc i32 %15 to i8
  %17 = load i32, i32* %4, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 %18
  store i8 %16, i8* %19, align 1
  br label %20

20:                                               ; preds = %12
  %21 = load i32, i32* %4, align 4
  %22 = add i32 %21, 1
  store i32 %22, i32* %4, align 4
  br label %9

23:                                               ; preds = %9
  %24 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0
  %25 = call i32 @PACKET_buf_init(i32* %5, i8* %24, i64 1024)
  %26 = call i32 @TEST_true(i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %57

28:                                               ; preds = %23
  %29 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0
  %30 = call i32 @PACKET_buf_init(i32* %6, i8* %29, i64 516)
  %31 = call i32 @TEST_true(i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %57

33:                                               ; preds = %28
  %34 = call i32 @PACKET_get_length_prefixed_3(i32* %5, i32* %7)
  %35 = call i32 @TEST_true(i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %57

37:                                               ; preds = %33
  %38 = call i32 @PACKET_remaining(i32* %7)
  %39 = call i32 @TEST_size_t_eq(i32 %38, i64 516)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %57

41:                                               ; preds = %37
  %42 = call i32 @PACKET_get_net_2(i32* %7, i32* %4)
  %43 = call i32 @TEST_true(i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %57

45:                                               ; preds = %41
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @TEST_uint_eq(i32 %46, i32 1544)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %45
  %50 = call i32 @PACKET_get_length_prefixed_3(i32* %6, i32* %7)
  %51 = call i32 @TEST_false(i32 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %49
  %54 = call i32 @PACKET_remaining(i32* %6)
  %55 = call i32 @TEST_size_t_eq(i32 %54, i64 516)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %53, %49, %45, %41, %37, %33, %28, %23
  store i32 0, i32* %1, align 4
  br label %59

58:                                               ; preds = %53
  store i32 1, i32* %1, align 4
  br label %59

59:                                               ; preds = %58, %57
  %60 = load i32, i32* %1, align 4
  ret i32 %60
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @TEST_true(i32) #1

declare dso_local i32 @PACKET_buf_init(i32*, i8*, i64) #1

declare dso_local i32 @PACKET_get_length_prefixed_3(i32*, i32*) #1

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
