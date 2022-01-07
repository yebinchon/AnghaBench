; ModuleID = '/home/carl/AnghaBench/php-src/ext/bz2/extr_bz2_filter.c_php_bz2_compress_filter.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/bz2/extr_bz2_filter.c_php_bz2_compress_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_18__ = type { i64, i64, i32, %struct.TYPE_14__, i32 }
%struct.TYPE_14__ = type { i64, i64, i32, i32 }
%struct.TYPE_17__ = type { i64, i64 }

@PSFS_FEED_ME = common dso_local global i32 0, align 4
@PSFS_ERR_FATAL = common dso_local global i32 0, align 4
@PSFS_FLAG_FLUSH_CLOSE = common dso_local global i32 0, align 4
@BZ_FINISH = common dso_local global i32 0, align 4
@PSFS_FLAG_FLUSH_INC = common dso_local global i32 0, align 4
@BZ_FLUSH = common dso_local global i32 0, align 4
@BZ_RUN = common dso_local global i32 0, align 4
@BZ_RUN_OK = common dso_local global i32 0, align 4
@BZ_FLUSH_OK = common dso_local global i32 0, align 4
@BZ_FINISH_OK = common dso_local global i32 0, align 4
@PSFS_PASS_ON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_15__*, %struct.TYPE_16__*, %struct.TYPE_16__*, i64*, i32)* @php_bz2_compress_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @php_bz2_compress_filter(i32* %0, %struct.TYPE_15__* %1, %struct.TYPE_16__* %2, %struct.TYPE_16__* %3, i64* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca %struct.TYPE_16__*, align 8
  %11 = alloca %struct.TYPE_16__*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_18__*, align 8
  %15 = alloca %struct.TYPE_17__*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca %struct.TYPE_17__*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  store i32* %0, i32** %8, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %9, align 8
  store %struct.TYPE_16__* %2, %struct.TYPE_16__** %10, align 8
  store %struct.TYPE_16__* %3, %struct.TYPE_16__** %11, align 8
  store i64* %4, i64** %12, align 8
  store i32 %5, i32* %13, align 4
  store i64 0, i64* %16, align 8
  %24 = load i32, i32* @PSFS_FEED_ME, align 4
  store i32 %24, i32* %18, align 4
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @Z_PTR(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %6
  %31 = load i32, i32* @PSFS_ERR_FATAL, align 4
  store i32 %31, i32* %7, align 4
  br label %256

32:                                               ; preds = %6
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @Z_PTR(i32 %35)
  %37 = inttoptr i64 %36 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %37, %struct.TYPE_18__** %14, align 8
  br label %38

38:                                               ; preds = %186, %32
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %189

43:                                               ; preds = %38
  store i64 0, i64* %19, align 8
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = call %struct.TYPE_17__* @php_stream_bucket_make_writeable(i64 %46)
  store %struct.TYPE_17__* %47, %struct.TYPE_17__** %15, align 8
  br label %48

48:                                               ; preds = %185, %43
  %49 = load i64, i64* %19, align 8
  %50 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %51 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ult i64 %49, %52
  br i1 %53, label %54, label %186

54:                                               ; preds = %48
  %55 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %56 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* %19, align 8
  %59 = sub i64 %57, %58
  store i64 %59, i64* %20, align 8
  %60 = load i64, i64* %20, align 8
  %61 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %62 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp ugt i64 %60, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %54
  %66 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %67 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  store i64 %68, i64* %20, align 8
  br label %69

69:                                               ; preds = %65, %54
  %70 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %71 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %70, i32 0, i32 3
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %75 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* %19, align 8
  %78 = add i64 %76, %77
  %79 = load i64, i64* %20, align 8
  %80 = call i32 @memcpy(i32 %73, i64 %78, i64 %79)
  %81 = load i64, i64* %20, align 8
  %82 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %83 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %82, i32 0, i32 3
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i32 0, i32 0
  store i64 %81, i64* %84, align 8
  %85 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %86 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %85, i32 0, i32 3
  %87 = load i32, i32* %13, align 4
  %88 = load i32, i32* @PSFS_FLAG_FLUSH_CLOSE, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %69
  %92 = load i32, i32* @BZ_FINISH, align 4
  br label %104

93:                                               ; preds = %69
  %94 = load i32, i32* %13, align 4
  %95 = load i32, i32* @PSFS_FLAG_FLUSH_INC, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %93
  %99 = load i32, i32* @BZ_FLUSH, align 4
  br label %102

100:                                              ; preds = %93
  %101 = load i32, i32* @BZ_RUN, align 4
  br label %102

102:                                              ; preds = %100, %98
  %103 = phi i32 [ %99, %98 ], [ %101, %100 ]
  br label %104

104:                                              ; preds = %102, %91
  %105 = phi i32 [ %92, %91 ], [ %103, %102 ]
  %106 = call i32 @BZ2_bzCompress(%struct.TYPE_14__* %86, i32 %105)
  store i32 %106, i32* %17, align 4
  %107 = load i32, i32* %17, align 4
  %108 = load i32, i32* @BZ_RUN_OK, align 4
  %109 = icmp ne i32 %107, %108
  br i1 %109, label %110, label %122

110:                                              ; preds = %104
  %111 = load i32, i32* %17, align 4
  %112 = load i32, i32* @BZ_FLUSH_OK, align 4
  %113 = icmp ne i32 %111, %112
  br i1 %113, label %114, label %122

114:                                              ; preds = %110
  %115 = load i32, i32* %17, align 4
  %116 = load i32, i32* @BZ_FINISH_OK, align 4
  %117 = icmp ne i32 %115, %116
  br i1 %117, label %118, label %122

118:                                              ; preds = %114
  %119 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %120 = call i32 @php_stream_bucket_delref(%struct.TYPE_17__* %119)
  %121 = load i32, i32* @PSFS_ERR_FATAL, align 4
  store i32 %121, i32* %7, align 4
  br label %256

122:                                              ; preds = %114, %110, %104
  %123 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %124 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %123, i32 0, i32 3
  %125 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* %20, align 8
  %128 = sub i64 %127, %126
  store i64 %128, i64* %20, align 8
  %129 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %130 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %129, i32 0, i32 4
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %133 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %132, i32 0, i32 3
  %134 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %133, i32 0, i32 3
  store i32 %131, i32* %134, align 4
  %135 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %136 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %135, i32 0, i32 3
  %137 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %136, i32 0, i32 0
  store i64 0, i64* %137, align 8
  %138 = load i64, i64* %20, align 8
  %139 = load i64, i64* %16, align 8
  %140 = add i64 %139, %138
  store i64 %140, i64* %16, align 8
  %141 = load i64, i64* %20, align 8
  %142 = load i64, i64* %19, align 8
  %143 = add i64 %142, %141
  store i64 %143, i64* %19, align 8
  %144 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %145 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %144, i32 0, i32 3
  %146 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %149 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = icmp slt i64 %147, %150
  br i1 %151, label %152, label %185

152:                                              ; preds = %122
  %153 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %154 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %153, i32 0, i32 1
  %155 = load i64, i64* %154, align 8
  %156 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %157 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %156, i32 0, i32 3
  %158 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %157, i32 0, i32 1
  %159 = load i64, i64* %158, align 8
  %160 = sub nsw i64 %155, %159
  store i64 %160, i64* %22, align 8
  %161 = load i32*, i32** %8, align 8
  %162 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %163 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 8
  %165 = load i64, i64* %22, align 8
  %166 = call i32 @estrndup(i32 %164, i64 %165)
  %167 = load i64, i64* %22, align 8
  %168 = call %struct.TYPE_17__* @php_stream_bucket_new(i32* %161, i32 %166, i64 %167, i32 1, i32 0)
  store %struct.TYPE_17__* %168, %struct.TYPE_17__** %21, align 8
  %169 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %170 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  %171 = call i32 @php_stream_bucket_append(%struct.TYPE_16__* %169, %struct.TYPE_17__* %170)
  %172 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %173 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %172, i32 0, i32 1
  %174 = load i64, i64* %173, align 8
  %175 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %176 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %175, i32 0, i32 3
  %177 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %176, i32 0, i32 1
  store i64 %174, i64* %177, align 8
  %178 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %179 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %178, i32 0, i32 2
  %180 = load i32, i32* %179, align 8
  %181 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %182 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %181, i32 0, i32 3
  %183 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %182, i32 0, i32 2
  store i32 %180, i32* %183, align 8
  %184 = load i32, i32* @PSFS_PASS_ON, align 4
  store i32 %184, i32* %18, align 4
  br label %185

185:                                              ; preds = %152, %122
  br label %48

186:                                              ; preds = %48
  %187 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %188 = call i32 @php_stream_bucket_delref(%struct.TYPE_17__* %187)
  br label %38

189:                                              ; preds = %38
  %190 = load i32, i32* %13, align 4
  %191 = load i32, i32* @PSFS_FLAG_FLUSH_CLOSE, align 4
  %192 = and i32 %190, %191
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %248

194:                                              ; preds = %189
  %195 = load i32, i32* @BZ_FINISH_OK, align 4
  store i32 %195, i32* %17, align 4
  br label %196

196:                                              ; preds = %246, %194
  %197 = load i32, i32* %17, align 4
  %198 = load i32, i32* @BZ_FINISH_OK, align 4
  %199 = icmp eq i32 %197, %198
  br i1 %199, label %200, label %247

200:                                              ; preds = %196
  %201 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %202 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %201, i32 0, i32 3
  %203 = load i32, i32* @BZ_FINISH, align 4
  %204 = call i32 @BZ2_bzCompress(%struct.TYPE_14__* %202, i32 %203)
  store i32 %204, i32* %17, align 4
  %205 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %206 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %205, i32 0, i32 3
  %207 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %206, i32 0, i32 1
  %208 = load i64, i64* %207, align 8
  %209 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %210 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %209, i32 0, i32 1
  %211 = load i64, i64* %210, align 8
  %212 = icmp slt i64 %208, %211
  br i1 %212, label %213, label %246

213:                                              ; preds = %200
  %214 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %215 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %214, i32 0, i32 1
  %216 = load i64, i64* %215, align 8
  %217 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %218 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %217, i32 0, i32 3
  %219 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %218, i32 0, i32 1
  %220 = load i64, i64* %219, align 8
  %221 = sub nsw i64 %216, %220
  store i64 %221, i64* %23, align 8
  %222 = load i32*, i32** %8, align 8
  %223 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %224 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %223, i32 0, i32 2
  %225 = load i32, i32* %224, align 8
  %226 = load i64, i64* %23, align 8
  %227 = call i32 @estrndup(i32 %225, i64 %226)
  %228 = load i64, i64* %23, align 8
  %229 = call %struct.TYPE_17__* @php_stream_bucket_new(i32* %222, i32 %227, i64 %228, i32 1, i32 0)
  store %struct.TYPE_17__* %229, %struct.TYPE_17__** %15, align 8
  %230 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %231 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %232 = call i32 @php_stream_bucket_append(%struct.TYPE_16__* %230, %struct.TYPE_17__* %231)
  %233 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %234 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %233, i32 0, i32 1
  %235 = load i64, i64* %234, align 8
  %236 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %237 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %236, i32 0, i32 3
  %238 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %237, i32 0, i32 1
  store i64 %235, i64* %238, align 8
  %239 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %240 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %239, i32 0, i32 2
  %241 = load i32, i32* %240, align 8
  %242 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %243 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %242, i32 0, i32 3
  %244 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %243, i32 0, i32 2
  store i32 %241, i32* %244, align 8
  %245 = load i32, i32* @PSFS_PASS_ON, align 4
  store i32 %245, i32* %18, align 4
  br label %246

246:                                              ; preds = %213, %200
  br label %196

247:                                              ; preds = %196
  br label %248

248:                                              ; preds = %247, %189
  %249 = load i64*, i64** %12, align 8
  %250 = icmp ne i64* %249, null
  br i1 %250, label %251, label %254

251:                                              ; preds = %248
  %252 = load i64, i64* %16, align 8
  %253 = load i64*, i64** %12, align 8
  store i64 %252, i64* %253, align 8
  br label %254

254:                                              ; preds = %251, %248
  %255 = load i32, i32* %18, align 4
  store i32 %255, i32* %7, align 4
  br label %256

256:                                              ; preds = %254, %118, %30
  %257 = load i32, i32* %7, align 4
  ret i32 %257
}

declare dso_local i64 @Z_PTR(i32) #1

declare dso_local %struct.TYPE_17__* @php_stream_bucket_make_writeable(i64) #1

declare dso_local i32 @memcpy(i32, i64, i64) #1

declare dso_local i32 @BZ2_bzCompress(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @php_stream_bucket_delref(%struct.TYPE_17__*) #1

declare dso_local %struct.TYPE_17__* @php_stream_bucket_new(i32*, i32, i64, i32, i32) #1

declare dso_local i32 @estrndup(i32, i64) #1

declare dso_local i32 @php_stream_bucket_append(%struct.TYPE_16__*, %struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
