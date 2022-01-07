; ModuleID = '/home/carl/AnghaBench/php-src/ext/bz2/extr_bz2_filter.c_php_bz2_decompress_filter.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/bz2/extr_bz2_filter.c_php_bz2_decompress_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32 }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_20__ = type { i64, i64, i64, i32, %struct.TYPE_21__, i32, i64, i32 }
%struct.TYPE_21__ = type { i64, i64, i32, i32 }
%struct.TYPE_19__ = type { i64, i64 }

@PSFS_FEED_ME = common dso_local global i32 0, align 4
@PSFS_ERR_FATAL = common dso_local global i32 0, align 4
@PHP_BZ2_UNITIALIZED = common dso_local global i64 0, align 8
@BZ_OK = common dso_local global i32 0, align 4
@PHP_BZ2_RUNNING = common dso_local global i64 0, align 8
@BZ_STREAM_END = common dso_local global i32 0, align 4
@PHP_BZ2_FINISHED = common dso_local global i64 0, align 8
@PSFS_PASS_ON = common dso_local global i32 0, align 4
@PSFS_FLAG_FLUSH_CLOSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_17__*, %struct.TYPE_18__*, %struct.TYPE_18__*, i64*, i32)* @php_bz2_decompress_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @php_bz2_decompress_filter(i32* %0, %struct.TYPE_17__* %1, %struct.TYPE_18__* %2, %struct.TYPE_18__* %3, i64* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_17__*, align 8
  %10 = alloca %struct.TYPE_18__*, align 8
  %11 = alloca %struct.TYPE_18__*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_20__*, align 8
  %15 = alloca %struct.TYPE_19__*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_21__*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca %struct.TYPE_19__*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  store i32* %0, i32** %8, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %9, align 8
  store %struct.TYPE_18__* %2, %struct.TYPE_18__** %10, align 8
  store %struct.TYPE_18__* %3, %struct.TYPE_18__** %11, align 8
  store i64* %4, i64** %12, align 8
  store i32 %5, i32* %13, align 4
  store i64 0, i64* %16, align 8
  %25 = load i32, i32* @PSFS_FEED_ME, align 4
  store i32 %25, i32* %18, align 4
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @Z_PTR(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %6
  %32 = load i32, i32* @PSFS_ERR_FATAL, align 4
  store i32 %32, i32* %7, align 4
  br label %318

33:                                               ; preds = %6
  %34 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @Z_PTR(i32 %36)
  %38 = inttoptr i64 %37 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %38, %struct.TYPE_20__** %14, align 8
  %39 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %40 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %39, i32 0, i32 4
  store %struct.TYPE_21__* %40, %struct.TYPE_21__** %19, align 8
  br label %41

41:                                               ; preds = %237, %33
  %42 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %240

46:                                               ; preds = %41
  store i64 0, i64* %20, align 8
  %47 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = call %struct.TYPE_19__* @php_stream_bucket_make_writeable(i64 %49)
  store %struct.TYPE_19__* %50, %struct.TYPE_19__** %15, align 8
  br label %51

51:                                               ; preds = %236, %46
  %52 = load i64, i64* %20, align 8
  %53 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %54 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ult i64 %52, %55
  br i1 %56, label %57, label %237

57:                                               ; preds = %51
  %58 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %59 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @PHP_BZ2_UNITIALIZED, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %80

63:                                               ; preds = %57
  %64 = load %struct.TYPE_21__*, %struct.TYPE_21__** %19, align 8
  %65 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %66 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %65, i32 0, i32 7
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @BZ2_bzDecompressInit(%struct.TYPE_21__* %64, i32 0, i32 %67)
  store i32 %68, i32* %17, align 4
  %69 = load i32, i32* @BZ_OK, align 4
  %70 = load i32, i32* %17, align 4
  %71 = icmp ne i32 %69, %70
  br i1 %71, label %72, label %76

72:                                               ; preds = %63
  %73 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %74 = call i32 @php_stream_bucket_delref(%struct.TYPE_19__* %73)
  %75 = load i32, i32* @PSFS_ERR_FATAL, align 4
  store i32 %75, i32* %7, align 4
  br label %318

76:                                               ; preds = %63
  %77 = load i64, i64* @PHP_BZ2_RUNNING, align 8
  %78 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %79 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %78, i32 0, i32 0
  store i64 %77, i64* %79, align 8
  br label %80

80:                                               ; preds = %76, %57
  %81 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %82 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @PHP_BZ2_RUNNING, align 8
  %85 = icmp ne i64 %83, %84
  br i1 %85, label %86, label %92

86:                                               ; preds = %80
  %87 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %88 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* %16, align 8
  %91 = add i64 %90, %89
  store i64 %91, i64* %16, align 8
  br label %237

92:                                               ; preds = %80
  %93 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %94 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* %20, align 8
  %97 = sub i64 %95, %96
  store i64 %97, i64* %21, align 8
  %98 = load i64, i64* %21, align 8
  %99 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %100 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = icmp ugt i64 %98, %101
  br i1 %102, label %103, label %107

103:                                              ; preds = %92
  %104 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %105 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  store i64 %106, i64* %21, align 8
  br label %107

107:                                              ; preds = %103, %92
  %108 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %109 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %108, i32 0, i32 4
  %110 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %113 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* %20, align 8
  %116 = add i64 %114, %115
  %117 = load i64, i64* %21, align 8
  %118 = call i32 @memcpy(i32 %111, i64 %116, i64 %117)
  %119 = load i64, i64* %21, align 8
  %120 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %121 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %120, i32 0, i32 4
  %122 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %121, i32 0, i32 0
  store i64 %119, i64* %122, align 8
  %123 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %124 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %123, i32 0, i32 4
  %125 = call i32 @BZ2_bzDecompress(%struct.TYPE_21__* %124)
  store i32 %125, i32* %17, align 4
  %126 = load i32, i32* %17, align 4
  %127 = load i32, i32* @BZ_STREAM_END, align 4
  %128 = icmp eq i32 %126, %127
  br i1 %128, label %129, label %146

129:                                              ; preds = %107
  %130 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %131 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %130, i32 0, i32 4
  %132 = call i32 @BZ2_bzDecompressEnd(%struct.TYPE_21__* %131)
  %133 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %134 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %133, i32 0, i32 6
  %135 = load i64, i64* %134, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %141

137:                                              ; preds = %129
  %138 = load i64, i64* @PHP_BZ2_UNITIALIZED, align 8
  %139 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %140 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %139, i32 0, i32 0
  store i64 %138, i64* %140, align 8
  br label %145

141:                                              ; preds = %129
  %142 = load i64, i64* @PHP_BZ2_FINISHED, align 8
  %143 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %144 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %143, i32 0, i32 0
  store i64 %142, i64* %144, align 8
  br label %145

145:                                              ; preds = %141, %137
  br label %155

146:                                              ; preds = %107
  %147 = load i32, i32* %17, align 4
  %148 = load i32, i32* @BZ_OK, align 4
  %149 = icmp ne i32 %147, %148
  br i1 %149, label %150, label %154

150:                                              ; preds = %146
  %151 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %152 = call i32 @php_stream_bucket_delref(%struct.TYPE_19__* %151)
  %153 = load i32, i32* @PSFS_ERR_FATAL, align 4
  store i32 %153, i32* %7, align 4
  br label %318

154:                                              ; preds = %146
  br label %155

155:                                              ; preds = %154, %145
  %156 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %157 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %156, i32 0, i32 4
  %158 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = load i64, i64* %21, align 8
  %161 = sub i64 %160, %159
  store i64 %161, i64* %21, align 8
  %162 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %163 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %162, i32 0, i32 5
  %164 = load i32, i32* %163, align 8
  %165 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %166 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %165, i32 0, i32 4
  %167 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %166, i32 0, i32 3
  store i32 %164, i32* %167, align 4
  %168 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %169 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %168, i32 0, i32 4
  %170 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %169, i32 0, i32 0
  store i64 0, i64* %170, align 8
  %171 = load i64, i64* %21, align 8
  %172 = load i64, i64* %16, align 8
  %173 = add i64 %172, %171
  store i64 %173, i64* %16, align 8
  %174 = load i64, i64* %21, align 8
  %175 = load i64, i64* %20, align 8
  %176 = add i64 %175, %174
  store i64 %176, i64* %20, align 8
  %177 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %178 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %177, i32 0, i32 4
  %179 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %178, i32 0, i32 1
  %180 = load i64, i64* %179, align 8
  %181 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %182 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %181, i32 0, i32 2
  %183 = load i64, i64* %182, align 8
  %184 = icmp slt i64 %180, %183
  br i1 %184, label %185, label %218

185:                                              ; preds = %155
  %186 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %187 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %186, i32 0, i32 2
  %188 = load i64, i64* %187, align 8
  %189 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %190 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %189, i32 0, i32 4
  %191 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %190, i32 0, i32 1
  %192 = load i64, i64* %191, align 8
  %193 = sub nsw i64 %188, %192
  store i64 %193, i64* %23, align 8
  %194 = load i32*, i32** %8, align 8
  %195 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %196 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %195, i32 0, i32 3
  %197 = load i32, i32* %196, align 8
  %198 = load i64, i64* %23, align 8
  %199 = call i32 @estrndup(i32 %197, i64 %198)
  %200 = load i64, i64* %23, align 8
  %201 = call %struct.TYPE_19__* @php_stream_bucket_new(i32* %194, i32 %199, i64 %200, i32 1, i32 0)
  store %struct.TYPE_19__* %201, %struct.TYPE_19__** %22, align 8
  %202 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %203 = load %struct.TYPE_19__*, %struct.TYPE_19__** %22, align 8
  %204 = call i32 @php_stream_bucket_append(%struct.TYPE_18__* %202, %struct.TYPE_19__* %203)
  %205 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %206 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %205, i32 0, i32 2
  %207 = load i64, i64* %206, align 8
  %208 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %209 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %208, i32 0, i32 4
  %210 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %209, i32 0, i32 1
  store i64 %207, i64* %210, align 8
  %211 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %212 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %211, i32 0, i32 3
  %213 = load i32, i32* %212, align 8
  %214 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %215 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %214, i32 0, i32 4
  %216 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %215, i32 0, i32 2
  store i32 %213, i32* %216, align 8
  %217 = load i32, i32* @PSFS_PASS_ON, align 4
  store i32 %217, i32* %18, align 4
  br label %236

218:                                              ; preds = %155
  %219 = load i32, i32* %17, align 4
  %220 = load i32, i32* @BZ_STREAM_END, align 4
  %221 = icmp eq i32 %219, %220
  br i1 %221, label %222, label %235

222:                                              ; preds = %218
  %223 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %224 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %223, i32 0, i32 4
  %225 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %224, i32 0, i32 1
  %226 = load i64, i64* %225, align 8
  %227 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %228 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %227, i32 0, i32 2
  %229 = load i64, i64* %228, align 8
  %230 = icmp sge i64 %226, %229
  br i1 %230, label %231, label %235

231:                                              ; preds = %222
  %232 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %233 = call i32 @php_stream_bucket_delref(%struct.TYPE_19__* %232)
  %234 = load i32, i32* @PSFS_PASS_ON, align 4
  store i32 %234, i32* %7, align 4
  br label %318

235:                                              ; preds = %222, %218
  br label %236

236:                                              ; preds = %235, %185
  br label %51

237:                                              ; preds = %86, %51
  %238 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %239 = call i32 @php_stream_bucket_delref(%struct.TYPE_19__* %238)
  br label %41

240:                                              ; preds = %41
  %241 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %242 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %241, i32 0, i32 0
  %243 = load i64, i64* %242, align 8
  %244 = load i64, i64* @PHP_BZ2_RUNNING, align 8
  %245 = icmp eq i64 %243, %244
  br i1 %245, label %246, label %310

246:                                              ; preds = %240
  %247 = load i32, i32* %13, align 4
  %248 = load i32, i32* @PSFS_FLAG_FLUSH_CLOSE, align 4
  %249 = and i32 %247, %248
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %310

251:                                              ; preds = %246
  %252 = load i32, i32* @BZ_OK, align 4
  store i32 %252, i32* %17, align 4
  br label %253

253:                                              ; preds = %308, %251
  %254 = load i32, i32* %17, align 4
  %255 = load i32, i32* @BZ_OK, align 4
  %256 = icmp eq i32 %254, %255
  br i1 %256, label %257, label %309

257:                                              ; preds = %253
  %258 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %259 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %258, i32 0, i32 4
  %260 = call i32 @BZ2_bzDecompress(%struct.TYPE_21__* %259)
  store i32 %260, i32* %17, align 4
  %261 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %262 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %261, i32 0, i32 4
  %263 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %262, i32 0, i32 1
  %264 = load i64, i64* %263, align 8
  %265 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %266 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %265, i32 0, i32 2
  %267 = load i64, i64* %266, align 8
  %268 = icmp slt i64 %264, %267
  br i1 %268, label %269, label %302

269:                                              ; preds = %257
  %270 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %271 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %270, i32 0, i32 2
  %272 = load i64, i64* %271, align 8
  %273 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %274 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %273, i32 0, i32 4
  %275 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %274, i32 0, i32 1
  %276 = load i64, i64* %275, align 8
  %277 = sub nsw i64 %272, %276
  store i64 %277, i64* %24, align 8
  %278 = load i32*, i32** %8, align 8
  %279 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %280 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %279, i32 0, i32 3
  %281 = load i32, i32* %280, align 8
  %282 = load i64, i64* %24, align 8
  %283 = call i32 @estrndup(i32 %281, i64 %282)
  %284 = load i64, i64* %24, align 8
  %285 = call %struct.TYPE_19__* @php_stream_bucket_new(i32* %278, i32 %283, i64 %284, i32 1, i32 0)
  store %struct.TYPE_19__* %285, %struct.TYPE_19__** %15, align 8
  %286 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %287 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %288 = call i32 @php_stream_bucket_append(%struct.TYPE_18__* %286, %struct.TYPE_19__* %287)
  %289 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %290 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %289, i32 0, i32 2
  %291 = load i64, i64* %290, align 8
  %292 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %293 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %292, i32 0, i32 4
  %294 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %293, i32 0, i32 1
  store i64 %291, i64* %294, align 8
  %295 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %296 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %295, i32 0, i32 3
  %297 = load i32, i32* %296, align 8
  %298 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %299 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %298, i32 0, i32 4
  %300 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %299, i32 0, i32 2
  store i32 %297, i32* %300, align 8
  %301 = load i32, i32* @PSFS_PASS_ON, align 4
  store i32 %301, i32* %18, align 4
  br label %308

302:                                              ; preds = %257
  %303 = load i32, i32* %17, align 4
  %304 = load i32, i32* @BZ_OK, align 4
  %305 = icmp eq i32 %303, %304
  br i1 %305, label %306, label %307

306:                                              ; preds = %302
  br label %309

307:                                              ; preds = %302
  br label %308

308:                                              ; preds = %307, %269
  br label %253

309:                                              ; preds = %306, %253
  br label %310

310:                                              ; preds = %309, %246, %240
  %311 = load i64*, i64** %12, align 8
  %312 = icmp ne i64* %311, null
  br i1 %312, label %313, label %316

313:                                              ; preds = %310
  %314 = load i64, i64* %16, align 8
  %315 = load i64*, i64** %12, align 8
  store i64 %314, i64* %315, align 8
  br label %316

316:                                              ; preds = %313, %310
  %317 = load i32, i32* %18, align 4
  store i32 %317, i32* %7, align 4
  br label %318

318:                                              ; preds = %316, %231, %150, %72, %31
  %319 = load i32, i32* %7, align 4
  ret i32 %319
}

declare dso_local i64 @Z_PTR(i32) #1

declare dso_local %struct.TYPE_19__* @php_stream_bucket_make_writeable(i64) #1

declare dso_local i32 @BZ2_bzDecompressInit(%struct.TYPE_21__*, i32, i32) #1

declare dso_local i32 @php_stream_bucket_delref(%struct.TYPE_19__*) #1

declare dso_local i32 @memcpy(i32, i64, i64) #1

declare dso_local i32 @BZ2_bzDecompress(%struct.TYPE_21__*) #1

declare dso_local i32 @BZ2_bzDecompressEnd(%struct.TYPE_21__*) #1

declare dso_local %struct.TYPE_19__* @php_stream_bucket_new(i32*, i32, i64, i32, i32) #1

declare dso_local i32 @estrndup(i32, i64) #1

declare dso_local i32 @php_stream_bucket_append(%struct.TYPE_18__*, %struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
