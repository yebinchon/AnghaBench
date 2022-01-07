; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_packettest.c_test_PACKET_get_bytes.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_packettest.c_test_PACKET_get_bytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@smbuf = common dso_local global i32 0, align 4
@BUF_LEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_PACKET_get_bytes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_PACKET_get_bytes() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* null, i8** %2, align 8
  %4 = load i32, i32* @smbuf, align 4
  %5 = load i64, i64* @BUF_LEN, align 8
  %6 = call i32 @PACKET_buf_init(i32* %3, i32 %4, i64 %5)
  %7 = call i32 @TEST_true(i32 %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %81

9:                                                ; preds = %0
  %10 = call i32 @PACKET_get_bytes(i32* %3, i8** %2, i32 4)
  %11 = call i32 @TEST_true(i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %81

13:                                               ; preds = %9
  %14 = load i8*, i8** %2, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 0
  %16 = load i8, i8* %15, align 1
  %17 = call i32 @TEST_uchar_eq(i8 zeroext %16, i32 2)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %81

19:                                               ; preds = %13
  %20 = load i8*, i8** %2, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 1
  %22 = load i8, i8* %21, align 1
  %23 = call i32 @TEST_uchar_eq(i8 zeroext %22, i32 4)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %81

25:                                               ; preds = %19
  %26 = load i8*, i8** %2, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 2
  %28 = load i8, i8* %27, align 1
  %29 = call i32 @TEST_uchar_eq(i8 zeroext %28, i32 6)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %81

31:                                               ; preds = %25
  %32 = load i8*, i8** %2, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 3
  %34 = load i8, i8* %33, align 1
  %35 = call i32 @TEST_uchar_eq(i8 zeroext %34, i32 8)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %81

37:                                               ; preds = %31
  %38 = call i32 @PACKET_remaining(i32* %3)
  %39 = load i64, i64* @BUF_LEN, align 8
  %40 = sub nsw i64 %39, 4
  %41 = call i32 @TEST_size_t_eq(i32 %38, i64 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %81

43:                                               ; preds = %37
  %44 = load i64, i64* @BUF_LEN, align 8
  %45 = sub nsw i64 %44, 8
  %46 = call i32 @PACKET_forward(i32* %3, i64 %45)
  %47 = call i32 @TEST_true(i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %81

49:                                               ; preds = %43
  %50 = call i32 @PACKET_get_bytes(i32* %3, i8** %2, i32 4)
  %51 = call i32 @TEST_true(i32 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %81

53:                                               ; preds = %49
  %54 = load i8*, i8** %2, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 0
  %56 = load i8, i8* %55, align 1
  %57 = call i32 @TEST_uchar_eq(i8 zeroext %56, i32 248)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %81

59:                                               ; preds = %53
  %60 = load i8*, i8** %2, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 1
  %62 = load i8, i8* %61, align 1
  %63 = call i32 @TEST_uchar_eq(i8 zeroext %62, i32 250)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %81

65:                                               ; preds = %59
  %66 = load i8*, i8** %2, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 2
  %68 = load i8, i8* %67, align 1
  %69 = call i32 @TEST_uchar_eq(i8 zeroext %68, i32 252)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %81

71:                                               ; preds = %65
  %72 = load i8*, i8** %2, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 3
  %74 = load i8, i8* %73, align 1
  %75 = call i32 @TEST_uchar_eq(i8 zeroext %74, i32 254)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %71
  %78 = call i32 @PACKET_remaining(i32* %3)
  %79 = call i32 @TEST_false(i32 %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %82, label %81

81:                                               ; preds = %77, %71, %65, %59, %53, %49, %43, %37, %31, %25, %19, %13, %9, %0
  store i32 0, i32* %1, align 4
  br label %83

82:                                               ; preds = %77
  store i32 1, i32* %1, align 4
  br label %83

83:                                               ; preds = %82, %81
  %84 = load i32, i32* %1, align 4
  ret i32 %84
}

declare dso_local i32 @TEST_true(i32) #1

declare dso_local i32 @PACKET_buf_init(i32*, i32, i64) #1

declare dso_local i32 @PACKET_get_bytes(i32*, i8**, i32) #1

declare dso_local i32 @TEST_uchar_eq(i8 zeroext, i32) #1

declare dso_local i32 @TEST_size_t_eq(i32, i64) #1

declare dso_local i32 @PACKET_remaining(i32*) #1

declare dso_local i32 @PACKET_forward(i32*, i64) #1

declare dso_local i32 @TEST_false(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
