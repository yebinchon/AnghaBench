; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_sslapitest.c_test_ciphersuite_change.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_sslapitest.c_test_ciphersuite_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_9__*, i32 }
%struct.TYPE_9__ = type { i32 }

@TLS1_VERSION = common dso_local global i32 0, align 4
@cert = common dso_local global i32 0, align 4
@privkey = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"TLS_AES_128_GCM_SHA256\00", align 1
@SSL_ERROR_NONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"TLS_CHACHA20_POLY1305_SHA256\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"TLS_AES_256_GCM_SHA384\00", align 1
@SSL_ERROR_SSL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [46 x i8] c"TLS_AES_128_GCM_SHA256:TLS_AES_256_GCM_SHA384\00", align 1
@SSL_ERROR_WANT_READ = common dso_local global i32 0, align 4
@SSL_R_CIPHERSUITE_DIGEST_HAS_CHANGED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_ciphersuite_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_ciphersuite_change() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_9__*, align 8
  store i32* null, i32** %1, align 8
  store i32* null, i32** %2, align 8
  store i32* null, i32** %3, align 8
  store i32* null, i32** %4, align 8
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %5, align 8
  store i32 0, i32* %6, align 4
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %7, align 8
  %8 = call i32 (...) @TLS_server_method()
  %9 = call i32 (...) @TLS_client_method()
  %10 = load i32, i32* @TLS1_VERSION, align 4
  %11 = load i32, i32* @cert, align 4
  %12 = load i32, i32* @privkey, align 4
  %13 = call i32 @create_ssl_ctx_pair(i32 %8, i32 %9, i32 %10, i32 0, i32** %2, i32** %1, i32 %11, i32 %12)
  %14 = call i32 @TEST_true(i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %34

16:                                               ; preds = %0
  %17 = load i32*, i32** %1, align 8
  %18 = call i32 @SSL_CTX_set_ciphersuites(i32* %17, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %19 = call i32 @TEST_true(i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %34

21:                                               ; preds = %16
  %22 = load i32*, i32** %2, align 8
  %23 = load i32*, i32** %1, align 8
  %24 = call i32 @create_ssl_objects(i32* %22, i32* %23, i32** %4, i32** %3, i32* null, i32* null)
  %25 = call i32 @TEST_true(i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %21
  %28 = load i32*, i32** %4, align 8
  %29 = load i32*, i32** %3, align 8
  %30 = load i32, i32* @SSL_ERROR_NONE, align 4
  %31 = call i32 @create_ssl_connection(i32* %28, i32* %29, i32 %30)
  %32 = call i32 @TEST_true(i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %27, %21, %16, %0
  br label %213

35:                                               ; preds = %27
  %36 = load i32*, i32** %3, align 8
  %37 = call %struct.TYPE_8__* @SSL_get1_session(i32* %36)
  store %struct.TYPE_8__* %37, %struct.TYPE_8__** %5, align 8
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %39 = call %struct.TYPE_9__* @SSL_SESSION_get0_cipher(%struct.TYPE_8__* %38)
  store %struct.TYPE_9__* %39, %struct.TYPE_9__** %7, align 8
  %40 = load i32*, i32** %3, align 8
  %41 = call i32 @SSL_shutdown(i32* %40)
  %42 = load i32*, i32** %4, align 8
  %43 = call i32 @SSL_shutdown(i32* %42)
  %44 = load i32*, i32** %4, align 8
  %45 = call i32 @SSL_free(i32* %44)
  %46 = load i32*, i32** %3, align 8
  %47 = call i32 @SSL_free(i32* %46)
  store i32* null, i32** %3, align 8
  store i32* null, i32** %4, align 8
  %48 = load i32*, i32** %1, align 8
  %49 = call i32 @SSL_CTX_set_ciphersuites(i32* %48, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %50 = call i32 @TEST_true(i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %76

52:                                               ; preds = %35
  %53 = load i32*, i32** %2, align 8
  %54 = load i32*, i32** %1, align 8
  %55 = call i32 @create_ssl_objects(i32* %53, i32* %54, i32** %4, i32** %3, i32* null, i32* null)
  %56 = call i32 @TEST_true(i32 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %76

58:                                               ; preds = %52
  %59 = load i32*, i32** %3, align 8
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %61 = call i32 @SSL_set_session(i32* %59, %struct.TYPE_8__* %60)
  %62 = call i32 @TEST_true(i32 %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %76

64:                                               ; preds = %58
  %65 = load i32*, i32** %4, align 8
  %66 = load i32*, i32** %3, align 8
  %67 = load i32, i32* @SSL_ERROR_NONE, align 4
  %68 = call i32 @create_ssl_connection(i32* %65, i32* %66, i32 %67)
  %69 = call i32 @TEST_true(i32 %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %64
  %72 = load i32*, i32** %3, align 8
  %73 = call i32 @SSL_session_reused(i32* %72)
  %74 = call i32 @TEST_true(i32 %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %71, %64, %58, %52, %35
  br label %213

77:                                               ; preds = %71
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %79 = call i32 @SSL_SESSION_free(%struct.TYPE_8__* %78)
  %80 = load i32*, i32** %3, align 8
  %81 = call %struct.TYPE_8__* @SSL_get1_session(i32* %80)
  store %struct.TYPE_8__* %81, %struct.TYPE_8__** %5, align 8
  %82 = load i32*, i32** %3, align 8
  %83 = call i32 @SSL_shutdown(i32* %82)
  %84 = load i32*, i32** %4, align 8
  %85 = call i32 @SSL_shutdown(i32* %84)
  %86 = load i32*, i32** %4, align 8
  %87 = call i32 @SSL_free(i32* %86)
  %88 = load i32*, i32** %3, align 8
  %89 = call i32 @SSL_free(i32* %88)
  store i32* null, i32** %3, align 8
  store i32* null, i32** %4, align 8
  %90 = load i32*, i32** %1, align 8
  %91 = call i32 @SSL_CTX_set_ciphersuites(i32* %90, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %92 = call i32 @TEST_true(i32 %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %118

94:                                               ; preds = %77
  %95 = load i32*, i32** %2, align 8
  %96 = load i32*, i32** %1, align 8
  %97 = call i32 @create_ssl_objects(i32* %95, i32* %96, i32** %4, i32** %3, i32* null, i32* null)
  %98 = call i32 @TEST_true(i32 %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %118

100:                                              ; preds = %94
  %101 = load i32*, i32** %3, align 8
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %103 = call i32 @SSL_set_session(i32* %101, %struct.TYPE_8__* %102)
  %104 = call i32 @TEST_true(i32 %103)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %118

106:                                              ; preds = %100
  %107 = load i32*, i32** %4, align 8
  %108 = load i32*, i32** %3, align 8
  %109 = load i32, i32* @SSL_ERROR_SSL, align 4
  %110 = call i32 @create_ssl_connection(i32* %107, i32* %108, i32 %109)
  %111 = call i32 @TEST_true(i32 %110)
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %118

113:                                              ; preds = %106
  %114 = load i32*, i32** %3, align 8
  %115 = call i32 @SSL_session_reused(i32* %114)
  %116 = call i32 @TEST_false(i32 %115)
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %119, label %118

118:                                              ; preds = %113, %106, %100, %94, %77
  br label %213

119:                                              ; preds = %113
  %120 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %121 = call i32 @SSL_SESSION_free(%struct.TYPE_8__* %120)
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %5, align 8
  %122 = load i32*, i32** %3, align 8
  %123 = call i32 @SSL_shutdown(i32* %122)
  %124 = load i32*, i32** %4, align 8
  %125 = call i32 @SSL_shutdown(i32* %124)
  %126 = load i32*, i32** %4, align 8
  %127 = call i32 @SSL_free(i32* %126)
  %128 = load i32*, i32** %3, align 8
  %129 = call i32 @SSL_free(i32* %128)
  store i32* null, i32** %3, align 8
  store i32* null, i32** %4, align 8
  %130 = load i32*, i32** %1, align 8
  %131 = call i32 @SSL_CTX_set_ciphersuites(i32* %130, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %132 = call i32 @TEST_true(i32 %131)
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %147

134:                                              ; preds = %119
  %135 = load i32*, i32** %2, align 8
  %136 = load i32*, i32** %1, align 8
  %137 = call i32 @create_ssl_objects(i32* %135, i32* %136, i32** %4, i32** %3, i32* null, i32* null)
  %138 = call i32 @TEST_true(i32 %137)
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %147

140:                                              ; preds = %134
  %141 = load i32*, i32** %4, align 8
  %142 = load i32*, i32** %3, align 8
  %143 = load i32, i32* @SSL_ERROR_NONE, align 4
  %144 = call i32 @create_ssl_connection(i32* %141, i32* %142, i32 %143)
  %145 = call i32 @TEST_true(i32 %144)
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %148, label %147

147:                                              ; preds = %140, %134, %119
  br label %213

148:                                              ; preds = %140
  %149 = load i32*, i32** %3, align 8
  %150 = call %struct.TYPE_8__* @SSL_get1_session(i32* %149)
  store %struct.TYPE_8__* %150, %struct.TYPE_8__** %5, align 8
  %151 = load i32*, i32** %3, align 8
  %152 = call i32 @SSL_shutdown(i32* %151)
  %153 = load i32*, i32** %4, align 8
  %154 = call i32 @SSL_shutdown(i32* %153)
  %155 = load i32*, i32** %4, align 8
  %156 = call i32 @SSL_free(i32* %155)
  %157 = load i32*, i32** %3, align 8
  %158 = call i32 @SSL_free(i32* %157)
  store i32* null, i32** %3, align 8
  store i32* null, i32** %4, align 8
  %159 = load i32*, i32** %1, align 8
  %160 = call i32 @SSL_CTX_set_ciphersuites(i32* %159, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0))
  %161 = call i32 @TEST_true(i32 %160)
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %187

163:                                              ; preds = %148
  %164 = load i32*, i32** %2, align 8
  %165 = call i32 @SSL_CTX_set_ciphersuites(i32* %164, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %166 = call i32 @TEST_true(i32 %165)
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %187

168:                                              ; preds = %163
  %169 = load i32*, i32** %2, align 8
  %170 = load i32*, i32** %1, align 8
  %171 = call i32 @create_ssl_objects(i32* %169, i32* %170, i32** %4, i32** %3, i32* null, i32* null)
  %172 = call i32 @TEST_true(i32 %171)
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %187

174:                                              ; preds = %168
  %175 = load i32*, i32** %3, align 8
  %176 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %177 = call i32 @SSL_set_session(i32* %175, %struct.TYPE_8__* %176)
  %178 = call i32 @TEST_true(i32 %177)
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %187

180:                                              ; preds = %174
  %181 = load i32*, i32** %4, align 8
  %182 = load i32*, i32** %3, align 8
  %183 = load i32, i32* @SSL_ERROR_WANT_READ, align 4
  %184 = call i32 @create_ssl_connection(i32* %181, i32* %182, i32 %183)
  %185 = call i32 @TEST_false(i32 %184)
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %188, label %187

187:                                              ; preds = %180, %174, %168, %163, %148
  br label %213

188:                                              ; preds = %180
  %189 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %190 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %191 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %190, i32 0, i32 0
  store %struct.TYPE_9__* %189, %struct.TYPE_9__** %191, align 8
  %192 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %193 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %192, i32 0, i32 0
  %194 = load %struct.TYPE_9__*, %struct.TYPE_9__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %198 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %197, i32 0, i32 1
  store i32 %196, i32* %198, align 8
  %199 = load i32*, i32** %4, align 8
  %200 = load i32*, i32** %3, align 8
  %201 = load i32, i32* @SSL_ERROR_SSL, align 4
  %202 = call i32 @create_ssl_connection(i32* %199, i32* %200, i32 %201)
  %203 = call i32 @TEST_false(i32 %202)
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %211

205:                                              ; preds = %188
  %206 = call i32 (...) @ERR_get_error()
  %207 = call i32 @ERR_GET_REASON(i32 %206)
  %208 = load i32, i32* @SSL_R_CIPHERSUITE_DIGEST_HAS_CHANGED, align 4
  %209 = call i32 @TEST_int_eq(i32 %207, i32 %208)
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %212, label %211

211:                                              ; preds = %205, %188
  br label %213

212:                                              ; preds = %205
  store i32 1, i32* %6, align 4
  br label %213

213:                                              ; preds = %212, %211, %187, %147, %118, %76, %34
  %214 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %215 = call i32 @SSL_SESSION_free(%struct.TYPE_8__* %214)
  %216 = load i32*, i32** %4, align 8
  %217 = call i32 @SSL_free(i32* %216)
  %218 = load i32*, i32** %3, align 8
  %219 = call i32 @SSL_free(i32* %218)
  %220 = load i32*, i32** %2, align 8
  %221 = call i32 @SSL_CTX_free(i32* %220)
  %222 = load i32*, i32** %1, align 8
  %223 = call i32 @SSL_CTX_free(i32* %222)
  %224 = load i32, i32* %6, align 4
  ret i32 %224
}

declare dso_local i32 @TEST_true(i32) #1

declare dso_local i32 @create_ssl_ctx_pair(i32, i32, i32, i32, i32**, i32**, i32, i32) #1

declare dso_local i32 @TLS_server_method(...) #1

declare dso_local i32 @TLS_client_method(...) #1

declare dso_local i32 @SSL_CTX_set_ciphersuites(i32*, i8*) #1

declare dso_local i32 @create_ssl_objects(i32*, i32*, i32**, i32**, i32*, i32*) #1

declare dso_local i32 @create_ssl_connection(i32*, i32*, i32) #1

declare dso_local %struct.TYPE_8__* @SSL_get1_session(i32*) #1

declare dso_local %struct.TYPE_9__* @SSL_SESSION_get0_cipher(%struct.TYPE_8__*) #1

declare dso_local i32 @SSL_shutdown(i32*) #1

declare dso_local i32 @SSL_free(i32*) #1

declare dso_local i32 @SSL_set_session(i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @SSL_session_reused(i32*) #1

declare dso_local i32 @SSL_SESSION_free(%struct.TYPE_8__*) #1

declare dso_local i32 @TEST_false(i32) #1

declare dso_local i32 @TEST_int_eq(i32, i32) #1

declare dso_local i32 @ERR_GET_REASON(i32) #1

declare dso_local i32 @ERR_get_error(...) #1

declare dso_local i32 @SSL_CTX_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
