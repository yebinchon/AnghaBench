; ModuleID = '/home/carl/AnghaBench/mpv/demux/extr_demux_mkv.c_seek_with_cues.c'
source_filename = "/home/carl/AnghaBench/mpv/demux/extr_demux_mkv.c_seek_with_cues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mkv_index = type { i32, i32, i64, i64 }
%struct.demuxer = type { i32, %struct.mkv_demuxer* }
%struct.mkv_demuxer = type { i64, i32, i64, %struct.mkv_index*, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { double, i32 }

@INT64_MIN = common dso_local global i64 0, align 8
@SEEK_FORWARD = common dso_local global i32 0, align 4
@SEEK_HR = common dso_local global i32 0, align 4
@INT64_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mkv_index* (%struct.demuxer*, i32, i64, i32)* @seek_with_cues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mkv_index* @seek_with_cues(%struct.demuxer* %0, i32 %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.demuxer*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.mkv_demuxer*, align 8
  %10 = alloca %struct.mkv_index*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca double, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca %struct.mkv_index*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca %struct.mkv_index*, align 8
  store %struct.demuxer* %0, %struct.demuxer** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %25 = load %struct.demuxer*, %struct.demuxer** %5, align 8
  %26 = getelementptr inbounds %struct.demuxer, %struct.demuxer* %25, i32 0, i32 1
  %27 = load %struct.mkv_demuxer*, %struct.mkv_demuxer** %26, align 8
  store %struct.mkv_demuxer* %27, %struct.mkv_demuxer** %9, align 8
  store %struct.mkv_index* null, %struct.mkv_index** %10, align 8
  %28 = load i64, i64* @INT64_MIN, align 8
  store i64 %28, i64* %11, align 8
  store i64 0, i64* %12, align 8
  br label %29

29:                                               ; preds = %101, %4
  %30 = load i64, i64* %12, align 8
  %31 = load %struct.mkv_demuxer*, %struct.mkv_demuxer** %9, align 8
  %32 = getelementptr inbounds %struct.mkv_demuxer, %struct.mkv_demuxer* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ult i64 %30, %33
  br i1 %34, label %35, label %104

35:                                               ; preds = %29
  %36 = load i32, i32* %6, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %48, label %38

38:                                               ; preds = %35
  %39 = load %struct.mkv_demuxer*, %struct.mkv_demuxer** %9, align 8
  %40 = getelementptr inbounds %struct.mkv_demuxer, %struct.mkv_demuxer* %39, i32 0, i32 3
  %41 = load %struct.mkv_index*, %struct.mkv_index** %40, align 8
  %42 = load i64, i64* %12, align 8
  %43 = getelementptr inbounds %struct.mkv_index, %struct.mkv_index* %41, i64 %42
  %44 = getelementptr inbounds %struct.mkv_index, %struct.mkv_index* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* %6, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %100

48:                                               ; preds = %38, %35
  %49 = load %struct.mkv_demuxer*, %struct.mkv_demuxer** %9, align 8
  %50 = getelementptr inbounds %struct.mkv_demuxer, %struct.mkv_demuxer* %49, i32 0, i32 3
  %51 = load %struct.mkv_index*, %struct.mkv_index** %50, align 8
  %52 = load i64, i64* %12, align 8
  %53 = getelementptr inbounds %struct.mkv_index, %struct.mkv_index* %51, i64 %52
  %54 = getelementptr inbounds %struct.mkv_index, %struct.mkv_index* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.mkv_demuxer*, %struct.mkv_demuxer** %9, align 8
  %57 = getelementptr inbounds %struct.mkv_demuxer, %struct.mkv_demuxer* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = mul nsw i32 %55, %58
  %60 = sext i32 %59 to i64
  %61 = load i64, i64* %7, align 8
  %62 = sub nsw i64 %60, %61
  store i64 %62, i64* %13, align 8
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* @SEEK_FORWARD, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %48
  %68 = load i64, i64* %13, align 8
  %69 = sub nsw i64 0, %68
  store i64 %69, i64* %13, align 8
  br label %70

70:                                               ; preds = %67, %48
  %71 = load i64, i64* %11, align 8
  %72 = load i64, i64* @INT64_MIN, align 8
  %73 = icmp ne i64 %71, %72
  br i1 %73, label %74, label %93

74:                                               ; preds = %70
  %75 = load i64, i64* %13, align 8
  %76 = icmp sle i64 %75, 0
  br i1 %76, label %77, label %86

77:                                               ; preds = %74
  %78 = load i64, i64* %11, align 8
  %79 = icmp sle i64 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %77
  %81 = load i64, i64* %13, align 8
  %82 = load i64, i64* %11, align 8
  %83 = icmp sle i64 %81, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %80
  br label %101

85:                                               ; preds = %80, %77
  br label %92

86:                                               ; preds = %74
  %87 = load i64, i64* %13, align 8
  %88 = load i64, i64* %11, align 8
  %89 = icmp sge i64 %87, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %86
  br label %101

91:                                               ; preds = %86
  br label %92

92:                                               ; preds = %91, %85
  br label %93

93:                                               ; preds = %92, %70
  %94 = load i64, i64* %13, align 8
  store i64 %94, i64* %11, align 8
  %95 = load %struct.mkv_demuxer*, %struct.mkv_demuxer** %9, align 8
  %96 = getelementptr inbounds %struct.mkv_demuxer, %struct.mkv_demuxer* %95, i32 0, i32 3
  %97 = load %struct.mkv_index*, %struct.mkv_index** %96, align 8
  %98 = load i64, i64* %12, align 8
  %99 = getelementptr inbounds %struct.mkv_index, %struct.mkv_index* %97, i64 %98
  store %struct.mkv_index* %99, %struct.mkv_index** %10, align 8
  br label %100

100:                                              ; preds = %93, %38
  br label %101

101:                                              ; preds = %100, %90, %84
  %102 = load i64, i64* %12, align 8
  %103 = add i64 %102, 1
  store i64 %103, i64* %12, align 8
  br label %29

104:                                              ; preds = %29
  %105 = load %struct.mkv_index*, %struct.mkv_index** %10, align 8
  %106 = icmp ne %struct.mkv_index* %105, null
  br i1 %106, label %107, label %286

107:                                              ; preds = %104
  %108 = load %struct.mkv_index*, %struct.mkv_index** %10, align 8
  %109 = getelementptr inbounds %struct.mkv_index, %struct.mkv_index* %108, i32 0, i32 2
  %110 = load i64, i64* %109, align 8
  store i64 %110, i64* %14, align 8
  %111 = load i32, i32* %8, align 4
  %112 = load i32, i32* @SEEK_HR, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %278

115:                                              ; preds = %107
  %116 = load %struct.mkv_demuxer*, %struct.mkv_demuxer** %9, align 8
  %117 = getelementptr inbounds %struct.mkv_demuxer, %struct.mkv_demuxer* %116, i32 0, i32 5
  %118 = load %struct.TYPE_2__*, %struct.TYPE_2__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 0
  %120 = load double, double* %119, align 8
  store double %120, double* %15, align 8
  %121 = load %struct.mkv_demuxer*, %struct.mkv_demuxer** %9, align 8
  %122 = getelementptr inbounds %struct.mkv_demuxer, %struct.mkv_demuxer* %121, i32 0, i32 4
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %133

125:                                              ; preds = %115
  %126 = load double, double* %15, align 8
  %127 = load %struct.mkv_demuxer*, %struct.mkv_demuxer** %9, align 8
  %128 = getelementptr inbounds %struct.mkv_demuxer, %struct.mkv_demuxer* %127, i32 0, i32 5
  %129 = load %struct.TYPE_2__*, %struct.TYPE_2__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 8
  %132 = call double @MPMAX(double %126, i32 %131)
  store double %132, double* %15, align 8
  br label %133

133:                                              ; preds = %125, %115
  %134 = load i32, i32* @INT64_MAX, align 4
  %135 = load double, double* %15, align 8
  %136 = fmul double %135, 1.000000e+09
  %137 = load %struct.mkv_demuxer*, %struct.mkv_demuxer** %9, align 8
  %138 = getelementptr inbounds %struct.mkv_demuxer, %struct.mkv_demuxer* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 8
  %140 = sitofp i32 %139 to double
  %141 = fdiv double %136, %140
  %142 = call i64 @MPMIN(i32 %134, double %141)
  store i64 %142, i64* %16, align 8
  %143 = load i64, i64* %16, align 8
  %144 = load %struct.mkv_index*, %struct.mkv_index** %10, align 8
  %145 = getelementptr inbounds %struct.mkv_index, %struct.mkv_index* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = sext i32 %146 to i64
  %148 = icmp slt i64 %143, %147
  br i1 %148, label %149, label %156

149:                                              ; preds = %133
  %150 = load %struct.mkv_index*, %struct.mkv_index** %10, align 8
  %151 = getelementptr inbounds %struct.mkv_index, %struct.mkv_index* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = sext i32 %152 to i64
  %154 = load i64, i64* %16, align 8
  %155 = sub nsw i64 %153, %154
  br label %157

156:                                              ; preds = %133
  br label %157

157:                                              ; preds = %156, %149
  %158 = phi i64 [ %155, %149 ], [ 0, %156 ]
  store i64 %158, i64* %17, align 8
  store i64 0, i64* %18, align 8
  store i64 0, i64* %19, align 8
  store i64 0, i64* %20, align 8
  br label %159

159:                                              ; preds = %207, %157
  %160 = load i64, i64* %20, align 8
  %161 = load %struct.mkv_demuxer*, %struct.mkv_demuxer** %9, align 8
  %162 = getelementptr inbounds %struct.mkv_demuxer, %struct.mkv_demuxer* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = icmp ult i64 %160, %163
  br i1 %164, label %165, label %210

165:                                              ; preds = %159
  %166 = load i32, i32* %6, align 4
  %167 = icmp slt i32 %166, 0
  br i1 %167, label %178, label %168

168:                                              ; preds = %165
  %169 = load %struct.mkv_demuxer*, %struct.mkv_demuxer** %9, align 8
  %170 = getelementptr inbounds %struct.mkv_demuxer, %struct.mkv_demuxer* %169, i32 0, i32 3
  %171 = load %struct.mkv_index*, %struct.mkv_index** %170, align 8
  %172 = load i64, i64* %20, align 8
  %173 = getelementptr inbounds %struct.mkv_index, %struct.mkv_index* %171, i64 %172
  %174 = getelementptr inbounds %struct.mkv_index, %struct.mkv_index* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = load i32, i32* %6, align 4
  %177 = icmp eq i32 %175, %176
  br i1 %177, label %178, label %206

178:                                              ; preds = %168, %165
  %179 = load %struct.mkv_demuxer*, %struct.mkv_demuxer** %9, align 8
  %180 = getelementptr inbounds %struct.mkv_demuxer, %struct.mkv_demuxer* %179, i32 0, i32 3
  %181 = load %struct.mkv_index*, %struct.mkv_index** %180, align 8
  %182 = load i64, i64* %20, align 8
  %183 = getelementptr inbounds %struct.mkv_index, %struct.mkv_index* %181, i64 %182
  store %struct.mkv_index* %183, %struct.mkv_index** %21, align 8
  %184 = load %struct.mkv_index*, %struct.mkv_index** %21, align 8
  %185 = getelementptr inbounds %struct.mkv_index, %struct.mkv_index* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = sext i32 %186 to i64
  %188 = load i64, i64* %17, align 8
  %189 = icmp sle i64 %187, %188
  br i1 %189, label %190, label %205

190:                                              ; preds = %178
  %191 = load %struct.mkv_index*, %struct.mkv_index** %21, align 8
  %192 = getelementptr inbounds %struct.mkv_index, %struct.mkv_index* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = sext i32 %193 to i64
  %195 = load i64, i64* %19, align 8
  %196 = icmp sge i64 %194, %195
  br i1 %196, label %197, label %205

197:                                              ; preds = %190
  %198 = load %struct.mkv_index*, %struct.mkv_index** %21, align 8
  %199 = getelementptr inbounds %struct.mkv_index, %struct.mkv_index* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = sext i32 %200 to i64
  store i64 %201, i64* %19, align 8
  %202 = load %struct.mkv_index*, %struct.mkv_index** %21, align 8
  %203 = getelementptr inbounds %struct.mkv_index, %struct.mkv_index* %202, i32 0, i32 2
  %204 = load i64, i64* %203, align 8
  store i64 %204, i64* %18, align 8
  br label %205

205:                                              ; preds = %197, %190, %178
  br label %206

206:                                              ; preds = %205, %168
  br label %207

207:                                              ; preds = %206
  %208 = load i64, i64* %20, align 8
  %209 = add i64 %208, 1
  store i64 %209, i64* %20, align 8
  br label %159

210:                                              ; preds = %159
  %211 = load %struct.mkv_demuxer*, %struct.mkv_demuxer** %9, align 8
  %212 = getelementptr inbounds %struct.mkv_demuxer, %struct.mkv_demuxer* %211, i32 0, i32 4
  %213 = load i64, i64* %212, align 8
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %272

215:                                              ; preds = %210
  %216 = load i64, i64* %14, align 8
  store i64 %216, i64* %22, align 8
  store i64 0, i64* %23, align 8
  br label %217

217:                                              ; preds = %267, %215
  %218 = load i64, i64* %23, align 8
  %219 = load %struct.mkv_demuxer*, %struct.mkv_demuxer** %9, align 8
  %220 = getelementptr inbounds %struct.mkv_demuxer, %struct.mkv_demuxer* %219, i32 0, i32 0
  %221 = load i64, i64* %220, align 8
  %222 = icmp ult i64 %218, %221
  br i1 %222, label %223, label %270

223:                                              ; preds = %217
  %224 = load %struct.mkv_demuxer*, %struct.mkv_demuxer** %9, align 8
  %225 = getelementptr inbounds %struct.mkv_demuxer, %struct.mkv_demuxer* %224, i32 0, i32 3
  %226 = load %struct.mkv_index*, %struct.mkv_index** %225, align 8
  %227 = load i64, i64* %23, align 8
  %228 = getelementptr inbounds %struct.mkv_index, %struct.mkv_index* %226, i64 %227
  store %struct.mkv_index* %228, %struct.mkv_index** %24, align 8
  %229 = load %struct.mkv_index*, %struct.mkv_index** %24, align 8
  %230 = getelementptr inbounds %struct.mkv_index, %struct.mkv_index* %229, i32 0, i32 1
  %231 = load i32, i32* %230, align 4
  %232 = load %struct.mkv_index*, %struct.mkv_index** %10, align 8
  %233 = getelementptr inbounds %struct.mkv_index, %struct.mkv_index* %232, i32 0, i32 1
  %234 = load i32, i32* %233, align 4
  %235 = icmp sle i32 %231, %234
  br i1 %235, label %236, label %266

236:                                              ; preds = %223
  %237 = load %struct.mkv_index*, %struct.mkv_index** %24, align 8
  %238 = getelementptr inbounds %struct.mkv_index, %struct.mkv_index* %237, i32 0, i32 1
  %239 = load i32, i32* %238, align 4
  %240 = sext i32 %239 to i64
  %241 = load %struct.mkv_index*, %struct.mkv_index** %24, align 8
  %242 = getelementptr inbounds %struct.mkv_index, %struct.mkv_index* %241, i32 0, i32 3
  %243 = load i64, i64* %242, align 8
  %244 = add nsw i64 %240, %243
  %245 = load %struct.mkv_index*, %struct.mkv_index** %10, align 8
  %246 = getelementptr inbounds %struct.mkv_index, %struct.mkv_index* %245, i32 0, i32 1
  %247 = load i32, i32* %246, align 4
  %248 = sext i32 %247 to i64
  %249 = icmp sgt i64 %244, %248
  br i1 %249, label %250, label %266

250:                                              ; preds = %236
  %251 = load %struct.mkv_index*, %struct.mkv_index** %24, align 8
  %252 = getelementptr inbounds %struct.mkv_index, %struct.mkv_index* %251, i32 0, i32 2
  %253 = load i64, i64* %252, align 8
  %254 = load i64, i64* %18, align 8
  %255 = icmp sge i64 %253, %254
  br i1 %255, label %256, label %266

256:                                              ; preds = %250
  %257 = load %struct.mkv_index*, %struct.mkv_index** %24, align 8
  %258 = getelementptr inbounds %struct.mkv_index, %struct.mkv_index* %257, i32 0, i32 2
  %259 = load i64, i64* %258, align 8
  %260 = load i64, i64* %22, align 8
  %261 = icmp slt i64 %259, %260
  br i1 %261, label %262, label %266

262:                                              ; preds = %256
  %263 = load %struct.mkv_index*, %struct.mkv_index** %24, align 8
  %264 = getelementptr inbounds %struct.mkv_index, %struct.mkv_index* %263, i32 0, i32 2
  %265 = load i64, i64* %264, align 8
  store i64 %265, i64* %22, align 8
  br label %266

266:                                              ; preds = %262, %256, %250, %236, %223
  br label %267

267:                                              ; preds = %266
  %268 = load i64, i64* %23, align 8
  %269 = add i64 %268, 1
  store i64 %269, i64* %23, align 8
  br label %217

270:                                              ; preds = %217
  %271 = load i64, i64* %22, align 8
  store i64 %271, i64* %18, align 8
  br label %272

272:                                              ; preds = %270, %210
  %273 = load i64, i64* %18, align 8
  %274 = icmp ne i64 %273, 0
  br i1 %274, label %275, label %277

275:                                              ; preds = %272
  %276 = load i64, i64* %18, align 8
  store i64 %276, i64* %14, align 8
  br label %277

277:                                              ; preds = %275, %272
  br label %278

278:                                              ; preds = %277, %107
  %279 = load %struct.mkv_demuxer*, %struct.mkv_demuxer** %9, align 8
  %280 = getelementptr inbounds %struct.mkv_demuxer, %struct.mkv_demuxer* %279, i32 0, i32 2
  store i64 0, i64* %280, align 8
  %281 = load %struct.demuxer*, %struct.demuxer** %5, align 8
  %282 = getelementptr inbounds %struct.demuxer, %struct.demuxer* %281, i32 0, i32 0
  %283 = load i32, i32* %282, align 8
  %284 = load i64, i64* %14, align 8
  %285 = call i32 @stream_seek(i32 %283, i64 %284)
  br label %286

286:                                              ; preds = %278, %104
  %287 = load %struct.mkv_index*, %struct.mkv_index** %10, align 8
  ret %struct.mkv_index* %287
}

declare dso_local double @MPMAX(double, i32) #1

declare dso_local i64 @MPMIN(i32, double) #1

declare dso_local i32 @stream_seek(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
