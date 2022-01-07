; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_packettest.c_test_PACKET_copy_bytes.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_packettest.c_test_PACKET_copy_bytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@smbuf = common dso_local global i32 0, align 4
@BUF_LEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_PACKET_copy_bytes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_PACKET_copy_bytes() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [4 x i8], align 1
  %3 = alloca i32, align 4
  %4 = load i32, i32* @smbuf, align 4
  %5 = load i64, i64* @BUF_LEN, align 8
  %6 = call i32 @PACKET_buf_init(i32* %3, i32 %4, i64 %5)
  %7 = call i32 @TEST_true(i32 %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %75

9:                                                ; preds = %0
  %10 = getelementptr inbounds [4 x i8], [4 x i8]* %2, i64 0, i64 0
  %11 = call i32 @PACKET_copy_bytes(i32* %3, i8* %10, i32 4)
  %12 = call i32 @TEST_true(i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %75

14:                                               ; preds = %9
  %15 = getelementptr inbounds [4 x i8], [4 x i8]* %2, i64 0, i64 0
  %16 = load i8, i8* %15, align 1
  %17 = call i32 @TEST_char_eq(i8 zeroext %16, i32 2)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %75

19:                                               ; preds = %14
  %20 = getelementptr inbounds [4 x i8], [4 x i8]* %2, i64 0, i64 1
  %21 = load i8, i8* %20, align 1
  %22 = call i32 @TEST_char_eq(i8 zeroext %21, i32 4)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %75

24:                                               ; preds = %19
  %25 = getelementptr inbounds [4 x i8], [4 x i8]* %2, i64 0, i64 2
  %26 = load i8, i8* %25, align 1
  %27 = call i32 @TEST_char_eq(i8 zeroext %26, i32 6)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %75

29:                                               ; preds = %24
  %30 = getelementptr inbounds [4 x i8], [4 x i8]* %2, i64 0, i64 3
  %31 = load i8, i8* %30, align 1
  %32 = call i32 @TEST_char_eq(i8 zeroext %31, i32 8)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %75

34:                                               ; preds = %29
  %35 = call i32 @PACKET_remaining(i32* %3)
  %36 = load i64, i64* @BUF_LEN, align 8
  %37 = sub nsw i64 %36, 4
  %38 = call i32 @TEST_size_t_eq(i32 %35, i64 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %75

40:                                               ; preds = %34
  %41 = load i64, i64* @BUF_LEN, align 8
  %42 = sub nsw i64 %41, 8
  %43 = call i32 @PACKET_forward(i32* %3, i64 %42)
  %44 = call i32 @TEST_true(i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %75

46:                                               ; preds = %40
  %47 = getelementptr inbounds [4 x i8], [4 x i8]* %2, i64 0, i64 0
  %48 = call i32 @PACKET_copy_bytes(i32* %3, i8* %47, i32 4)
  %49 = call i32 @TEST_true(i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %75

51:                                               ; preds = %46
  %52 = getelementptr inbounds [4 x i8], [4 x i8]* %2, i64 0, i64 0
  %53 = load i8, i8* %52, align 1
  %54 = call i32 @TEST_uchar_eq(i8 zeroext %53, i32 248)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %75

56:                                               ; preds = %51
  %57 = getelementptr inbounds [4 x i8], [4 x i8]* %2, i64 0, i64 1
  %58 = load i8, i8* %57, align 1
  %59 = call i32 @TEST_uchar_eq(i8 zeroext %58, i32 250)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %75

61:                                               ; preds = %56
  %62 = getelementptr inbounds [4 x i8], [4 x i8]* %2, i64 0, i64 2
  %63 = load i8, i8* %62, align 1
  %64 = call i32 @TEST_uchar_eq(i8 zeroext %63, i32 252)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %75

66:                                               ; preds = %61
  %67 = getelementptr inbounds [4 x i8], [4 x i8]* %2, i64 0, i64 3
  %68 = load i8, i8* %67, align 1
  %69 = call i32 @TEST_uchar_eq(i8 zeroext %68, i32 254)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %66
  %72 = call i32 @PACKET_remaining(i32* %3)
  %73 = call i32 @TEST_false(i32 %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %71, %66, %61, %56, %51, %46, %40, %34, %29, %24, %19, %14, %9, %0
  store i32 0, i32* %1, align 4
  br label %77

76:                                               ; preds = %71
  store i32 1, i32* %1, align 4
  br label %77

77:                                               ; preds = %76, %75
  %78 = load i32, i32* %1, align 4
  ret i32 %78
}

declare dso_local i32 @TEST_true(i32) #1

declare dso_local i32 @PACKET_buf_init(i32*, i32, i64) #1

declare dso_local i32 @PACKET_copy_bytes(i32*, i8*, i32) #1

declare dso_local i32 @TEST_char_eq(i8 zeroext, i32) #1

declare dso_local i32 @TEST_size_t_eq(i32, i64) #1

declare dso_local i32 @PACKET_remaining(i32*) #1

declare dso_local i32 @PACKET_forward(i32*, i64) #1

declare dso_local i32 @TEST_uchar_eq(i8 zeroext, i32) #1

declare dso_local i32 @TEST_false(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
