; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_sslapitest.c_test_ssl_set_bio.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_sslapitest.c_test_ssl_set_bio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TOTAL_NO_CONN_SSL_SET_BIO_TESTS = common dso_local global i32 0, align 4
@CONNTYPE_NO_CONNECTION = common dso_local global i32 0, align 4
@USE_DEFAULT = common dso_local global i32 0, align 4
@TLS1_VERSION = common dso_local global i32 0, align 4
@cert = common dso_local global i32 0, align 4
@privkey = common dso_local global i32 0, align 4
@CONNTYPE_CONNECTION_FAIL = common dso_local global i32 0, align 4
@TLS1_3_VERSION = common dso_local global i32 0, align 4
@TLS1_2_VERSION = common dso_local global i32 0, align 4
@USE_BIO_1 = common dso_local global i32 0, align 4
@USE_BIO_2 = common dso_local global i32 0, align 4
@SSL_ERROR_NONE = common dso_local global i32 0, align 4
@CONNTYPE_CONNECTION_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @test_ssl_set_bio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_ssl_set_bio(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32* null, i32** %3, align 8
  store i32* null, i32** %4, align 8
  store i32* null, i32** %5, align 8
  store i32* null, i32** %6, align 8
  store i32* null, i32** %7, align 8
  store i32* null, i32** %8, align 8
  store i32* null, i32** %9, align 8
  store i32* null, i32** %10, align 8
  store i32* null, i32** %11, align 8
  store i32* null, i32** %12, align 8
  store i32 0, i32* %18, align 4
  %19 = load i32, i32* %2, align 4
  %20 = load i32, i32* @TOTAL_NO_CONN_SSL_SET_BIO_TESTS, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %38

22:                                               ; preds = %1
  %23 = load i32, i32* %2, align 4
  %24 = srem i32 %23, 3
  store i32 %24, i32* %13, align 4
  %25 = load i32, i32* %2, align 4
  %26 = sdiv i32 %25, 3
  store i32 %26, i32* %2, align 4
  %27 = load i32, i32* %2, align 4
  %28 = srem i32 %27, 3
  store i32 %28, i32* %14, align 4
  %29 = load i32, i32* %2, align 4
  %30 = sdiv i32 %29, 3
  store i32 %30, i32* %2, align 4
  %31 = load i32, i32* %2, align 4
  %32 = srem i32 %31, 3
  store i32 %32, i32* %15, align 4
  %33 = load i32, i32* %2, align 4
  %34 = sdiv i32 %33, 3
  store i32 %34, i32* %2, align 4
  %35 = load i32, i32* %2, align 4
  %36 = srem i32 %35, 3
  store i32 %36, i32* %16, align 4
  %37 = load i32, i32* @CONNTYPE_NO_CONNECTION, align 4
  store i32 %37, i32* %17, align 4
  br label %53

38:                                               ; preds = %1
  %39 = load i32, i32* @TOTAL_NO_CONN_SSL_SET_BIO_TESTS, align 4
  %40 = load i32, i32* %2, align 4
  %41 = sub nsw i32 %40, %39
  store i32 %41, i32* %2, align 4
  %42 = load i32, i32* @USE_DEFAULT, align 4
  store i32 %42, i32* %14, align 4
  store i32 %42, i32* %13, align 4
  %43 = load i32, i32* %2, align 4
  %44 = srem i32 %43, 2
  store i32 %44, i32* %15, align 4
  %45 = load i32, i32* %2, align 4
  %46 = sdiv i32 %45, 2
  store i32 %46, i32* %2, align 4
  %47 = load i32, i32* %2, align 4
  %48 = srem i32 %47, 2
  store i32 %48, i32* %16, align 4
  %49 = load i32, i32* %2, align 4
  %50 = sdiv i32 %49, 2
  store i32 %50, i32* %2, align 4
  %51 = load i32, i32* %2, align 4
  %52 = srem i32 %51, 2
  store i32 %52, i32* %17, align 4
  br label %53

53:                                               ; preds = %38, %22
  %54 = call i32 (...) @TLS_server_method()
  %55 = call i32 (...) @TLS_client_method()
  %56 = load i32, i32* @TLS1_VERSION, align 4
  %57 = load i32, i32* @cert, align 4
  %58 = load i32, i32* @privkey, align 4
  %59 = call i32 @create_ssl_ctx_pair(i32 %54, i32 %55, i32 %56, i32 0, i32** %3, i32** %4, i32 %57, i32 %58)
  %60 = call i32 @TEST_true(i32 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %53
  br label %231

63:                                               ; preds = %53
  %64 = load i32, i32* %17, align 4
  %65 = load i32, i32* @CONNTYPE_CONNECTION_FAIL, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %74

67:                                               ; preds = %63
  %68 = load i32*, i32** %3, align 8
  %69 = load i32, i32* @TLS1_3_VERSION, align 4
  %70 = call i32 @SSL_CTX_set_min_proto_version(i32* %68, i32 %69)
  %71 = load i32*, i32** %4, align 8
  %72 = load i32, i32* @TLS1_2_VERSION, align 4
  %73 = call i32 @SSL_CTX_set_max_proto_version(i32* %71, i32 %72)
  br label %74

74:                                               ; preds = %67, %63
  %75 = load i32*, i32** %3, align 8
  %76 = load i32*, i32** %4, align 8
  %77 = call i32 @create_ssl_objects(i32* %75, i32* %76, i32** %11, i32** %12, i32* null, i32* null)
  %78 = call i32 @TEST_true(i32 %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %74
  br label %231

81:                                               ; preds = %74
  %82 = load i32, i32* %13, align 4
  %83 = load i32, i32* @USE_BIO_1, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %97, label %85

85:                                               ; preds = %81
  %86 = load i32, i32* %14, align 4
  %87 = load i32, i32* @USE_BIO_1, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %97, label %89

89:                                               ; preds = %85
  %90 = load i32, i32* %15, align 4
  %91 = load i32, i32* @USE_BIO_1, align 4
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %97, label %93

93:                                               ; preds = %89
  %94 = load i32, i32* %16, align 4
  %95 = load i32, i32* @USE_BIO_1, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %97, label %104

97:                                               ; preds = %93, %89, %85, %81
  %98 = call i32 (...) @BIO_s_mem()
  %99 = call i32* @BIO_new(i32 %98)
  store i32* %99, i32** %5, align 8
  %100 = call i32 @TEST_ptr(i32* %99)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %103, label %102

102:                                              ; preds = %97
  br label %231

103:                                              ; preds = %97
  br label %104

104:                                              ; preds = %103, %93
  %105 = load i32, i32* %13, align 4
  %106 = load i32, i32* @USE_BIO_2, align 4
  %107 = icmp eq i32 %105, %106
  br i1 %107, label %120, label %108

108:                                              ; preds = %104
  %109 = load i32, i32* %14, align 4
  %110 = load i32, i32* @USE_BIO_2, align 4
  %111 = icmp eq i32 %109, %110
  br i1 %111, label %120, label %112

112:                                              ; preds = %108
  %113 = load i32, i32* %15, align 4
  %114 = load i32, i32* @USE_BIO_2, align 4
  %115 = icmp eq i32 %113, %114
  br i1 %115, label %120, label %116

116:                                              ; preds = %112
  %117 = load i32, i32* %16, align 4
  %118 = load i32, i32* @USE_BIO_2, align 4
  %119 = icmp eq i32 %117, %118
  br i1 %119, label %120, label %127

120:                                              ; preds = %116, %112, %108, %104
  %121 = call i32 (...) @BIO_s_mem()
  %122 = call i32* @BIO_new(i32 %121)
  store i32* %122, i32** %6, align 8
  %123 = call i32 @TEST_ptr(i32* %122)
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %126, label %125

125:                                              ; preds = %120
  br label %231

126:                                              ; preds = %120
  br label %127

127:                                              ; preds = %126, %116
  %128 = load i32, i32* %13, align 4
  %129 = load i32, i32* @USE_DEFAULT, align 4
  %130 = icmp ne i32 %128, %129
  br i1 %130, label %131, label %160

131:                                              ; preds = %127
  %132 = load i32*, i32** %5, align 8
  %133 = load i32*, i32** %6, align 8
  %134 = load i32, i32* %13, align 4
  %135 = call i32 @setupbio(i32** %7, i32* %132, i32* %133, i32 %134)
  %136 = load i32*, i32** %5, align 8
  %137 = load i32*, i32** %6, align 8
  %138 = load i32, i32* %14, align 4
  %139 = call i32 @setupbio(i32** %8, i32* %136, i32* %137, i32 %138)
  %140 = load i32*, i32** %12, align 8
  %141 = load i32*, i32** %7, align 8
  %142 = load i32*, i32** %8, align 8
  %143 = call i32 @SSL_set_bio(i32* %140, i32* %141, i32* %142)
  %144 = load i32*, i32** %7, align 8
  %145 = icmp ne i32* %144, null
  br i1 %145, label %146, label %149

146:                                              ; preds = %131
  %147 = load i32*, i32** %7, align 8
  %148 = call i32 @BIO_up_ref(i32* %147)
  br label %149

149:                                              ; preds = %146, %131
  %150 = load i32*, i32** %8, align 8
  %151 = icmp ne i32* %150, null
  br i1 %151, label %152, label %159

152:                                              ; preds = %149
  %153 = load i32*, i32** %8, align 8
  %154 = load i32*, i32** %7, align 8
  %155 = icmp ne i32* %153, %154
  br i1 %155, label %156, label %159

156:                                              ; preds = %152
  %157 = load i32*, i32** %8, align 8
  %158 = call i32 @BIO_up_ref(i32* %157)
  br label %159

159:                                              ; preds = %156, %152, %149
  br label %160

160:                                              ; preds = %159, %127
  %161 = load i32, i32* %17, align 4
  %162 = load i32, i32* @CONNTYPE_NO_CONNECTION, align 4
  %163 = icmp ne i32 %161, %162
  br i1 %163, label %164, label %178

164:                                              ; preds = %160
  %165 = load i32*, i32** %11, align 8
  %166 = load i32*, i32** %12, align 8
  %167 = load i32, i32* @SSL_ERROR_NONE, align 4
  %168 = call i32 @create_ssl_connection(i32* %165, i32* %166, i32 %167)
  %169 = load i32, i32* %17, align 4
  %170 = load i32, i32* @CONNTYPE_CONNECTION_SUCCESS, align 4
  %171 = icmp eq i32 %169, %170
  %172 = zext i1 %171 to i32
  %173 = icmp eq i32 %168, %172
  %174 = zext i1 %173 to i32
  %175 = call i32 @TEST_true(i32 %174)
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %178, label %177

177:                                              ; preds = %164
  br label %231

178:                                              ; preds = %164, %160
  %179 = load i32*, i32** %5, align 8
  %180 = load i32*, i32** %6, align 8
  %181 = load i32, i32* %15, align 4
  %182 = call i32 @setupbio(i32** %9, i32* %179, i32* %180, i32 %181)
  %183 = load i32*, i32** %5, align 8
  %184 = load i32*, i32** %6, align 8
  %185 = load i32, i32* %16, align 4
  %186 = call i32 @setupbio(i32** %10, i32* %183, i32* %184, i32 %185)
  %187 = load i32*, i32** %9, align 8
  %188 = icmp ne i32* %187, null
  br i1 %188, label %189, label %204

189:                                              ; preds = %178
  %190 = load i32*, i32** %9, align 8
  %191 = load i32*, i32** %7, align 8
  %192 = icmp ne i32* %190, %191
  br i1 %192, label %193, label %204

193:                                              ; preds = %189
  %194 = load i32*, i32** %10, align 8
  %195 = load i32*, i32** %8, align 8
  %196 = icmp ne i32* %194, %195
  br i1 %196, label %201, label %197

197:                                              ; preds = %193
  %198 = load i32*, i32** %9, align 8
  %199 = load i32*, i32** %10, align 8
  %200 = icmp ne i32* %198, %199
  br i1 %200, label %201, label %204

201:                                              ; preds = %197, %193
  %202 = load i32*, i32** %9, align 8
  %203 = call i32 @BIO_up_ref(i32* %202)
  br label %204

204:                                              ; preds = %201, %197, %189, %178
  %205 = load i32*, i32** %10, align 8
  %206 = icmp ne i32* %205, null
  br i1 %206, label %207, label %226

207:                                              ; preds = %204
  %208 = load i32*, i32** %10, align 8
  %209 = load i32*, i32** %9, align 8
  %210 = icmp ne i32* %208, %209
  br i1 %210, label %211, label %226

211:                                              ; preds = %207
  %212 = load i32*, i32** %10, align 8
  %213 = load i32*, i32** %8, align 8
  %214 = icmp ne i32* %212, %213
  br i1 %214, label %223, label %215

215:                                              ; preds = %211
  %216 = load i32*, i32** %10, align 8
  %217 = load i32*, i32** %8, align 8
  %218 = icmp eq i32* %216, %217
  br i1 %218, label %219, label %226

219:                                              ; preds = %215
  %220 = load i32*, i32** %7, align 8
  %221 = load i32*, i32** %8, align 8
  %222 = icmp eq i32* %220, %221
  br i1 %222, label %223, label %226

223:                                              ; preds = %219, %211
  %224 = load i32*, i32** %10, align 8
  %225 = call i32 @BIO_up_ref(i32* %224)
  br label %226

226:                                              ; preds = %223, %219, %215, %207, %204
  %227 = load i32*, i32** %12, align 8
  %228 = load i32*, i32** %9, align 8
  %229 = load i32*, i32** %10, align 8
  %230 = call i32 @SSL_set_bio(i32* %227, i32* %228, i32* %229)
  store i32 1, i32* %18, align 4
  br label %231

231:                                              ; preds = %226, %177, %125, %102, %80, %62
  %232 = load i32*, i32** %5, align 8
  %233 = call i32 @BIO_free(i32* %232)
  %234 = load i32*, i32** %6, align 8
  %235 = call i32 @BIO_free(i32* %234)
  %236 = load i32*, i32** %11, align 8
  %237 = call i32 @SSL_free(i32* %236)
  %238 = load i32*, i32** %12, align 8
  %239 = call i32 @SSL_free(i32* %238)
  %240 = load i32*, i32** %3, align 8
  %241 = call i32 @SSL_CTX_free(i32* %240)
  %242 = load i32*, i32** %4, align 8
  %243 = call i32 @SSL_CTX_free(i32* %242)
  %244 = load i32, i32* %18, align 4
  ret i32 %244
}

declare dso_local i32 @TEST_true(i32) #1

declare dso_local i32 @create_ssl_ctx_pair(i32, i32, i32, i32, i32**, i32**, i32, i32) #1

declare dso_local i32 @TLS_server_method(...) #1

declare dso_local i32 @TLS_client_method(...) #1

declare dso_local i32 @SSL_CTX_set_min_proto_version(i32*, i32) #1

declare dso_local i32 @SSL_CTX_set_max_proto_version(i32*, i32) #1

declare dso_local i32 @create_ssl_objects(i32*, i32*, i32**, i32**, i32*, i32*) #1

declare dso_local i32 @TEST_ptr(i32*) #1

declare dso_local i32* @BIO_new(i32) #1

declare dso_local i32 @BIO_s_mem(...) #1

declare dso_local i32 @setupbio(i32**, i32*, i32*, i32) #1

declare dso_local i32 @SSL_set_bio(i32*, i32*, i32*) #1

declare dso_local i32 @BIO_up_ref(i32*) #1

declare dso_local i32 @create_ssl_connection(i32*, i32*, i32) #1

declare dso_local i32 @BIO_free(i32*) #1

declare dso_local i32 @SSL_free(i32*) #1

declare dso_local i32 @SSL_CTX_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
