; ModuleID = '/home/carl/AnghaBench/openssl/ssl/statem/extr_statem_srvr.c_tls_construct_new_session_ticket.c'
source_filename = "/home/carl/AnghaBench/openssl/ssl/statem/extr_statem_srvr.c_tls_construct_new_session_ticket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i64, i32, i64, i32, %struct.TYPE_23__*, %struct.TYPE_21__, i32, i64, %struct.TYPE_24__* }
%struct.TYPE_23__ = type { i64, i64, %struct.TYPE_22__, i32 }
%struct.TYPE_22__ = type { i64, i32, i32*, i64 }
%struct.TYPE_21__ = type { i32, i32* }
%struct.TYPE_24__ = type { i64 (%struct.TYPE_25__*, i32)*, i32 }
%union.anon = type { i64 }

@TICKET_NONCE_SIZE = common dso_local global i32 0, align 4
@tls_construct_new_session_ticket.nonce_label = internal constant [11 x i8] c"resumption\00", align 1
@SSL_AD_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSL_F_TLS_CONSTRUCT_NEW_SESSION_TICKET = common dso_local global i32 0, align 4
@ERR_R_INTERNAL_ERROR = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@SSL_OP_NO_TICKET = common dso_local global i32 0, align 4
@SSL_OP_NO_ANTI_REPLAY = common dso_local global i32 0, align 4
@SSL_EXT_TLS1_3_NEW_SESSION_TICKET = common dso_local global i32 0, align 4
@SSL_SESS_CACHE_SERVER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tls_construct_new_session_ticket(%struct.TYPE_25__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_25__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_24__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %union.anon, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_23__*, align 8
  %16 = alloca i32, align 4
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %4, align 8
  store i32* %1, i32** %5, align 8
  %17 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %17, i32 0, i32 8
  %19 = load %struct.TYPE_24__*, %struct.TYPE_24__** %18, align 8
  store %struct.TYPE_24__* %19, %struct.TYPE_24__** %6, align 8
  %20 = load i32, i32* @TICKET_NONCE_SIZE, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %7, align 8
  %23 = alloca i8, i64 %21, align 16
  store i64 %21, i64* %8, align 8
  %24 = bitcast %union.anon* %9 to i64*
  store i64 0, i64* %24, align 8
  %25 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %26 = call i64 @SSL_IS_TLS13(%struct.TYPE_25__* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %205

28:                                               ; preds = %2
  %29 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %30 = call i32* @ssl_handshake_md(%struct.TYPE_25__* %29)
  store i32* %30, i32** %13, align 8
  %31 = load i32*, i32** %13, align 8
  %32 = call i32 @EVP_MD_size(i32* %31)
  store i32 %32, i32* %14, align 4
  %33 = load i32, i32* %14, align 4
  %34 = icmp sge i32 %33, 0
  %35 = zext i1 %34 to i32
  %36 = call i32 @ossl_assert(i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %44, label %38

38:                                               ; preds = %28
  %39 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %40 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %41 = load i32, i32* @SSL_F_TLS_CONSTRUCT_NEW_SESSION_TICKET, align 4
  %42 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %43 = call i32 @SSLfatal(%struct.TYPE_25__* %39, i32 %40, i32 %41, i32 %42)
  br label %286

44:                                               ; preds = %28
  %45 = load i32, i32* %14, align 4
  %46 = sext i32 %45 to i64
  store i64 %46, i64* %11, align 8
  %47 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %56, label %51

51:                                               ; preds = %44
  %52 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %52, i32 0, i32 7
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %72

56:                                               ; preds = %51, %44
  %57 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %57, i32 0, i32 4
  %59 = load %struct.TYPE_23__*, %struct.TYPE_23__** %58, align 8
  %60 = call %struct.TYPE_23__* @ssl_session_dup(%struct.TYPE_23__* %59, i32 0)
  store %struct.TYPE_23__* %60, %struct.TYPE_23__** %15, align 8
  %61 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %62 = icmp eq %struct.TYPE_23__* %61, null
  br i1 %62, label %63, label %64

63:                                               ; preds = %56
  br label %286

64:                                               ; preds = %56
  %65 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %65, i32 0, i32 4
  %67 = load %struct.TYPE_23__*, %struct.TYPE_23__** %66, align 8
  %68 = call i32 @SSL_SESSION_free(%struct.TYPE_23__* %67)
  %69 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %70 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %70, i32 0, i32 4
  store %struct.TYPE_23__* %69, %struct.TYPE_23__** %71, align 8
  br label %72

72:                                               ; preds = %64, %51
  %73 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %74 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %74, i32 0, i32 4
  %76 = load %struct.TYPE_23__*, %struct.TYPE_23__** %75, align 8
  %77 = call i32 @ssl_generate_session_id(%struct.TYPE_25__* %73, %struct.TYPE_23__* %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %72
  br label %286

80:                                               ; preds = %72
  %81 = bitcast %union.anon* %9 to [8 x i8]*
  %82 = getelementptr inbounds [8 x i8], [8 x i8]* %81, i64 0, i64 0
  %83 = call i64 @RAND_bytes(i8* %82, i32 8)
  %84 = icmp sle i64 %83, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %80
  %86 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %87 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %88 = load i32, i32* @SSL_F_TLS_CONSTRUCT_NEW_SESSION_TICKET, align 4
  %89 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %90 = call i32 @SSLfatal(%struct.TYPE_25__* %86, i32 %87, i32 %88, i32 %89)
  br label %286

91:                                               ; preds = %80
  %92 = bitcast %union.anon* %9 to i64*
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %94, i32 0, i32 4
  %96 = load %struct.TYPE_23__*, %struct.TYPE_23__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %97, i32 0, i32 3
  store i64 %93, i64* %98, align 8
  %99 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  store i32 %101, i32* %12, align 4
  %102 = load i32, i32* @TICKET_NONCE_SIZE, align 4
  %103 = sext i32 %102 to i64
  store i64 %103, i64* %10, align 8
  br label %104

104:                                              ; preds = %116, %91
  %105 = load i64, i64* %10, align 8
  %106 = icmp ugt i64 %105, 0
  br i1 %106, label %107, label %119

107:                                              ; preds = %104
  %108 = load i32, i32* %12, align 4
  %109 = and i32 %108, 255
  %110 = trunc i32 %109 to i8
  %111 = load i64, i64* %10, align 8
  %112 = sub i64 %111, 1
  %113 = getelementptr inbounds i8, i8* %23, i64 %112
  store i8 %110, i8* %113, align 1
  %114 = load i32, i32* %12, align 4
  %115 = ashr i32 %114, 8
  store i32 %115, i32* %12, align 4
  br label %116

116:                                              ; preds = %107
  %117 = load i64, i64* %10, align 8
  %118 = add i64 %117, -1
  store i64 %118, i64* %10, align 8
  br label %104

119:                                              ; preds = %104
  %120 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %121 = load i32*, i32** %13, align 8
  %122 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %122, i32 0, i32 6
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* @TICKET_NONCE_SIZE, align 4
  %126 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %126, i32 0, i32 4
  %128 = load %struct.TYPE_23__*, %struct.TYPE_23__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 8
  %131 = load i64, i64* %11, align 8
  %132 = call i32 @tls13_hkdf_expand(%struct.TYPE_25__* %120, i32* %121, i32 %124, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @tls_construct_new_session_ticket.nonce_label, i64 0, i64 0), i32 10, i8* %23, i32 %125, i32 %130, i64 %131, i32 1)
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %135, label %134

134:                                              ; preds = %119
  br label %286

135:                                              ; preds = %119
  %136 = load i64, i64* %11, align 8
  %137 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %138 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %137, i32 0, i32 4
  %139 = load %struct.TYPE_23__*, %struct.TYPE_23__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %139, i32 0, i32 0
  store i64 %136, i64* %140, align 8
  %141 = call i64 @time(i32* null)
  %142 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %142, i32 0, i32 4
  %144 = load %struct.TYPE_23__*, %struct.TYPE_23__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %144, i32 0, i32 1
  store i64 %141, i64* %145, align 8
  %146 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %147 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %146, i32 0, i32 5
  %148 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %147, i32 0, i32 1
  %149 = load i32*, i32** %148, align 8
  %150 = icmp ne i32* %149, null
  br i1 %150, label %151, label %196

151:                                              ; preds = %135
  %152 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %153 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %152, i32 0, i32 4
  %154 = load %struct.TYPE_23__*, %struct.TYPE_23__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %154, i32 0, i32 2
  %156 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %155, i32 0, i32 2
  %157 = load i32*, i32** %156, align 8
  %158 = call i32 @OPENSSL_free(i32* %157)
  %159 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %160 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %159, i32 0, i32 5
  %161 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %160, i32 0, i32 1
  %162 = load i32*, i32** %161, align 8
  %163 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %164 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %163, i32 0, i32 5
  %165 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = call i32* @OPENSSL_memdup(i32* %162, i32 %166)
  %168 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %169 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %168, i32 0, i32 4
  %170 = load %struct.TYPE_23__*, %struct.TYPE_23__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %170, i32 0, i32 2
  %172 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %171, i32 0, i32 2
  store i32* %167, i32** %172, align 8
  %173 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %174 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %173, i32 0, i32 4
  %175 = load %struct.TYPE_23__*, %struct.TYPE_23__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %175, i32 0, i32 2
  %177 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %176, i32 0, i32 2
  %178 = load i32*, i32** %177, align 8
  %179 = icmp eq i32* %178, null
  br i1 %179, label %180, label %186

180:                                              ; preds = %151
  %181 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %182 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %183 = load i32, i32* @SSL_F_TLS_CONSTRUCT_NEW_SESSION_TICKET, align 4
  %184 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %185 = call i32 @SSLfatal(%struct.TYPE_25__* %181, i32 %182, i32 %183, i32 %184)
  br label %286

186:                                              ; preds = %151
  %187 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %188 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %187, i32 0, i32 5
  %189 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %192 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %191, i32 0, i32 4
  %193 = load %struct.TYPE_23__*, %struct.TYPE_23__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %193, i32 0, i32 2
  %195 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %194, i32 0, i32 1
  store i32 %190, i32* %195, align 8
  br label %196

196:                                              ; preds = %186, %135
  %197 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %198 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %197, i32 0, i32 2
  %199 = load i64, i64* %198, align 8
  %200 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %201 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %200, i32 0, i32 4
  %202 = load %struct.TYPE_23__*, %struct.TYPE_23__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %202, i32 0, i32 2
  %204 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %203, i32 0, i32 0
  store i64 %199, i64* %204, align 8
  br label %205

205:                                              ; preds = %196, %2
  %206 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %207 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %206, i32 0, i32 0
  %208 = load i64 (%struct.TYPE_25__*, i32)*, i64 (%struct.TYPE_25__*, i32)** %207, align 8
  %209 = icmp ne i64 (%struct.TYPE_25__*, i32)* %208, null
  br i1 %209, label %210, label %221

210:                                              ; preds = %205
  %211 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %212 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %211, i32 0, i32 0
  %213 = load i64 (%struct.TYPE_25__*, i32)*, i64 (%struct.TYPE_25__*, i32)** %212, align 8
  %214 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %215 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %216 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %215, i32 0, i32 1
  %217 = load i32, i32* %216, align 8
  %218 = call i64 %213(%struct.TYPE_25__* %214, i32 %217)
  %219 = icmp eq i64 %218, 0
  br i1 %219, label %220, label %221

220:                                              ; preds = %210
  br label %286

221:                                              ; preds = %210, %205
  %222 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %223 = call i64 @SSL_IS_TLS13(%struct.TYPE_25__* %222)
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %225, label %253

225:                                              ; preds = %221
  %226 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %227 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %226, i32 0, i32 3
  %228 = load i32, i32* %227, align 8
  %229 = load i32, i32* @SSL_OP_NO_TICKET, align 4
  %230 = and i32 %228, %229
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %244, label %232

232:                                              ; preds = %225
  %233 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %234 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %233, i32 0, i32 2
  %235 = load i64, i64* %234, align 8
  %236 = icmp sgt i64 %235, 0
  br i1 %236, label %237, label %253

237:                                              ; preds = %232
  %238 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %239 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %238, i32 0, i32 3
  %240 = load i32, i32* %239, align 8
  %241 = load i32, i32* @SSL_OP_NO_ANTI_REPLAY, align 4
  %242 = and i32 %240, %241
  %243 = icmp eq i32 %242, 0
  br i1 %243, label %244, label %253

244:                                              ; preds = %237, %225
  %245 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %246 = load i32*, i32** %5, align 8
  %247 = bitcast %union.anon* %9 to i64*
  %248 = load i64, i64* %247, align 8
  %249 = call i32 @construct_stateful_ticket(%struct.TYPE_25__* %245, i32* %246, i64 %248, i8* %23)
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %252, label %251

251:                                              ; preds = %244
  br label %286

252:                                              ; preds = %244
  br label %262

253:                                              ; preds = %237, %232, %221
  %254 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %255 = load i32*, i32** %5, align 8
  %256 = bitcast %union.anon* %9 to i64*
  %257 = load i64, i64* %256, align 8
  %258 = call i32 @construct_stateless_ticket(%struct.TYPE_25__* %254, i32* %255, i64 %257, i8* %23)
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %261, label %260

260:                                              ; preds = %253
  br label %286

261:                                              ; preds = %253
  br label %262

262:                                              ; preds = %261, %252
  %263 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %264 = call i64 @SSL_IS_TLS13(%struct.TYPE_25__* %263)
  %265 = icmp ne i64 %264, 0
  br i1 %265, label %266, label %285

266:                                              ; preds = %262
  %267 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %268 = load i32*, i32** %5, align 8
  %269 = load i32, i32* @SSL_EXT_TLS1_3_NEW_SESSION_TICKET, align 4
  %270 = call i32 @tls_construct_extensions(%struct.TYPE_25__* %267, i32* %268, i32 %269, i32* null, i32 0)
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %273, label %272

272:                                              ; preds = %266
  br label %286

273:                                              ; preds = %266
  %274 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %275 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %274, i32 0, i32 0
  %276 = load i64, i64* %275, align 8
  %277 = add nsw i64 %276, 1
  store i64 %277, i64* %275, align 8
  %278 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %279 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %278, i32 0, i32 1
  %280 = load i32, i32* %279, align 8
  %281 = add nsw i32 %280, 1
  store i32 %281, i32* %279, align 8
  %282 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %283 = load i32, i32* @SSL_SESS_CACHE_SERVER, align 4
  %284 = call i32 @ssl_update_cache(%struct.TYPE_25__* %282, i32 %283)
  br label %285

285:                                              ; preds = %273, %262
  store i32 1, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %287

286:                                              ; preds = %272, %260, %251, %220, %180, %134, %85, %79, %63, %38
  store i32 0, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %287

287:                                              ; preds = %286, %285
  %288 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %288)
  %289 = load i32, i32* %3, align 4
  ret i32 %289
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @SSL_IS_TLS13(%struct.TYPE_25__*) #2

declare dso_local i32* @ssl_handshake_md(%struct.TYPE_25__*) #2

declare dso_local i32 @EVP_MD_size(i32*) #2

declare dso_local i32 @ossl_assert(i32) #2

declare dso_local i32 @SSLfatal(%struct.TYPE_25__*, i32, i32, i32) #2

declare dso_local %struct.TYPE_23__* @ssl_session_dup(%struct.TYPE_23__*, i32) #2

declare dso_local i32 @SSL_SESSION_free(%struct.TYPE_23__*) #2

declare dso_local i32 @ssl_generate_session_id(%struct.TYPE_25__*, %struct.TYPE_23__*) #2

declare dso_local i64 @RAND_bytes(i8*, i32) #2

declare dso_local i32 @tls13_hkdf_expand(%struct.TYPE_25__*, i32*, i32, i8*, i32, i8*, i32, i32, i64, i32) #2

declare dso_local i64 @time(i32*) #2

declare dso_local i32 @OPENSSL_free(i32*) #2

declare dso_local i32* @OPENSSL_memdup(i32*, i32) #2

declare dso_local i32 @construct_stateful_ticket(%struct.TYPE_25__*, i32*, i64, i8*) #2

declare dso_local i32 @construct_stateless_ticket(%struct.TYPE_25__*, i32*, i64, i8*) #2

declare dso_local i32 @tls_construct_extensions(%struct.TYPE_25__*, i32*, i32, i32*, i32) #2

declare dso_local i32 @ssl_update_cache(%struct.TYPE_25__*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
