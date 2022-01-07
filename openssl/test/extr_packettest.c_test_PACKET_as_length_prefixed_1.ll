; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_packettest.c_test_PACKET_as_length_prefixed_1.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_packettest.c_test_PACKET_as_length_prefixed_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BUF_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_PACKET_as_length_prefixed_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_PACKET_as_length_prefixed_1() #0 {
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
  br i1 %36, label %37, label %63

37:                                               ; preds = %31
  %38 = call i32 @PACKET_buf_init(i32* %7, i8* %13, i64 17)
  %39 = call i32 @TEST_true(i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %63

41:                                               ; preds = %37
  %42 = call i32 @PACKET_as_length_prefixed_1(i32* %6, i32* %8)
  %43 = call i32 @TEST_false(i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %63

45:                                               ; preds = %41
  %46 = call i32 @PACKET_remaining(i32* %6)
  %47 = load i32, i32* @BUF_LEN, align 4
  %48 = sext i32 %47 to i64
  %49 = call i32 @TEST_size_t_eq(i32 %46, i64 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %63

51:                                               ; preds = %45
  %52 = call i32 @PACKET_as_length_prefixed_1(i32* %7, i32* %8)
  %53 = call i32 @TEST_true(i32 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %63

55:                                               ; preds = %51
  %56 = call i32 @PACKET_remaining(i32* %7)
  %57 = call i32 @TEST_size_t_eq(i32 %56, i64 0)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %55
  %60 = call i32 @PACKET_remaining(i32* %8)
  %61 = call i32 @TEST_size_t_eq(i32 %60, i64 16)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %59, %55, %51, %45, %41, %37, %31
  store i32 0, i32* %1, align 4
  store i32 1, i32* %9, align 4
  br label %65

64:                                               ; preds = %59
  store i32 1, i32* %1, align 4
  store i32 1, i32* %9, align 4
  br label %65

65:                                               ; preds = %64, %63
  %66 = load i8*, i8** %2, align 8
  call void @llvm.stackrestore(i8* %66)
  %67 = load i32, i32* %1, align 4
  ret i32 %67
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @TEST_true(i32) #2

declare dso_local i32 @PACKET_buf_init(i32*, i8*, i64) #2

declare dso_local i32 @TEST_false(i32) #2

declare dso_local i32 @PACKET_as_length_prefixed_1(i32*, i32*) #2

declare dso_local i32 @TEST_size_t_eq(i32, i64) #2

declare dso_local i32 @PACKET_remaining(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
