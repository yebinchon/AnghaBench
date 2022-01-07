; ModuleID = '/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_string.c_kull_m_string_stringToFileTime.c'
source_filename = "/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_string.c_kull_m_string_stringToFileTime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i64, i64, i64, i64, i64, i64, i64, i64 }

@FALSE = common dso_local global i32 0, align 4
@STRING_TO_FILETIME_FORMATS = common dso_local global %struct.TYPE_8__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kull_m_string_stringToFileTime(i32 %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca %struct.TYPE_7__, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca [6 x i64], align 16
  %13 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i64* %1, i64** %4, align 8
  %14 = load i32, i32* @FALSE, align 4
  store i32 %14, i32* %5, align 4
  %15 = bitcast [6 x i64]* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %15, i8 0, i64 48, i1 false)
  store i64 0, i64* %11, align 8
  br label %16

16:                                               ; preds = %207, %2
  %17 = load i64, i64* %11, align 8
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** @STRING_TO_FILETIME_FORMATS, align 8
  %19 = call i64 @ARRAYSIZE(%struct.TYPE_8__* %18)
  %20 = icmp slt i64 %17, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %16
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  br label %25

25:                                               ; preds = %21, %16
  %26 = phi i1 [ false, %16 ], [ %24, %21 ]
  br i1 %26, label %27, label %210

27:                                               ; preds = %25
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** @STRING_TO_FILETIME_FORMATS, align 8
  %29 = load i64, i64* %11, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i64 %29
  store %struct.TYPE_8__* %30, %struct.TYPE_8__** %6, align 8
  %31 = getelementptr inbounds [6 x i64], [6 x i64]* %12, i64 0, i64 0
  %32 = call i32 @RtlZeroMemory(i64* %31, i32 48)
  %33 = load i32, i32* %3, align 4
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 7
  %36 = load i32, i32* %35, align 4
  %37 = getelementptr inbounds [6 x i64], [6 x i64]* %12, i64 0, i64 0
  %38 = getelementptr inbounds i64, i64* %37, i64 0
  %39 = getelementptr inbounds [6 x i64], [6 x i64]* %12, i64 0, i64 0
  %40 = getelementptr inbounds i64, i64* %39, i64 1
  %41 = getelementptr inbounds [6 x i64], [6 x i64]* %12, i64 0, i64 0
  %42 = getelementptr inbounds i64, i64* %41, i64 2
  %43 = getelementptr inbounds [6 x i64], [6 x i64]* %12, i64 0, i64 0
  %44 = getelementptr inbounds i64, i64* %43, i64 3
  %45 = getelementptr inbounds [6 x i64], [6 x i64]* %12, i64 0, i64 0
  %46 = getelementptr inbounds i64, i64* %45, i64 4
  %47 = getelementptr inbounds [6 x i64], [6 x i64]* %12, i64 0, i64 0
  %48 = getelementptr inbounds i64, i64* %47, i64 5
  %49 = call i32 @swscanf_s(i32 %33, i32 %36, i64* %38, i64* %40, i64* %42, i64* %44, i64* %46, i64* %48)
  store i32 %49, i32* %13, align 4
  %50 = load i32, i32* %13, align 4
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = icmp sge i32 %50, %53
  br i1 %54, label %55, label %206

55:                                               ; preds = %27
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %80

60:                                               ; preds = %55
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %13, align 4
  %65 = icmp sle i32 %63, %64
  br i1 %65, label %66, label %80

66:                                               ; preds = %60
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = sub nsw i32 %69, 1
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [6 x i64], [6 x i64]* %12, i64 0, i64 %71
  %73 = load i64, i64* %72, align 8
  %74 = icmp sge i64 %73, 1900
  %75 = zext i1 %74 to i32
  store i32 %75, i32* %5, align 4
  %76 = load i32, i32* %5, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %66
  br label %207

79:                                               ; preds = %66
  br label %80

80:                                               ; preds = %79, %60, %55
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %105

85:                                               ; preds = %80
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* %13, align 4
  %90 = icmp sle i32 %88, %89
  br i1 %90, label %91, label %105

91:                                               ; preds = %85
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = sub nsw i32 %94, 1
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds [6 x i64], [6 x i64]* %12, i64 0, i64 %96
  %98 = load i64, i64* %97, align 8
  %99 = icmp sle i64 %98, 12
  %100 = zext i1 %99 to i32
  store i32 %100, i32* %5, align 4
  %101 = load i32, i32* %5, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %104, label %103

103:                                              ; preds = %91
  br label %207

104:                                              ; preds = %91
  br label %105

105:                                              ; preds = %104, %85, %80
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %130

110:                                              ; preds = %105
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* %13, align 4
  %115 = icmp sle i32 %113, %114
  br i1 %115, label %116, label %130

116:                                              ; preds = %110
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 4
  %120 = sub nsw i32 %119, 1
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds [6 x i64], [6 x i64]* %12, i64 0, i64 %121
  %123 = load i64, i64* %122, align 8
  %124 = icmp sle i64 %123, 31
  %125 = zext i1 %124 to i32
  store i32 %125, i32* %5, align 4
  %126 = load i32, i32* %5, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %129, label %128

128:                                              ; preds = %116
  br label %207

129:                                              ; preds = %116
  br label %130

130:                                              ; preds = %129, %110, %105
  %131 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 4
  %133 = load i32, i32* %132, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %155

135:                                              ; preds = %130
  %136 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 4
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* %13, align 4
  %140 = icmp sle i32 %138, %139
  br i1 %140, label %141, label %155

141:                                              ; preds = %135
  %142 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 4
  %144 = load i32, i32* %143, align 4
  %145 = sub nsw i32 %144, 1
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds [6 x i64], [6 x i64]* %12, i64 0, i64 %146
  %148 = load i64, i64* %147, align 8
  %149 = icmp sle i64 %148, 23
  %150 = zext i1 %149 to i32
  store i32 %150, i32* %5, align 4
  %151 = load i32, i32* %5, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %154, label %153

153:                                              ; preds = %141
  br label %207

154:                                              ; preds = %141
  br label %155

155:                                              ; preds = %154, %135, %130
  %156 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %157 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %156, i32 0, i32 5
  %158 = load i32, i32* %157, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %180

160:                                              ; preds = %155
  %161 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %161, i32 0, i32 5
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* %13, align 4
  %165 = icmp sle i32 %163, %164
  br i1 %165, label %166, label %180

166:                                              ; preds = %160
  %167 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %167, i32 0, i32 5
  %169 = load i32, i32* %168, align 4
  %170 = sub nsw i32 %169, 1
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds [6 x i64], [6 x i64]* %12, i64 0, i64 %171
  %173 = load i64, i64* %172, align 8
  %174 = icmp sle i64 %173, 59
  %175 = zext i1 %174 to i32
  store i32 %175, i32* %5, align 4
  %176 = load i32, i32* %5, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %179, label %178

178:                                              ; preds = %166
  br label %207

179:                                              ; preds = %166
  br label %180

180:                                              ; preds = %179, %160, %155
  %181 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %182 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %181, i32 0, i32 6
  %183 = load i32, i32* %182, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %205

185:                                              ; preds = %180
  %186 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %187 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %186, i32 0, i32 6
  %188 = load i32, i32* %187, align 4
  %189 = load i32, i32* %13, align 4
  %190 = icmp sle i32 %188, %189
  br i1 %190, label %191, label %205

191:                                              ; preds = %185
  %192 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %193 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %192, i32 0, i32 6
  %194 = load i32, i32* %193, align 4
  %195 = sub nsw i32 %194, 1
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds [6 x i64], [6 x i64]* %12, i64 0, i64 %196
  %198 = load i64, i64* %197, align 8
  %199 = icmp sle i64 %198, 59
  %200 = zext i1 %199 to i32
  store i32 %200, i32* %5, align 4
  %201 = load i32, i32* %5, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %204, label %203

203:                                              ; preds = %191
  br label %207

204:                                              ; preds = %191
  br label %205

205:                                              ; preds = %204, %185, %180
  br label %206

206:                                              ; preds = %205, %27
  br label %207

207:                                              ; preds = %206, %203, %178, %153, %128, %103, %78
  %208 = load i64, i64* %11, align 8
  %209 = add nsw i64 %208, 1
  store i64 %209, i64* %11, align 8
  br label %16

210:                                              ; preds = %25
  %211 = load i32, i32* %5, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %360

213:                                              ; preds = %210
  %214 = load i32, i32* @FALSE, align 4
  store i32 %214, i32* %5, align 4
  %215 = load i64, i64* %11, align 8
  %216 = add nsw i64 %215, -1
  store i64 %216, i64* %11, align 8
  %217 = call i32 @GetSystemTimeAsFileTime(i64* %8)
  %218 = call i64 @FileTimeToLocalFileTime(i64* %8, i64* %9)
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %220, label %359

220:                                              ; preds = %213
  %221 = load i64, i64* %9, align 8
  %222 = load i64, i64* %8, align 8
  %223 = sub nsw i64 %221, %222
  store i64 %223, i64* %10, align 8
  %224 = call i64 @FileTimeToSystemTime(i64* %9, %struct.TYPE_7__* %7)
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %226, label %358

226:                                              ; preds = %220
  %227 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 7
  store i64 0, i64* %227, align 8
  %228 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 6
  store i64 0, i64* %228, align 8
  %229 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %230 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %229, i32 0, i32 1
  %231 = load i32, i32* %230, align 4
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %248

233:                                              ; preds = %226
  %234 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %235 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %234, i32 0, i32 1
  %236 = load i32, i32* %235, align 4
  %237 = load i32, i32* %13, align 4
  %238 = icmp sle i32 %236, %237
  br i1 %238, label %239, label %248

239:                                              ; preds = %233
  %240 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %241 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %240, i32 0, i32 1
  %242 = load i32, i32* %241, align 4
  %243 = sub nsw i32 %242, 1
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds [6 x i64], [6 x i64]* %12, i64 0, i64 %244
  %246 = load i64, i64* %245, align 8
  %247 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 5
  store i64 %246, i64* %247, align 8
  br label %248

248:                                              ; preds = %239, %233, %226
  %249 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %250 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %249, i32 0, i32 2
  %251 = load i32, i32* %250, align 4
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %268

253:                                              ; preds = %248
  %254 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %255 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %254, i32 0, i32 2
  %256 = load i32, i32* %255, align 4
  %257 = load i32, i32* %13, align 4
  %258 = icmp sle i32 %256, %257
  br i1 %258, label %259, label %268

259:                                              ; preds = %253
  %260 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %261 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %260, i32 0, i32 2
  %262 = load i32, i32* %261, align 4
  %263 = sub nsw i32 %262, 1
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds [6 x i64], [6 x i64]* %12, i64 0, i64 %264
  %266 = load i64, i64* %265, align 8
  %267 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 4
  store i64 %266, i64* %267, align 8
  br label %268

268:                                              ; preds = %259, %253, %248
  %269 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %270 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %269, i32 0, i32 3
  %271 = load i32, i32* %270, align 4
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %288

273:                                              ; preds = %268
  %274 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %275 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %274, i32 0, i32 3
  %276 = load i32, i32* %275, align 4
  %277 = load i32, i32* %13, align 4
  %278 = icmp sle i32 %276, %277
  br i1 %278, label %279, label %288

279:                                              ; preds = %273
  %280 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %281 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %280, i32 0, i32 3
  %282 = load i32, i32* %281, align 4
  %283 = sub nsw i32 %282, 1
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds [6 x i64], [6 x i64]* %12, i64 0, i64 %284
  %286 = load i64, i64* %285, align 8
  %287 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 3
  store i64 %286, i64* %287, align 8
  br label %288

288:                                              ; preds = %279, %273, %268
  %289 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %290 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %289, i32 0, i32 4
  %291 = load i32, i32* %290, align 4
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %293, label %308

293:                                              ; preds = %288
  %294 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %295 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %294, i32 0, i32 4
  %296 = load i32, i32* %295, align 4
  %297 = load i32, i32* %13, align 4
  %298 = icmp sle i32 %296, %297
  br i1 %298, label %299, label %308

299:                                              ; preds = %293
  %300 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %301 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %300, i32 0, i32 4
  %302 = load i32, i32* %301, align 4
  %303 = sub nsw i32 %302, 1
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds [6 x i64], [6 x i64]* %12, i64 0, i64 %304
  %306 = load i64, i64* %305, align 8
  %307 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 2
  store i64 %306, i64* %307, align 8
  br label %308

308:                                              ; preds = %299, %293, %288
  %309 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %310 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %309, i32 0, i32 5
  %311 = load i32, i32* %310, align 4
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %313, label %328

313:                                              ; preds = %308
  %314 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %315 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %314, i32 0, i32 5
  %316 = load i32, i32* %315, align 4
  %317 = load i32, i32* %13, align 4
  %318 = icmp sle i32 %316, %317
  br i1 %318, label %319, label %328

319:                                              ; preds = %313
  %320 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %321 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %320, i32 0, i32 5
  %322 = load i32, i32* %321, align 4
  %323 = sub nsw i32 %322, 1
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds [6 x i64], [6 x i64]* %12, i64 0, i64 %324
  %326 = load i64, i64* %325, align 8
  %327 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 1
  store i64 %326, i64* %327, align 8
  br label %328

328:                                              ; preds = %319, %313, %308
  %329 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %330 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %329, i32 0, i32 6
  %331 = load i32, i32* %330, align 4
  %332 = icmp ne i32 %331, 0
  br i1 %332, label %333, label %348

333:                                              ; preds = %328
  %334 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %335 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %334, i32 0, i32 6
  %336 = load i32, i32* %335, align 4
  %337 = load i32, i32* %13, align 4
  %338 = icmp sle i32 %336, %337
  br i1 %338, label %339, label %348

339:                                              ; preds = %333
  %340 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %341 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %340, i32 0, i32 6
  %342 = load i32, i32* %341, align 4
  %343 = sub nsw i32 %342, 1
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds [6 x i64], [6 x i64]* %12, i64 0, i64 %344
  %346 = load i64, i64* %345, align 8
  %347 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  store i64 %346, i64* %347, align 8
  br label %348

348:                                              ; preds = %339, %333, %328
  %349 = call i32 @SystemTimeToFileTime(%struct.TYPE_7__* %7, i64* %8)
  store i32 %349, i32* %5, align 4
  %350 = icmp ne i32 %349, 0
  br i1 %350, label %351, label %357

351:                                              ; preds = %348
  %352 = load i64, i64* %10, align 8
  %353 = load i64, i64* %8, align 8
  %354 = sub nsw i64 %353, %352
  store i64 %354, i64* %8, align 8
  %355 = load i64, i64* %8, align 8
  %356 = load i64*, i64** %4, align 8
  store i64 %355, i64* %356, align 8
  br label %357

357:                                              ; preds = %351, %348
  br label %358

358:                                              ; preds = %357, %220
  br label %359

359:                                              ; preds = %358, %213
  br label %360

360:                                              ; preds = %359, %210
  %361 = load i32, i32* %5, align 4
  ret i32 %361
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @ARRAYSIZE(%struct.TYPE_8__*) #2

declare dso_local i32 @RtlZeroMemory(i64*, i32) #2

declare dso_local i32 @swscanf_s(i32, i32, i64*, i64*, i64*, i64*, i64*, i64*) #2

declare dso_local i32 @GetSystemTimeAsFileTime(i64*) #2

declare dso_local i64 @FileTimeToLocalFileTime(i64*, i64*) #2

declare dso_local i64 @FileTimeToSystemTime(i64*, %struct.TYPE_7__*) #2

declare dso_local i32 @SystemTimeToFileTime(%struct.TYPE_7__*, i64*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
