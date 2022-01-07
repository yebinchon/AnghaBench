; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_dtlstest.c_test_dtls_drop_records.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_dtlstest.c_test_dtls_drop_records.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DTLS1_VERSION = common dso_local global i32 0, align 4
@cert = common dso_local global i32 0, align 4
@privkey = common dso_local global i32 0, align 4
@TOTAL_FULL_HAND_RECORDS = common dso_local global i32 0, align 4
@SSL_ERROR_NONE = common dso_local global i32 0, align 4
@CLI_TO_SRV_RESUME_EPOCH_0_RECS = common dso_local global i32 0, align 4
@CLI_TO_SRV_RESUME_EPOCH_1_RECS = common dso_local global i32 0, align 4
@SRV_TO_CLI_RESUME_EPOCH_0_RECS = common dso_local global i32 0, align 4
@CLI_TO_SRV_EPOCH_0_RECS = common dso_local global i32 0, align 4
@CLI_TO_SRV_EPOCH_1_RECS = common dso_local global i32 0, align 4
@SRV_TO_CLI_EPOCH_0_RECS = common dso_local global i32 0, align 4
@timer_cb = common dso_local global i32 0, align 4
@MEMPACKET_CTRL_SET_DROP_EPOCH = common dso_local global i32 0, align 4
@MEMPACKET_CTRL_SET_DROP_REC = common dso_local global i32 0, align 4
@MEMPACKET_CTRL_GET_DROP_REC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @test_dtls_drop_records to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_dtls_drop_records(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32* null, i32** %4, align 8
  store i32* null, i32** %5, align 8
  store i32* null, i32** %6, align 8
  store i32* null, i32** %7, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32* null, i32** %12, align 8
  %16 = call i32 (...) @DTLS_server_method()
  %17 = call i32 (...) @DTLS_client_method()
  %18 = load i32, i32* @DTLS1_VERSION, align 4
  %19 = load i32, i32* @cert, align 4
  %20 = load i32, i32* @privkey, align 4
  %21 = call i32 @create_ssl_ctx_pair(i32 %16, i32 %17, i32 %18, i32 0, i32** %4, i32** %5, i32 %19, i32 %20)
  %22 = call i32 @TEST_true(i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %180

25:                                               ; preds = %1
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* @TOTAL_FULL_HAND_RECORDS, align 4
  %28 = icmp sge i32 %26, %27
  br i1 %28, label %29, label %63

29:                                               ; preds = %25
  %30 = load i32*, i32** %4, align 8
  %31 = load i32*, i32** %5, align 8
  %32 = call i32 @create_ssl_objects(i32* %30, i32* %31, i32** %6, i32** %7, i32* null, i32* null)
  %33 = call i32 @TEST_true(i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %47

35:                                               ; preds = %29
  %36 = load i32*, i32** %6, align 8
  %37 = load i32*, i32** %7, align 8
  %38 = load i32, i32* @SSL_ERROR_NONE, align 4
  %39 = call i32 @create_ssl_connection(i32* %36, i32* %37, i32 %38)
  %40 = call i32 @TEST_true(i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %35
  %43 = load i32*, i32** %7, align 8
  %44 = call i32* @SSL_get1_session(i32* %43)
  store i32* %44, i32** %12, align 8
  %45 = call i32 @TEST_ptr(i32* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %42, %35, %29
  br label %168

48:                                               ; preds = %42
  %49 = load i32*, i32** %7, align 8
  %50 = call i32 @SSL_shutdown(i32* %49)
  %51 = load i32*, i32** %6, align 8
  %52 = call i32 @SSL_shutdown(i32* %51)
  %53 = load i32*, i32** %6, align 8
  %54 = call i32 @SSL_free(i32* %53)
  %55 = load i32*, i32** %7, align 8
  %56 = call i32 @SSL_free(i32* %55)
  store i32* null, i32** %7, align 8
  store i32* null, i32** %6, align 8
  %57 = load i32, i32* @CLI_TO_SRV_RESUME_EPOCH_0_RECS, align 4
  store i32 %57, i32* %13, align 4
  %58 = load i32, i32* @CLI_TO_SRV_RESUME_EPOCH_1_RECS, align 4
  store i32 %58, i32* %14, align 4
  %59 = load i32, i32* @SRV_TO_CLI_RESUME_EPOCH_0_RECS, align 4
  store i32 %59, i32* %15, align 4
  %60 = load i32, i32* @TOTAL_FULL_HAND_RECORDS, align 4
  %61 = load i32, i32* %3, align 4
  %62 = sub nsw i32 %61, %60
  store i32 %62, i32* %3, align 4
  br label %67

63:                                               ; preds = %25
  %64 = load i32, i32* @CLI_TO_SRV_EPOCH_0_RECS, align 4
  store i32 %64, i32* %13, align 4
  %65 = load i32, i32* @CLI_TO_SRV_EPOCH_1_RECS, align 4
  store i32 %65, i32* %14, align 4
  %66 = load i32, i32* @SRV_TO_CLI_EPOCH_0_RECS, align 4
  store i32 %66, i32* %15, align 4
  br label %67

67:                                               ; preds = %63, %48
  %68 = call i32 (...) @bio_f_tls_dump_filter()
  %69 = call i32* @BIO_new(i32 %68)
  store i32* %69, i32** %8, align 8
  %70 = load i32*, i32** %8, align 8
  %71 = call i32 @TEST_ptr(i32* %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %67
  br label %168

74:                                               ; preds = %67
  %75 = load i32*, i32** %4, align 8
  %76 = load i32*, i32** %5, align 8
  %77 = load i32*, i32** %8, align 8
  %78 = call i32 @create_ssl_objects(i32* %75, i32* %76, i32** %6, i32** %7, i32* null, i32* %77)
  %79 = call i32 @TEST_true(i32 %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %82, label %81

81:                                               ; preds = %74
  br label %168

82:                                               ; preds = %74
  %83 = load i32*, i32** %12, align 8
  %84 = icmp ne i32* %83, null
  br i1 %84, label %85, label %93

85:                                               ; preds = %82
  %86 = load i32*, i32** %7, align 8
  %87 = load i32*, i32** %12, align 8
  %88 = call i32 @SSL_set_session(i32* %86, i32* %87)
  %89 = call i32 @TEST_true(i32 %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %92, label %91

91:                                               ; preds = %85
  br label %168

92:                                               ; preds = %85
  br label %93

93:                                               ; preds = %92, %82
  %94 = load i32*, i32** %7, align 8
  %95 = load i32, i32* @timer_cb, align 4
  %96 = call i32 @DTLS_set_timer_cb(i32* %94, i32 %95)
  %97 = load i32*, i32** %6, align 8
  %98 = load i32, i32* @timer_cb, align 4
  %99 = call i32 @DTLS_set_timer_cb(i32* %97, i32 %98)
  %100 = load i32, i32* %3, align 4
  %101 = load i32, i32* %13, align 4
  %102 = load i32, i32* %14, align 4
  %103 = add nsw i32 %101, %102
  %104 = icmp sge i32 %100, %103
  br i1 %104, label %105, label %121

105:                                              ; preds = %93
  %106 = load i32*, i32** %6, align 8
  %107 = call i32* @SSL_get_wbio(i32* %106)
  store i32* %107, i32** %9, align 8
  %108 = load i32, i32* %13, align 4
  %109 = load i32, i32* %14, align 4
  %110 = add nsw i32 %108, %109
  %111 = load i32, i32* %3, align 4
  %112 = sub nsw i32 %111, %110
  store i32 %112, i32* %3, align 4
  %113 = load i32, i32* %3, align 4
  %114 = load i32, i32* %15, align 4
  %115 = icmp sge i32 %113, %114
  br i1 %115, label %116, label %120

116:                                              ; preds = %105
  store i32 1, i32* %11, align 4
  %117 = load i32, i32* %15, align 4
  %118 = load i32, i32* %3, align 4
  %119 = sub nsw i32 %118, %117
  store i32 %119, i32* %3, align 4
  br label %120

120:                                              ; preds = %116, %105
  br label %134

121:                                              ; preds = %93
  %122 = load i32*, i32** %7, align 8
  %123 = call i32* @SSL_get_wbio(i32* %122)
  store i32* %123, i32** %9, align 8
  %124 = load i32, i32* %3, align 4
  %125 = load i32, i32* %13, align 4
  %126 = icmp sge i32 %124, %125
  br i1 %126, label %127, label %131

127:                                              ; preds = %121
  store i32 1, i32* %11, align 4
  %128 = load i32, i32* %13, align 4
  %129 = load i32, i32* %3, align 4
  %130 = sub nsw i32 %129, %128
  store i32 %130, i32* %3, align 4
  br label %131

131:                                              ; preds = %127, %121
  %132 = load i32*, i32** %9, align 8
  %133 = call i32* @BIO_next(i32* %132)
  store i32* %133, i32** %9, align 8
  br label %134

134:                                              ; preds = %131, %120
  %135 = load i32*, i32** %9, align 8
  %136 = load i32, i32* @MEMPACKET_CTRL_SET_DROP_EPOCH, align 4
  %137 = load i32, i32* %11, align 4
  %138 = call i64 @BIO_ctrl(i32* %135, i32 %136, i32 %137, i32* null)
  %139 = load i32*, i32** %9, align 8
  %140 = load i32, i32* @MEMPACKET_CTRL_SET_DROP_REC, align 4
  %141 = load i32, i32* %3, align 4
  %142 = call i64 @BIO_ctrl(i32* %139, i32 %140, i32 %141, i32* null)
  %143 = load i32*, i32** %6, align 8
  %144 = load i32*, i32** %7, align 8
  %145 = load i32, i32* @SSL_ERROR_NONE, align 4
  %146 = call i32 @create_ssl_connection(i32* %143, i32* %144, i32 %145)
  %147 = call i32 @TEST_true(i32 %146)
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %150, label %149

149:                                              ; preds = %134
  br label %168

150:                                              ; preds = %134
  %151 = load i32*, i32** %12, align 8
  %152 = icmp ne i32* %151, null
  br i1 %152, label %153, label %159

153:                                              ; preds = %150
  %154 = load i32*, i32** %7, align 8
  %155 = call i32 @SSL_session_reused(i32* %154)
  %156 = call i32 @TEST_true(i32 %155)
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %159, label %158

158:                                              ; preds = %153
  br label %168

159:                                              ; preds = %153, %150
  %160 = load i32*, i32** %9, align 8
  %161 = load i32, i32* @MEMPACKET_CTRL_GET_DROP_REC, align 4
  %162 = call i64 @BIO_ctrl(i32* %160, i32 %161, i32 0, i32* null)
  %163 = trunc i64 %162 to i32
  %164 = call i32 @TEST_int_eq(i32 %163, i32 -1)
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %167, label %166

166:                                              ; preds = %159
  br label %168

167:                                              ; preds = %159
  store i32 1, i32* %10, align 4
  br label %168

168:                                              ; preds = %167, %166, %158, %149, %91, %81, %73, %47
  %169 = load i32*, i32** %12, align 8
  %170 = call i32 @SSL_SESSION_free(i32* %169)
  %171 = load i32*, i32** %6, align 8
  %172 = call i32 @SSL_free(i32* %171)
  %173 = load i32*, i32** %7, align 8
  %174 = call i32 @SSL_free(i32* %173)
  %175 = load i32*, i32** %4, align 8
  %176 = call i32 @SSL_CTX_free(i32* %175)
  %177 = load i32*, i32** %5, align 8
  %178 = call i32 @SSL_CTX_free(i32* %177)
  %179 = load i32, i32* %10, align 4
  store i32 %179, i32* %2, align 4
  br label %180

180:                                              ; preds = %168, %24
  %181 = load i32, i32* %2, align 4
  ret i32 %181
}

declare dso_local i32 @TEST_true(i32) #1

declare dso_local i32 @create_ssl_ctx_pair(i32, i32, i32, i32, i32**, i32**, i32, i32) #1

declare dso_local i32 @DTLS_server_method(...) #1

declare dso_local i32 @DTLS_client_method(...) #1

declare dso_local i32 @create_ssl_objects(i32*, i32*, i32**, i32**, i32*, i32*) #1

declare dso_local i32 @create_ssl_connection(i32*, i32*, i32) #1

declare dso_local i32 @TEST_ptr(i32*) #1

declare dso_local i32* @SSL_get1_session(i32*) #1

declare dso_local i32 @SSL_shutdown(i32*) #1

declare dso_local i32 @SSL_free(i32*) #1

declare dso_local i32* @BIO_new(i32) #1

declare dso_local i32 @bio_f_tls_dump_filter(...) #1

declare dso_local i32 @SSL_set_session(i32*, i32*) #1

declare dso_local i32 @DTLS_set_timer_cb(i32*, i32) #1

declare dso_local i32* @SSL_get_wbio(i32*) #1

declare dso_local i32* @BIO_next(i32*) #1

declare dso_local i64 @BIO_ctrl(i32*, i32, i32, i32*) #1

declare dso_local i32 @SSL_session_reused(i32*) #1

declare dso_local i32 @TEST_int_eq(i32, i32) #1

declare dso_local i32 @SSL_SESSION_free(i32*) #1

declare dso_local i32 @SSL_CTX_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
