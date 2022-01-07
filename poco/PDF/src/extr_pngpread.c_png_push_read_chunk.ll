; ModuleID = '/home/carl/AnghaBench/poco/PDF/src/extr_pngpread.c_png_push_read_chunk.c'
source_filename = "/home/carl/AnghaBench/poco/PDF/src/extr_pngpread.c_png_push_read_chunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_36__ = type { i32, i32, i64, i64, i64, i32, i32, %struct.TYPE_35__, i64, i32 }
%struct.TYPE_35__ = type { i32, i64 }

@PNG_HAVE_CHUNK_HEADER = common dso_local global i32 0, align 4
@png_IDAT = common dso_local global i32 0, align 4
@PNG_AFTER_IDAT = common dso_local global i32 0, align 4
@PNG_HAVE_CHUNK_AFTER_IDAT = common dso_local global i32 0, align 4
@png_IHDR = common dso_local global i32 0, align 4
@png_IEND = common dso_local global i32 0, align 4
@PNG_READ_DONE_MODE = common dso_local global i32 0, align 4
@png_PLTE = common dso_local global i32 0, align 4
@PNG_HAVE_IHDR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Missing IHDR before IDAT\00", align 1
@PNG_COLOR_TYPE_PALETTE = common dso_local global i64 0, align 8
@PNG_HAVE_PLTE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Missing PLTE before IDAT\00", align 1
@PNG_HAVE_IDAT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"Too many IDAT's found\00", align 1
@PNG_READ_IDAT_MODE = common dso_local global i32 0, align 4
@png_bKGD = common dso_local global i32 0, align 4
@png_cHRM = common dso_local global i32 0, align 4
@png_gAMA = common dso_local global i32 0, align 4
@png_hIST = common dso_local global i32 0, align 4
@png_iCCP = common dso_local global i32 0, align 4
@png_iTXt = common dso_local global i32 0, align 4
@png_oFFs = common dso_local global i32 0, align 4
@png_pCAL = common dso_local global i32 0, align 4
@png_pHYs = common dso_local global i32 0, align 4
@png_sBIT = common dso_local global i32 0, align 4
@png_sCAL = common dso_local global i32 0, align 4
@png_sPLT = common dso_local global i32 0, align 4
@png_sRGB = common dso_local global i32 0, align 4
@png_tEXt = common dso_local global i32 0, align 4
@png_tIME = common dso_local global i32 0, align 4
@png_tRNS = common dso_local global i32 0, align 4
@png_zTXt = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @png_push_read_chunk(%struct.TYPE_36__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_36__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [4 x i32], align 16
  store %struct.TYPE_36__* %0, %struct.TYPE_36__** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @PNG_HAVE_CHUNK_HEADER, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %41, label %12

12:                                               ; preds = %2
  %13 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = icmp slt i32 %15, 8
  br i1 %16, label %17, label %20

17:                                               ; preds = %12
  %18 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %19 = call i32 @png_push_save_buffer(%struct.TYPE_36__* %18)
  br label %274

20:                                               ; preds = %12
  %21 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %22 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0
  %23 = call i32 @png_push_fill_buffer(%struct.TYPE_36__* %21, i32* %22, i32 4)
  %24 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %25 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0
  %26 = call i64 @png_get_uint_31(%struct.TYPE_36__* %24, i32* %25)
  %27 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %27, i32 0, i32 2
  store i64 %26, i64* %28, align 8
  %29 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %30 = call i32 @png_reset_crc(%struct.TYPE_36__* %29)
  %31 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %32 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %32, i32 0, i32 5
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @png_crc_read(%struct.TYPE_36__* %31, i32 %34, i32 4)
  %36 = load i32, i32* @PNG_HAVE_CHUNK_HEADER, align 4
  %37 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = or i32 %39, %36
  store i32 %40, i32* %38, align 8
  br label %41

41:                                               ; preds = %20, %2
  %42 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %42, i32 0, i32 5
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @png_IDAT, align 4
  %46 = call i32 @png_memcmp(i32 %44, i32 %45, i32 4)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %62, label %48

48:                                               ; preds = %41
  %49 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @PNG_AFTER_IDAT, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %48
  %56 = load i32, i32* @PNG_HAVE_CHUNK_AFTER_IDAT, align 4
  %57 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = or i32 %59, %56
  store i32 %60, i32* %58, align 8
  br label %61

61:                                               ; preds = %55, %48
  br label %62

62:                                               ; preds = %61, %41
  %63 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %63, i32 0, i32 5
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @png_IHDR, align 4
  %67 = call i32 @png_memcmp(i32 %65, i32 %66, i32 4)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %89, label %69

69:                                               ; preds = %62
  %70 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = add nsw i64 %72, 4
  %74 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = sext i32 %76 to i64
  %78 = icmp sgt i64 %73, %77
  br i1 %78, label %79, label %82

79:                                               ; preds = %69
  %80 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %81 = call i32 @png_push_save_buffer(%struct.TYPE_36__* %80)
  br label %274

82:                                               ; preds = %69
  %83 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %84 = load i32, i32* %4, align 4
  %85 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = call i32 @png_handle_IHDR(%struct.TYPE_36__* %83, i32 %84, i64 %87)
  br label %267

89:                                               ; preds = %62
  %90 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %90, i32 0, i32 5
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @png_IEND, align 4
  %94 = call i32 @png_memcmp(i32 %92, i32 %93, i32 4)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %122, label %96

96:                                               ; preds = %89
  %97 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = add nsw i64 %99, 4
  %101 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = sext i32 %103 to i64
  %105 = icmp sgt i64 %100, %104
  br i1 %105, label %106, label %109

106:                                              ; preds = %96
  %107 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %108 = call i32 @png_push_save_buffer(%struct.TYPE_36__* %107)
  br label %274

109:                                              ; preds = %96
  %110 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %111 = load i32, i32* %4, align 4
  %112 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %112, i32 0, i32 2
  %114 = load i64, i64* %113, align 8
  %115 = call i32 @png_handle_IEND(%struct.TYPE_36__* %110, i32 %111, i64 %114)
  %116 = load i32, i32* @PNG_READ_DONE_MODE, align 4
  %117 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %117, i32 0, i32 9
  store i32 %116, i32* %118, align 8
  %119 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %120 = load i32, i32* %4, align 4
  %121 = call i32 @png_push_have_end(%struct.TYPE_36__* %119, i32 %120)
  br label %266

122:                                              ; preds = %89
  %123 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %124 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %123, i32 0, i32 5
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* @png_PLTE, align 4
  %127 = call i32 @png_memcmp(i32 %125, i32 %126, i32 4)
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %149, label %129

129:                                              ; preds = %122
  %130 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %130, i32 0, i32 2
  %132 = load i64, i64* %131, align 8
  %133 = add nsw i64 %132, 4
  %134 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %135 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = sext i32 %136 to i64
  %138 = icmp sgt i64 %133, %137
  br i1 %138, label %139, label %142

139:                                              ; preds = %129
  %140 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %141 = call i32 @png_push_save_buffer(%struct.TYPE_36__* %140)
  br label %274

142:                                              ; preds = %129
  %143 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %144 = load i32, i32* %4, align 4
  %145 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %146 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %145, i32 0, i32 2
  %147 = load i64, i64* %146, align 8
  %148 = call i32 @png_handle_PLTE(%struct.TYPE_36__* %143, i32 %144, i64 %147)
  br label %265

149:                                              ; preds = %122
  %150 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %151 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %150, i32 0, i32 5
  %152 = load i32, i32* %151, align 8
  %153 = load i32, i32* @png_IDAT, align 4
  %154 = call i32 @png_memcmp(i32 %152, i32 %153, i32 4)
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %244, label %156

156:                                              ; preds = %149
  %157 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %158 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = load i32, i32* @PNG_HAVE_IHDR, align 4
  %161 = and i32 %159, %160
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %166, label %163

163:                                              ; preds = %156
  %164 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %165 = call i32 @png_error(%struct.TYPE_36__* %164, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %183

166:                                              ; preds = %156
  %167 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %168 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %167, i32 0, i32 3
  %169 = load i64, i64* %168, align 8
  %170 = load i64, i64* @PNG_COLOR_TYPE_PALETTE, align 8
  %171 = icmp eq i64 %169, %170
  br i1 %171, label %172, label %182

172:                                              ; preds = %166
  %173 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %174 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = load i32, i32* @PNG_HAVE_PLTE, align 4
  %177 = and i32 %175, %176
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %182, label %179

179:                                              ; preds = %172
  %180 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %181 = call i32 @png_error(%struct.TYPE_36__* %180, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %182

182:                                              ; preds = %179, %172, %166
  br label %183

183:                                              ; preds = %182, %163
  %184 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %185 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = load i32, i32* @PNG_HAVE_IDAT, align 4
  %188 = and i32 %186, %187
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %215

190:                                              ; preds = %183
  %191 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %192 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = load i32, i32* @PNG_HAVE_CHUNK_AFTER_IDAT, align 4
  %195 = and i32 %193, %194
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %204, label %197

197:                                              ; preds = %190
  %198 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %199 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %198, i32 0, i32 2
  %200 = load i64, i64* %199, align 8
  %201 = icmp eq i64 %200, 0
  br i1 %201, label %202, label %203

202:                                              ; preds = %197
  br label %274

203:                                              ; preds = %197
  br label %204

204:                                              ; preds = %203, %190
  %205 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %206 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = load i32, i32* @PNG_AFTER_IDAT, align 4
  %209 = and i32 %207, %208
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %214

211:                                              ; preds = %204
  %212 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %213 = call i32 @png_error(%struct.TYPE_36__* %212, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %214

214:                                              ; preds = %211, %204
  br label %215

215:                                              ; preds = %214, %183
  %216 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %217 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %216, i32 0, i32 2
  %218 = load i64, i64* %217, align 8
  %219 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %220 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %219, i32 0, i32 4
  store i64 %218, i64* %220, align 8
  %221 = load i32, i32* @PNG_HAVE_IDAT, align 4
  %222 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %223 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = or i32 %224, %221
  store i32 %225, i32* %223, align 8
  %226 = load i32, i32* @PNG_READ_IDAT_MODE, align 4
  %227 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %228 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %227, i32 0, i32 9
  store i32 %226, i32* %228, align 8
  %229 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %230 = load i32, i32* %4, align 4
  %231 = call i32 @png_push_have_info(%struct.TYPE_36__* %229, i32 %230)
  %232 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %233 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %232, i32 0, i32 8
  %234 = load i64, i64* %233, align 8
  %235 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %236 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %235, i32 0, i32 7
  %237 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %236, i32 0, i32 1
  store i64 %234, i64* %237, align 8
  %238 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %239 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %238, i32 0, i32 6
  %240 = load i32, i32* %239, align 4
  %241 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %242 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %241, i32 0, i32 7
  %243 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %242, i32 0, i32 0
  store i32 %240, i32* %243, align 8
  br label %274

244:                                              ; preds = %149
  %245 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %246 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %245, i32 0, i32 2
  %247 = load i64, i64* %246, align 8
  %248 = add nsw i64 %247, 4
  %249 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %250 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %249, i32 0, i32 1
  %251 = load i32, i32* %250, align 4
  %252 = sext i32 %251 to i64
  %253 = icmp sgt i64 %248, %252
  br i1 %253, label %254, label %257

254:                                              ; preds = %244
  %255 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %256 = call i32 @png_push_save_buffer(%struct.TYPE_36__* %255)
  br label %274

257:                                              ; preds = %244
  %258 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %259 = load i32, i32* %4, align 4
  %260 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %261 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %260, i32 0, i32 2
  %262 = load i64, i64* %261, align 8
  %263 = call i32 @png_push_handle_unknown(%struct.TYPE_36__* %258, i32 %259, i64 %262)
  br label %264

264:                                              ; preds = %257
  br label %265

265:                                              ; preds = %264, %142
  br label %266

266:                                              ; preds = %265, %109
  br label %267

267:                                              ; preds = %266, %82
  %268 = load i32, i32* @PNG_HAVE_CHUNK_HEADER, align 4
  %269 = xor i32 %268, -1
  %270 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %271 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 8
  %273 = and i32 %272, %269
  store i32 %273, i32* %271, align 8
  br label %274

274:                                              ; preds = %267, %254, %215, %202, %139, %106, %79, %17
  ret void
}

declare dso_local i32 @png_push_save_buffer(%struct.TYPE_36__*) #1

declare dso_local i32 @png_push_fill_buffer(%struct.TYPE_36__*, i32*, i32) #1

declare dso_local i64 @png_get_uint_31(%struct.TYPE_36__*, i32*) #1

declare dso_local i32 @png_reset_crc(%struct.TYPE_36__*) #1

declare dso_local i32 @png_crc_read(%struct.TYPE_36__*, i32, i32) #1

declare dso_local i32 @png_memcmp(i32, i32, i32) #1

declare dso_local i32 @png_handle_IHDR(%struct.TYPE_36__*, i32, i64) #1

declare dso_local i32 @png_handle_IEND(%struct.TYPE_36__*, i32, i64) #1

declare dso_local i32 @png_push_have_end(%struct.TYPE_36__*, i32) #1

declare dso_local i32 @png_handle_PLTE(%struct.TYPE_36__*, i32, i64) #1

declare dso_local i32 @png_error(%struct.TYPE_36__*, i8*) #1

declare dso_local i32 @png_push_have_info(%struct.TYPE_36__*, i32) #1

declare dso_local i32 @png_push_handle_unknown(%struct.TYPE_36__*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
