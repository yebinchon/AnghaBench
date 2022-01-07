; ModuleID = '/home/carl/AnghaBench/php-src/ext/zlib/extr_zlib_filter.c_php_zlib_inflate_filter.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/zlib/extr_zlib_filter.c_php_zlib_inflate_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32 }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_16__ = type { i8, i64, i64, i64, %struct.TYPE_15__, i32 }
%struct.TYPE_15__ = type { i64, i64, i64, i32 }
%struct.TYPE_19__ = type { i64, i64 }

@PSFS_FEED_ME = common dso_local global i32 0, align 4
@PSFS_ERR_FATAL = common dso_local global i32 0, align 4
@PSFS_FLAG_FLUSH_CLOSE = common dso_local global i32 0, align 4
@Z_FINISH = common dso_local global i32 0, align 4
@Z_SYNC_FLUSH = common dso_local global i32 0, align 4
@Z_STREAM_END = common dso_local global i32 0, align 4
@PSFS_PASS_ON = common dso_local global i32 0, align 4
@Z_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_17__*, %struct.TYPE_18__*, %struct.TYPE_18__*, i64*, i32)* @php_zlib_inflate_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @php_zlib_inflate_filter(i32* %0, %struct.TYPE_17__* %1, %struct.TYPE_18__* %2, %struct.TYPE_18__* %3, i64* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_17__*, align 8
  %10 = alloca %struct.TYPE_18__*, align 8
  %11 = alloca %struct.TYPE_18__*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_16__*, align 8
  %15 = alloca %struct.TYPE_19__*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca %struct.TYPE_19__*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  store i32* %0, i32** %8, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %9, align 8
  store %struct.TYPE_18__* %2, %struct.TYPE_18__** %10, align 8
  store %struct.TYPE_18__* %3, %struct.TYPE_18__** %11, align 8
  store i64* %4, i64** %12, align 8
  store i32 %5, i32* %13, align 4
  store i64 0, i64* %16, align 8
  %24 = load i32, i32* @PSFS_FEED_ME, align 4
  store i32 %24, i32* %18, align 4
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %26 = icmp ne %struct.TYPE_17__* %25, null
  br i1 %26, label %27, label %33

27:                                               ; preds = %6
  %28 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @Z_PTR(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %27, %6
  %34 = load i32, i32* @PSFS_ERR_FATAL, align 4
  store i32 %34, i32* %7, align 4
  br label %282

35:                                               ; preds = %27
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @Z_PTR(i32 %38)
  %40 = inttoptr i64 %39 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %40, %struct.TYPE_16__** %14, align 8
  br label %41

41:                                               ; preds = %201, %35
  %42 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %209

46:                                               ; preds = %41
  store i64 0, i64* %19, align 8
  %47 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = call %struct.TYPE_19__* @php_stream_bucket_make_writeable(i64 %49)
  store %struct.TYPE_19__* %50, %struct.TYPE_19__** %15, align 8
  br label %51

51:                                               ; preds = %200, %46
  %52 = load i64, i64* %19, align 8
  %53 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %54 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = trunc i64 %55 to i32
  %57 = zext i32 %56 to i64
  %58 = icmp ult i64 %52, %57
  br i1 %58, label %59, label %65

59:                                               ; preds = %51
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %61 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %60, i32 0, i32 0
  %62 = load i8, i8* %61, align 8
  %63 = icmp ne i8 %62, 0
  %64 = xor i1 %63, true
  br label %65

65:                                               ; preds = %59, %51
  %66 = phi i1 [ false, %51 ], [ %64, %59 ]
  br i1 %66, label %67, label %201

67:                                               ; preds = %65
  %68 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %69 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* %19, align 8
  %72 = sub i64 %70, %71
  store i64 %72, i64* %20, align 8
  %73 = load i64, i64* %20, align 8
  %74 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = icmp ugt i64 %73, %76
  br i1 %77, label %78, label %82

78:                                               ; preds = %67
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  store i64 %81, i64* %20, align 8
  br label %82

82:                                               ; preds = %78, %67
  %83 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %84 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %83, i32 0, i32 4
  %85 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %88 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* %19, align 8
  %91 = add i64 %89, %90
  %92 = load i64, i64* %20, align 8
  %93 = call i32 @memcpy(i32 %86, i64 %91, i64 %92)
  %94 = load i64, i64* %20, align 8
  %95 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %96 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %95, i32 0, i32 4
  %97 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %96, i32 0, i32 0
  store i64 %94, i64* %97, align 8
  %98 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %99 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %98, i32 0, i32 4
  %100 = load i32, i32* %13, align 4
  %101 = load i32, i32* @PSFS_FLAG_FLUSH_CLOSE, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %82
  %105 = load i32, i32* @Z_FINISH, align 4
  br label %108

106:                                              ; preds = %82
  %107 = load i32, i32* @Z_SYNC_FLUSH, align 4
  br label %108

108:                                              ; preds = %106, %104
  %109 = phi i32 [ %105, %104 ], [ %107, %106 ]
  %110 = call i32 @inflate(%struct.TYPE_15__* %99, i32 %109)
  store i32 %110, i32* %17, align 4
  %111 = load i32, i32* %17, align 4
  %112 = load i32, i32* @Z_STREAM_END, align 4
  %113 = icmp eq i32 %111, %112
  br i1 %113, label %114, label %121

114:                                              ; preds = %108
  %115 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %116 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %115, i32 0, i32 4
  %117 = call i32 @inflateEnd(%struct.TYPE_15__* %116)
  %118 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %119 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %118, i32 0, i32 0
  store i8 1, i8* %119, align 8
  %120 = load i32, i32* @PSFS_PASS_ON, align 4
  store i32 %120, i32* %18, align 4
  br label %139

121:                                              ; preds = %108
  %122 = load i32, i32* %17, align 4
  %123 = load i32, i32* @Z_OK, align 4
  %124 = icmp ne i32 %122, %123
  br i1 %124, label %125, label %138

125:                                              ; preds = %121
  %126 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %127 = call i32 @php_stream_bucket_delref(%struct.TYPE_19__* %126)
  %128 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %129 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %128, i32 0, i32 5
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %132 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %131, i32 0, i32 4
  %133 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %132, i32 0, i32 3
  store i32 %130, i32* %133, align 8
  %134 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %135 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %134, i32 0, i32 4
  %136 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %135, i32 0, i32 0
  store i64 0, i64* %136, align 8
  %137 = load i32, i32* @PSFS_ERR_FATAL, align 4
  store i32 %137, i32* %7, align 4
  br label %282

138:                                              ; preds = %121
  br label %139

139:                                              ; preds = %138, %114
  %140 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %141 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %140, i32 0, i32 4
  %142 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* %20, align 8
  %145 = sub i64 %144, %143
  store i64 %145, i64* %20, align 8
  %146 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %147 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %146, i32 0, i32 5
  %148 = load i32, i32* %147, align 8
  %149 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %150 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %149, i32 0, i32 4
  %151 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %150, i32 0, i32 3
  store i32 %148, i32* %151, align 8
  %152 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %153 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %152, i32 0, i32 4
  %154 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %153, i32 0, i32 0
  store i64 0, i64* %154, align 8
  %155 = load i64, i64* %20, align 8
  %156 = load i64, i64* %19, align 8
  %157 = add i64 %156, %155
  store i64 %157, i64* %19, align 8
  %158 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %159 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %158, i32 0, i32 4
  %160 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %159, i32 0, i32 1
  %161 = load i64, i64* %160, align 8
  %162 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %163 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %162, i32 0, i32 2
  %164 = load i64, i64* %163, align 8
  %165 = icmp slt i64 %161, %164
  br i1 %165, label %166, label %200

166:                                              ; preds = %139
  %167 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %168 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %167, i32 0, i32 2
  %169 = load i64, i64* %168, align 8
  %170 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %171 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %170, i32 0, i32 4
  %172 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %171, i32 0, i32 1
  %173 = load i64, i64* %172, align 8
  %174 = sub nsw i64 %169, %173
  store i64 %174, i64* %22, align 8
  %175 = load i32*, i32** %8, align 8
  %176 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %177 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %176, i32 0, i32 3
  %178 = load i64, i64* %177, align 8
  %179 = inttoptr i64 %178 to i8*
  %180 = load i64, i64* %22, align 8
  %181 = call i32 @estrndup(i8* %179, i64 %180)
  %182 = load i64, i64* %22, align 8
  %183 = call %struct.TYPE_19__* @php_stream_bucket_new(i32* %175, i32 %181, i64 %182, i32 1, i32 0)
  store %struct.TYPE_19__* %183, %struct.TYPE_19__** %21, align 8
  %184 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %185 = load %struct.TYPE_19__*, %struct.TYPE_19__** %21, align 8
  %186 = call i32 @php_stream_bucket_append(%struct.TYPE_18__* %184, %struct.TYPE_19__* %185)
  %187 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %188 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %187, i32 0, i32 2
  %189 = load i64, i64* %188, align 8
  %190 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %191 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %190, i32 0, i32 4
  %192 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %191, i32 0, i32 1
  store i64 %189, i64* %192, align 8
  %193 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %194 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %193, i32 0, i32 3
  %195 = load i64, i64* %194, align 8
  %196 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %197 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %196, i32 0, i32 4
  %198 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %197, i32 0, i32 2
  store i64 %195, i64* %198, align 8
  %199 = load i32, i32* @PSFS_PASS_ON, align 4
  store i32 %199, i32* %18, align 4
  br label %200

200:                                              ; preds = %166, %139
  br label %51

201:                                              ; preds = %65
  %202 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %203 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %202, i32 0, i32 0
  %204 = load i64, i64* %203, align 8
  %205 = load i64, i64* %16, align 8
  %206 = add i64 %205, %204
  store i64 %206, i64* %16, align 8
  %207 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %208 = call i32 @php_stream_bucket_delref(%struct.TYPE_19__* %207)
  br label %41

209:                                              ; preds = %41
  %210 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %211 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %210, i32 0, i32 0
  %212 = load i8, i8* %211, align 8
  %213 = icmp ne i8 %212, 0
  br i1 %213, label %274, label %214

214:                                              ; preds = %209
  %215 = load i32, i32* %13, align 4
  %216 = load i32, i32* @PSFS_FLAG_FLUSH_CLOSE, align 4
  %217 = and i32 %215, %216
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %274

219:                                              ; preds = %214
  %220 = load i32, i32* @Z_OK, align 4
  store i32 %220, i32* %17, align 4
  br label %221

221:                                              ; preds = %272, %219
  %222 = load i32, i32* %17, align 4
  %223 = load i32, i32* @Z_OK, align 4
  %224 = icmp eq i32 %222, %223
  br i1 %224, label %225, label %273

225:                                              ; preds = %221
  %226 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %227 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %226, i32 0, i32 4
  %228 = load i32, i32* @Z_FINISH, align 4
  %229 = call i32 @inflate(%struct.TYPE_15__* %227, i32 %228)
  store i32 %229, i32* %17, align 4
  %230 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %231 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %230, i32 0, i32 4
  %232 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %231, i32 0, i32 1
  %233 = load i64, i64* %232, align 8
  %234 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %235 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %234, i32 0, i32 2
  %236 = load i64, i64* %235, align 8
  %237 = icmp slt i64 %233, %236
  br i1 %237, label %238, label %272

238:                                              ; preds = %225
  %239 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %240 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %239, i32 0, i32 2
  %241 = load i64, i64* %240, align 8
  %242 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %243 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %242, i32 0, i32 4
  %244 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %243, i32 0, i32 1
  %245 = load i64, i64* %244, align 8
  %246 = sub nsw i64 %241, %245
  store i64 %246, i64* %23, align 8
  %247 = load i32*, i32** %8, align 8
  %248 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %249 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %248, i32 0, i32 3
  %250 = load i64, i64* %249, align 8
  %251 = inttoptr i64 %250 to i8*
  %252 = load i64, i64* %23, align 8
  %253 = call i32 @estrndup(i8* %251, i64 %252)
  %254 = load i64, i64* %23, align 8
  %255 = call %struct.TYPE_19__* @php_stream_bucket_new(i32* %247, i32 %253, i64 %254, i32 1, i32 0)
  store %struct.TYPE_19__* %255, %struct.TYPE_19__** %15, align 8
  %256 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %257 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %258 = call i32 @php_stream_bucket_append(%struct.TYPE_18__* %256, %struct.TYPE_19__* %257)
  %259 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %260 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %259, i32 0, i32 2
  %261 = load i64, i64* %260, align 8
  %262 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %263 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %262, i32 0, i32 4
  %264 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %263, i32 0, i32 1
  store i64 %261, i64* %264, align 8
  %265 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %266 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %265, i32 0, i32 3
  %267 = load i64, i64* %266, align 8
  %268 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %269 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %268, i32 0, i32 4
  %270 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %269, i32 0, i32 2
  store i64 %267, i64* %270, align 8
  %271 = load i32, i32* @PSFS_PASS_ON, align 4
  store i32 %271, i32* %18, align 4
  br label %272

272:                                              ; preds = %238, %225
  br label %221

273:                                              ; preds = %221
  br label %274

274:                                              ; preds = %273, %214, %209
  %275 = load i64*, i64** %12, align 8
  %276 = icmp ne i64* %275, null
  br i1 %276, label %277, label %280

277:                                              ; preds = %274
  %278 = load i64, i64* %16, align 8
  %279 = load i64*, i64** %12, align 8
  store i64 %278, i64* %279, align 8
  br label %280

280:                                              ; preds = %277, %274
  %281 = load i32, i32* %18, align 4
  store i32 %281, i32* %7, align 4
  br label %282

282:                                              ; preds = %280, %125, %33
  %283 = load i32, i32* %7, align 4
  ret i32 %283
}

declare dso_local i64 @Z_PTR(i32) #1

declare dso_local %struct.TYPE_19__* @php_stream_bucket_make_writeable(i64) #1

declare dso_local i32 @memcpy(i32, i64, i64) #1

declare dso_local i32 @inflate(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @inflateEnd(%struct.TYPE_15__*) #1

declare dso_local i32 @php_stream_bucket_delref(%struct.TYPE_19__*) #1

declare dso_local %struct.TYPE_19__* @php_stream_bucket_new(i32*, i32, i64, i32, i32) #1

declare dso_local i32 @estrndup(i8*, i64) #1

declare dso_local i32 @php_stream_bucket_append(%struct.TYPE_18__*, %struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
