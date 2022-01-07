; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_handshake_helper.c_do_reneg_setup_step.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_handshake_helper.c_do_reneg_setup_step.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i64, %struct.TYPE_21__, i32, i32 }
%struct.TYPE_21__ = type { %struct.TYPE_20__, %struct.TYPE_19__ }
%struct.TYPE_20__ = type { i64 }
%struct.TYPE_19__ = type { i32* }
%struct.TYPE_23__ = type { i64, %struct.TYPE_24__*, i32, i32 }
%struct.TYPE_24__ = type { i32 }

@PEER_SUCCESS = common dso_local global i64 0, align 8
@PEER_RETRY = common dso_local global i64 0, align 8
@SSL_TEST_HANDSHAKE_RENEG_SERVER = common dso_local global i64 0, align 8
@SSL_TEST_HANDSHAKE_RENEG_CLIENT = common dso_local global i64 0, align 8
@SSL_TEST_HANDSHAKE_KEY_UPDATE_SERVER = common dso_local global i64 0, align 8
@SSL_TEST_HANDSHAKE_KEY_UPDATE_CLIENT = common dso_local global i64 0, align 8
@SSL_TEST_HANDSHAKE_POST_HANDSHAKE_AUTH = common dso_local global i64 0, align 8
@PEER_TEST_FAILURE = common dso_local global i64 0, align 8
@PEER_ERROR = common dso_local global i8* null, align 8
@SSL_PHA_EXT_RECEIVED = common dso_local global i32 0, align 4
@SSL_ERROR_WANT_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_22__*, %struct.TYPE_23__*)* @do_reneg_setup_step to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_reneg_setup_step(%struct.TYPE_22__* %0, %struct.TYPE_23__* %1) #0 {
  %3 = alloca %struct.TYPE_22__*, align 8
  %4 = alloca %struct.TYPE_23__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %3, align 8
  store %struct.TYPE_23__* %1, %struct.TYPE_23__** %4, align 8
  %8 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @PEER_SUCCESS, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %19

13:                                               ; preds = %2
  %14 = load i64, i64* @PEER_RETRY, align 8
  %15 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %15, i32 0, i32 0
  store i64 %14, i64* %16, align 8
  %17 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %18 = call i32 @do_handshake_step(%struct.TYPE_23__* %17)
  br label %329

19:                                               ; preds = %2
  %20 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @PEER_RETRY, align 8
  %24 = call i32 @TEST_int_eq(i64 %22, i64 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %61

26:                                               ; preds = %19
  %27 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @SSL_TEST_HANDSHAKE_RENEG_SERVER, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %56, label %32

32:                                               ; preds = %26
  %33 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @SSL_TEST_HANDSHAKE_RENEG_CLIENT, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %56, label %38

38:                                               ; preds = %32
  %39 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @SSL_TEST_HANDSHAKE_KEY_UPDATE_SERVER, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %56, label %44

44:                                               ; preds = %38
  %45 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @SSL_TEST_HANDSHAKE_KEY_UPDATE_CLIENT, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %56, label %50

50:                                               ; preds = %44
  %51 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @SSL_TEST_HANDSHAKE_POST_HANDSHAKE_AUTH, align 8
  %55 = icmp eq i64 %53, %54
  br label %56

56:                                               ; preds = %50, %44, %38, %32, %26
  %57 = phi i1 [ true, %44 ], [ true, %38 ], [ true, %32 ], [ true, %26 ], [ %55, %50 ]
  %58 = zext i1 %57 to i32
  %59 = call i32 @TEST_true(i32 %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %65, label %61

61:                                               ; preds = %56, %19
  %62 = load i64, i64* @PEER_TEST_FAILURE, align 8
  %63 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %63, i32 0, i32 0
  store i64 %62, i64* %64, align 8
  br label %329

65:                                               ; preds = %56
  %66 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %69, i32 0, i32 2
  store i32 %68, i32* %70, align 8
  %71 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %71, i32 0, i32 3
  store i32 %68, i32* %72, align 4
  %73 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @SSL_TEST_HANDSHAKE_RENEG_SERVER, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %84

78:                                               ; preds = %65
  %79 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %79, i32 0, i32 1
  %81 = load %struct.TYPE_24__*, %struct.TYPE_24__** %80, align 8
  %82 = call i32 @SSL_is_server(%struct.TYPE_24__* %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %96, label %84

84:                                               ; preds = %78, %65
  %85 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @SSL_TEST_HANDSHAKE_RENEG_CLIENT, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %180

90:                                               ; preds = %84
  %91 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %91, i32 0, i32 1
  %93 = load %struct.TYPE_24__*, %struct.TYPE_24__** %92, align 8
  %94 = call i32 @SSL_is_server(%struct.TYPE_24__* %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %180, label %96

96:                                               ; preds = %90, %78
  %97 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %97, i32 0, i32 1
  %99 = load %struct.TYPE_24__*, %struct.TYPE_24__** %98, align 8
  %100 = call i32 @SSL_renegotiate_pending(%struct.TYPE_24__* %99)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %179, label %102

102:                                              ; preds = %96
  %103 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %103, i32 0, i32 1
  %105 = load %struct.TYPE_24__*, %struct.TYPE_24__** %104, align 8
  %106 = call i32 @SSL_is_server(%struct.TYPE_24__* %105)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %102
  %109 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %109, i32 0, i32 1
  %111 = load %struct.TYPE_24__*, %struct.TYPE_24__** %110, align 8
  %112 = call i32 @SSL_renegotiate(%struct.TYPE_24__* %111)
  store i32 %112, i32* %5, align 4
  br label %147

113:                                              ; preds = %102
  %114 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %116, i32 0, i32 0
  %118 = load i32*, i32** %117, align 8
  %119 = icmp ne i32* %118, null
  br i1 %119, label %120, label %141

120:                                              ; preds = %113
  %121 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %121, i32 0, i32 1
  %123 = load %struct.TYPE_24__*, %struct.TYPE_24__** %122, align 8
  %124 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %125 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %126, i32 0, i32 0
  %128 = load i32*, i32** %127, align 8
  %129 = call i32 @SSL_set_cipher_list(%struct.TYPE_24__* %123, i32* %128)
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %136, label %131

131:                                              ; preds = %120
  %132 = load i8*, i8** @PEER_ERROR, align 8
  %133 = ptrtoint i8* %132 to i64
  %134 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %134, i32 0, i32 0
  store i64 %133, i64* %135, align 8
  br label %329

136:                                              ; preds = %120
  %137 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %138 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %137, i32 0, i32 1
  %139 = load %struct.TYPE_24__*, %struct.TYPE_24__** %138, align 8
  %140 = call i32 @SSL_renegotiate(%struct.TYPE_24__* %139)
  store i32 %140, i32* %5, align 4
  br label %146

141:                                              ; preds = %113
  %142 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %142, i32 0, i32 1
  %144 = load %struct.TYPE_24__*, %struct.TYPE_24__** %143, align 8
  %145 = call i32 @SSL_renegotiate_abbreviated(%struct.TYPE_24__* %144)
  store i32 %145, i32* %5, align 4
  br label %146

146:                                              ; preds = %141, %136
  br label %147

147:                                              ; preds = %146, %108
  %148 = load i32, i32* %5, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %155, label %150

150:                                              ; preds = %147
  %151 = load i8*, i8** @PEER_ERROR, align 8
  %152 = ptrtoint i8* %151 to i64
  %153 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %154 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %153, i32 0, i32 0
  store i64 %152, i64* %154, align 8
  br label %329

155:                                              ; preds = %147
  %156 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %157 = call i32 @do_handshake_step(%struct.TYPE_23__* %156)
  %158 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %159 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = load i64, i64* @PEER_RETRY, align 8
  %162 = icmp eq i64 %160, %161
  br i1 %162, label %163, label %167

163:                                              ; preds = %155
  %164 = load i64, i64* @PEER_SUCCESS, align 8
  %165 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %166 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %165, i32 0, i32 0
  store i64 %164, i64* %166, align 8
  br label %178

167:                                              ; preds = %155
  %168 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %169 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = load i64, i64* @PEER_SUCCESS, align 8
  %172 = icmp eq i64 %170, %171
  br i1 %172, label %173, label %177

173:                                              ; preds = %167
  %174 = load i64, i64* @PEER_RETRY, align 8
  %175 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %176 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %175, i32 0, i32 0
  store i64 %174, i64* %176, align 8
  br label %177

177:                                              ; preds = %173, %167
  br label %178

178:                                              ; preds = %177, %163
  br label %329

179:                                              ; preds = %96
  br label %291

180:                                              ; preds = %90, %84
  %181 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %182 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = load i64, i64* @SSL_TEST_HANDSHAKE_KEY_UPDATE_SERVER, align 8
  %185 = icmp eq i64 %183, %184
  br i1 %185, label %192, label %186

186:                                              ; preds = %180
  %187 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %188 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = load i64, i64* @SSL_TEST_HANDSHAKE_KEY_UPDATE_CLIENT, align 8
  %191 = icmp eq i64 %189, %190
  br i1 %191, label %192, label %237

192:                                              ; preds = %186, %180
  %193 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %194 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %193, i32 0, i32 1
  %195 = load %struct.TYPE_24__*, %struct.TYPE_24__** %194, align 8
  %196 = call i32 @SSL_is_server(%struct.TYPE_24__* %195)
  %197 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %198 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %197, i32 0, i32 0
  %199 = load i64, i64* %198, align 8
  %200 = load i64, i64* @SSL_TEST_HANDSHAKE_KEY_UPDATE_SERVER, align 8
  %201 = icmp eq i64 %199, %200
  %202 = zext i1 %201 to i32
  %203 = icmp ne i32 %196, %202
  br i1 %203, label %204, label %208

204:                                              ; preds = %192
  %205 = load i64, i64* @PEER_SUCCESS, align 8
  %206 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %207 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %206, i32 0, i32 0
  store i64 %205, i64* %207, align 8
  br label %329

208:                                              ; preds = %192
  %209 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %210 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %209, i32 0, i32 1
  %211 = load %struct.TYPE_24__*, %struct.TYPE_24__** %210, align 8
  %212 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %213 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %212, i32 0, i32 2
  %214 = load i32, i32* %213, align 8
  %215 = call i32 @SSL_key_update(%struct.TYPE_24__* %211, i32 %214)
  store i32 %215, i32* %5, align 4
  %216 = load i32, i32* %5, align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %223, label %218

218:                                              ; preds = %208
  %219 = load i8*, i8** @PEER_ERROR, align 8
  %220 = ptrtoint i8* %219 to i64
  %221 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %222 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %221, i32 0, i32 0
  store i64 %220, i64* %222, align 8
  br label %329

223:                                              ; preds = %208
  %224 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %225 = call i32 @do_handshake_step(%struct.TYPE_23__* %224)
  %226 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %227 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %226, i32 0, i32 0
  %228 = load i64, i64* %227, align 8
  %229 = load i64, i64* @PEER_SUCCESS, align 8
  %230 = icmp ne i64 %228, %229
  br i1 %230, label %231, label %236

231:                                              ; preds = %223
  %232 = load i8*, i8** @PEER_ERROR, align 8
  %233 = ptrtoint i8* %232 to i64
  %234 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %235 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %234, i32 0, i32 0
  store i64 %233, i64* %235, align 8
  br label %236

236:                                              ; preds = %231, %223
  br label %329

237:                                              ; preds = %186
  %238 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %239 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %238, i32 0, i32 0
  %240 = load i64, i64* %239, align 8
  %241 = load i64, i64* @SSL_TEST_HANDSHAKE_POST_HANDSHAKE_AUTH, align 8
  %242 = icmp eq i64 %240, %241
  br i1 %242, label %243, label %289

243:                                              ; preds = %237
  %244 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %245 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %244, i32 0, i32 1
  %246 = load %struct.TYPE_24__*, %struct.TYPE_24__** %245, align 8
  %247 = call i32 @SSL_is_server(%struct.TYPE_24__* %246)
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %275

249:                                              ; preds = %243
  %250 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %251 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %250, i32 0, i32 1
  %252 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %251, i32 0, i32 0
  %253 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %252, i32 0, i32 0
  %254 = load i64, i64* %253, align 8
  %255 = icmp ne i64 %254, 0
  br i1 %255, label %256, label %262

256:                                              ; preds = %249
  %257 = load i32, i32* @SSL_PHA_EXT_RECEIVED, align 4
  %258 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %259 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %258, i32 0, i32 1
  %260 = load %struct.TYPE_24__*, %struct.TYPE_24__** %259, align 8
  %261 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %260, i32 0, i32 0
  store i32 %257, i32* %261, align 4
  br label %262

262:                                              ; preds = %256, %249
  %263 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %264 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %263, i32 0, i32 1
  %265 = load %struct.TYPE_24__*, %struct.TYPE_24__** %264, align 8
  %266 = call i32 @SSL_verify_client_post_handshake(%struct.TYPE_24__* %265)
  store i32 %266, i32* %5, align 4
  %267 = load i32, i32* %5, align 4
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %274, label %269

269:                                              ; preds = %262
  %270 = load i8*, i8** @PEER_ERROR, align 8
  %271 = ptrtoint i8* %270 to i64
  %272 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %273 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %272, i32 0, i32 0
  store i64 %271, i64* %273, align 8
  br label %329

274:                                              ; preds = %262
  br label %275

275:                                              ; preds = %274, %243
  %276 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %277 = call i32 @do_handshake_step(%struct.TYPE_23__* %276)
  %278 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %279 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %278, i32 0, i32 0
  %280 = load i64, i64* %279, align 8
  %281 = load i64, i64* @PEER_SUCCESS, align 8
  %282 = icmp ne i64 %280, %281
  br i1 %282, label %283, label %288

283:                                              ; preds = %275
  %284 = load i8*, i8** @PEER_ERROR, align 8
  %285 = ptrtoint i8* %284 to i64
  %286 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %287 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %286, i32 0, i32 0
  store i64 %285, i64* %287, align 8
  br label %288

288:                                              ; preds = %283, %275
  br label %329

289:                                              ; preds = %237
  br label %290

290:                                              ; preds = %289
  br label %291

291:                                              ; preds = %290, %179
  %292 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %293 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %292, i32 0, i32 1
  %294 = load %struct.TYPE_24__*, %struct.TYPE_24__** %293, align 8
  %295 = call i32 @SSL_read(%struct.TYPE_24__* %294, i8* %6, i32 1)
  store i32 %295, i32* %5, align 4
  %296 = load i32, i32* %5, align 4
  %297 = icmp sge i32 %296, 0
  br i1 %297, label %298, label %303

298:                                              ; preds = %291
  %299 = load i8*, i8** @PEER_ERROR, align 8
  %300 = ptrtoint i8* %299 to i64
  %301 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %302 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %301, i32 0, i32 0
  store i64 %300, i64* %302, align 8
  br label %329

303:                                              ; preds = %291
  %304 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %305 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %304, i32 0, i32 1
  %306 = load %struct.TYPE_24__*, %struct.TYPE_24__** %305, align 8
  %307 = load i32, i32* %5, align 4
  %308 = call i32 @SSL_get_error(%struct.TYPE_24__* %306, i32 %307)
  store i32 %308, i32* %7, align 4
  %309 = load i32, i32* %7, align 4
  %310 = load i32, i32* @SSL_ERROR_WANT_READ, align 4
  %311 = icmp ne i32 %309, %310
  br i1 %311, label %312, label %317

312:                                              ; preds = %303
  %313 = load i8*, i8** @PEER_ERROR, align 8
  %314 = ptrtoint i8* %313 to i64
  %315 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %316 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %315, i32 0, i32 0
  store i64 %314, i64* %316, align 8
  br label %329

317:                                              ; preds = %303
  %318 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %319 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %318, i32 0, i32 1
  %320 = load %struct.TYPE_24__*, %struct.TYPE_24__** %319, align 8
  %321 = call i32 @SSL_in_init(%struct.TYPE_24__* %320)
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %324, label %323

323:                                              ; preds = %317
  br label %329

324:                                              ; preds = %317
  br label %325

325:                                              ; preds = %324
  %326 = load i64, i64* @PEER_SUCCESS, align 8
  %327 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %328 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %327, i32 0, i32 0
  store i64 %326, i64* %328, align 8
  br label %329

329:                                              ; preds = %325, %323, %312, %298, %288, %269, %236, %218, %204, %178, %150, %131, %61, %13
  ret void
}

declare dso_local i32 @do_handshake_step(%struct.TYPE_23__*) #1

declare dso_local i32 @TEST_int_eq(i64, i64) #1

declare dso_local i32 @TEST_true(i32) #1

declare dso_local i32 @SSL_is_server(%struct.TYPE_24__*) #1

declare dso_local i32 @SSL_renegotiate_pending(%struct.TYPE_24__*) #1

declare dso_local i32 @SSL_renegotiate(%struct.TYPE_24__*) #1

declare dso_local i32 @SSL_set_cipher_list(%struct.TYPE_24__*, i32*) #1

declare dso_local i32 @SSL_renegotiate_abbreviated(%struct.TYPE_24__*) #1

declare dso_local i32 @SSL_key_update(%struct.TYPE_24__*, i32) #1

declare dso_local i32 @SSL_verify_client_post_handshake(%struct.TYPE_24__*) #1

declare dso_local i32 @SSL_read(%struct.TYPE_24__*, i8*, i32) #1

declare dso_local i32 @SSL_get_error(%struct.TYPE_24__*, i32) #1

declare dso_local i32 @SSL_in_init(%struct.TYPE_24__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
