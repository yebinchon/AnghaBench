; ModuleID = '/home/carl/AnghaBench/php-src/ext/zlib/extr_zlib_filter.c_php_zlib_deflate_filter.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/zlib/extr_zlib_filter.c_php_zlib_deflate_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32 }
%struct.TYPE_18__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i64, i64 }
%struct.TYPE_16__ = type { i64, i64, i64, %struct.TYPE_15__, i32 }
%struct.TYPE_15__ = type { i64, i64, i64, i32 }

@PSFS_FEED_ME = common dso_local global i32 0, align 4
@PSFS_ERR_FATAL = common dso_local global i32 0, align 4
@PSFS_FLAG_FLUSH_CLOSE = common dso_local global i32 0, align 4
@Z_FULL_FLUSH = common dso_local global i32 0, align 4
@PSFS_FLAG_FLUSH_INC = common dso_local global i32 0, align 4
@Z_SYNC_FLUSH = common dso_local global i32 0, align 4
@Z_NO_FLUSH = common dso_local global i32 0, align 4
@Z_OK = common dso_local global i32 0, align 4
@PSFS_PASS_ON = common dso_local global i32 0, align 4
@Z_FINISH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_17__*, %struct.TYPE_18__*, %struct.TYPE_18__*, i64*, i32)* @php_zlib_deflate_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @php_zlib_deflate_filter(i32* %0, %struct.TYPE_17__* %1, %struct.TYPE_18__* %2, %struct.TYPE_18__* %3, i64* %4, i32 %5) #0 {
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
  br label %258

35:                                               ; preds = %27
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @Z_PTR(i32 %38)
  %40 = inttoptr i64 %39 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %40, %struct.TYPE_16__** %14, align 8
  br label %41

41:                                               ; preds = %182, %35
  %42 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_19__*, %struct.TYPE_19__** %43, align 8
  %45 = icmp ne %struct.TYPE_19__* %44, null
  br i1 %45, label %46, label %190

46:                                               ; preds = %41
  store i64 0, i64* %19, align 8
  %47 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_19__*, %struct.TYPE_19__** %48, align 8
  store %struct.TYPE_19__* %49, %struct.TYPE_19__** %15, align 8
  %50 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %51 = call %struct.TYPE_19__* @php_stream_bucket_make_writeable(%struct.TYPE_19__* %50)
  store %struct.TYPE_19__* %51, %struct.TYPE_19__** %15, align 8
  br label %52

52:                                               ; preds = %181, %46
  %53 = load i64, i64* %19, align 8
  %54 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %55 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = trunc i64 %56 to i32
  %58 = zext i32 %57 to i64
  %59 = icmp ult i64 %53, %58
  br i1 %59, label %60, label %182

60:                                               ; preds = %52
  %61 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %62 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* %19, align 8
  %65 = sub i64 %63, %64
  store i64 %65, i64* %20, align 8
  %66 = load i64, i64* %20, align 8
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %68 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp ugt i64 %66, %69
  br i1 %70, label %71, label %75

71:                                               ; preds = %60
  %72 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %73 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  store i64 %74, i64* %20, align 8
  br label %75

75:                                               ; preds = %71, %60
  %76 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %77 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %76, i32 0, i32 3
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %81 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* %19, align 8
  %84 = add i64 %82, %83
  %85 = load i64, i64* %20, align 8
  %86 = call i32 @memcpy(i32 %79, i64 %84, i64 %85)
  %87 = load i64, i64* %20, align 8
  %88 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %89 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %88, i32 0, i32 3
  %90 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %89, i32 0, i32 0
  store i64 %87, i64* %90, align 8
  %91 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %92 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %91, i32 0, i32 3
  %93 = load i32, i32* %13, align 4
  %94 = load i32, i32* @PSFS_FLAG_FLUSH_CLOSE, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %75
  %98 = load i32, i32* @Z_FULL_FLUSH, align 4
  br label %110

99:                                               ; preds = %75
  %100 = load i32, i32* %13, align 4
  %101 = load i32, i32* @PSFS_FLAG_FLUSH_INC, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %99
  %105 = load i32, i32* @Z_SYNC_FLUSH, align 4
  br label %108

106:                                              ; preds = %99
  %107 = load i32, i32* @Z_NO_FLUSH, align 4
  br label %108

108:                                              ; preds = %106, %104
  %109 = phi i32 [ %105, %104 ], [ %107, %106 ]
  br label %110

110:                                              ; preds = %108, %97
  %111 = phi i32 [ %98, %97 ], [ %109, %108 ]
  %112 = call i32 @deflate(%struct.TYPE_15__* %92, i32 %111)
  store i32 %112, i32* %17, align 4
  %113 = load i32, i32* %17, align 4
  %114 = load i32, i32* @Z_OK, align 4
  %115 = icmp ne i32 %113, %114
  br i1 %115, label %116, label %120

116:                                              ; preds = %110
  %117 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %118 = call i32 @php_stream_bucket_delref(%struct.TYPE_19__* %117)
  %119 = load i32, i32* @PSFS_ERR_FATAL, align 4
  store i32 %119, i32* %7, align 4
  br label %258

120:                                              ; preds = %110
  %121 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %122 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %121, i32 0, i32 3
  %123 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* %20, align 8
  %126 = sub i64 %125, %124
  store i64 %126, i64* %20, align 8
  %127 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %128 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %127, i32 0, i32 4
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %131 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %130, i32 0, i32 3
  %132 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %131, i32 0, i32 3
  store i32 %129, i32* %132, align 8
  %133 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %134 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %133, i32 0, i32 3
  %135 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %134, i32 0, i32 0
  store i64 0, i64* %135, align 8
  %136 = load i64, i64* %20, align 8
  %137 = load i64, i64* %19, align 8
  %138 = add i64 %137, %136
  store i64 %138, i64* %19, align 8
  %139 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %140 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %139, i32 0, i32 3
  %141 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %140, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %144 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = icmp slt i64 %142, %145
  br i1 %146, label %147, label %181

147:                                              ; preds = %120
  %148 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %149 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %152 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %151, i32 0, i32 3
  %153 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %152, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  %155 = sub nsw i64 %150, %154
  store i64 %155, i64* %22, align 8
  %156 = load i32*, i32** %8, align 8
  %157 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %158 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %157, i32 0, i32 2
  %159 = load i64, i64* %158, align 8
  %160 = inttoptr i64 %159 to i8*
  %161 = load i64, i64* %22, align 8
  %162 = call i32 @estrndup(i8* %160, i64 %161)
  %163 = load i64, i64* %22, align 8
  %164 = call %struct.TYPE_19__* @php_stream_bucket_new(i32* %156, i32 %162, i64 %163, i32 1, i32 0)
  store %struct.TYPE_19__* %164, %struct.TYPE_19__** %21, align 8
  %165 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %166 = load %struct.TYPE_19__*, %struct.TYPE_19__** %21, align 8
  %167 = call i32 @php_stream_bucket_append(%struct.TYPE_18__* %165, %struct.TYPE_19__* %166)
  %168 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %169 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %168, i32 0, i32 1
  %170 = load i64, i64* %169, align 8
  %171 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %172 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %171, i32 0, i32 3
  %173 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %172, i32 0, i32 1
  store i64 %170, i64* %173, align 8
  %174 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %175 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %174, i32 0, i32 2
  %176 = load i64, i64* %175, align 8
  %177 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %178 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %177, i32 0, i32 3
  %179 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %178, i32 0, i32 2
  store i64 %176, i64* %179, align 8
  %180 = load i32, i32* @PSFS_PASS_ON, align 4
  store i32 %180, i32* %18, align 4
  br label %181

181:                                              ; preds = %147, %120
  br label %52

182:                                              ; preds = %52
  %183 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %184 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = load i64, i64* %16, align 8
  %187 = add i64 %186, %185
  store i64 %187, i64* %16, align 8
  %188 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %189 = call i32 @php_stream_bucket_delref(%struct.TYPE_19__* %188)
  br label %41

190:                                              ; preds = %41
  %191 = load i32, i32* %13, align 4
  %192 = load i32, i32* @PSFS_FLAG_FLUSH_CLOSE, align 4
  %193 = and i32 %191, %192
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %250

195:                                              ; preds = %190
  %196 = load i32, i32* @Z_OK, align 4
  store i32 %196, i32* %17, align 4
  br label %197

197:                                              ; preds = %248, %195
  %198 = load i32, i32* %17, align 4
  %199 = load i32, i32* @Z_OK, align 4
  %200 = icmp eq i32 %198, %199
  br i1 %200, label %201, label %249

201:                                              ; preds = %197
  %202 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %203 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %202, i32 0, i32 3
  %204 = load i32, i32* @Z_FINISH, align 4
  %205 = call i32 @deflate(%struct.TYPE_15__* %203, i32 %204)
  store i32 %205, i32* %17, align 4
  %206 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %207 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %206, i32 0, i32 3
  %208 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %207, i32 0, i32 1
  %209 = load i64, i64* %208, align 8
  %210 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %211 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %210, i32 0, i32 1
  %212 = load i64, i64* %211, align 8
  %213 = icmp slt i64 %209, %212
  br i1 %213, label %214, label %248

214:                                              ; preds = %201
  %215 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %216 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %215, i32 0, i32 1
  %217 = load i64, i64* %216, align 8
  %218 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %219 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %218, i32 0, i32 3
  %220 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %219, i32 0, i32 1
  %221 = load i64, i64* %220, align 8
  %222 = sub nsw i64 %217, %221
  store i64 %222, i64* %23, align 8
  %223 = load i32*, i32** %8, align 8
  %224 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %225 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %224, i32 0, i32 2
  %226 = load i64, i64* %225, align 8
  %227 = inttoptr i64 %226 to i8*
  %228 = load i64, i64* %23, align 8
  %229 = call i32 @estrndup(i8* %227, i64 %228)
  %230 = load i64, i64* %23, align 8
  %231 = call %struct.TYPE_19__* @php_stream_bucket_new(i32* %223, i32 %229, i64 %230, i32 1, i32 0)
  store %struct.TYPE_19__* %231, %struct.TYPE_19__** %15, align 8
  %232 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %233 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %234 = call i32 @php_stream_bucket_append(%struct.TYPE_18__* %232, %struct.TYPE_19__* %233)
  %235 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %236 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %235, i32 0, i32 1
  %237 = load i64, i64* %236, align 8
  %238 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %239 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %238, i32 0, i32 3
  %240 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %239, i32 0, i32 1
  store i64 %237, i64* %240, align 8
  %241 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %242 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %241, i32 0, i32 2
  %243 = load i64, i64* %242, align 8
  %244 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %245 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %244, i32 0, i32 3
  %246 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %245, i32 0, i32 2
  store i64 %243, i64* %246, align 8
  %247 = load i32, i32* @PSFS_PASS_ON, align 4
  store i32 %247, i32* %18, align 4
  br label %248

248:                                              ; preds = %214, %201
  br label %197

249:                                              ; preds = %197
  br label %250

250:                                              ; preds = %249, %190
  %251 = load i64*, i64** %12, align 8
  %252 = icmp ne i64* %251, null
  br i1 %252, label %253, label %256

253:                                              ; preds = %250
  %254 = load i64, i64* %16, align 8
  %255 = load i64*, i64** %12, align 8
  store i64 %254, i64* %255, align 8
  br label %256

256:                                              ; preds = %253, %250
  %257 = load i32, i32* %18, align 4
  store i32 %257, i32* %7, align 4
  br label %258

258:                                              ; preds = %256, %116, %33
  %259 = load i32, i32* %7, align 4
  ret i32 %259
}

declare dso_local i64 @Z_PTR(i32) #1

declare dso_local %struct.TYPE_19__* @php_stream_bucket_make_writeable(%struct.TYPE_19__*) #1

declare dso_local i32 @memcpy(i32, i64, i64) #1

declare dso_local i32 @deflate(%struct.TYPE_15__*, i32) #1

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
