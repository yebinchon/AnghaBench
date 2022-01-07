; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_recordlentest.c_test_record_overflow.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_recordlentest.c_test_record_overflow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TLS1_VERSION = common dso_local global i32 0, align 4
@cert = common dso_local global i32 0, align 4
@privkey = common dso_local global i32 0, align 4
@TEST_ENCRYPTED_OVERFLOW_TLS1_2_OK = common dso_local global i32 0, align 4
@TEST_ENCRYPTED_OVERFLOW_TLS1_2_NOT_OK = common dso_local global i32 0, align 4
@SSL3_RT_MAX_ENCRYPTED_LENGTH = common dso_local global i64 0, align 8
@SSL3_RT_MAX_COMPRESSED_OVERHEAD = common dso_local global i64 0, align 8
@TLS1_2_VERSION = common dso_local global i32 0, align 4
@TEST_ENCRYPTED_OVERFLOW_TLS1_3_OK = common dso_local global i32 0, align 4
@TEST_ENCRYPTED_OVERFLOW_TLS1_3_NOT_OK = common dso_local global i32 0, align 4
@SSL3_RT_MAX_TLS13_ENCRYPTED_LENGTH = common dso_local global i64 0, align 8
@TEST_PLAINTEXT_OVERFLOW_OK = common dso_local global i32 0, align 4
@TEST_PLAINTEXT_OVERFLOW_NOT_OK = common dso_local global i32 0, align 4
@SSL3_RT_MAX_PLAIN_LENGTH = common dso_local global i64 0, align 8
@SSL3_RT_HANDSHAKE = common dso_local global i32 0, align 4
@SSL_ERROR_NONE = common dso_local global i32 0, align 4
@SSL3_RT_APPLICATION_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @test_record_overflow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_record_overflow(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32* null, i32** %3, align 8
  store i32* null, i32** %4, align 8
  store i32* null, i32** %5, align 8
  store i32* null, i32** %6, align 8
  store i32 0, i32* %7, align 4
  store i64 0, i64* %8, align 8
  %14 = call i32 (...) @ERR_clear_error()
  %15 = call i32 (...) @TLS_server_method()
  %16 = call i32 (...) @TLS_client_method()
  %17 = load i32, i32* @TLS1_VERSION, align 4
  %18 = load i32, i32* @cert, align 4
  %19 = load i32, i32* @privkey, align 4
  %20 = call i32 @create_ssl_ctx_pair(i32 %15, i32 %16, i32 %17, i32 0, i32** %4, i32** %3, i32 %18, i32 %19)
  %21 = call i32 @TEST_true(i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %1
  br label %147

24:                                               ; preds = %1
  %25 = load i32, i32* %2, align 4
  %26 = load i32, i32* @TEST_ENCRYPTED_OVERFLOW_TLS1_2_OK, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %32, label %28

28:                                               ; preds = %24
  %29 = load i32, i32* %2, align 4
  %30 = load i32, i32* @TEST_ENCRYPTED_OVERFLOW_TLS1_2_NOT_OK, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %40

32:                                               ; preds = %28, %24
  %33 = load i64, i64* @SSL3_RT_MAX_ENCRYPTED_LENGTH, align 8
  store i64 %33, i64* %8, align 8
  %34 = load i64, i64* @SSL3_RT_MAX_COMPRESSED_OVERHEAD, align 8
  %35 = load i64, i64* %8, align 8
  %36 = sub i64 %35, %34
  store i64 %36, i64* %8, align 8
  %37 = load i32*, i32** %4, align 8
  %38 = load i32, i32* @TLS1_2_VERSION, align 4
  %39 = call i32 @SSL_CTX_set_max_proto_version(i32* %37, i32 %38)
  br label %51

40:                                               ; preds = %28
  %41 = load i32, i32* %2, align 4
  %42 = load i32, i32* @TEST_ENCRYPTED_OVERFLOW_TLS1_3_OK, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %48, label %44

44:                                               ; preds = %40
  %45 = load i32, i32* %2, align 4
  %46 = load i32, i32* @TEST_ENCRYPTED_OVERFLOW_TLS1_3_NOT_OK, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %44, %40
  %49 = load i64, i64* @SSL3_RT_MAX_TLS13_ENCRYPTED_LENGTH, align 8
  store i64 %49, i64* %8, align 8
  br label %50

50:                                               ; preds = %48, %44
  br label %51

51:                                               ; preds = %50, %32
  %52 = load i32*, i32** %4, align 8
  %53 = load i32*, i32** %3, align 8
  %54 = call i32 @create_ssl_objects(i32* %52, i32* %53, i32** %6, i32** %5, i32* null, i32* null)
  %55 = call i32 @TEST_true(i32 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %51
  br label %147

58:                                               ; preds = %51
  %59 = load i32*, i32** %6, align 8
  %60 = call i32* @SSL_get_rbio(i32* %59)
  store i32* %60, i32** %12, align 8
  %61 = load i32, i32* %2, align 4
  %62 = load i32, i32* @TEST_PLAINTEXT_OVERFLOW_OK, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %68, label %64

64:                                               ; preds = %58
  %65 = load i32, i32* %2, align 4
  %66 = load i32, i32* @TEST_PLAINTEXT_OVERFLOW_NOT_OK, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %103

68:                                               ; preds = %64, %58
  %69 = load i64, i64* @SSL3_RT_MAX_PLAIN_LENGTH, align 8
  store i64 %69, i64* %8, align 8
  %70 = load i32, i32* %2, align 4
  %71 = load i32, i32* @TEST_PLAINTEXT_OVERFLOW_NOT_OK, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %68
  %74 = load i64, i64* %8, align 8
  %75 = add i64 %74, 1
  store i64 %75, i64* %8, align 8
  br label %76

76:                                               ; preds = %73, %68
  %77 = load i32*, i32** %12, align 8
  %78 = load i64, i64* %8, align 8
  %79 = load i32, i32* @SSL3_RT_HANDSHAKE, align 4
  %80 = load i32, i32* @TLS1_VERSION, align 4
  %81 = call i32 @write_record(i32* %77, i64 %78, i32 %79, i32 %80)
  %82 = call i32 @TEST_true(i32 %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %76
  br label %147

85:                                               ; preds = %76
  %86 = load i32*, i32** %6, align 8
  %87 = call i32 @SSL_accept(i32* %86)
  %88 = call i32 @TEST_int_le(i32 %87, i32 0)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %91, label %90

90:                                               ; preds = %85
  br label %147

91:                                               ; preds = %85
  %92 = load i32, i32* %2, align 4
  %93 = load i32, i32* @TEST_PLAINTEXT_OVERFLOW_OK, align 4
  %94 = icmp eq i32 %92, %93
  %95 = zext i1 %94 to i64
  %96 = select i1 %94, i32 0, i32 1
  store i32 %96, i32* %10, align 4
  %97 = call i32 @fail_due_to_record_overflow(i32 0)
  %98 = load i32, i32* %10, align 4
  %99 = call i32 @TEST_int_eq(i32 %97, i32 %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %102, label %101

101:                                              ; preds = %91
  br label %147

102:                                              ; preds = %91
  br label %146

103:                                              ; preds = %64
  %104 = load i32*, i32** %6, align 8
  %105 = load i32*, i32** %5, align 8
  %106 = load i32, i32* @SSL_ERROR_NONE, align 4
  %107 = call i32 @create_ssl_connection(i32* %104, i32* %105, i32 %106)
  %108 = call i32 @TEST_true(i32 %107)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %111, label %110

110:                                              ; preds = %103
  br label %147

111:                                              ; preds = %103
  %112 = load i32, i32* %2, align 4
  %113 = load i32, i32* @TEST_ENCRYPTED_OVERFLOW_TLS1_2_NOT_OK, align 4
  %114 = icmp eq i32 %112, %113
  br i1 %114, label %119, label %115

115:                                              ; preds = %111
  %116 = load i32, i32* %2, align 4
  %117 = load i32, i32* @TEST_ENCRYPTED_OVERFLOW_TLS1_3_NOT_OK, align 4
  %118 = icmp eq i32 %116, %117
  br i1 %118, label %119, label %122

119:                                              ; preds = %115, %111
  store i32 1, i32* %10, align 4
  %120 = load i64, i64* %8, align 8
  %121 = add i64 %120, 1
  store i64 %121, i64* %8, align 8
  br label %123

122:                                              ; preds = %115
  store i32 0, i32* %10, align 4
  br label %123

123:                                              ; preds = %122, %119
  %124 = load i32, i32* @TLS1_2_VERSION, align 4
  store i32 %124, i32* %13, align 4
  %125 = load i32*, i32** %12, align 8
  %126 = load i64, i64* %8, align 8
  %127 = load i32, i32* @SSL3_RT_APPLICATION_DATA, align 4
  %128 = load i32, i32* %13, align 4
  %129 = call i32 @write_record(i32* %125, i64 %126, i32 %127, i32 %128)
  %130 = call i32 @TEST_true(i32 %129)
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %133, label %132

132:                                              ; preds = %123
  br label %147

133:                                              ; preds = %123
  %134 = load i32*, i32** %6, align 8
  %135 = call i32 @SSL_read_ex(i32* %134, i8* %11, i32 1, i64* %9)
  %136 = call i32 @TEST_false(i32 %135)
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %139, label %138

138:                                              ; preds = %133
  br label %147

139:                                              ; preds = %133
  %140 = call i32 @fail_due_to_record_overflow(i32 1)
  %141 = load i32, i32* %10, align 4
  %142 = call i32 @TEST_int_eq(i32 %140, i32 %141)
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %145, label %144

144:                                              ; preds = %139
  br label %147

145:                                              ; preds = %139
  br label %146

146:                                              ; preds = %145, %102
  store i32 1, i32* %7, align 4
  br label %147

147:                                              ; preds = %146, %144, %138, %132, %110, %101, %90, %84, %57, %23
  %148 = load i32*, i32** %6, align 8
  %149 = call i32 @SSL_free(i32* %148)
  %150 = load i32*, i32** %5, align 8
  %151 = call i32 @SSL_free(i32* %150)
  %152 = load i32*, i32** %4, align 8
  %153 = call i32 @SSL_CTX_free(i32* %152)
  %154 = load i32*, i32** %3, align 8
  %155 = call i32 @SSL_CTX_free(i32* %154)
  %156 = load i32, i32* %7, align 4
  ret i32 %156
}

declare dso_local i32 @ERR_clear_error(...) #1

declare dso_local i32 @TEST_true(i32) #1

declare dso_local i32 @create_ssl_ctx_pair(i32, i32, i32, i32, i32**, i32**, i32, i32) #1

declare dso_local i32 @TLS_server_method(...) #1

declare dso_local i32 @TLS_client_method(...) #1

declare dso_local i32 @SSL_CTX_set_max_proto_version(i32*, i32) #1

declare dso_local i32 @create_ssl_objects(i32*, i32*, i32**, i32**, i32*, i32*) #1

declare dso_local i32* @SSL_get_rbio(i32*) #1

declare dso_local i32 @write_record(i32*, i64, i32, i32) #1

declare dso_local i32 @TEST_int_le(i32, i32) #1

declare dso_local i32 @SSL_accept(i32*) #1

declare dso_local i32 @TEST_int_eq(i32, i32) #1

declare dso_local i32 @fail_due_to_record_overflow(i32) #1

declare dso_local i32 @create_ssl_connection(i32*, i32*, i32) #1

declare dso_local i32 @TEST_false(i32) #1

declare dso_local i32 @SSL_read_ex(i32*, i8*, i32, i64*) #1

declare dso_local i32 @SSL_free(i32*) #1

declare dso_local i32 @SSL_CTX_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
