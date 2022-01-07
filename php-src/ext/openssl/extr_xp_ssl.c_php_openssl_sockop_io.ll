; ModuleID = '/home/carl/AnghaBench/php-src/ext/openssl/extr_xp_ssl.c_php_openssl_sockop_io.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/openssl/extr_xp_ssl.c_php_openssl_sockop_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64 (%struct.TYPE_14__*, i8*, i64)*, i64 (%struct.TYPE_14__*, i8*, i64)* }
%struct.TYPE_14__ = type { i32, i64 }
%struct.TYPE_15__ = type { %struct.TYPE_13__, i32, %struct.TYPE_12__*, i64 }
%struct.TYPE_13__ = type { i32, i32, i32, %struct.timeval }
%struct.timeval = type { i64, i64 }
%struct.TYPE_12__ = type { i64 }

@INT_MAX = common dso_local global i64 0, align 8
@SUCCESS = common dso_local global i64 0, align 8
@SHUT_RDWR = common dso_local global i64 0, align 8
@errno = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i64 0, align 8
@SSL_ERROR_WANT_READ = common dso_local global i32 0, align 4
@SSL_ERROR_WANT_WRITE = common dso_local global i32 0, align 4
@POLLOUT = common dso_local global i32 0, align 4
@POLLPRI = common dso_local global i32 0, align 4
@POLLIN = common dso_local global i32 0, align 4
@SSL_ERROR_NONE = common dso_local global i32 0, align 4
@php_stream_socket_ops = common dso_local global %struct.TYPE_16__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_14__*, i8*, i64)* @php_openssl_sockop_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @php_openssl_sockop_io(i32 %0, %struct.TYPE_14__* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_15__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.timeval, align 8
  %13 = alloca %struct.timeval*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.timeval, align 8
  %18 = alloca %struct.timeval, align 8
  %19 = alloca %struct.timeval, align 8
  %20 = alloca %struct.timeval, align 8
  %21 = alloca %struct.timeval, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %28, %struct.TYPE_15__** %10, align 8
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %424

33:                                               ; preds = %4
  store i32 1, i32* %11, align 4
  store %struct.timeval* null, %struct.timeval** %13, align 8
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %38 = load i64, i64* %9, align 8
  %39 = load i64, i64* @INT_MAX, align 8
  %40 = icmp ugt i64 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %33
  %42 = load i64, i64* @INT_MAX, align 8
  store i64 %42, i64* %9, align 8
  br label %43

43:                                               ; preds = %41, %33
  %44 = load i32, i32* %14, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %43
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 3
  store %struct.timeval* %49, %struct.timeval** %13, align 8
  br label %50

50:                                               ; preds = %46, %43
  %51 = load %struct.timeval*, %struct.timeval** %13, align 8
  %52 = icmp ne %struct.timeval* %51, null
  br i1 %52, label %53, label %65

53:                                               ; preds = %50
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = call i64 @php_set_sock_blocking(i32 %57, i32 0)
  %59 = load i64, i64* @SUCCESS, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %65

61:                                               ; preds = %53
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %63 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 0
  store i32 0, i32* %64, align 8
  br label %65

65:                                               ; preds = %61, %53, %50
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %86, label %71

71:                                               ; preds = %65
  %72 = load %struct.timeval*, %struct.timeval** %13, align 8
  %73 = icmp ne %struct.timeval* %72, null
  br i1 %73, label %74, label %86

74:                                               ; preds = %71
  %75 = load %struct.timeval*, %struct.timeval** %13, align 8
  %76 = getelementptr inbounds %struct.timeval, %struct.timeval* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %84, label %79

79:                                               ; preds = %74
  %80 = load %struct.timeval*, %struct.timeval** %13, align 8
  %81 = getelementptr inbounds %struct.timeval, %struct.timeval* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %79, %74
  store i32 1, i32* %15, align 4
  %85 = call i32 @gettimeofday(%struct.timeval* %12, i32* null)
  br label %86

86:                                               ; preds = %84, %79, %71, %65
  br label %87

87:                                               ; preds = %390, %86
  %88 = load i32, i32* %15, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %140

90:                                               ; preds = %87
  %91 = call i32 @gettimeofday(%struct.timeval* %17, i32* null)
  %92 = bitcast %struct.timeval* %17 to { i64, i64 }*
  %93 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %92, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = bitcast %struct.timeval* %12 to { i64, i64 }*
  %98 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %97, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = call { i64, i64 } @php_openssl_subtract_timeval(i64 %94, i64 %96, i64 %99, i64 %101)
  %103 = bitcast %struct.timeval* %20 to { i64, i64 }*
  %104 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %103, i32 0, i32 0
  %105 = extractvalue { i64, i64 } %102, 0
  store i64 %105, i64* %104, align 8
  %106 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %103, i32 0, i32 1
  %107 = extractvalue { i64, i64 } %102, 1
  store i64 %107, i64* %106, align 8
  %108 = bitcast %struct.timeval* %18 to i8*
  %109 = bitcast %struct.timeval* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %108, i8* align 8 %109, i64 16, i1 false)
  %110 = load %struct.timeval*, %struct.timeval** %13, align 8
  %111 = bitcast %struct.timeval* %18 to { i64, i64 }*
  %112 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %111, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = bitcast %struct.timeval* %110 to { i64, i64 }*
  %117 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %116, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = call i64 @php_openssl_compare_timeval(i64 %113, i64 %115, i64 %118, i64 %120)
  %122 = icmp sgt i64 %121, 0
  br i1 %122, label %123, label %139

123:                                              ; preds = %90
  %124 = load i32, i32* %14, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %135

126:                                              ; preds = %123
  %127 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %128 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = call i64 @php_set_sock_blocking(i32 %130, i32 1)
  %132 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %133 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %133, i32 0, i32 0
  store i32 1, i32* %134, align 8
  br label %135

135:                                              ; preds = %126, %123
  %136 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %137 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %137, i32 0, i32 1
  store i32 1, i32* %138, align 4
  store i32 -1, i32* %5, align 4
  br label %442

139:                                              ; preds = %90
  br label %140

140:                                              ; preds = %139, %87
  %141 = call i32 (...) @ERR_clear_error()
  %142 = load i32, i32* %6, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %171

144:                                              ; preds = %140
  %145 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %146 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 8
  %148 = load i8*, i8** %8, align 8
  %149 = load i64, i64* %9, align 8
  %150 = trunc i64 %149 to i32
  %151 = call i32 @SSL_read(i32 %147, i8* %148, i32 %150)
  store i32 %151, i32* %16, align 4
  %152 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %153 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %152, i32 0, i32 2
  %154 = load %struct.TYPE_12__*, %struct.TYPE_12__** %153, align 8
  %155 = icmp ne %struct.TYPE_12__* %154, null
  br i1 %155, label %156, label %170

156:                                              ; preds = %144
  %157 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %158 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %157, i32 0, i32 2
  %159 = load %struct.TYPE_12__*, %struct.TYPE_12__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %170

163:                                              ; preds = %156
  %164 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %165 = load i64, i64* @SHUT_RDWR, align 8
  %166 = trunc i64 %165 to i32
  %167 = call i32 @php_stream_xport_shutdown(%struct.TYPE_14__* %164, i32 %166)
  store i32 0, i32* %16, align 4
  %168 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %169 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %168, i32 0, i32 0
  store i32 1, i32* %169, align 8
  br label %393

170:                                              ; preds = %156, %144
  br label %179

171:                                              ; preds = %140
  %172 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %173 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 8
  %175 = load i8*, i8** %8, align 8
  %176 = load i64, i64* %9, align 8
  %177 = trunc i64 %176 to i32
  %178 = call i32 @SSL_write(i32 %174, i8* %175, i32 %177)
  store i32 %178, i32* %16, align 4
  br label %179

179:                                              ; preds = %171, %170
  %180 = load i32, i32* %15, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %202

182:                                              ; preds = %179
  %183 = load %struct.timeval*, %struct.timeval** %13, align 8
  %184 = bitcast %struct.timeval* %183 to { i64, i64 }*
  %185 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %184, i32 0, i32 1
  %188 = load i64, i64* %187, align 8
  %189 = bitcast %struct.timeval* %18 to { i64, i64 }*
  %190 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %189, i32 0, i32 1
  %193 = load i64, i64* %192, align 8
  %194 = call { i64, i64 } @php_openssl_subtract_timeval(i64 %186, i64 %188, i64 %191, i64 %193)
  %195 = bitcast %struct.timeval* %21 to { i64, i64 }*
  %196 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %195, i32 0, i32 0
  %197 = extractvalue { i64, i64 } %194, 0
  store i64 %197, i64* %196, align 8
  %198 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %195, i32 0, i32 1
  %199 = extractvalue { i64, i64 } %194, 1
  store i64 %199, i64* %198, align 8
  %200 = bitcast %struct.timeval* %19 to i8*
  %201 = bitcast %struct.timeval* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %200, i8* align 8 %201, i64 16, i1 false)
  br label %202

202:                                              ; preds = %182, %179
  %203 = load i32, i32* %16, align 4
  %204 = icmp sle i32 %203, 0
  br i1 %204, label %205, label %321

205:                                              ; preds = %202
  %206 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %207 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 8
  %209 = load i32, i32* %16, align 4
  %210 = call i32 @SSL_get_error(i32 %208, i32 %209)
  store i32 %210, i32* %22, align 4
  %211 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %212 = load i32, i32* %16, align 4
  %213 = call i32 @php_openssl_handle_ssl_error(%struct.TYPE_14__* %211, i32 %212, i32 0)
  store i32 %213, i32* %11, align 4
  %214 = load i64, i64* @errno, align 8
  %215 = load i64, i64* @EAGAIN, align 8
  %216 = icmp eq i64 %214, %215
  br i1 %216, label %217, label %225

217:                                              ; preds = %205
  %218 = load i32, i32* %22, align 4
  %219 = load i32, i32* @SSL_ERROR_WANT_READ, align 4
  %220 = icmp eq i32 %218, %219
  br i1 %220, label %221, label %225

221:                                              ; preds = %217
  %222 = load i32, i32* %6, align 4
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %225

224:                                              ; preds = %221
  store i32 1, i32* %11, align 4
  br label %225

225:                                              ; preds = %224, %221, %217, %205
  %226 = load i64, i64* @errno, align 8
  %227 = load i64, i64* @EAGAIN, align 8
  %228 = icmp eq i64 %226, %227
  br i1 %228, label %229, label %237

229:                                              ; preds = %225
  %230 = load i32, i32* %22, align 4
  %231 = load i32, i32* @SSL_ERROR_WANT_WRITE, align 4
  %232 = icmp eq i32 %230, %231
  br i1 %232, label %233, label %237

233:                                              ; preds = %229
  %234 = load i32, i32* %6, align 4
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %236, label %237

236:                                              ; preds = %233
  store i32 1, i32* %11, align 4
  br label %237

237:                                              ; preds = %236, %233, %229, %225
  %238 = load i32, i32* %6, align 4
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %259

240:                                              ; preds = %237
  %241 = load i32, i32* %11, align 4
  %242 = icmp eq i32 %241, 0
  br i1 %242, label %243, label %254

243:                                              ; preds = %240
  %244 = load i64, i64* @errno, align 8
  %245 = load i64, i64* @EAGAIN, align 8
  %246 = icmp ne i64 %244, %245
  br i1 %246, label %247, label %254

247:                                              ; preds = %243
  %248 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %249 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %248, i32 0, i32 1
  %250 = load i32, i32* %249, align 8
  %251 = call i32 @SSL_pending(i32 %250)
  %252 = icmp ne i32 %251, 0
  %253 = xor i1 %252, true
  br label %254

254:                                              ; preds = %247, %243, %240
  %255 = phi i1 [ false, %243 ], [ false, %240 ], [ %253, %247 ]
  %256 = zext i1 %255 to i32
  %257 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %258 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %257, i32 0, i32 0
  store i32 %256, i32* %258, align 8
  br label %259

259:                                              ; preds = %254, %237
  %260 = load i32, i32* %14, align 4
  %261 = icmp eq i32 %260, 0
  br i1 %261, label %262, label %263

262:                                              ; preds = %259
  br label %393

263:                                              ; preds = %259
  %264 = load i32, i32* %11, align 4
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %320

266:                                              ; preds = %263
  %267 = load i32, i32* %6, align 4
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %269, label %294

269:                                              ; preds = %266
  %270 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %271 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %270, i32 0, i32 0
  %272 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %271, i32 0, i32 2
  %273 = load i32, i32* %272, align 8
  %274 = load i32, i32* %22, align 4
  %275 = load i32, i32* @SSL_ERROR_WANT_WRITE, align 4
  %276 = icmp eq i32 %274, %275
  br i1 %276, label %277, label %281

277:                                              ; preds = %269
  %278 = load i32, i32* @POLLOUT, align 4
  %279 = load i32, i32* @POLLPRI, align 4
  %280 = or i32 %278, %279
  br label %285

281:                                              ; preds = %269
  %282 = load i32, i32* @POLLIN, align 4
  %283 = load i32, i32* @POLLPRI, align 4
  %284 = or i32 %282, %283
  br label %285

285:                                              ; preds = %281, %277
  %286 = phi i32 [ %280, %277 ], [ %284, %281 ]
  %287 = load i32, i32* %15, align 4
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %289, label %290

289:                                              ; preds = %285
  br label %291

290:                                              ; preds = %285
  br label %291

291:                                              ; preds = %290, %289
  %292 = phi %struct.timeval* [ %19, %289 ], [ null, %290 ]
  %293 = call i32 @php_pollfd_for(i32 %273, i32 %286, %struct.timeval* %292)
  br label %319

294:                                              ; preds = %266
  %295 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %296 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %295, i32 0, i32 0
  %297 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %296, i32 0, i32 2
  %298 = load i32, i32* %297, align 8
  %299 = load i32, i32* %22, align 4
  %300 = load i32, i32* @SSL_ERROR_WANT_READ, align 4
  %301 = icmp eq i32 %299, %300
  br i1 %301, label %302, label %306

302:                                              ; preds = %294
  %303 = load i32, i32* @POLLIN, align 4
  %304 = load i32, i32* @POLLPRI, align 4
  %305 = or i32 %303, %304
  br label %310

306:                                              ; preds = %294
  %307 = load i32, i32* @POLLOUT, align 4
  %308 = load i32, i32* @POLLPRI, align 4
  %309 = or i32 %307, %308
  br label %310

310:                                              ; preds = %306, %302
  %311 = phi i32 [ %305, %302 ], [ %309, %306 ]
  %312 = load i32, i32* %15, align 4
  %313 = icmp ne i32 %312, 0
  br i1 %313, label %314, label %315

314:                                              ; preds = %310
  br label %316

315:                                              ; preds = %310
  br label %316

316:                                              ; preds = %315, %314
  %317 = phi %struct.timeval* [ %19, %314 ], [ null, %315 ]
  %318 = call i32 @php_pollfd_for(i32 %298, i32 %311, %struct.timeval* %317)
  br label %319

319:                                              ; preds = %316, %291
  br label %320

320:                                              ; preds = %319, %263
  br label %389

321:                                              ; preds = %202
  %322 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %323 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %322, i32 0, i32 1
  %324 = load i32, i32* %323, align 8
  %325 = load i32, i32* %16, align 4
  %326 = call i32 @SSL_get_error(i32 %324, i32 %325)
  store i32 %326, i32* %23, align 4
  %327 = load i32, i32* %23, align 4
  %328 = load i32, i32* @SSL_ERROR_NONE, align 4
  %329 = icmp eq i32 %327, %328
  br i1 %329, label %330, label %331

330:                                              ; preds = %321
  br label %393

331:                                              ; preds = %321
  %332 = load i32, i32* %14, align 4
  %333 = icmp ne i32 %332, 0
  br i1 %333, label %334, label %388

334:                                              ; preds = %331
  %335 = load i32, i32* %6, align 4
  %336 = icmp ne i32 %335, 0
  br i1 %336, label %337, label %362

337:                                              ; preds = %334
  %338 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %339 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %338, i32 0, i32 0
  %340 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %339, i32 0, i32 2
  %341 = load i32, i32* %340, align 8
  %342 = load i32, i32* %23, align 4
  %343 = load i32, i32* @SSL_ERROR_WANT_WRITE, align 4
  %344 = icmp eq i32 %342, %343
  br i1 %344, label %345, label %349

345:                                              ; preds = %337
  %346 = load i32, i32* @POLLOUT, align 4
  %347 = load i32, i32* @POLLPRI, align 4
  %348 = or i32 %346, %347
  br label %353

349:                                              ; preds = %337
  %350 = load i32, i32* @POLLIN, align 4
  %351 = load i32, i32* @POLLPRI, align 4
  %352 = or i32 %350, %351
  br label %353

353:                                              ; preds = %349, %345
  %354 = phi i32 [ %348, %345 ], [ %352, %349 ]
  %355 = load i32, i32* %15, align 4
  %356 = icmp ne i32 %355, 0
  br i1 %356, label %357, label %358

357:                                              ; preds = %353
  br label %359

358:                                              ; preds = %353
  br label %359

359:                                              ; preds = %358, %357
  %360 = phi %struct.timeval* [ %19, %357 ], [ null, %358 ]
  %361 = call i32 @php_pollfd_for(i32 %341, i32 %354, %struct.timeval* %360)
  br label %387

362:                                              ; preds = %334
  %363 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %364 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %363, i32 0, i32 0
  %365 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %364, i32 0, i32 2
  %366 = load i32, i32* %365, align 8
  %367 = load i32, i32* %23, align 4
  %368 = load i32, i32* @SSL_ERROR_WANT_READ, align 4
  %369 = icmp eq i32 %367, %368
  br i1 %369, label %370, label %374

370:                                              ; preds = %362
  %371 = load i32, i32* @POLLIN, align 4
  %372 = load i32, i32* @POLLPRI, align 4
  %373 = or i32 %371, %372
  br label %378

374:                                              ; preds = %362
  %375 = load i32, i32* @POLLOUT, align 4
  %376 = load i32, i32* @POLLPRI, align 4
  %377 = or i32 %375, %376
  br label %378

378:                                              ; preds = %374, %370
  %379 = phi i32 [ %373, %370 ], [ %377, %374 ]
  %380 = load i32, i32* %15, align 4
  %381 = icmp ne i32 %380, 0
  br i1 %381, label %382, label %383

382:                                              ; preds = %378
  br label %384

383:                                              ; preds = %378
  br label %384

384:                                              ; preds = %383, %382
  %385 = phi %struct.timeval* [ %19, %382 ], [ null, %383 ]
  %386 = call i32 @php_pollfd_for(i32 %366, i32 %379, %struct.timeval* %385)
  br label %387

387:                                              ; preds = %384, %359
  br label %388

388:                                              ; preds = %387, %331
  br label %389

389:                                              ; preds = %388, %320
  br label %390

390:                                              ; preds = %389
  %391 = load i32, i32* %11, align 4
  %392 = icmp ne i32 %391, 0
  br i1 %392, label %87, label %393

393:                                              ; preds = %390, %330, %262, %163
  %394 = load i32, i32* %16, align 4
  %395 = icmp sgt i32 %394, 0
  br i1 %395, label %396, label %401

396:                                              ; preds = %393
  %397 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %398 = call i32 @PHP_STREAM_CONTEXT(%struct.TYPE_14__* %397)
  %399 = load i32, i32* %16, align 4
  %400 = call i32 @php_stream_notify_progress_increment(i32 %398, i32 %399, i32 0)
  br label %401

401:                                              ; preds = %396, %393
  %402 = load i32, i32* %14, align 4
  %403 = icmp ne i32 %402, 0
  br i1 %403, label %404, label %416

404:                                              ; preds = %401
  %405 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %406 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %405, i32 0, i32 0
  %407 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %406, i32 0, i32 2
  %408 = load i32, i32* %407, align 8
  %409 = call i64 @php_set_sock_blocking(i32 %408, i32 1)
  %410 = load i64, i64* @SUCCESS, align 8
  %411 = icmp eq i64 %409, %410
  br i1 %411, label %412, label %416

412:                                              ; preds = %404
  %413 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %414 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %413, i32 0, i32 0
  %415 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %414, i32 0, i32 0
  store i32 1, i32* %415, align 8
  br label %416

416:                                              ; preds = %412, %404, %401
  %417 = load i32, i32* %16, align 4
  %418 = icmp sgt i32 0, %417
  br i1 %418, label %419, label %420

419:                                              ; preds = %416
  br label %422

420:                                              ; preds = %416
  %421 = load i32, i32* %16, align 4
  br label %422

422:                                              ; preds = %420, %419
  %423 = phi i32 [ 0, %419 ], [ %421, %420 ]
  store i32 %423, i32* %5, align 4
  br label %442

424:                                              ; preds = %4
  store i64 0, i64* %24, align 8
  %425 = load i32, i32* %6, align 4
  %426 = icmp ne i32 %425, 0
  br i1 %426, label %427, label %433

427:                                              ; preds = %424
  %428 = load i64 (%struct.TYPE_14__*, i8*, i64)*, i64 (%struct.TYPE_14__*, i8*, i64)** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @php_stream_socket_ops, i32 0, i32 0), align 8
  %429 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %430 = load i8*, i8** %8, align 8
  %431 = load i64, i64* %9, align 8
  %432 = call i64 %428(%struct.TYPE_14__* %429, i8* %430, i64 %431)
  store i64 %432, i64* %24, align 8
  br label %439

433:                                              ; preds = %424
  %434 = load i64 (%struct.TYPE_14__*, i8*, i64)*, i64 (%struct.TYPE_14__*, i8*, i64)** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @php_stream_socket_ops, i32 0, i32 1), align 8
  %435 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %436 = load i8*, i8** %8, align 8
  %437 = load i64, i64* %9, align 8
  %438 = call i64 %434(%struct.TYPE_14__* %435, i8* %436, i64 %437)
  store i64 %438, i64* %24, align 8
  br label %439

439:                                              ; preds = %433, %427
  %440 = load i64, i64* %24, align 8
  %441 = trunc i64 %440 to i32
  store i32 %441, i32* %5, align 4
  br label %442

442:                                              ; preds = %439, %422, %135
  %443 = load i32, i32* %5, align 4
  ret i32 %443
}

declare dso_local i64 @php_set_sock_blocking(i32, i32) #1

declare dso_local i32 @gettimeofday(%struct.timeval*, i32*) #1

declare dso_local { i64, i64 } @php_openssl_subtract_timeval(i64, i64, i64, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @php_openssl_compare_timeval(i64, i64, i64, i64) #1

declare dso_local i32 @ERR_clear_error(...) #1

declare dso_local i32 @SSL_read(i32, i8*, i32) #1

declare dso_local i32 @php_stream_xport_shutdown(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @SSL_write(i32, i8*, i32) #1

declare dso_local i32 @SSL_get_error(i32, i32) #1

declare dso_local i32 @php_openssl_handle_ssl_error(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @SSL_pending(i32) #1

declare dso_local i32 @php_pollfd_for(i32, i32, %struct.timeval*) #1

declare dso_local i32 @php_stream_notify_progress_increment(i32, i32, i32) #1

declare dso_local i32 @PHP_STREAM_CONTEXT(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
