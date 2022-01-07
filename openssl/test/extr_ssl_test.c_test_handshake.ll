; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_ssl_test.c_test_handshake.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_ssl_test.c_test_handshake.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i64, i64, %struct.TYPE_20__ }
%struct.TYPE_20__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i64 }

@MAX_TESTCASE_NAME_LENGTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"test-%d\00", align 1
@conf = common dso_local global i32 0, align 4
@SSL_TEST_METHOD_DTLS = common dso_local global i64 0, align 8
@SSL_TEST_SERVERNAME_CB_NONE = common dso_local global i64 0, align 8
@SSL_TEST_HANDSHAKE_RESUME = common dso_local global i64 0, align 8
@SSL_TEST_METHOD_TLS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"server\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"client\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"server2\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"resume-server\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"resume-client\00", align 1
@OPENSSL_INIT_LOAD_CONFIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @test_handshake to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_handshake(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_21__*, align 8
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca %struct.TYPE_21__*, align 8
  %8 = alloca %struct.TYPE_21__*, align 8
  %9 = alloca %struct.TYPE_21__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %4, align 8
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %5, align 8
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %6, align 8
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %7, align 8
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %8, align 8
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %9, align 8
  store i32* null, i32** %10, align 8
  %13 = load i32, i32* @MAX_TESTCASE_NAME_LENGTH, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %11, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %12, align 8
  %17 = trunc i64 %14 to i32
  %18 = load i32, i32* %2, align 4
  %19 = call i32 @BIO_snprintf(i8* %16, i32 %17, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* @conf, align 4
  %21 = call %struct.TYPE_21__* @SSL_TEST_CTX_create(i32 %20, i8* %16)
  store %struct.TYPE_21__* %21, %struct.TYPE_21__** %9, align 8
  %22 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %23 = call i32 @TEST_ptr(%struct.TYPE_21__* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %1
  br label %234

26:                                               ; preds = %1
  %27 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %28 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @SSL_TEST_METHOD_DTLS, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %96

32:                                               ; preds = %26
  %33 = call i32 (...) @DTLS_server_method()
  %34 = call %struct.TYPE_21__* @SSL_CTX_new(i32 %33)
  store %struct.TYPE_21__* %34, %struct.TYPE_21__** %4, align 8
  %35 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %36 = call i32 @SSL_CTX_set_max_proto_version(%struct.TYPE_21__* %35, i32 0)
  %37 = call i32 @TEST_true(i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %32
  br label %234

40:                                               ; preds = %32
  %41 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @SSL_TEST_SERVERNAME_CB_NONE, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %55

48:                                               ; preds = %40
  %49 = call i32 (...) @DTLS_server_method()
  %50 = call %struct.TYPE_21__* @SSL_CTX_new(i32 %49)
  store %struct.TYPE_21__* %50, %struct.TYPE_21__** %5, align 8
  %51 = call i32 @TEST_ptr(%struct.TYPE_21__* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %48
  br label %234

54:                                               ; preds = %48
  br label %55

55:                                               ; preds = %54, %40
  %56 = call i32 (...) @DTLS_client_method()
  %57 = call %struct.TYPE_21__* @SSL_CTX_new(i32 %56)
  store %struct.TYPE_21__* %57, %struct.TYPE_21__** %6, align 8
  %58 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %59 = call i32 @SSL_CTX_set_max_proto_version(%struct.TYPE_21__* %58, i32 0)
  %60 = call i32 @TEST_true(i32 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %55
  br label %234

63:                                               ; preds = %55
  %64 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %65 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @SSL_TEST_HANDSHAKE_RESUME, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %95

69:                                               ; preds = %63
  %70 = call i32 (...) @DTLS_server_method()
  %71 = call %struct.TYPE_21__* @SSL_CTX_new(i32 %70)
  store %struct.TYPE_21__* %71, %struct.TYPE_21__** %7, align 8
  %72 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %73 = call i32 @SSL_CTX_set_max_proto_version(%struct.TYPE_21__* %72, i32 0)
  %74 = call i32 @TEST_true(i32 %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %69
  br label %234

77:                                               ; preds = %69
  %78 = call i32 (...) @DTLS_client_method()
  %79 = call %struct.TYPE_21__* @SSL_CTX_new(i32 %78)
  store %struct.TYPE_21__* %79, %struct.TYPE_21__** %8, align 8
  %80 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %81 = call i32 @SSL_CTX_set_max_proto_version(%struct.TYPE_21__* %80, i32 0)
  %82 = call i32 @TEST_true(i32 %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %77
  br label %234

85:                                               ; preds = %77
  %86 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %87 = call i32 @TEST_ptr(%struct.TYPE_21__* %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %85
  %90 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %91 = call i32 @TEST_ptr(%struct.TYPE_21__* %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %94, label %93

93:                                               ; preds = %89, %85
  br label %234

94:                                               ; preds = %89
  br label %95

95:                                               ; preds = %94, %63
  br label %96

96:                                               ; preds = %95, %26
  %97 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %98 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @SSL_TEST_METHOD_TLS, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %172

102:                                              ; preds = %96
  %103 = call i32 (...) @TLS_server_method()
  %104 = call %struct.TYPE_21__* @SSL_CTX_new(i32 %103)
  store %struct.TYPE_21__* %104, %struct.TYPE_21__** %4, align 8
  %105 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %106 = call i32 @SSL_CTX_set_max_proto_version(%struct.TYPE_21__* %105, i32 0)
  %107 = call i32 @TEST_true(i32 %106)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %110, label %109

109:                                              ; preds = %102
  br label %234

110:                                              ; preds = %102
  %111 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %112 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %111, i32 0, i32 2
  %113 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @SSL_TEST_SERVERNAME_CB_NONE, align 8
  %117 = icmp ne i64 %115, %116
  br i1 %117, label %118, label %131

118:                                              ; preds = %110
  %119 = call i32 (...) @TLS_server_method()
  %120 = call %struct.TYPE_21__* @SSL_CTX_new(i32 %119)
  store %struct.TYPE_21__* %120, %struct.TYPE_21__** %5, align 8
  %121 = call i32 @TEST_ptr(%struct.TYPE_21__* %120)
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %124, label %123

123:                                              ; preds = %118
  br label %234

124:                                              ; preds = %118
  %125 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %126 = call i32 @SSL_CTX_set_max_proto_version(%struct.TYPE_21__* %125, i32 0)
  %127 = call i32 @TEST_true(i32 %126)
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %130, label %129

129:                                              ; preds = %124
  br label %234

130:                                              ; preds = %124
  br label %131

131:                                              ; preds = %130, %110
  %132 = call i32 (...) @TLS_client_method()
  %133 = call %struct.TYPE_21__* @SSL_CTX_new(i32 %132)
  store %struct.TYPE_21__* %133, %struct.TYPE_21__** %6, align 8
  %134 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %135 = call i32 @SSL_CTX_set_max_proto_version(%struct.TYPE_21__* %134, i32 0)
  %136 = call i32 @TEST_true(i32 %135)
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %139, label %138

138:                                              ; preds = %131
  br label %234

139:                                              ; preds = %131
  %140 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %141 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %140, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* @SSL_TEST_HANDSHAKE_RESUME, align 8
  %144 = icmp eq i64 %142, %143
  br i1 %144, label %145, label %171

145:                                              ; preds = %139
  %146 = call i32 (...) @TLS_server_method()
  %147 = call %struct.TYPE_21__* @SSL_CTX_new(i32 %146)
  store %struct.TYPE_21__* %147, %struct.TYPE_21__** %7, align 8
  %148 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %149 = call i32 @SSL_CTX_set_max_proto_version(%struct.TYPE_21__* %148, i32 0)
  %150 = call i32 @TEST_true(i32 %149)
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %153, label %152

152:                                              ; preds = %145
  br label %234

153:                                              ; preds = %145
  %154 = call i32 (...) @TLS_client_method()
  %155 = call %struct.TYPE_21__* @SSL_CTX_new(i32 %154)
  store %struct.TYPE_21__* %155, %struct.TYPE_21__** %8, align 8
  %156 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %157 = call i32 @SSL_CTX_set_max_proto_version(%struct.TYPE_21__* %156, i32 0)
  %158 = call i32 @TEST_true(i32 %157)
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %161, label %160

160:                                              ; preds = %153
  br label %234

161:                                              ; preds = %153
  %162 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %163 = call i32 @TEST_ptr(%struct.TYPE_21__* %162)
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %169

165:                                              ; preds = %161
  %166 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %167 = call i32 @TEST_ptr(%struct.TYPE_21__* %166)
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %170, label %169

169:                                              ; preds = %165, %161
  br label %234

170:                                              ; preds = %165
  br label %171

171:                                              ; preds = %170, %139
  br label %172

172:                                              ; preds = %171, %96
  %173 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %174 = call i32 @TEST_ptr(%struct.TYPE_21__* %173)
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %185

176:                                              ; preds = %172
  %177 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %178 = call i32 @TEST_ptr(%struct.TYPE_21__* %177)
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %185

180:                                              ; preds = %176
  %181 = load i32, i32* @conf, align 4
  %182 = call i32 @CONF_modules_load(i32 %181, i8* %16, i32 0)
  %183 = call i32 @TEST_int_gt(i32 %182, i32 0)
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %186, label %185

185:                                              ; preds = %180, %176, %172
  br label %234

186:                                              ; preds = %180
  %187 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %188 = call i32 @SSL_CTX_config(%struct.TYPE_21__* %187, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %194

190:                                              ; preds = %186
  %191 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %192 = call i32 @SSL_CTX_config(%struct.TYPE_21__* %191, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %195, label %194

194:                                              ; preds = %190, %186
  br label %234

195:                                              ; preds = %190
  %196 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %197 = icmp ne %struct.TYPE_21__* %196, null
  br i1 %197, label %198, label %203

198:                                              ; preds = %195
  %199 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %200 = call i32 @SSL_CTX_config(%struct.TYPE_21__* %199, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %203, label %202

202:                                              ; preds = %198
  br label %234

203:                                              ; preds = %198, %195
  %204 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %205 = icmp ne %struct.TYPE_21__* %204, null
  br i1 %205, label %206, label %211

206:                                              ; preds = %203
  %207 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %208 = call i32 @SSL_CTX_config(%struct.TYPE_21__* %207, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %211, label %210

210:                                              ; preds = %206
  br label %234

211:                                              ; preds = %206, %203
  %212 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %213 = icmp ne %struct.TYPE_21__* %212, null
  br i1 %213, label %214, label %219

214:                                              ; preds = %211
  %215 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %216 = call i32 @SSL_CTX_config(%struct.TYPE_21__* %215, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %219, label %218

218:                                              ; preds = %214
  br label %234

219:                                              ; preds = %214, %211
  %220 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %221 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %222 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %223 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %224 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %225 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %226 = call i32* @do_handshake(%struct.TYPE_21__* %220, %struct.TYPE_21__* %221, %struct.TYPE_21__* %222, %struct.TYPE_21__* %223, %struct.TYPE_21__* %224, %struct.TYPE_21__* %225)
  store i32* %226, i32** %10, align 8
  %227 = load i32*, i32** %10, align 8
  %228 = icmp ne i32* %227, null
  br i1 %228, label %229, label %233

229:                                              ; preds = %219
  %230 = load i32*, i32** %10, align 8
  %231 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %232 = call i32 @check_test(i32* %230, %struct.TYPE_21__* %231)
  store i32 %232, i32* %3, align 4
  br label %233

233:                                              ; preds = %229, %219
  br label %234

234:                                              ; preds = %233, %218, %210, %202, %194, %185, %169, %160, %152, %138, %129, %123, %109, %93, %84, %76, %62, %53, %39, %25
  %235 = call i32 @CONF_modules_unload(i32 0)
  %236 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %237 = call i32 @SSL_CTX_free(%struct.TYPE_21__* %236)
  %238 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %239 = call i32 @SSL_CTX_free(%struct.TYPE_21__* %238)
  %240 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %241 = call i32 @SSL_CTX_free(%struct.TYPE_21__* %240)
  %242 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %243 = call i32 @SSL_CTX_free(%struct.TYPE_21__* %242)
  %244 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %245 = call i32 @SSL_CTX_free(%struct.TYPE_21__* %244)
  %246 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %247 = call i32 @SSL_TEST_CTX_free(%struct.TYPE_21__* %246)
  %248 = load i32*, i32** %10, align 8
  %249 = call i32 @HANDSHAKE_RESULT_free(i32* %248)
  %250 = load i32, i32* %3, align 4
  %251 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %251)
  ret i32 %250
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @BIO_snprintf(i8*, i32, i8*, i32) #2

declare dso_local %struct.TYPE_21__* @SSL_TEST_CTX_create(i32, i8*) #2

declare dso_local i32 @TEST_ptr(%struct.TYPE_21__*) #2

declare dso_local %struct.TYPE_21__* @SSL_CTX_new(i32) #2

declare dso_local i32 @DTLS_server_method(...) #2

declare dso_local i32 @TEST_true(i32) #2

declare dso_local i32 @SSL_CTX_set_max_proto_version(%struct.TYPE_21__*, i32) #2

declare dso_local i32 @DTLS_client_method(...) #2

declare dso_local i32 @TLS_server_method(...) #2

declare dso_local i32 @TLS_client_method(...) #2

declare dso_local i32 @TEST_int_gt(i32, i32) #2

declare dso_local i32 @CONF_modules_load(i32, i8*, i32) #2

declare dso_local i32 @SSL_CTX_config(%struct.TYPE_21__*, i8*) #2

declare dso_local i32* @do_handshake(%struct.TYPE_21__*, %struct.TYPE_21__*, %struct.TYPE_21__*, %struct.TYPE_21__*, %struct.TYPE_21__*, %struct.TYPE_21__*) #2

declare dso_local i32 @check_test(i32*, %struct.TYPE_21__*) #2

declare dso_local i32 @CONF_modules_unload(i32) #2

declare dso_local i32 @SSL_CTX_free(%struct.TYPE_21__*) #2

declare dso_local i32 @SSL_TEST_CTX_free(%struct.TYPE_21__*) #2

declare dso_local i32 @HANDSHAKE_RESULT_free(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
