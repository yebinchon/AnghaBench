; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libtiff/extr_tif_write.c_TIFFWriteScanline.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libtiff/extr_tif_write.c_TIFFWriteScanline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, i32, i32 (%struct.TYPE_14__*, i32*, i32, i32)*, i32, i32 (%struct.TYPE_14__*, i32*, i32)*, i32 (%struct.TYPE_14__*, i32)*, i32, i32, i32 (%struct.TYPE_14__*, i32)*, i64, i64, i32 (%struct.TYPE_14__*)*, i32, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i64, i32, i32, i32, i32, i64* }

@TIFFWriteScanline.module = internal constant [18 x i8] c"TIFFWriteScanline\00", align 16
@TIFF_BUF4WRITE = common dso_local global i32 0, align 4
@PLANARCONFIG_SEPARATE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [56 x i8] c"Can not change \22ImageLength\22 when using separate planes\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"%lu: Sample out of range, max %lu\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"Zero strips per image\00", align 1
@TIFF_CODERSETUP = common dso_local global i32 0, align 4
@TIFF_POSTENCODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @TIFFWriteScanline(%struct.TYPE_14__* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %12, align 4
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %15 = call i32 @WRITECHECKSTRIPS(%struct.TYPE_14__* %14, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @TIFFWriteScanline.module, i64 0, i64 0))
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %292

18:                                               ; preds = %4
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %20 = call i32 @BUFFERCHECK(%struct.TYPE_14__* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %18
  store i32 -1, i32* %5, align 4
  br label %292

23:                                               ; preds = %18
  %24 = load i32, i32* @TIFF_BUF4WRITE, align 4
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = or i32 %27, %24
  store i32 %28, i32* %26, align 8
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 14
  store %struct.TYPE_13__* %30, %struct.TYPE_13__** %10, align 8
  %31 = load i32, i32* %8, align 4
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp sge i32 %31, %34
  br i1 %35, label %36, label %52

36:                                               ; preds = %23
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @PLANARCONFIG_SEPARATE, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %36
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 13
  %45 = load i32, i32* %44, align 8
  %46 = call i32 (i32, i8*, i8*, ...) @TIFFErrorExt(i32 %45, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @TIFFWriteScanline.module, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %292

47:                                               ; preds = %36
  %48 = load i32, i32* %8, align 4
  %49 = add nsw i32 %48, 1
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  store i32 1, i32* %12, align 4
  br label %52

52:                                               ; preds = %47, %23
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @PLANARCONFIG_SEPARATE, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %87

58:                                               ; preds = %52
  %59 = load i32, i32* %9, align 4
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = icmp sge i32 %59, %62
  br i1 %63, label %64, label %75

64:                                               ; preds = %58
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 13
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* %9, align 4
  %69 = sext i32 %68 to i64
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = sext i32 %72 to i64
  %74 = call i32 (i32, i8*, i8*, ...) @TIFFErrorExt(i32 %67, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @TIFFWriteScanline.module, i64 0, i64 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i64 %69, i64 %73)
  store i32 -1, i32* %5, align 4
  br label %292

75:                                               ; preds = %58
  %76 = load i32, i32* %9, align 4
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = mul nsw i32 %76, %79
  %81 = load i32, i32* %8, align 4
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 4
  %84 = load i32, i32* %83, align 8
  %85 = sdiv i32 %81, %84
  %86 = add nsw i32 %80, %85
  store i32 %86, i32* %13, align 4
  br label %93

87:                                               ; preds = %52
  %88 = load i32, i32* %8, align 4
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 4
  %91 = load i32, i32* %90, align 8
  %92 = sdiv i32 %88, %91
  store i32 %92, i32* %13, align 4
  br label %93

93:                                               ; preds = %87, %75
  %94 = load i32, i32* %13, align 4
  %95 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %95, i32 0, i32 5
  %97 = load i32, i32* %96, align 4
  %98 = icmp sge i32 %94, %97
  br i1 %98, label %99, label %104

99:                                               ; preds = %93
  %100 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %101 = call i32 @TIFFGrowStrips(%struct.TYPE_14__* %100, i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @TIFFWriteScanline.module, i64 0, i64 0))
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %104, label %103

103:                                              ; preds = %99
  store i32 -1, i32* %5, align 4
  br label %292

104:                                              ; preds = %99, %93
  %105 = load i32, i32* %13, align 4
  %106 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = icmp ne i32 %105, %108
  br i1 %109, label %110, label %219

110:                                              ; preds = %104
  %111 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %112 = call i32 @TIFFFlushData(%struct.TYPE_14__* %111)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %115, label %114

114:                                              ; preds = %110
  store i32 -1, i32* %5, align 4
  br label %292

115:                                              ; preds = %110
  %116 = load i32, i32* %13, align 4
  %117 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %117, i32 0, i32 1
  store i32 %116, i32* %118, align 4
  %119 = load i32, i32* %13, align 4
  %120 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %121 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 4
  %123 = icmp sge i32 %119, %122
  br i1 %123, label %124, label %137

124:                                              ; preds = %115
  %125 = load i32, i32* %12, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %137

127:                                              ; preds = %124
  %128 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %129 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %132 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %131, i32 0, i32 4
  %133 = load i32, i32* %132, align 8
  %134 = call i32 @TIFFhowmany_32(i32 %130, i32 %133)
  %135 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %136 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %135, i32 0, i32 3
  store i32 %134, i32* %136, align 4
  br label %137

137:                                              ; preds = %127, %124, %115
  %138 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %139 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %138, i32 0, i32 3
  %140 = load i32, i32* %139, align 4
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %142, label %147

142:                                              ; preds = %137
  %143 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %144 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %143, i32 0, i32 13
  %145 = load i32, i32* %144, align 8
  %146 = call i32 (i32, i8*, i8*, ...) @TIFFErrorExt(i32 %145, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @TIFFWriteScanline.module, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %292

147:                                              ; preds = %137
  %148 = load i32, i32* %13, align 4
  %149 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %150 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %149, i32 0, i32 3
  %151 = load i32, i32* %150, align 4
  %152 = srem i32 %148, %151
  %153 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %154 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %153, i32 0, i32 4
  %155 = load i32, i32* %154, align 8
  %156 = mul nsw i32 %152, %155
  %157 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %158 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %157, i32 0, i32 2
  store i32 %156, i32* %158, align 8
  %159 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %160 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = load i32, i32* @TIFF_CODERSETUP, align 4
  %163 = and i32 %161, %162
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %165, label %179

165:                                              ; preds = %147
  %166 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %167 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %166, i32 0, i32 12
  %168 = load i32 (%struct.TYPE_14__*)*, i32 (%struct.TYPE_14__*)** %167, align 8
  %169 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %170 = call i32 %168(%struct.TYPE_14__* %169)
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %173, label %172

172:                                              ; preds = %165
  store i32 -1, i32* %5, align 4
  br label %292

173:                                              ; preds = %165
  %174 = load i32, i32* @TIFF_CODERSETUP, align 4
  %175 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %176 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = or i32 %177, %174
  store i32 %178, i32* %176, align 8
  br label %179

179:                                              ; preds = %173, %147
  %180 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %181 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %180, i32 0, i32 11
  store i64 0, i64* %181, align 8
  %182 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %183 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %182, i32 0, i32 7
  %184 = load i32, i32* %183, align 8
  %185 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %186 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %185, i32 0, i32 8
  store i32 %184, i32* %186, align 4
  %187 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %188 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %187, i32 0, i32 6
  %189 = load i64*, i64** %188, align 8
  %190 = load i32, i32* %13, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i64, i64* %189, i64 %191
  %193 = load i64, i64* %192, align 8
  %194 = icmp sgt i64 %193, 0
  br i1 %194, label %195, label %204

195:                                              ; preds = %179
  %196 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %197 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %196, i32 0, i32 6
  %198 = load i64*, i64** %197, align 8
  %199 = load i32, i32* %13, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i64, i64* %198, i64 %200
  store i64 0, i64* %201, align 8
  %202 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %203 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %202, i32 0, i32 10
  store i64 0, i64* %203, align 8
  br label %204

204:                                              ; preds = %195, %179
  %205 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %206 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %205, i32 0, i32 9
  %207 = load i32 (%struct.TYPE_14__*, i32)*, i32 (%struct.TYPE_14__*, i32)** %206, align 8
  %208 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %209 = load i32, i32* %9, align 4
  %210 = call i32 %207(%struct.TYPE_14__* %208, i32 %209)
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %213, label %212

212:                                              ; preds = %204
  store i32 -1, i32* %5, align 4
  br label %292

213:                                              ; preds = %204
  %214 = load i32, i32* @TIFF_POSTENCODE, align 4
  %215 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %216 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = or i32 %217, %214
  store i32 %218, i32* %216, align 8
  br label %219

219:                                              ; preds = %213, %104
  %220 = load i32, i32* %8, align 4
  %221 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %222 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %221, i32 0, i32 2
  %223 = load i32, i32* %222, align 8
  %224 = icmp ne i32 %220, %223
  br i1 %224, label %225, label %265

225:                                              ; preds = %219
  %226 = load i32, i32* %8, align 4
  %227 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %228 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %227, i32 0, i32 2
  %229 = load i32, i32* %228, align 8
  %230 = icmp slt i32 %226, %229
  br i1 %230, label %231, label %248

231:                                              ; preds = %225
  %232 = load i32, i32* %13, align 4
  %233 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %234 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %233, i32 0, i32 3
  %235 = load i32, i32* %234, align 4
  %236 = srem i32 %232, %235
  %237 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %238 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %237, i32 0, i32 4
  %239 = load i32, i32* %238, align 8
  %240 = mul nsw i32 %236, %239
  %241 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %242 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %241, i32 0, i32 2
  store i32 %240, i32* %242, align 8
  %243 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %244 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %243, i32 0, i32 7
  %245 = load i32, i32* %244, align 8
  %246 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %247 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %246, i32 0, i32 8
  store i32 %245, i32* %247, align 4
  br label %248

248:                                              ; preds = %231, %225
  %249 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %250 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %249, i32 0, i32 6
  %251 = load i32 (%struct.TYPE_14__*, i32)*, i32 (%struct.TYPE_14__*, i32)** %250, align 8
  %252 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %253 = load i32, i32* %8, align 4
  %254 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %255 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %254, i32 0, i32 2
  %256 = load i32, i32* %255, align 8
  %257 = sub nsw i32 %253, %256
  %258 = call i32 %251(%struct.TYPE_14__* %252, i32 %257)
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %261, label %260

260:                                              ; preds = %248
  store i32 -1, i32* %5, align 4
  br label %292

261:                                              ; preds = %248
  %262 = load i32, i32* %8, align 4
  %263 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %264 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %263, i32 0, i32 2
  store i32 %262, i32* %264, align 8
  br label %265

265:                                              ; preds = %261, %219
  %266 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %267 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %266, i32 0, i32 5
  %268 = load i32 (%struct.TYPE_14__*, i32*, i32)*, i32 (%struct.TYPE_14__*, i32*, i32)** %267, align 8
  %269 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %270 = load i8*, i8** %7, align 8
  %271 = bitcast i8* %270 to i32*
  %272 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %273 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %272, i32 0, i32 4
  %274 = load i32, i32* %273, align 8
  %275 = call i32 %268(%struct.TYPE_14__* %269, i32* %271, i32 %274)
  %276 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %277 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %276, i32 0, i32 3
  %278 = load i32 (%struct.TYPE_14__*, i32*, i32, i32)*, i32 (%struct.TYPE_14__*, i32*, i32, i32)** %277, align 8
  %279 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %280 = load i8*, i8** %7, align 8
  %281 = bitcast i8* %280 to i32*
  %282 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %283 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %282, i32 0, i32 4
  %284 = load i32, i32* %283, align 8
  %285 = load i32, i32* %9, align 4
  %286 = call i32 %278(%struct.TYPE_14__* %279, i32* %281, i32 %284, i32 %285)
  store i32 %286, i32* %11, align 4
  %287 = load i32, i32* %8, align 4
  %288 = add nsw i32 %287, 1
  %289 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %290 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %289, i32 0, i32 2
  store i32 %288, i32* %290, align 8
  %291 = load i32, i32* %11, align 4
  store i32 %291, i32* %5, align 4
  br label %292

292:                                              ; preds = %265, %260, %212, %172, %142, %114, %103, %64, %42, %22, %17
  %293 = load i32, i32* %5, align 4
  ret i32 %293
}

declare dso_local i32 @WRITECHECKSTRIPS(%struct.TYPE_14__*, i8*) #1

declare dso_local i32 @BUFFERCHECK(%struct.TYPE_14__*) #1

declare dso_local i32 @TIFFErrorExt(i32, i8*, i8*, ...) #1

declare dso_local i32 @TIFFGrowStrips(%struct.TYPE_14__*, i32, i8*) #1

declare dso_local i32 @TIFFFlushData(%struct.TYPE_14__*) #1

declare dso_local i32 @TIFFhowmany_32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
