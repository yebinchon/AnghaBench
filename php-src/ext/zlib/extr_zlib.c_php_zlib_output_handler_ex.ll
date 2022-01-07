; ModuleID = '/home/carl/AnghaBench/php-src/ext/zlib/extr_zlib.c_php_zlib_output_handler_ex.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/zlib/extr_zlib.c_php_zlib_output_handler_ex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_16__, %struct.TYPE_12__ }
%struct.TYPE_16__ = type { i64, i64, i32*, i32* }
%struct.TYPE_12__ = type { i64, i64, i64, i64 }
%struct.TYPE_15__ = type { i32, %struct.TYPE_13__, %struct.TYPE_11__ }
%struct.TYPE_13__ = type { i32, i64, i64, i64 }
%struct.TYPE_11__ = type { i64, i32 }

@Z_SYNC_FLUSH = common dso_local global i32 0, align 4
@PHP_OUTPUT_HANDLER_START = common dso_local global i32 0, align 4
@output_compression_level = common dso_local global i32 0, align 4
@Z_DEFLATED = common dso_local global i32 0, align 4
@compression_coding = common dso_local global i32 0, align 4
@MAX_MEM_LEVEL = common dso_local global i32 0, align 4
@Z_DEFAULT_STRATEGY = common dso_local global i32 0, align 4
@FAILURE = common dso_local global i32 0, align 4
@PHP_OUTPUT_HANDLER_CLEAN = common dso_local global i32 0, align 4
@PHP_OUTPUT_HANDLER_FINAL = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i32 0, align 4
@Z_FINISH = common dso_local global i32 0, align 4
@PHP_OUTPUT_HANDLER_FLUSH = common dso_local global i32 0, align 4
@Z_FULL_FLUSH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, %struct.TYPE_15__*)* @php_zlib_output_handler_ex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @php_zlib_output_handler_ex(%struct.TYPE_14__* %0, %struct.TYPE_15__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %5, align 8
  %7 = load i32, i32* @Z_SYNC_FLUSH, align 4
  store i32 %7, i32* %6, align 4
  %8 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @PHP_OUTPUT_HANDLER_START, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %29

14:                                               ; preds = %2
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 0
  %17 = load i32, i32* @output_compression_level, align 4
  %18 = call i32 @ZLIBG(i32 %17)
  %19 = load i32, i32* @Z_DEFLATED, align 4
  %20 = load i32, i32* @compression_coding, align 4
  %21 = call i32 @ZLIBG(i32 %20)
  %22 = load i32, i32* @MAX_MEM_LEVEL, align 4
  %23 = load i32, i32* @Z_DEFAULT_STRATEGY, align 4
  %24 = call i64 @deflateInit2(%struct.TYPE_16__* %16, i32 %18, i32 %19, i32 %21, i32 %22, i32 %23)
  %25 = icmp ne i64 129, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %14
  %27 = load i32, i32* @FAILURE, align 4
  store i32 %27, i32* %3, align 4
  br label %335

28:                                               ; preds = %14
  br label %29

29:                                               ; preds = %28, %2
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @PHP_OUTPUT_HANDLER_CLEAN, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %67

36:                                               ; preds = %29
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 0
  %39 = call i32 @deflateEnd(%struct.TYPE_16__* %38)
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @PHP_OUTPUT_HANDLER_FINAL, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %36
  %47 = load i32, i32* @SUCCESS, align 4
  store i32 %47, i32* %3, align 4
  br label %335

48:                                               ; preds = %36
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 0
  %51 = load i32, i32* @output_compression_level, align 4
  %52 = call i32 @ZLIBG(i32 %51)
  %53 = load i32, i32* @Z_DEFLATED, align 4
  %54 = load i32, i32* @compression_coding, align 4
  %55 = call i32 @ZLIBG(i32 %54)
  %56 = load i32, i32* @MAX_MEM_LEVEL, align 4
  %57 = load i32, i32* @Z_DEFAULT_STRATEGY, align 4
  %58 = call i64 @deflateInit2(%struct.TYPE_16__* %50, i32 %52, i32 %53, i32 %55, i32 %56, i32 %57)
  %59 = icmp ne i64 129, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %48
  %61 = load i32, i32* @FAILURE, align 4
  store i32 %61, i32* %3, align 4
  br label %335

62:                                               ; preds = %48
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 0
  store i64 0, i64* %65, align 8
  br label %66

66:                                               ; preds = %62
  br label %333

67:                                               ; preds = %29
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %166

73:                                               ; preds = %67
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp slt i64 %77, %81
  br i1 %82, label %83, label %129

83:                                               ; preds = %73
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 3
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = add nsw i64 %91, %95
  %97 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = add nsw i64 %96, %100
  %102 = call i64 @erealloc_recoverable(i64 %87, i64 %101)
  %103 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 2
  store i64 %102, i64* %105, align 8
  %106 = icmp ne i64 %102, 0
  br i1 %106, label %112, label %107

107:                                              ; preds = %83
  %108 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %108, i32 0, i32 0
  %110 = call i32 @deflateEnd(%struct.TYPE_16__* %109)
  %111 = load i32, i32* @FAILURE, align 4
  store i32 %111, i32* %3, align 4
  br label %335

112:                                              ; preds = %83
  %113 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %114, i32 0, i32 2
  %116 = load i64, i64* %115, align 8
  %117 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %118, i32 0, i32 3
  store i64 %116, i64* %119, align 8
  %120 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %120, i32 0, i32 2
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = add nsw i64 %127, %123
  store i64 %128, i64* %126, align 8
  br label %129

129:                                              ; preds = %112, %73
  %130 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %131, i32 0, i32 3
  %133 = load i64, i64* %132, align 8
  %134 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = add nsw i64 %133, %137
  %139 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %140 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %139, i32 0, i32 2
  %141 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 8
  %143 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %144 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %143, i32 0, i32 2
  %145 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = call i32 @memcpy(i64 %138, i32 %142, i64 %146)
  %148 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %149 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %148, i32 0, i32 2
  %150 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %153 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %152, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %153, i32 0, i32 1
  %155 = load i64, i64* %154, align 8
  %156 = sub nsw i64 %155, %151
  store i64 %156, i64* %154, align 8
  %157 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %158 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %157, i32 0, i32 2
  %159 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %162 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %161, i32 0, i32 1
  %163 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = add nsw i64 %164, %160
  store i64 %165, i64* %163, align 8
  br label %166

166:                                              ; preds = %129, %67
  %167 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %168 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %167, i32 0, i32 2
  %169 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = call i64 @PHP_ZLIB_BUFFER_SIZE_GUESS(i64 %170)
  %172 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %173 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %172, i32 0, i32 1
  %174 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %173, i32 0, i32 1
  store i64 %171, i64* %174, align 8
  %175 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %176 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %175, i32 0, i32 1
  %177 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %176, i32 0, i32 1
  %178 = load i64, i64* %177, align 8
  %179 = call i64 @emalloc(i64 %178)
  %180 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %181 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %180, i32 0, i32 1
  %182 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %181, i32 0, i32 3
  store i64 %179, i64* %182, align 8
  %183 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %184 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %183, i32 0, i32 1
  %185 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %184, i32 0, i32 0
  store i32 1, i32* %185, align 8
  %186 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %187 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %186, i32 0, i32 1
  %188 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %187, i32 0, i32 2
  store i64 0, i64* %188, align 8
  %189 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %190 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %189, i32 0, i32 1
  %191 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %190, i32 0, i32 0
  %192 = load i64, i64* %191, align 8
  %193 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %194 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %194, i32 0, i32 0
  store i64 %192, i64* %195, align 8
  %196 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %197 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %196, i32 0, i32 1
  %198 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %197, i32 0, i32 3
  %199 = load i64, i64* %198, align 8
  %200 = inttoptr i64 %199 to i32*
  %201 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %202 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %202, i32 0, i32 3
  store i32* %200, i32** %203, align 8
  %204 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %205 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %204, i32 0, i32 1
  %206 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %205, i32 0, i32 1
  %207 = load i64, i64* %206, align 8
  %208 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %209 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %208, i32 0, i32 0
  %210 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %209, i32 0, i32 1
  store i64 %207, i64* %210, align 8
  %211 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %212 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %211, i32 0, i32 1
  %213 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %212, i32 0, i32 3
  %214 = load i64, i64* %213, align 8
  %215 = inttoptr i64 %214 to i32*
  %216 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %217 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %216, i32 0, i32 0
  %218 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %217, i32 0, i32 2
  store i32* %215, i32** %218, align 8
  %219 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %220 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = load i32, i32* @PHP_OUTPUT_HANDLER_FINAL, align 4
  %223 = and i32 %221, %222
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %227

225:                                              ; preds = %166
  %226 = load i32, i32* @Z_FINISH, align 4
  store i32 %226, i32* %6, align 4
  br label %237

227:                                              ; preds = %166
  %228 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %229 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 8
  %231 = load i32, i32* @PHP_OUTPUT_HANDLER_FLUSH, align 4
  %232 = and i32 %230, %231
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %236

234:                                              ; preds = %227
  %235 = load i32, i32* @Z_FULL_FLUSH, align 4
  store i32 %235, i32* %6, align 4
  br label %236

236:                                              ; preds = %234, %227
  br label %237

237:                                              ; preds = %236, %225
  %238 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %239 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %238, i32 0, i32 0
  %240 = load i32, i32* %6, align 4
  %241 = call i32 @deflate(%struct.TYPE_16__* %239, i32 %240)
  switch i32 %241, label %316 [
    i32 129, label %242
    i32 128, label %252
  ]

242:                                              ; preds = %237
  %243 = load i32, i32* %6, align 4
  %244 = load i32, i32* @Z_FINISH, align 4
  %245 = icmp eq i32 %243, %244
  br i1 %245, label %246, label %251

246:                                              ; preds = %242
  %247 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %248 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %247, i32 0, i32 0
  %249 = call i32 @deflateEnd(%struct.TYPE_16__* %248)
  %250 = load i32, i32* @FAILURE, align 4
  store i32 %250, i32* %3, align 4
  br label %335

251:                                              ; preds = %242
  br label %252

252:                                              ; preds = %237, %251
  %253 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %254 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %253, i32 0, i32 0
  %255 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %254, i32 0, i32 0
  %256 = load i64, i64* %255, align 8
  %257 = icmp ne i64 %256, 0
  br i1 %257, label %258, label %282

258:                                              ; preds = %252
  %259 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %260 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %259, i32 0, i32 1
  %261 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %260, i32 0, i32 3
  %262 = load i64, i64* %261, align 8
  %263 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %264 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %263, i32 0, i32 1
  %265 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %264, i32 0, i32 3
  %266 = load i64, i64* %265, align 8
  %267 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %268 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %267, i32 0, i32 1
  %269 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %268, i32 0, i32 0
  %270 = load i64, i64* %269, align 8
  %271 = add nsw i64 %266, %270
  %272 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %273 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %272, i32 0, i32 0
  %274 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %273, i32 0, i32 0
  %275 = load i64, i64* %274, align 8
  %276 = sub nsw i64 %271, %275
  %277 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %278 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %277, i32 0, i32 0
  %279 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %278, i32 0, i32 0
  %280 = load i64, i64* %279, align 8
  %281 = call i32 @memmove(i64 %262, i64 %276, i64 %280)
  br label %282

282:                                              ; preds = %258, %252
  %283 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %284 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %283, i32 0, i32 1
  %285 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %284, i32 0, i32 0
  %286 = load i64, i64* %285, align 8
  %287 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %288 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %287, i32 0, i32 0
  %289 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %288, i32 0, i32 0
  %290 = load i64, i64* %289, align 8
  %291 = sub nsw i64 %286, %290
  %292 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %293 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %292, i32 0, i32 1
  %294 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %293, i32 0, i32 1
  %295 = load i64, i64* %294, align 8
  %296 = add nsw i64 %295, %291
  store i64 %296, i64* %294, align 8
  %297 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %298 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %297, i32 0, i32 0
  %299 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %298, i32 0, i32 0
  %300 = load i64, i64* %299, align 8
  %301 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %302 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %301, i32 0, i32 1
  %303 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %302, i32 0, i32 0
  store i64 %300, i64* %303, align 8
  %304 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %305 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %304, i32 0, i32 1
  %306 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %305, i32 0, i32 1
  %307 = load i64, i64* %306, align 8
  %308 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %309 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %308, i32 0, i32 0
  %310 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %309, i32 0, i32 1
  %311 = load i64, i64* %310, align 8
  %312 = sub nsw i64 %307, %311
  %313 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %314 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %313, i32 0, i32 1
  %315 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %314, i32 0, i32 2
  store i64 %312, i64* %315, align 8
  br label %321

316:                                              ; preds = %237
  %317 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %318 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %317, i32 0, i32 0
  %319 = call i32 @deflateEnd(%struct.TYPE_16__* %318)
  %320 = load i32, i32* @FAILURE, align 4
  store i32 %320, i32* %3, align 4
  br label %335

321:                                              ; preds = %282
  %322 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %323 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %322, i32 0, i32 0
  %324 = load i32, i32* %323, align 8
  %325 = load i32, i32* @PHP_OUTPUT_HANDLER_FINAL, align 4
  %326 = and i32 %324, %325
  %327 = icmp ne i32 %326, 0
  br i1 %327, label %328, label %332

328:                                              ; preds = %321
  %329 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %330 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %329, i32 0, i32 0
  %331 = call i32 @deflateEnd(%struct.TYPE_16__* %330)
  br label %332

332:                                              ; preds = %328, %321
  br label %333

333:                                              ; preds = %332, %66
  %334 = load i32, i32* @SUCCESS, align 4
  store i32 %334, i32* %3, align 4
  br label %335

335:                                              ; preds = %333, %316, %246, %107, %60, %46, %26
  %336 = load i32, i32* %3, align 4
  ret i32 %336
}

declare dso_local i64 @deflateInit2(%struct.TYPE_16__*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ZLIBG(i32) #1

declare dso_local i32 @deflateEnd(%struct.TYPE_16__*) #1

declare dso_local i64 @erealloc_recoverable(i64, i64) #1

declare dso_local i32 @memcpy(i64, i32, i64) #1

declare dso_local i64 @PHP_ZLIB_BUFFER_SIZE_GUESS(i64) #1

declare dso_local i64 @emalloc(i64) #1

declare dso_local i32 @deflate(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @memmove(i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
