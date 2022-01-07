; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_handshake_helper.c_configure_handshake_ctx.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_handshake_helper.c_configure_handshake_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32 }
%struct.TYPE_20__ = type { %struct.TYPE_19__, %struct.TYPE_18__, %struct.TYPE_17__ }
%struct.TYPE_19__ = type { i32, i32, i32, i32*, i32*, i32*, i32* }
%struct.TYPE_18__ = type { i32*, i32*, i32*, i32*, i32* }
%struct.TYPE_17__ = type { i32, i64, i32*, i32*, i32*, i32*, i32*, i64 }
%struct.TYPE_22__ = type { i8*, i64, i8*, i64, i8*, i8*, i8* }

@verify_accept_cb = common dso_local global i32 0, align 4
@verify_reject_cb = common dso_local global i32 0, align 4
@servername_ignore_cb = common dso_local global i32 0, align 4
@servername_reject_cb = common dso_local global i32 0, align 4
@client_hello_ignore_cb = common dso_local global i32 0, align 4
@client_hello_reject_cb = common dso_local global i32 0, align 4
@client_hello_nov12_cb = common dso_local global i32 0, align 4
@SSL_TEST_CERT_STATUS_NONE = common dso_local global i64 0, align 8
@TLSEXT_STATUSTYPE_ocsp = common dso_local global i32 0, align 4
@client_ocsp_cb = common dso_local global i32 0, align 4
@server_ocsp_cb = common dso_local global i32 0, align 4
@SSL_TEST_CERT_STATUS_GOOD_RESPONSE = common dso_local global i64 0, align 8
@dummy_ocsp_resp_good_val = common dso_local global i32 0, align 4
@dummy_ocsp_resp_bad_val = common dso_local global i32 0, align 4
@do_not_call_session_ticket_cb = common dso_local global i32 0, align 4
@broken_session_ticket_cb = common dso_local global i32 0, align 4
@server_npn_cb = common dso_local global i32 0, align 4
@client_npn_cb = common dso_local global i32 0, align 4
@server_alpn_cb = common dso_local global i32 0, align 4
@generate_session_ticket_cb = common dso_local global i32* null, align 8
@decrypt_session_ticket_cb = common dso_local global i32 0, align 4
@SSL_CT_VALIDATION_PERMISSIVE = common dso_local global i32 0, align 4
@SSL_CT_VALIDATION_STRICT = common dso_local global i32 0, align 4
@server_srp_cb = common dso_local global i32 0, align 4
@client_srp_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*, %struct.TYPE_21__*, %struct.TYPE_20__*, %struct.TYPE_22__*, %struct.TYPE_22__*, %struct.TYPE_22__*)* @configure_handshake_ctx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @configure_handshake_ctx(i8* %0, i8* %1, i8* %2, %struct.TYPE_21__* %3, %struct.TYPE_20__* %4, %struct.TYPE_22__* %5, %struct.TYPE_22__* %6, %struct.TYPE_22__* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_21__*, align 8
  %14 = alloca %struct.TYPE_20__*, align 8
  %15 = alloca %struct.TYPE_22__*, align 8
  %16 = alloca %struct.TYPE_22__*, align 8
  %17 = alloca %struct.TYPE_22__*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  store i8* %0, i8** %10, align 8
  store i8* %1, i8** %11, align 8
  store i8* %2, i8** %12, align 8
  store %struct.TYPE_21__* %3, %struct.TYPE_21__** %13, align 8
  store %struct.TYPE_20__* %4, %struct.TYPE_20__** %14, align 8
  store %struct.TYPE_22__* %5, %struct.TYPE_22__** %15, align 8
  store %struct.TYPE_22__* %6, %struct.TYPE_22__** %16, align 8
  store %struct.TYPE_22__* %7, %struct.TYPE_22__** %17, align 8
  %22 = load i8*, i8** %10, align 8
  %23 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %24 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @SSL_CTX_set_max_send_fragment(i8* %22, i32 %25)
  %27 = call i32 @TEST_int_eq(i64 %26, i32 1)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %8
  br label %489

30:                                               ; preds = %8
  %31 = load i8*, i8** %11, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %43

33:                                               ; preds = %30
  %34 = load i8*, i8** %11, align 8
  %35 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %36 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @SSL_CTX_set_max_send_fragment(i8* %34, i32 %37)
  %39 = call i32 @TEST_int_eq(i64 %38, i32 1)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %33
  br label %489

42:                                               ; preds = %33
  br label %43

43:                                               ; preds = %42, %30
  %44 = load i8*, i8** %12, align 8
  %45 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %46 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @SSL_CTX_set_max_send_fragment(i8* %44, i32 %47)
  %49 = call i32 @TEST_int_eq(i64 %48, i32 1)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %43
  br label %489

52:                                               ; preds = %43
  %53 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %54 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  switch i32 %56, label %64 [
    i32 135, label %57
    i32 133, label %60
    i32 134, label %63
  ]

57:                                               ; preds = %52
  %58 = load i8*, i8** %12, align 8
  %59 = call i32 @SSL_CTX_set_cert_verify_callback(i8* %58, i32* @verify_accept_cb, i32* null)
  br label %64

60:                                               ; preds = %52
  %61 = load i8*, i8** %12, align 8
  %62 = call i32 @SSL_CTX_set_cert_verify_callback(i8* %61, i32* @verify_reject_cb, i32* null)
  br label %64

63:                                               ; preds = %52
  br label %64

64:                                               ; preds = %52, %63, %60, %57
  %65 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %66 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  switch i32 %68, label %76 [
    i32 129, label %69
    i32 132, label %69
    i32 131, label %69
    i32 130, label %69
    i32 128, label %69
  ]

69:                                               ; preds = %64, %64, %64, %64, %64
  %70 = load i8*, i8** %12, align 8
  %71 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %72 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @SSL_CTX_set_tlsext_max_fragment_length(i8* %70, i32 %74)
  br label %76

76:                                               ; preds = %64, %69
  %77 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %78 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  switch i32 %80, label %111 [
    i32 137, label %81
    i32 136, label %88
    i32 141, label %95
    i32 140, label %96
    i32 138, label %101
    i32 139, label %106
  ]

81:                                               ; preds = %76
  %82 = load i8*, i8** %10, align 8
  %83 = load i32, i32* @servername_ignore_cb, align 4
  %84 = call i32 @SSL_CTX_set_tlsext_servername_callback(i8* %82, i32 %83)
  %85 = load i8*, i8** %10, align 8
  %86 = load i8*, i8** %11, align 8
  %87 = call i32 @SSL_CTX_set_tlsext_servername_arg(i8* %85, i8* %86)
  br label %111

88:                                               ; preds = %76
  %89 = load i8*, i8** %10, align 8
  %90 = load i32, i32* @servername_reject_cb, align 4
  %91 = call i32 @SSL_CTX_set_tlsext_servername_callback(i8* %89, i32 %90)
  %92 = load i8*, i8** %10, align 8
  %93 = load i8*, i8** %11, align 8
  %94 = call i32 @SSL_CTX_set_tlsext_servername_arg(i8* %92, i8* %93)
  br label %111

95:                                               ; preds = %76
  br label %111

96:                                               ; preds = %76
  %97 = load i8*, i8** %10, align 8
  %98 = load i32, i32* @client_hello_ignore_cb, align 4
  %99 = load i8*, i8** %11, align 8
  %100 = call i32 @SSL_CTX_set_client_hello_cb(i8* %97, i32 %98, i8* %99)
  br label %111

101:                                              ; preds = %76
  %102 = load i8*, i8** %10, align 8
  %103 = load i32, i32* @client_hello_reject_cb, align 4
  %104 = load i8*, i8** %11, align 8
  %105 = call i32 @SSL_CTX_set_client_hello_cb(i8* %102, i32 %103, i8* %104)
  br label %111

106:                                              ; preds = %76
  %107 = load i8*, i8** %10, align 8
  %108 = load i32, i32* @client_hello_nov12_cb, align 4
  %109 = load i8*, i8** %11, align 8
  %110 = call i32 @SSL_CTX_set_client_hello_cb(i8* %107, i32 %108, i8* %109)
  br label %111

111:                                              ; preds = %106, %76, %101, %96, %95, %88, %81
  %112 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %113 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %112, i32 0, i32 2
  %114 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @SSL_TEST_CERT_STATUS_NONE, align 8
  %117 = icmp ne i64 %115, %116
  br i1 %117, label %118, label %140

118:                                              ; preds = %111
  %119 = load i8*, i8** %12, align 8
  %120 = load i32, i32* @TLSEXT_STATUSTYPE_ocsp, align 4
  %121 = call i32 @SSL_CTX_set_tlsext_status_type(i8* %119, i32 %120)
  %122 = load i8*, i8** %12, align 8
  %123 = load i32, i32* @client_ocsp_cb, align 4
  %124 = call i32 @SSL_CTX_set_tlsext_status_cb(i8* %122, i32 %123)
  %125 = load i8*, i8** %12, align 8
  %126 = call i32 @SSL_CTX_set_tlsext_status_arg(i8* %125, i32* null)
  %127 = load i8*, i8** %10, align 8
  %128 = load i32, i32* @server_ocsp_cb, align 4
  %129 = call i32 @SSL_CTX_set_tlsext_status_cb(i8* %127, i32 %128)
  %130 = load i8*, i8** %10, align 8
  %131 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %132 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %131, i32 0, i32 2
  %133 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* @SSL_TEST_CERT_STATUS_GOOD_RESPONSE, align 8
  %136 = icmp eq i64 %134, %135
  %137 = zext i1 %136 to i64
  %138 = select i1 %136, i32* @dummy_ocsp_resp_good_val, i32* @dummy_ocsp_resp_bad_val
  %139 = call i32 @SSL_CTX_set_tlsext_status_arg(i8* %130, i32* %138)
  br label %140

140:                                              ; preds = %118, %111
  %141 = load i8*, i8** %11, align 8
  %142 = icmp ne i8* %141, null
  br i1 %142, label %143, label %147

143:                                              ; preds = %140
  %144 = load i8*, i8** %11, align 8
  %145 = load i32, i32* @do_not_call_session_ticket_cb, align 4
  %146 = call i32 @SSL_CTX_set_tlsext_ticket_key_cb(i8* %144, i32 %145)
  br label %147

147:                                              ; preds = %143, %140
  %148 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %149 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %148, i32 0, i32 2
  %150 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %149, i32 0, i32 7
  %151 = load i64, i64* %150, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %157

153:                                              ; preds = %147
  %154 = load i8*, i8** %10, align 8
  %155 = load i32, i32* @broken_session_ticket_cb, align 4
  %156 = call i32 @SSL_CTX_set_tlsext_ticket_key_cb(i8* %154, i32 %155)
  br label %157

157:                                              ; preds = %153, %147
  %158 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %159 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %158, i32 0, i32 2
  %160 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %159, i32 0, i32 6
  %161 = load i32*, i32** %160, align 8
  %162 = icmp ne i32* %161, null
  br i1 %162, label %163, label %181

163:                                              ; preds = %157
  %164 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %165 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %164, i32 0, i32 2
  %166 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %165, i32 0, i32 6
  %167 = load i32*, i32** %166, align 8
  %168 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %169 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %168, i32 0, i32 0
  %170 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %171 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %170, i32 0, i32 1
  %172 = call i32 @parse_protos(i32* %167, i8** %169, i64* %171)
  %173 = call i32 @TEST_true(i32 %172)
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %176, label %175

175:                                              ; preds = %163
  br label %489

176:                                              ; preds = %163
  %177 = load i8*, i8** %10, align 8
  %178 = load i32, i32* @server_npn_cb, align 4
  %179 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %180 = call i32 @SSL_CTX_set_npn_advertised_cb(i8* %177, i32 %178, %struct.TYPE_22__* %179)
  br label %181

181:                                              ; preds = %176, %157
  %182 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %183 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %182, i32 0, i32 1
  %184 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %183, i32 0, i32 4
  %185 = load i32*, i32** %184, align 8
  %186 = icmp ne i32* %185, null
  br i1 %186, label %187, label %209

187:                                              ; preds = %181
  %188 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %189 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %188, i32 0, i32 1
  %190 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %189, i32 0, i32 4
  %191 = load i32*, i32** %190, align 8
  %192 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %193 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %192, i32 0, i32 0
  %194 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %195 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %194, i32 0, i32 1
  %196 = call i32 @parse_protos(i32* %191, i8** %193, i64* %195)
  %197 = call i32 @TEST_true(i32 %196)
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %203

199:                                              ; preds = %187
  %200 = load i8*, i8** %11, align 8
  %201 = call i32 @TEST_ptr(i8* %200)
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %204, label %203

203:                                              ; preds = %199, %187
  br label %489

204:                                              ; preds = %199
  %205 = load i8*, i8** %11, align 8
  %206 = load i32, i32* @server_npn_cb, align 4
  %207 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %208 = call i32 @SSL_CTX_set_npn_advertised_cb(i8* %205, i32 %206, %struct.TYPE_22__* %207)
  br label %209

209:                                              ; preds = %204, %181
  %210 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %211 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %210, i32 0, i32 0
  %212 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %211, i32 0, i32 6
  %213 = load i32*, i32** %212, align 8
  %214 = icmp ne i32* %213, null
  br i1 %214, label %215, label %233

215:                                              ; preds = %209
  %216 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %217 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %216, i32 0, i32 0
  %218 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %217, i32 0, i32 6
  %219 = load i32*, i32** %218, align 8
  %220 = load %struct.TYPE_22__*, %struct.TYPE_22__** %17, align 8
  %221 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %220, i32 0, i32 0
  %222 = load %struct.TYPE_22__*, %struct.TYPE_22__** %17, align 8
  %223 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %222, i32 0, i32 1
  %224 = call i32 @parse_protos(i32* %219, i8** %221, i64* %223)
  %225 = call i32 @TEST_true(i32 %224)
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %228, label %227

227:                                              ; preds = %215
  br label %489

228:                                              ; preds = %215
  %229 = load i8*, i8** %12, align 8
  %230 = load i32, i32* @client_npn_cb, align 4
  %231 = load %struct.TYPE_22__*, %struct.TYPE_22__** %17, align 8
  %232 = call i32 @SSL_CTX_set_next_proto_select_cb(i8* %229, i32 %230, %struct.TYPE_22__* %231)
  br label %233

233:                                              ; preds = %228, %209
  %234 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %235 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %234, i32 0, i32 2
  %236 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %235, i32 0, i32 5
  %237 = load i32*, i32** %236, align 8
  %238 = icmp ne i32* %237, null
  br i1 %238, label %239, label %257

239:                                              ; preds = %233
  %240 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %241 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %240, i32 0, i32 2
  %242 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %241, i32 0, i32 5
  %243 = load i32*, i32** %242, align 8
  %244 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %245 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %244, i32 0, i32 2
  %246 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %247 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %246, i32 0, i32 3
  %248 = call i32 @parse_protos(i32* %243, i8** %245, i64* %247)
  %249 = call i32 @TEST_true(i32 %248)
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %252, label %251

251:                                              ; preds = %239
  br label %489

252:                                              ; preds = %239
  %253 = load i8*, i8** %10, align 8
  %254 = load i32, i32* @server_alpn_cb, align 4
  %255 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %256 = call i32 @SSL_CTX_set_alpn_select_cb(i8* %253, i32 %254, %struct.TYPE_22__* %255)
  br label %257

257:                                              ; preds = %252, %233
  %258 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %259 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %258, i32 0, i32 1
  %260 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %259, i32 0, i32 3
  %261 = load i32*, i32** %260, align 8
  %262 = icmp ne i32* %261, null
  br i1 %262, label %263, label %285

263:                                              ; preds = %257
  %264 = load i8*, i8** %11, align 8
  %265 = call i32 @TEST_ptr(i8* %264)
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %267, label %279

267:                                              ; preds = %263
  %268 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %269 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %268, i32 0, i32 1
  %270 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %269, i32 0, i32 3
  %271 = load i32*, i32** %270, align 8
  %272 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %273 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %272, i32 0, i32 2
  %274 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %275 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %274, i32 0, i32 3
  %276 = call i32 @parse_protos(i32* %271, i8** %273, i64* %275)
  %277 = call i32 @TEST_true(i32 %276)
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %280, label %279

279:                                              ; preds = %267, %263
  br label %489

280:                                              ; preds = %267
  %281 = load i8*, i8** %11, align 8
  %282 = load i32, i32* @server_alpn_cb, align 4
  %283 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %284 = call i32 @SSL_CTX_set_alpn_select_cb(i8* %281, i32 %282, %struct.TYPE_22__* %283)
  br label %285

285:                                              ; preds = %280, %257
  %286 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %287 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %286, i32 0, i32 0
  %288 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %287, i32 0, i32 5
  %289 = load i32*, i32** %288, align 8
  %290 = icmp ne i32* %289, null
  br i1 %290, label %291, label %310

291:                                              ; preds = %285
  store i8* null, i8** %20, align 8
  %292 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %293 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %292, i32 0, i32 0
  %294 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %293, i32 0, i32 5
  %295 = load i32*, i32** %294, align 8
  %296 = call i32 @parse_protos(i32* %295, i8** %20, i64* %21)
  %297 = call i32 @TEST_true(i32 %296)
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %299, label %306

299:                                              ; preds = %291
  %300 = load i8*, i8** %12, align 8
  %301 = load i8*, i8** %20, align 8
  %302 = load i64, i64* %21, align 8
  %303 = call i64 @SSL_CTX_set_alpn_protos(i8* %300, i8* %301, i64 %302)
  %304 = call i32 @TEST_int_eq(i64 %303, i32 0)
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %307, label %306

306:                                              ; preds = %299, %291
  br label %489

307:                                              ; preds = %299
  %308 = load i8*, i8** %20, align 8
  %309 = call i32 @OPENSSL_free(i8* %308)
  br label %310

310:                                              ; preds = %307, %285
  %311 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %312 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %311, i32 0, i32 2
  %313 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %312, i32 0, i32 4
  %314 = load i32*, i32** %313, align 8
  %315 = icmp ne i32* %314, null
  br i1 %315, label %316, label %329

316:                                              ; preds = %310
  %317 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %318 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %317, i32 0, i32 2
  %319 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %318, i32 0, i32 4
  %320 = load i32*, i32** %319, align 8
  %321 = call i8* @OPENSSL_strdup(i32* %320)
  %322 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %323 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %322, i32 0, i32 6
  store i8* %321, i8** %323, align 8
  %324 = load i8*, i8** %10, align 8
  %325 = load i32*, i32** @generate_session_ticket_cb, align 8
  %326 = load i32, i32* @decrypt_session_ticket_cb, align 4
  %327 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %328 = call i32 @SSL_CTX_set_session_ticket_cb(i8* %324, i32* %325, i32 %326, %struct.TYPE_22__* %327)
  br label %329

329:                                              ; preds = %316, %310
  %330 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %331 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %330, i32 0, i32 1
  %332 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %331, i32 0, i32 2
  %333 = load i32*, i32** %332, align 8
  %334 = icmp ne i32* %333, null
  br i1 %334, label %335, label %352

335:                                              ; preds = %329
  %336 = load i8*, i8** %11, align 8
  %337 = call i32 @TEST_ptr(i8* %336)
  %338 = icmp ne i32 %337, 0
  br i1 %338, label %340, label %339

339:                                              ; preds = %335
  br label %489

340:                                              ; preds = %335
  %341 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %342 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %341, i32 0, i32 1
  %343 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %342, i32 0, i32 2
  %344 = load i32*, i32** %343, align 8
  %345 = call i8* @OPENSSL_strdup(i32* %344)
  %346 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %347 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %346, i32 0, i32 6
  store i8* %345, i8** %347, align 8
  %348 = load i8*, i8** %11, align 8
  %349 = load i32, i32* @decrypt_session_ticket_cb, align 4
  %350 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %351 = call i32 @SSL_CTX_set_session_ticket_cb(i8* %348, i32* null, i32 %349, %struct.TYPE_22__* %350)
  br label %352

352:                                              ; preds = %340, %329
  %353 = load i8*, i8** %10, align 8
  %354 = call i64 @SSL_CTX_set_tlsext_ticket_keys(i8* %353, i8* null, i64 0)
  store i64 %354, i64* %19, align 8
  %355 = load i64, i64* %19, align 8
  %356 = call i8* @OPENSSL_zalloc(i64 %355)
  store i8* %356, i8** %18, align 8
  %357 = call i32 @TEST_ptr(i8* %356)
  %358 = icmp ne i32 %357, 0
  br i1 %358, label %359, label %366

359:                                              ; preds = %352
  %360 = load i8*, i8** %10, align 8
  %361 = load i8*, i8** %18, align 8
  %362 = load i64, i64* %19, align 8
  %363 = call i64 @SSL_CTX_set_tlsext_ticket_keys(i8* %360, i8* %361, i64 %362)
  %364 = call i32 @TEST_int_eq(i64 %363, i32 1)
  %365 = icmp ne i32 %364, 0
  br i1 %365, label %369, label %366

366:                                              ; preds = %359, %352
  %367 = load i8*, i8** %18, align 8
  %368 = call i32 @OPENSSL_free(i8* %367)
  br label %489

369:                                              ; preds = %359
  %370 = load i8*, i8** %18, align 8
  %371 = call i32 @OPENSSL_free(i8* %370)
  %372 = load i8*, i8** %12, align 8
  %373 = call i32 @SSL_CTX_set_default_ctlog_list_file(i8* %372)
  %374 = call i32 @TEST_true(i32 %373)
  %375 = icmp ne i32 %374, 0
  br i1 %375, label %377, label %376

376:                                              ; preds = %369
  br label %489

377:                                              ; preds = %369
  %378 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %379 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %378, i32 0, i32 0
  %380 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %379, i32 0, i32 2
  %381 = load i32, i32* %380, align 8
  switch i32 %381, label %399 [
    i32 143, label %382
    i32 142, label %390
    i32 144, label %398
  ]

382:                                              ; preds = %377
  %383 = load i8*, i8** %12, align 8
  %384 = load i32, i32* @SSL_CT_VALIDATION_PERMISSIVE, align 4
  %385 = call i32 @SSL_CTX_enable_ct(i8* %383, i32 %384)
  %386 = call i32 @TEST_true(i32 %385)
  %387 = icmp ne i32 %386, 0
  br i1 %387, label %389, label %388

388:                                              ; preds = %382
  br label %489

389:                                              ; preds = %382
  br label %399

390:                                              ; preds = %377
  %391 = load i8*, i8** %12, align 8
  %392 = load i32, i32* @SSL_CT_VALIDATION_STRICT, align 4
  %393 = call i32 @SSL_CTX_enable_ct(i8* %391, i32 %392)
  %394 = call i32 @TEST_true(i32 %393)
  %395 = icmp ne i32 %394, 0
  br i1 %395, label %397, label %396

396:                                              ; preds = %390
  br label %489

397:                                              ; preds = %390
  br label %399

398:                                              ; preds = %377
  br label %399

399:                                              ; preds = %377, %398, %397, %389
  %400 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %401 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %400, i32 0, i32 2
  %402 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %401, i32 0, i32 3
  %403 = load i32*, i32** %402, align 8
  %404 = icmp ne i32* %403, null
  br i1 %404, label %405, label %426

405:                                              ; preds = %399
  %406 = load i8*, i8** %10, align 8
  %407 = load i32, i32* @server_srp_cb, align 4
  %408 = call i32 @SSL_CTX_set_srp_username_callback(i8* %406, i32 %407)
  %409 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %410 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %409, i32 0, i32 2
  %411 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %410, i32 0, i32 3
  %412 = load i32*, i32** %411, align 8
  %413 = call i8* @OPENSSL_strdup(i32* %412)
  %414 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %415 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %414, i32 0, i32 5
  store i8* %413, i8** %415, align 8
  %416 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %417 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %416, i32 0, i32 2
  %418 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %417, i32 0, i32 2
  %419 = load i32*, i32** %418, align 8
  %420 = call i8* @OPENSSL_strdup(i32* %419)
  %421 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %422 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %421, i32 0, i32 4
  store i8* %420, i8** %422, align 8
  %423 = load i8*, i8** %10, align 8
  %424 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %425 = call i32 @SSL_CTX_set_srp_cb_arg(i8* %423, %struct.TYPE_22__* %424)
  br label %426

426:                                              ; preds = %405, %399
  %427 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %428 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %427, i32 0, i32 1
  %429 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %428, i32 0, i32 1
  %430 = load i32*, i32** %429, align 8
  %431 = icmp ne i32* %430, null
  br i1 %431, label %432, label %458

432:                                              ; preds = %426
  %433 = load i8*, i8** %11, align 8
  %434 = call i32 @TEST_ptr(i8* %433)
  %435 = icmp ne i32 %434, 0
  br i1 %435, label %437, label %436

436:                                              ; preds = %432
  br label %489

437:                                              ; preds = %432
  %438 = load i8*, i8** %11, align 8
  %439 = load i32, i32* @server_srp_cb, align 4
  %440 = call i32 @SSL_CTX_set_srp_username_callback(i8* %438, i32 %439)
  %441 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %442 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %441, i32 0, i32 1
  %443 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %442, i32 0, i32 1
  %444 = load i32*, i32** %443, align 8
  %445 = call i8* @OPENSSL_strdup(i32* %444)
  %446 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %447 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %446, i32 0, i32 5
  store i8* %445, i8** %447, align 8
  %448 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %449 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %448, i32 0, i32 1
  %450 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %449, i32 0, i32 0
  %451 = load i32*, i32** %450, align 8
  %452 = call i8* @OPENSSL_strdup(i32* %451)
  %453 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %454 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %453, i32 0, i32 4
  store i8* %452, i8** %454, align 8
  %455 = load i8*, i8** %11, align 8
  %456 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %457 = call i32 @SSL_CTX_set_srp_cb_arg(i8* %455, %struct.TYPE_22__* %456)
  br label %458

458:                                              ; preds = %437, %426
  %459 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %460 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %459, i32 0, i32 0
  %461 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %460, i32 0, i32 4
  %462 = load i32*, i32** %461, align 8
  %463 = icmp ne i32* %462, null
  br i1 %463, label %464, label %488

464:                                              ; preds = %458
  %465 = load i8*, i8** %12, align 8
  %466 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %467 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %466, i32 0, i32 0
  %468 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %467, i32 0, i32 4
  %469 = load i32*, i32** %468, align 8
  %470 = call i32 @SSL_CTX_set_srp_username(i8* %465, i32* %469)
  %471 = call i32 @TEST_true(i32 %470)
  %472 = icmp ne i32 %471, 0
  br i1 %472, label %474, label %473

473:                                              ; preds = %464
  br label %489

474:                                              ; preds = %464
  %475 = load i8*, i8** %12, align 8
  %476 = load i32, i32* @client_srp_cb, align 4
  %477 = call i32 @SSL_CTX_set_srp_client_pwd_callback(i8* %475, i32 %476)
  %478 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %479 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %478, i32 0, i32 0
  %480 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %479, i32 0, i32 3
  %481 = load i32*, i32** %480, align 8
  %482 = call i8* @OPENSSL_strdup(i32* %481)
  %483 = load %struct.TYPE_22__*, %struct.TYPE_22__** %17, align 8
  %484 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %483, i32 0, i32 4
  store i8* %482, i8** %484, align 8
  %485 = load i8*, i8** %12, align 8
  %486 = load %struct.TYPE_22__*, %struct.TYPE_22__** %17, align 8
  %487 = call i32 @SSL_CTX_set_srp_cb_arg(i8* %485, %struct.TYPE_22__* %486)
  br label %488

488:                                              ; preds = %474, %458
  store i32 1, i32* %9, align 4
  br label %490

489:                                              ; preds = %473, %436, %396, %388, %376, %366, %339, %306, %279, %251, %227, %203, %175, %51, %41, %29
  store i32 0, i32* %9, align 4
  br label %490

490:                                              ; preds = %489, %488
  %491 = load i32, i32* %9, align 4
  ret i32 %491
}

declare dso_local i32 @TEST_int_eq(i64, i32) #1

declare dso_local i64 @SSL_CTX_set_max_send_fragment(i8*, i32) #1

declare dso_local i32 @SSL_CTX_set_cert_verify_callback(i8*, i32*, i32*) #1

declare dso_local i32 @SSL_CTX_set_tlsext_max_fragment_length(i8*, i32) #1

declare dso_local i32 @SSL_CTX_set_tlsext_servername_callback(i8*, i32) #1

declare dso_local i32 @SSL_CTX_set_tlsext_servername_arg(i8*, i8*) #1

declare dso_local i32 @SSL_CTX_set_client_hello_cb(i8*, i32, i8*) #1

declare dso_local i32 @SSL_CTX_set_tlsext_status_type(i8*, i32) #1

declare dso_local i32 @SSL_CTX_set_tlsext_status_cb(i8*, i32) #1

declare dso_local i32 @SSL_CTX_set_tlsext_status_arg(i8*, i32*) #1

declare dso_local i32 @SSL_CTX_set_tlsext_ticket_key_cb(i8*, i32) #1

declare dso_local i32 @TEST_true(i32) #1

declare dso_local i32 @parse_protos(i32*, i8**, i64*) #1

declare dso_local i32 @SSL_CTX_set_npn_advertised_cb(i8*, i32, %struct.TYPE_22__*) #1

declare dso_local i32 @TEST_ptr(i8*) #1

declare dso_local i32 @SSL_CTX_set_next_proto_select_cb(i8*, i32, %struct.TYPE_22__*) #1

declare dso_local i32 @SSL_CTX_set_alpn_select_cb(i8*, i32, %struct.TYPE_22__*) #1

declare dso_local i64 @SSL_CTX_set_alpn_protos(i8*, i8*, i64) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

declare dso_local i8* @OPENSSL_strdup(i32*) #1

declare dso_local i32 @SSL_CTX_set_session_ticket_cb(i8*, i32*, i32, %struct.TYPE_22__*) #1

declare dso_local i64 @SSL_CTX_set_tlsext_ticket_keys(i8*, i8*, i64) #1

declare dso_local i8* @OPENSSL_zalloc(i64) #1

declare dso_local i32 @SSL_CTX_set_default_ctlog_list_file(i8*) #1

declare dso_local i32 @SSL_CTX_enable_ct(i8*, i32) #1

declare dso_local i32 @SSL_CTX_set_srp_username_callback(i8*, i32) #1

declare dso_local i32 @SSL_CTX_set_srp_cb_arg(i8*, %struct.TYPE_22__*) #1

declare dso_local i32 @SSL_CTX_set_srp_username(i8*, i32*) #1

declare dso_local i32 @SSL_CTX_set_srp_client_pwd_callback(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
