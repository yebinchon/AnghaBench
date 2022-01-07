; ModuleID = '/home/carl/AnghaBench/mozjpeg/extr_jpegyuv.c_main.c'
source_filename = "/home/carl/AnghaBench/mozjpeg/extr_jpegyuv.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jpeg_decompress_struct = type { i32, i32, i32, i32, i32, i32 }
%struct.jpeg_error_mgr = type { i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Required arguments:\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"1. Path to JPG input file\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"2. Path to YUV output file\0A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"Invalid path to JPEG file!\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [28 x i8] c"Memory allocation failure!\0A\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"Invalid path to YUV file!\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"Error writing yuv file\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.jpeg_decompress_struct, align 4
  %9 = alloca %struct.jpeg_error_mgr, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca [16 x i8*], align 16
  %19 = alloca [8 x i8*], align 16
  %20 = alloca [8 x i8*], align 16
  %21 = alloca [3 x i8**], align 16
  %22 = alloca i8*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %28 = load i32, i32* %4, align 4
  %29 = icmp ne i32 %28, 3
  br i1 %29, label %30, label %37

30:                                               ; preds = %2
  %31 = load i32, i32* @stderr, align 4
  %32 = call i32 @fprintf(i32 %31, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* @stderr, align 4
  %34 = call i32 @fprintf(i32 %33, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %35 = load i32, i32* @stderr, align 4
  %36 = call i32 @fprintf(i32 %35, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %332

37:                                               ; preds = %2
  %38 = load i8**, i8*** %5, align 8
  %39 = getelementptr inbounds i8*, i8** %38, i64 1
  %40 = load i8*, i8** %39, align 8
  store i8* %40, i8** %6, align 8
  %41 = load i8**, i8*** %5, align 8
  %42 = getelementptr inbounds i8*, i8** %41, i64 2
  %43 = load i8*, i8** %42, align 8
  store i8* %43, i8** %7, align 8
  %44 = call i32 @jpeg_std_error(%struct.jpeg_error_mgr* %9)
  %45 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %8, i32 0, i32 5
  store i32 %44, i32* %45, align 4
  %46 = call i32 @jpeg_create_decompress(%struct.jpeg_decompress_struct* %8)
  %47 = load i8*, i8** %6, align 8
  %48 = call i32* @fopen(i8* %47, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  store i32* %48, i32** %10, align 8
  %49 = load i32*, i32** %10, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %37
  %52 = load i32, i32* @stderr, align 4
  %53 = call i32 @fprintf(i32 %52, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %332

54:                                               ; preds = %37
  %55 = load i32*, i32** %10, align 8
  %56 = call i32 @jpeg_stdio_src(%struct.jpeg_decompress_struct* %8, i32* %55)
  %57 = load i32, i32* @TRUE, align 4
  %58 = call i32 @jpeg_read_header(%struct.jpeg_decompress_struct* %8, i32 %57)
  %59 = load i32, i32* @TRUE, align 4
  %60 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %8, i32 0, i32 4
  store i32 %59, i32* %60, align 4
  %61 = load i32, i32* @FALSE, align 4
  %62 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %8, i32 0, i32 3
  store i32 %61, i32* %62, align 4
  %63 = call i32 @jpeg_start_decompress(%struct.jpeg_decompress_struct* %8)
  %64 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %8, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %11, align 4
  %66 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %8, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %12, align 4
  %68 = load i32, i32* %11, align 4
  %69 = add nsw i32 %68, 1
  %70 = ashr i32 %69, 1
  store i32 %70, i32* %13, align 4
  %71 = load i32, i32* %12, align 4
  %72 = add nsw i32 %71, 1
  %73 = ashr i32 %72, 1
  store i32 %73, i32* %14, align 4
  %74 = load i32, i32* %11, align 4
  %75 = load i32, i32* %12, align 4
  %76 = mul nsw i32 %74, %75
  %77 = load i32, i32* %13, align 4
  %78 = mul nsw i32 2, %77
  %79 = load i32, i32* %14, align 4
  %80 = mul nsw i32 %78, %79
  %81 = add nsw i32 %76, %80
  store i32 %81, i32* %16, align 4
  %82 = load i32, i32* %16, align 4
  %83 = call i8* @malloc(i32 %82)
  store i8* %83, i8** %22, align 8
  %84 = load i8*, i8** %22, align 8
  %85 = icmp ne i8* %84, null
  br i1 %85, label %91, label %86

86:                                               ; preds = %54
  %87 = load i32*, i32** %10, align 8
  %88 = call i32 @fclose(i32* %87)
  %89 = load i32, i32* @stderr, align 4
  %90 = call i32 @fprintf(i32 %89, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %332

91:                                               ; preds = %54
  %92 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %8, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = add nsw i32 %93, 15
  %95 = and i32 %94, -16
  store i32 %95, i32* %15, align 4
  %96 = load i32, i32* %15, align 4
  %97 = mul nsw i32 %96, 16
  %98 = load i32, i32* %15, align 4
  %99 = sdiv i32 %98, 2
  %100 = mul nsw i32 2, %99
  %101 = mul nsw i32 %100, 8
  %102 = add nsw i32 %97, %101
  %103 = call i8* @malloc(i32 %102)
  store i8* %103, i8** %17, align 8
  %104 = load i8*, i8** %17, align 8
  %105 = icmp ne i8* %104, null
  br i1 %105, label %113, label %106

106:                                              ; preds = %91
  %107 = load i32*, i32** %10, align 8
  %108 = call i32 @fclose(i32* %107)
  %109 = load i8*, i8** %22, align 8
  %110 = call i32 @free(i8* %109)
  %111 = load i32, i32* @stderr, align 4
  %112 = call i32 @fprintf(i32 %111, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %332

113:                                              ; preds = %91
  %114 = getelementptr inbounds [16 x i8*], [16 x i8*]* %18, i64 0, i64 0
  %115 = getelementptr inbounds [3 x i8**], [3 x i8**]* %21, i64 0, i64 0
  store i8** %114, i8*** %115, align 16
  %116 = getelementptr inbounds [8 x i8*], [8 x i8*]* %19, i64 0, i64 0
  %117 = getelementptr inbounds [3 x i8**], [3 x i8**]* %21, i64 0, i64 1
  store i8** %116, i8*** %117, align 8
  %118 = getelementptr inbounds [8 x i8*], [8 x i8*]* %20, i64 0, i64 0
  %119 = getelementptr inbounds [3 x i8**], [3 x i8**]* %21, i64 0, i64 2
  store i8** %118, i8*** %119, align 16
  store i32 0, i32* %24, align 4
  br label %120

120:                                              ; preds = %133, %113
  %121 = load i32, i32* %24, align 4
  %122 = icmp slt i32 %121, 16
  br i1 %122, label %123, label %136

123:                                              ; preds = %120
  %124 = load i8*, i8** %17, align 8
  %125 = load i32, i32* %15, align 4
  %126 = load i32, i32* %24, align 4
  %127 = mul nsw i32 %125, %126
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i8, i8* %124, i64 %128
  %130 = load i32, i32* %24, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds [16 x i8*], [16 x i8*]* %18, i64 0, i64 %131
  store i8* %129, i8** %132, align 8
  br label %133

133:                                              ; preds = %123
  %134 = load i32, i32* %24, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %24, align 4
  br label %120

136:                                              ; preds = %120
  store i32 0, i32* %24, align 4
  br label %137

137:                                              ; preds = %168, %136
  %138 = load i32, i32* %24, align 4
  %139 = icmp slt i32 %138, 8
  br i1 %139, label %140, label %171

140:                                              ; preds = %137
  %141 = load i8*, i8** %17, align 8
  %142 = load i32, i32* %15, align 4
  %143 = mul nsw i32 %142, 16
  %144 = load i32, i32* %15, align 4
  %145 = sdiv i32 %144, 2
  %146 = load i32, i32* %24, align 4
  %147 = mul nsw i32 %145, %146
  %148 = add nsw i32 %143, %147
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i8, i8* %141, i64 %149
  %151 = load i32, i32* %24, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds [8 x i8*], [8 x i8*]* %19, i64 0, i64 %152
  store i8* %150, i8** %153, align 8
  %154 = load i8*, i8** %17, align 8
  %155 = load i32, i32* %15, align 4
  %156 = mul nsw i32 %155, 16
  %157 = load i32, i32* %15, align 4
  %158 = sdiv i32 %157, 2
  %159 = load i32, i32* %24, align 4
  %160 = add nsw i32 8, %159
  %161 = mul nsw i32 %158, %160
  %162 = add nsw i32 %156, %161
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i8, i8* %154, i64 %163
  %165 = load i32, i32* %24, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds [8 x i8*], [8 x i8*]* %20, i64 0, i64 %166
  store i8* %164, i8** %167, align 8
  br label %168

168:                                              ; preds = %140
  %169 = load i32, i32* %24, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %24, align 4
  br label %137

171:                                              ; preds = %137
  br label %172

172:                                              ; preds = %301, %171
  %173 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %8, i32 0, i32 2
  %174 = load i32, i32* %173, align 4
  %175 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %8, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = icmp slt i32 %174, %176
  br i1 %177, label %178, label %302

178:                                              ; preds = %172
  %179 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %8, i32 0, i32 2
  %180 = load i32, i32* %179, align 4
  store i32 %180, i32* %26, align 4
  %181 = load i32, i32* %26, align 4
  %182 = add nsw i32 %181, 1
  %183 = ashr i32 %182, 1
  store i32 %183, i32* %27, align 4
  %184 = getelementptr inbounds [3 x i8**], [3 x i8**]* %21, i64 0, i64 0
  %185 = call i32 @jpeg_read_raw_data(%struct.jpeg_decompress_struct* %8, i8*** %184, i32 16)
  store i32 0, i32* %24, align 4
  br label %186

186:                                              ; preds = %225, %178
  %187 = load i32, i32* %24, align 4
  %188 = icmp slt i32 %187, 16
  br i1 %188, label %189, label %195

189:                                              ; preds = %186
  %190 = load i32, i32* %26, align 4
  %191 = load i32, i32* %24, align 4
  %192 = add nsw i32 %190, %191
  %193 = load i32, i32* %12, align 4
  %194 = icmp slt i32 %192, %193
  br label %195

195:                                              ; preds = %189, %186
  %196 = phi i1 [ false, %186 ], [ %194, %189 ]
  br i1 %196, label %197, label %228

197:                                              ; preds = %195
  store i32 0, i32* %23, align 4
  br label %198

198:                                              ; preds = %221, %197
  %199 = load i32, i32* %23, align 4
  %200 = load i32, i32* %11, align 4
  %201 = icmp slt i32 %199, %200
  br i1 %201, label %202, label %224

202:                                              ; preds = %198
  %203 = load i32, i32* %24, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds [16 x i8*], [16 x i8*]* %18, i64 0, i64 %204
  %206 = load i8*, i8** %205, align 8
  %207 = load i32, i32* %23, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i8, i8* %206, i64 %208
  %210 = load i8, i8* %209, align 1
  %211 = load i8*, i8** %22, align 8
  %212 = load i32, i32* %11, align 4
  %213 = load i32, i32* %26, align 4
  %214 = load i32, i32* %24, align 4
  %215 = add nsw i32 %213, %214
  %216 = mul nsw i32 %212, %215
  %217 = load i32, i32* %23, align 4
  %218 = add nsw i32 %216, %217
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds i8, i8* %211, i64 %219
  store i8 %210, i8* %220, align 1
  br label %221

221:                                              ; preds = %202
  %222 = load i32, i32* %23, align 4
  %223 = add nsw i32 %222, 1
  store i32 %223, i32* %23, align 4
  br label %198

224:                                              ; preds = %198
  br label %225

225:                                              ; preds = %224
  %226 = load i32, i32* %24, align 4
  %227 = add nsw i32 %226, 1
  store i32 %227, i32* %24, align 4
  br label %186

228:                                              ; preds = %195
  store i32 0, i32* %24, align 4
  br label %229

229:                                              ; preds = %298, %228
  %230 = load i32, i32* %24, align 4
  %231 = icmp slt i32 %230, 8
  br i1 %231, label %232, label %238

232:                                              ; preds = %229
  %233 = load i32, i32* %27, align 4
  %234 = load i32, i32* %24, align 4
  %235 = add nsw i32 %233, %234
  %236 = load i32, i32* %14, align 4
  %237 = icmp slt i32 %235, %236
  br label %238

238:                                              ; preds = %232, %229
  %239 = phi i1 [ false, %229 ], [ %237, %232 ]
  br i1 %239, label %240, label %301

240:                                              ; preds = %238
  store i32 0, i32* %23, align 4
  br label %241

241:                                              ; preds = %294, %240
  %242 = load i32, i32* %23, align 4
  %243 = load i32, i32* %13, align 4
  %244 = icmp slt i32 %242, %243
  br i1 %244, label %245, label %297

245:                                              ; preds = %241
  %246 = load i32, i32* %24, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds [8 x i8*], [8 x i8*]* %19, i64 0, i64 %247
  %249 = load i8*, i8** %248, align 8
  %250 = load i32, i32* %23, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds i8, i8* %249, i64 %251
  %253 = load i8, i8* %252, align 1
  %254 = load i8*, i8** %22, align 8
  %255 = load i32, i32* %11, align 4
  %256 = load i32, i32* %12, align 4
  %257 = mul nsw i32 %255, %256
  %258 = load i32, i32* %13, align 4
  %259 = load i32, i32* %27, align 4
  %260 = load i32, i32* %24, align 4
  %261 = add nsw i32 %259, %260
  %262 = mul nsw i32 %258, %261
  %263 = add nsw i32 %257, %262
  %264 = load i32, i32* %23, align 4
  %265 = add nsw i32 %263, %264
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds i8, i8* %254, i64 %266
  store i8 %253, i8* %267, align 1
  %268 = load i32, i32* %24, align 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds [8 x i8*], [8 x i8*]* %20, i64 0, i64 %269
  %271 = load i8*, i8** %270, align 8
  %272 = load i32, i32* %23, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds i8, i8* %271, i64 %273
  %275 = load i8, i8* %274, align 1
  %276 = load i8*, i8** %22, align 8
  %277 = load i32, i32* %11, align 4
  %278 = load i32, i32* %12, align 4
  %279 = mul nsw i32 %277, %278
  %280 = load i32, i32* %13, align 4
  %281 = load i32, i32* %14, align 4
  %282 = mul nsw i32 %280, %281
  %283 = add nsw i32 %279, %282
  %284 = load i32, i32* %13, align 4
  %285 = load i32, i32* %27, align 4
  %286 = load i32, i32* %24, align 4
  %287 = add nsw i32 %285, %286
  %288 = mul nsw i32 %284, %287
  %289 = add nsw i32 %283, %288
  %290 = load i32, i32* %23, align 4
  %291 = add nsw i32 %289, %290
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds i8, i8* %276, i64 %292
  store i8 %275, i8* %293, align 1
  br label %294

294:                                              ; preds = %245
  %295 = load i32, i32* %23, align 4
  %296 = add nsw i32 %295, 1
  store i32 %296, i32* %23, align 4
  br label %241

297:                                              ; preds = %241
  br label %298

298:                                              ; preds = %297
  %299 = load i32, i32* %24, align 4
  %300 = add nsw i32 %299, 1
  store i32 %300, i32* %24, align 4
  br label %229

301:                                              ; preds = %238
  br label %172

302:                                              ; preds = %172
  %303 = call i32 @jpeg_finish_decompress(%struct.jpeg_decompress_struct* %8)
  %304 = call i32 @jpeg_destroy_decompress(%struct.jpeg_decompress_struct* %8)
  %305 = load i32*, i32** %10, align 8
  %306 = call i32 @fclose(i32* %305)
  %307 = load i8*, i8** %17, align 8
  %308 = call i32 @free(i8* %307)
  %309 = load i8*, i8** %7, align 8
  %310 = call i32* @fopen(i8* %309, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  store i32* %310, i32** %25, align 8
  %311 = load i32*, i32** %25, align 8
  %312 = icmp ne i32* %311, null
  br i1 %312, label %318, label %313

313:                                              ; preds = %302
  %314 = load i32, i32* @stderr, align 4
  %315 = call i32 @fprintf(i32 %314, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0))
  %316 = load i8*, i8** %22, align 8
  %317 = call i32 @free(i8* %316)
  store i32 1, i32* %3, align 4
  br label %332

318:                                              ; preds = %302
  %319 = load i8*, i8** %22, align 8
  %320 = load i32, i32* %16, align 4
  %321 = load i32*, i32** %25, align 8
  %322 = call i32 @fwrite(i8* %319, i32 %320, i32 1, i32* %321)
  %323 = icmp ne i32 %322, 1
  br i1 %323, label %324, label %327

324:                                              ; preds = %318
  %325 = load i32, i32* @stderr, align 4
  %326 = call i32 @fprintf(i32 %325, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0))
  br label %327

327:                                              ; preds = %324, %318
  %328 = load i32*, i32** %25, align 8
  %329 = call i32 @fclose(i32* %328)
  %330 = load i8*, i8** %22, align 8
  %331 = call i32 @free(i8* %330)
  store i32 0, i32* %3, align 4
  br label %332

332:                                              ; preds = %327, %313, %106, %86, %51, %30
  %333 = load i32, i32* %3, align 4
  ret i32 %333
}

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @jpeg_std_error(%struct.jpeg_error_mgr*) #1

declare dso_local i32 @jpeg_create_decompress(%struct.jpeg_decompress_struct*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @jpeg_stdio_src(%struct.jpeg_decompress_struct*, i32*) #1

declare dso_local i32 @jpeg_read_header(%struct.jpeg_decompress_struct*, i32) #1

declare dso_local i32 @jpeg_start_decompress(%struct.jpeg_decompress_struct*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @jpeg_read_raw_data(%struct.jpeg_decompress_struct*, i8***, i32) #1

declare dso_local i32 @jpeg_finish_decompress(%struct.jpeg_decompress_struct*) #1

declare dso_local i32 @jpeg_destroy_decompress(%struct.jpeg_decompress_struct*) #1

declare dso_local i32 @fwrite(i8*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
