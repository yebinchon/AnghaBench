; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_packettest.c_test_PACKET_get_length_prefixed_1.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_packettest.c_test_PACKET_get_length_prefixed_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BUF_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_PACKET_get_length_prefixed_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_PACKET_get_length_prefixed_1() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = load i32, i32* @BUF_LEN, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %2, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %3, align 8
  store i64 16, i64* %4, align 8
  %14 = call i32 @memset(i32* %8, i32 0, i32 4)
  %15 = getelementptr inbounds i8, i8* %13, i64 0
  store i8 16, i8* %15, align 16
  store i32 1, i32* %5, align 4
  br label %16

16:                                               ; preds = %28, %0
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @BUF_LEN, align 4
  %19 = icmp ult i32 %17, %18
  br i1 %19, label %20, label %31

20:                                               ; preds = %16
  %21 = load i32, i32* %5, align 4
  %22 = mul i32 %21, 2
  %23 = and i32 %22, 255
  %24 = trunc i32 %23 to i8
  %25 = load i32, i32* %5, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds i8, i8* %13, i64 %26
  store i8 %24, i8* %27, align 1
  br label %28

28:                                               ; preds = %20
  %29 = load i32, i32* %5, align 4
  %30 = add i32 %29, 1
  store i32 %30, i32* %5, align 4
  br label %16

31:                                               ; preds = %16
  %32 = load i32, i32* @BUF_LEN, align 4
  %33 = sext i32 %32 to i64
  %34 = call i32 @PACKET_buf_init(i32* %6, i8* %13, i64 %33)
  %35 = call i32 @TEST_true(i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %65

37:                                               ; preds = %31
  %38 = call i32 @PACKET_buf_init(i32* %7, i8* %13, i64 16)
  %39 = call i32 @TEST_true(i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %65

41:                                               ; preds = %37
  %42 = call i32 @PACKET_get_length_prefixed_1(i32* %6, i32* %8)
  %43 = call i32 @TEST_true(i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %65

45:                                               ; preds = %41
  %46 = call i32 @PACKET_remaining(i32* %8)
  %47 = call i32 @TEST_size_t_eq(i32 %46, i64 16)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %65

49:                                               ; preds = %45
  %50 = call i32 @PACKET_get_net_2(i32* %8, i32* %5)
  %51 = call i32 @TEST_true(i32 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %65

53:                                               ; preds = %49
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @TEST_uint_eq(i32 %54, i32 516)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %53
  %58 = call i32 @PACKET_get_length_prefixed_1(i32* %7, i32* %8)
  %59 = call i32 @TEST_false(i32 %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %57
  %62 = call i32 @PACKET_remaining(i32* %7)
  %63 = call i32 @TEST_size_t_eq(i32 %62, i64 16)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %61, %57, %53, %49, %45, %41, %37, %31
  store i32 0, i32* %1, align 4
  store i32 1, i32* %9, align 4
  br label %67

66:                                               ; preds = %61
  store i32 1, i32* %1, align 4
  store i32 1, i32* %9, align 4
  br label %67

67:                                               ; preds = %66, %65
  %68 = load i8*, i8** %2, align 8
  call void @llvm.stackrestore(i8* %68)
  %69 = load i32, i32* %1, align 4
  ret i32 %69
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @TEST_true(i32) #2

declare dso_local i32 @PACKET_buf_init(i32*, i8*, i64) #2

declare dso_local i32 @PACKET_get_length_prefixed_1(i32*, i32*) #2

declare dso_local i32 @TEST_size_t_eq(i32, i64) #2

declare dso_local i32 @PACKET_remaining(i32*) #2

declare dso_local i32 @PACKET_get_net_2(i32*, i32*) #2

declare dso_local i32 @TEST_uint_eq(i32, i32) #2

declare dso_local i32 @TEST_false(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
