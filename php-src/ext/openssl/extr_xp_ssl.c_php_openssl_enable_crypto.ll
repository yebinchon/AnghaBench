; ModuleID = '/home/carl/AnghaBench/php-src/ext/openssl/extr_xp_ssl.c_php_openssl_enable_crypto.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/openssl/extr_xp_ssl.c_php_openssl_enable_crypto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, i32, %struct.TYPE_9__, i64, %struct.timeval }
%struct.TYPE_9__ = type { i32, i32, %struct.timeval }
%struct.timeval = type { i64, i64 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64 }

@SUCCESS = common dso_local global i64 0, align 8
@SSL_MODE_ENABLE_PARTIAL_WRITE = common dso_local global i32 0, align 4
@SSL_MODE_ACCEPT_MOVING_WRITE_BUFFER = common dso_local global i32 0, align 4
@E_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"SSL: Handshake timed out\00", align 1
@SSL_ERROR_WANT_READ = common dso_local global i32 0, align 4
@POLLIN = common dso_local global i32 0, align 4
@POLLPRI = common dso_local global i32 0, align 4
@POLLOUT = common dso_local global i32 0, align 4
@FAILURE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"ssl\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"capture_session_meta\00", align 1
@E_DEPRECATED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [96 x i8] c"capture_session_meta is deprecated; its information is now available via stream_get_meta_data()\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"session_meta\00", align 1
@errno = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_12__*, %struct.TYPE_11__*)* @php_openssl_enable_crypto to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @php_openssl_enable_crypto(i32* %0, %struct.TYPE_12__* %1, %struct.TYPE_11__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.timeval, align 8
  %13 = alloca %struct.timeval*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.timeval, align 8
  %17 = alloca %struct.timeval, align 8
  %18 = alloca %struct.timeval, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.timeval, align 8
  %21 = alloca %struct.timeval, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %6, align 8
  store %struct.TYPE_11__* %2, %struct.TYPE_11__** %7, align 8
  store i32 1, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %372

29:                                               ; preds = %3
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %372, label %34

34:                                               ; preds = %29
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 3
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  store i32 %38, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %61, label %43

43:                                               ; preds = %34
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 4
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %43
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @SSL_set_connect_state(i32 %51)
  br label %58

53:                                               ; preds = %43
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @SSL_set_accept_state(i32 %56)
  br label %58

58:                                               ; preds = %53, %48
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 1
  store i32 1, i32* %60, align 4
  br label %61

61:                                               ; preds = %58, %34
  %62 = load i64, i64* @SUCCESS, align 8
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 3
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i64 @php_set_sock_blocking(i32 %66, i32 0)
  %68 = icmp eq i64 %62, %67
  br i1 %68, label %69, label %85

69:                                               ; preds = %61
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 3
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 0
  store i32 0, i32* %72, align 8
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @SSL_get_mode(i32 %78)
  %80 = load i32, i32* @SSL_MODE_ENABLE_PARTIAL_WRITE, align 4
  %81 = or i32 %79, %80
  %82 = load i32, i32* @SSL_MODE_ACCEPT_MOVING_WRITE_BUFFER, align 4
  %83 = or i32 %81, %82
  %84 = call i32 @SSL_set_mode(i32 %75, i32 %83)
  br label %85

85:                                               ; preds = %69, %61
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 4
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %85
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 5
  br label %97

93:                                               ; preds = %85
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 3
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 2
  br label %97

97:                                               ; preds = %93, %90
  %98 = phi %struct.timeval* [ %92, %90 ], [ %96, %93 ]
  store %struct.timeval* %98, %struct.timeval** %13, align 8
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 3
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %116, label %104

104:                                              ; preds = %97
  %105 = load %struct.timeval*, %struct.timeval** %13, align 8
  %106 = getelementptr inbounds %struct.timeval, %struct.timeval* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %114, label %109

109:                                              ; preds = %104
  %110 = load %struct.timeval*, %struct.timeval** %13, align 8
  %111 = getelementptr inbounds %struct.timeval, %struct.timeval* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  br label %114

114:                                              ; preds = %109, %104
  %115 = phi i1 [ true, %104 ], [ %113, %109 ]
  br label %116

116:                                              ; preds = %114, %97
  %117 = phi i1 [ false, %97 ], [ %115, %114 ]
  %118 = zext i1 %117 to i32
  store i32 %118, i32* %15, align 4
  %119 = load i32, i32* %15, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %116
  %122 = call i32 @gettimeofday(%struct.timeval* %12, i32* null)
  br label %123

123:                                              ; preds = %121, %116
  br label %124

124:                                              ; preds = %244, %123
  %125 = call i32 (...) @ERR_clear_error()
  %126 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %126, i32 0, i32 4
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %135

130:                                              ; preds = %124
  %131 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %132 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = call i32 @SSL_connect(i32 %133)
  store i32 %134, i32* %8, align 4
  br label %140

135:                                              ; preds = %124
  %136 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %137 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @SSL_accept(i32 %138)
  store i32 %139, i32* %8, align 4
  br label %140

140:                                              ; preds = %135, %130
  %141 = load i32, i32* %15, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %180

143:                                              ; preds = %140
  %144 = call i32 @gettimeofday(%struct.timeval* %16, i32* null)
  %145 = bitcast %struct.timeval* %16 to { i64, i64 }*
  %146 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %145, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = bitcast %struct.timeval* %12 to { i64, i64 }*
  %151 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %150, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  %155 = call { i64, i64 } @php_openssl_subtract_timeval(i64 %147, i64 %149, i64 %152, i64 %154)
  %156 = bitcast %struct.timeval* %18 to { i64, i64 }*
  %157 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %156, i32 0, i32 0
  %158 = extractvalue { i64, i64 } %155, 0
  store i64 %158, i64* %157, align 8
  %159 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %156, i32 0, i32 1
  %160 = extractvalue { i64, i64 } %155, 1
  store i64 %160, i64* %159, align 8
  %161 = bitcast %struct.timeval* %17 to i8*
  %162 = bitcast %struct.timeval* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %161, i8* align 8 %162, i64 16, i1 false)
  %163 = load %struct.timeval*, %struct.timeval** %13, align 8
  %164 = bitcast %struct.timeval* %17 to { i64, i64 }*
  %165 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %164, i32 0, i32 1
  %168 = load i64, i64* %167, align 8
  %169 = bitcast %struct.timeval* %163 to { i64, i64 }*
  %170 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %169, i32 0, i32 1
  %173 = load i64, i64* %172, align 8
  %174 = call i64 @php_openssl_compare_timeval(i64 %166, i64 %168, i64 %171, i64 %173)
  %175 = icmp sgt i64 %174, 0
  br i1 %175, label %176, label %179

176:                                              ; preds = %143
  %177 = load i32, i32* @E_WARNING, align 4
  %178 = call i32 @php_error_docref(i32* null, i32 %177, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %392

179:                                              ; preds = %143
  br label %180

180:                                              ; preds = %179, %140
  %181 = load i32, i32* %8, align 4
  %182 = icmp sle i32 %181, 0
  br i1 %182, label %183, label %242

183:                                              ; preds = %180
  %184 = load i32*, i32** %5, align 8
  %185 = load i32, i32* %8, align 4
  %186 = load i32, i32* %14, align 4
  %187 = call i32 @php_openssl_handle_ssl_error(i32* %184, i32 %185, i32 %186)
  store i32 %187, i32* %9, align 4
  %188 = load i32, i32* %9, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %241

190:                                              ; preds = %183
  %191 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %192 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %191, i32 0, i32 2
  %193 = load i32, i32* %192, align 8
  %194 = load i32, i32* %8, align 4
  %195 = call i32 @SSL_get_error(i32 %193, i32 %194)
  store i32 %195, i32* %19, align 4
  %196 = load i32, i32* %15, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %218

198:                                              ; preds = %190
  %199 = load %struct.timeval*, %struct.timeval** %13, align 8
  %200 = bitcast %struct.timeval* %199 to { i64, i64 }*
  %201 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %200, i32 0, i32 0
  %202 = load i64, i64* %201, align 8
  %203 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %200, i32 0, i32 1
  %204 = load i64, i64* %203, align 8
  %205 = bitcast %struct.timeval* %17 to { i64, i64 }*
  %206 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %205, i32 0, i32 0
  %207 = load i64, i64* %206, align 8
  %208 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %205, i32 0, i32 1
  %209 = load i64, i64* %208, align 8
  %210 = call { i64, i64 } @php_openssl_subtract_timeval(i64 %202, i64 %204, i64 %207, i64 %209)
  %211 = bitcast %struct.timeval* %21 to { i64, i64 }*
  %212 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %211, i32 0, i32 0
  %213 = extractvalue { i64, i64 } %210, 0
  store i64 %213, i64* %212, align 8
  %214 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %211, i32 0, i32 1
  %215 = extractvalue { i64, i64 } %210, 1
  store i64 %215, i64* %214, align 8
  %216 = bitcast %struct.timeval* %20 to i8*
  %217 = bitcast %struct.timeval* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %216, i8* align 8 %217, i64 16, i1 false)
  br label %218

218:                                              ; preds = %198, %190
  %219 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %220 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %219, i32 0, i32 3
  %221 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %220, i32 0, i32 1
  %222 = load i32, i32* %221, align 4
  %223 = load i32, i32* %19, align 4
  %224 = load i32, i32* @SSL_ERROR_WANT_READ, align 4
  %225 = icmp eq i32 %223, %224
  br i1 %225, label %226, label %230

226:                                              ; preds = %218
  %227 = load i32, i32* @POLLIN, align 4
  %228 = load i32, i32* @POLLPRI, align 4
  %229 = or i32 %227, %228
  br label %232

230:                                              ; preds = %218
  %231 = load i32, i32* @POLLOUT, align 4
  br label %232

232:                                              ; preds = %230, %226
  %233 = phi i32 [ %229, %226 ], [ %231, %230 ]
  %234 = load i32, i32* %15, align 4
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %237

236:                                              ; preds = %232
  br label %238

237:                                              ; preds = %232
  br label %238

238:                                              ; preds = %237, %236
  %239 = phi %struct.timeval* [ %20, %236 ], [ null, %237 ]
  %240 = call i32 @php_pollfd_for(i32 %222, i32 %233, %struct.timeval* %239)
  br label %241

241:                                              ; preds = %238, %183
  br label %243

242:                                              ; preds = %180
  store i32 0, i32* %9, align 4
  br label %243

243:                                              ; preds = %242, %241
  br label %244

244:                                              ; preds = %243
  %245 = load i32, i32* %9, align 4
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %124, label %247

247:                                              ; preds = %244
  %248 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %249 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %248, i32 0, i32 3
  %250 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 8
  %252 = load i32, i32* %14, align 4
  %253 = icmp ne i32 %251, %252
  br i1 %253, label %254, label %268

254:                                              ; preds = %247
  %255 = load i64, i64* @SUCCESS, align 8
  %256 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %257 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %256, i32 0, i32 3
  %258 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %257, i32 0, i32 1
  %259 = load i32, i32* %258, align 4
  %260 = load i32, i32* %14, align 4
  %261 = call i64 @php_set_sock_blocking(i32 %259, i32 %260)
  %262 = icmp eq i64 %255, %261
  br i1 %262, label %263, label %268

263:                                              ; preds = %254
  %264 = load i32, i32* %14, align 4
  %265 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %266 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %265, i32 0, i32 3
  %267 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %266, i32 0, i32 0
  store i32 %264, i32* %267, align 8
  br label %268

268:                                              ; preds = %263, %254, %247
  %269 = load i32, i32* %8, align 4
  %270 = icmp eq i32 %269, 1
  br i1 %270, label %271, label %335

271:                                              ; preds = %268
  %272 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %273 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %272, i32 0, i32 2
  %274 = load i32, i32* %273, align 8
  %275 = call i32* @SSL_get_peer_certificate(i32 %274)
  store i32* %275, i32** %11, align 8
  %276 = load i32*, i32** %11, align 8
  %277 = icmp ne i32* %276, null
  br i1 %277, label %278, label %287

278:                                              ; preds = %271
  %279 = load i32*, i32** %5, align 8
  %280 = call i64 @PHP_STREAM_CONTEXT(i32* %279)
  %281 = icmp ne i64 %280, 0
  br i1 %281, label %282, label %287

282:                                              ; preds = %278
  %283 = load i32*, i32** %5, align 8
  %284 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %285 = load i32*, i32** %11, align 8
  %286 = call i32 @php_openssl_capture_peer_certs(i32* %283, %struct.TYPE_12__* %284, i32* %285)
  store i32 %286, i32* %10, align 4
  br label %287

287:                                              ; preds = %282, %278, %271
  %288 = load i64, i64* @FAILURE, align 8
  %289 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %290 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %289, i32 0, i32 2
  %291 = load i32, i32* %290, align 8
  %292 = load i32*, i32** %11, align 8
  %293 = load i32*, i32** %5, align 8
  %294 = call i64 @php_openssl_apply_peer_verification_policy(i32 %291, i32* %292, i32* %293)
  %295 = icmp eq i64 %288, %294
  br i1 %295, label %296, label %301

296:                                              ; preds = %287
  %297 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %298 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %297, i32 0, i32 2
  %299 = load i32, i32* %298, align 8
  %300 = call i32 @SSL_shutdown(i32 %299)
  store i32 -1, i32* %8, align 4
  br label %334

301:                                              ; preds = %287
  %302 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %303 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %302, i32 0, i32 0
  store i32 1, i32* %303, align 8
  %304 = load i32*, i32** %5, align 8
  %305 = call i64 @PHP_STREAM_CONTEXT(i32* %304)
  %306 = icmp ne i64 %305, 0
  br i1 %306, label %307, label %333

307:                                              ; preds = %301
  %308 = load i32*, i32** %5, align 8
  %309 = call i64 @PHP_STREAM_CONTEXT(i32* %308)
  %310 = call i32* @php_stream_context_get_option(i64 %309, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  store i32* %310, i32** %22, align 8
  %311 = icmp ne i32* null, %310
  br i1 %311, label %312, label %315

312:                                              ; preds = %307
  %313 = load i32, i32* @E_DEPRECATED, align 4
  %314 = call i32 @php_error(i32 %313, i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.3, i64 0, i64 0))
  br label %315

315:                                              ; preds = %312, %307
  %316 = load i32*, i32** %22, align 8
  %317 = icmp ne i32* %316, null
  br i1 %317, label %318, label %332

318:                                              ; preds = %315
  %319 = load i32*, i32** %22, align 8
  %320 = call i64 @zend_is_true(i32* %319)
  %321 = icmp ne i64 %320, 0
  br i1 %321, label %322, label %332

322:                                              ; preds = %318
  %323 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %324 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %323, i32 0, i32 2
  %325 = load i32, i32* %324, align 8
  %326 = call i32 @php_openssl_capture_session_meta(i32 %325)
  %327 = call i32 @ZVAL_ARR(i32* %23, i32 %326)
  %328 = load i32*, i32** %5, align 8
  %329 = call i64 @PHP_STREAM_CONTEXT(i32* %328)
  %330 = call i32 @php_stream_context_set_option(i64 %329, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32* %23)
  %331 = call i32 @zval_ptr_dtor(i32* %23)
  br label %332

332:                                              ; preds = %322, %318, %315
  br label %333

333:                                              ; preds = %332, %301
  br label %334

334:                                              ; preds = %333, %296
  br label %358

335:                                              ; preds = %268
  %336 = load i64, i64* @errno, align 8
  %337 = load i64, i64* @EAGAIN, align 8
  %338 = icmp eq i64 %336, %337
  br i1 %338, label %339, label %340

339:                                              ; preds = %335
  store i32 0, i32* %8, align 4
  br label %357

340:                                              ; preds = %335
  store i32 -1, i32* %8, align 4
  %341 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %342 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %341, i32 0, i32 2
  %343 = load i32, i32* %342, align 8
  %344 = call i32* @SSL_get_peer_certificate(i32 %343)
  store i32* %344, i32** %11, align 8
  %345 = load i32*, i32** %11, align 8
  %346 = icmp ne i32* %345, null
  br i1 %346, label %347, label %356

347:                                              ; preds = %340
  %348 = load i32*, i32** %5, align 8
  %349 = call i64 @PHP_STREAM_CONTEXT(i32* %348)
  %350 = icmp ne i64 %349, 0
  br i1 %350, label %351, label %356

351:                                              ; preds = %347
  %352 = load i32*, i32** %5, align 8
  %353 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %354 = load i32*, i32** %11, align 8
  %355 = call i32 @php_openssl_capture_peer_certs(i32* %352, %struct.TYPE_12__* %353, i32* %354)
  store i32 %355, i32* %10, align 4
  br label %356

356:                                              ; preds = %351, %347, %340
  br label %357

357:                                              ; preds = %356, %339
  br label %358

358:                                              ; preds = %357, %334
  %359 = load i32, i32* %8, align 4
  %360 = icmp ne i32 %359, 0
  br i1 %360, label %361, label %370

361:                                              ; preds = %358
  %362 = load i32*, i32** %11, align 8
  %363 = icmp ne i32* %362, null
  br i1 %363, label %364, label %370

364:                                              ; preds = %361
  %365 = load i32, i32* %10, align 4
  %366 = icmp eq i32 %365, 0
  br i1 %366, label %367, label %370

367:                                              ; preds = %364
  %368 = load i32*, i32** %11, align 8
  %369 = call i32 @X509_free(i32* %368)
  br label %370

370:                                              ; preds = %367, %364, %361, %358
  %371 = load i32, i32* %8, align 4
  store i32 %371, i32* %4, align 4
  br label %392

372:                                              ; preds = %29, %3
  %373 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %374 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %373, i32 0, i32 0
  %375 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %374, i32 0, i32 0
  %376 = load i64, i64* %375, align 8
  %377 = icmp ne i64 %376, 0
  br i1 %377, label %390, label %378

378:                                              ; preds = %372
  %379 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %380 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %379, i32 0, i32 0
  %381 = load i32, i32* %380, align 8
  %382 = icmp ne i32 %381, 0
  br i1 %382, label %383, label %390

383:                                              ; preds = %378
  %384 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %385 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %384, i32 0, i32 2
  %386 = load i32, i32* %385, align 8
  %387 = call i32 @SSL_shutdown(i32 %386)
  %388 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %389 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %388, i32 0, i32 0
  store i32 0, i32* %389, align 8
  br label %390

390:                                              ; preds = %383, %378, %372
  br label %391

391:                                              ; preds = %390
  store i32 -1, i32* %4, align 4
  br label %392

392:                                              ; preds = %391, %370, %176
  %393 = load i32, i32* %4, align 4
  ret i32 %393
}

declare dso_local i32 @SSL_set_connect_state(i32) #1

declare dso_local i32 @SSL_set_accept_state(i32) #1

declare dso_local i64 @php_set_sock_blocking(i32, i32) #1

declare dso_local i32 @SSL_set_mode(i32, i32) #1

declare dso_local i32 @SSL_get_mode(i32) #1

declare dso_local i32 @gettimeofday(%struct.timeval*, i32*) #1

declare dso_local i32 @ERR_clear_error(...) #1

declare dso_local i32 @SSL_connect(i32) #1

declare dso_local i32 @SSL_accept(i32) #1

declare dso_local { i64, i64 } @php_openssl_subtract_timeval(i64, i64, i64, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @php_openssl_compare_timeval(i64, i64, i64, i64) #1

declare dso_local i32 @php_error_docref(i32*, i32, i8*) #1

declare dso_local i32 @php_openssl_handle_ssl_error(i32*, i32, i32) #1

declare dso_local i32 @SSL_get_error(i32, i32) #1

declare dso_local i32 @php_pollfd_for(i32, i32, %struct.timeval*) #1

declare dso_local i32* @SSL_get_peer_certificate(i32) #1

declare dso_local i64 @PHP_STREAM_CONTEXT(i32*) #1

declare dso_local i32 @php_openssl_capture_peer_certs(i32*, %struct.TYPE_12__*, i32*) #1

declare dso_local i64 @php_openssl_apply_peer_verification_policy(i32, i32*, i32*) #1

declare dso_local i32 @SSL_shutdown(i32) #1

declare dso_local i32* @php_stream_context_get_option(i64, i8*, i8*) #1

declare dso_local i32 @php_error(i32, i8*) #1

declare dso_local i64 @zend_is_true(i32*) #1

declare dso_local i32 @ZVAL_ARR(i32*, i32) #1

declare dso_local i32 @php_openssl_capture_session_meta(i32) #1

declare dso_local i32 @php_stream_context_set_option(i64, i8*, i8*, i32*) #1

declare dso_local i32 @zval_ptr_dtor(i32*) #1

declare dso_local i32 @X509_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
