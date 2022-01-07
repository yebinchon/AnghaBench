; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_servername_test.c_get_sni_from_client_hello.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_servername_test.c_get_sni_from_client_hello.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SSL3_RT_HEADER_LENGTH = common dso_local global i64 0, align 8
@SSL3_HM_HEADER_LENGTH = common dso_local global i64 0, align 8
@CLIENT_VERSION_LEN = common dso_local global i64 0, align 8
@SSL3_RANDOM_SIZE = common dso_local global i64 0, align 8
@TLSEXT_TYPE_server_name = common dso_local global i32 0, align 4
@TLSEXT_NAMETYPE_host_name = common dso_local global i32 0, align 4
@TLSEXT_MAXLEN_host_name = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8**)* @get_sni_from_client_hello to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_sni_from_client_hello(i32* %0, i8** %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i8** %1, i8*** %4, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %15 = call i32 @memset(i32* %7, i32 0, i32 4)
  %16 = call i32 @memset(i32* %8, i32 0, i32 4)
  %17 = call i32 @memset(i32* %9, i32 0, i32 4)
  %18 = call i32 @memset(i32* %10, i32 0, i32 4)
  %19 = call i32 @memset(i32* %11, i32 0, i32 4)
  %20 = load i32*, i32** %3, align 8
  %21 = call i64 @BIO_get_mem_data(i32* %20, i8** %6)
  store i64 %21, i64* %5, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = load i64, i64* %5, align 8
  %24 = call i32 @PACKET_buf_init(i32* %7, i8* %22, i64 %23)
  %25 = call i32 @TEST_true(i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %59

27:                                               ; preds = %2
  %28 = load i64, i64* @SSL3_RT_HEADER_LENGTH, align 8
  %29 = call i32 @PACKET_forward(i32* %7, i64 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %59

31:                                               ; preds = %27
  %32 = load i64, i64* @SSL3_HM_HEADER_LENGTH, align 8
  %33 = call i32 @PACKET_forward(i32* %7, i64 %32)
  %34 = call i32 @TEST_true(i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %59

36:                                               ; preds = %31
  %37 = load i64, i64* @CLIENT_VERSION_LEN, align 8
  %38 = load i64, i64* @SSL3_RANDOM_SIZE, align 8
  %39 = add nsw i64 %37, %38
  %40 = call i32 @PACKET_forward(i32* %7, i64 %39)
  %41 = call i32 @TEST_true(i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %59

43:                                               ; preds = %36
  %44 = call i32 @PACKET_get_length_prefixed_1(i32* %7, i32* %8)
  %45 = call i32 @TEST_true(i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %59

47:                                               ; preds = %43
  %48 = call i32 @PACKET_get_length_prefixed_2(i32* %7, i32* %8)
  %49 = call i32 @TEST_true(i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %47
  %52 = call i32 @PACKET_get_length_prefixed_1(i32* %7, i32* %8)
  %53 = call i32 @TEST_true(i32 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %51
  %56 = call i32 @PACKET_as_length_prefixed_2(i32* %7, i32* %8)
  %57 = call i32 @TEST_true(i32 %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %55, %51, %47, %43, %36, %31, %27, %2
  br label %116

60:                                               ; preds = %55
  br label %61

61:                                               ; preds = %114, %60
  %62 = call i64 @PACKET_remaining(i32* %8)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %115

64:                                               ; preds = %61
  %65 = call i32 @PACKET_get_net_2(i32* %8, i32* %13)
  %66 = call i32 @TEST_true(i32 %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %64
  %69 = call i32 @PACKET_get_length_prefixed_2(i32* %8, i32* %9)
  %70 = call i32 @TEST_true(i32 %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %68, %64
  br label %116

73:                                               ; preds = %68
  %74 = load i32, i32* %13, align 4
  %75 = load i32, i32* @TLSEXT_TYPE_server_name, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %114

77:                                               ; preds = %73
  %78 = call i32 @PACKET_get_length_prefixed_2(i32* %9, i32* %10)
  %79 = call i32 @TEST_true(i32 %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %112

81:                                               ; preds = %77
  %82 = call i64 @PACKET_remaining(i32* %10)
  %83 = call i32 @TEST_uint_ne(i64 %82, i32 0)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %112

85:                                               ; preds = %81
  %86 = call i32 @PACKET_get_1(i32* %10, i32* %12)
  %87 = call i32 @TEST_true(i32 %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %112

89:                                               ; preds = %85
  %90 = load i32, i32* %12, align 4
  %91 = load i32, i32* @TLSEXT_NAMETYPE_host_name, align 4
  %92 = call i32 @TEST_uint_eq(i32 %90, i32 %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %112

94:                                               ; preds = %89
  %95 = call i32 @PACKET_get_length_prefixed_2(i32* %10, i32* %11)
  %96 = call i32 @TEST_true(i32 %95)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %112

98:                                               ; preds = %94
  %99 = call i64 @PACKET_remaining(i32* %11)
  %100 = load i32, i32* @TLSEXT_MAXLEN_host_name, align 4
  %101 = call i32 @TEST_uint_le(i64 %99, i32 %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %112

103:                                              ; preds = %98
  %104 = call i32 @PACKET_contains_zero_byte(i32* %11)
  %105 = call i32 @TEST_false(i32 %104)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %103
  %108 = load i8**, i8*** %4, align 8
  %109 = call i32 @PACKET_strndup(i32* %11, i8** %108)
  %110 = call i32 @TEST_true(i32 %109)
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %113, label %112

112:                                              ; preds = %107, %103, %98, %94, %89, %85, %81, %77
  br label %116

113:                                              ; preds = %107
  store i32 1, i32* %14, align 4
  br label %116

114:                                              ; preds = %73
  br label %61

115:                                              ; preds = %61
  br label %116

116:                                              ; preds = %115, %113, %112, %72, %59
  %117 = load i32, i32* %14, align 4
  ret i32 %117
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i64 @BIO_get_mem_data(i32*, i8**) #1

declare dso_local i32 @TEST_true(i32) #1

declare dso_local i32 @PACKET_buf_init(i32*, i8*, i64) #1

declare dso_local i32 @PACKET_forward(i32*, i64) #1

declare dso_local i32 @PACKET_get_length_prefixed_1(i32*, i32*) #1

declare dso_local i32 @PACKET_get_length_prefixed_2(i32*, i32*) #1

declare dso_local i32 @PACKET_as_length_prefixed_2(i32*, i32*) #1

declare dso_local i64 @PACKET_remaining(i32*) #1

declare dso_local i32 @PACKET_get_net_2(i32*, i32*) #1

declare dso_local i32 @TEST_uint_ne(i64, i32) #1

declare dso_local i32 @PACKET_get_1(i32*, i32*) #1

declare dso_local i32 @TEST_uint_eq(i32, i32) #1

declare dso_local i32 @TEST_uint_le(i64, i32) #1

declare dso_local i32 @TEST_false(i32) #1

declare dso_local i32 @PACKET_contains_zero_byte(i32*) #1

declare dso_local i32 @PACKET_strndup(i32*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
