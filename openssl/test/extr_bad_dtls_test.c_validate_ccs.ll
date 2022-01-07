; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_bad_dtls_test.c_validate_ccs.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_bad_dtls_test.c_validate_ccs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SSL3_RT_CHANGE_CIPHER_SPEC = common dso_local global i32 0, align 4
@DTLS1_BAD_VER = common dso_local global i32 0, align 4
@DTLS1_RT_HEADER_LENGTH = common dso_local global i64 0, align 8
@SSL3_MT_CCS = common dso_local global i32 0, align 4
@SSL3_RT_HANDSHAKE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @validate_ccs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @validate_ccs(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = call i64 @BIO_get_mem_data(i32* %8, i8** %6)
  store i64 %9, i64* %5, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = load i64, i64* %5, align 8
  %12 = call i32 @PACKET_buf_init(i32* %4, i8* %10, i64 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %76

15:                                               ; preds = %1
  %16 = call i32 @PACKET_get_1(i32* %4, i32* %7)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %15
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @SSL3_RT_CHANGE_CIPHER_SPEC, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %18, %15
  store i32 0, i32* %2, align 4
  br label %76

23:                                               ; preds = %18
  %24 = call i32 @PACKET_get_net_2(i32* %4, i32* %7)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %23
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @DTLS1_BAD_VER, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %26, %23
  store i32 0, i32* %2, align 4
  br label %76

31:                                               ; preds = %26
  %32 = load i64, i64* @DTLS1_RT_HEADER_LENGTH, align 8
  %33 = sub nsw i64 %32, 3
  %34 = call i32 @PACKET_forward(i32* %4, i64 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %31
  store i32 0, i32* %2, align 4
  br label %76

37:                                               ; preds = %31
  %38 = call i32 @PACKET_get_1(i32* %4, i32* %7)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %37
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* @SSL3_MT_CCS, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %40, %37
  store i32 0, i32* %2, align 4
  br label %76

45:                                               ; preds = %40
  %46 = call i32 @PACKET_get_net_2(i32* %4, i32* %7)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %45
  %49 = load i32, i32* %7, align 4
  %50 = icmp ne i32 %49, 2
  br i1 %50, label %51, label %52

51:                                               ; preds = %48, %45
  store i32 0, i32* %2, align 4
  br label %76

52:                                               ; preds = %48
  %53 = call i32 @PACKET_get_1(i32* %4, i32* %7)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %52
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* @SSL3_RT_HANDSHAKE, align 4
  %58 = icmp ne i32 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %55, %52
  store i32 0, i32* %2, align 4
  br label %76

60:                                               ; preds = %55
  %61 = call i32 @PACKET_get_net_2(i32* %4, i32* %7)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %60
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* @DTLS1_BAD_VER, align 4
  %66 = icmp ne i32 %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %63, %60
  store i32 0, i32* %2, align 4
  br label %76

68:                                               ; preds = %63
  %69 = call i32 @PACKET_get_net_2(i32* %4, i32* %7)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %68
  %72 = load i32, i32* %7, align 4
  %73 = icmp ne i32 %72, 1
  br i1 %73, label %74, label %75

74:                                               ; preds = %71, %68
  store i32 0, i32* %2, align 4
  br label %76

75:                                               ; preds = %71
  store i32 1, i32* %2, align 4
  br label %76

76:                                               ; preds = %75, %74, %67, %59, %51, %44, %36, %30, %22, %14
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local i64 @BIO_get_mem_data(i32*, i8**) #1

declare dso_local i32 @PACKET_buf_init(i32*, i8*, i64) #1

declare dso_local i32 @PACKET_get_1(i32*, i32*) #1

declare dso_local i32 @PACKET_get_net_2(i32*, i32*) #1

declare dso_local i32 @PACKET_forward(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
