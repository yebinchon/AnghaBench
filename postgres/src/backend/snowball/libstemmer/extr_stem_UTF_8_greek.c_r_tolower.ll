; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_stem_UTF_8_greek.c_r_tolower.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_stem_UTF_8_greek.c_r_tolower.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SN_env = type { i32, i32, i32, i32, i32, i32 }

@a_0 = common dso_local global i32 0, align 4
@s_0 = common dso_local global i32 0, align 4
@s_1 = common dso_local global i32 0, align 4
@s_2 = common dso_local global i32 0, align 4
@s_3 = common dso_local global i32 0, align 4
@s_4 = common dso_local global i32 0, align 4
@s_5 = common dso_local global i32 0, align 4
@s_6 = common dso_local global i32 0, align 4
@s_7 = common dso_local global i32 0, align 4
@s_8 = common dso_local global i32 0, align 4
@s_9 = common dso_local global i32 0, align 4
@s_10 = common dso_local global i32 0, align 4
@s_11 = common dso_local global i32 0, align 4
@s_12 = common dso_local global i32 0, align 4
@s_13 = common dso_local global i32 0, align 4
@s_14 = common dso_local global i32 0, align 4
@s_15 = common dso_local global i32 0, align 4
@s_16 = common dso_local global i32 0, align 4
@s_17 = common dso_local global i32 0, align 4
@s_18 = common dso_local global i32 0, align 4
@s_19 = common dso_local global i32 0, align 4
@s_20 = common dso_local global i32 0, align 4
@s_21 = common dso_local global i32 0, align 4
@s_22 = common dso_local global i32 0, align 4
@s_23 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.SN_env*)* @r_tolower to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r_tolower(%struct.SN_env* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.SN_env*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  store %struct.SN_env* %0, %struct.SN_env** %3, align 8
  br label %31

31:                                               ; preds = %1, %292
  %32 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %33 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %36 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = sub nsw i32 %34, %37
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %41 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %44 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 4
  %45 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %46 = load i32, i32* @a_0, align 4
  %47 = call i32 @find_among_b(%struct.SN_env* %45, i32 %46, i32 46)
  store i32 %47, i32* %4, align 4
  %48 = load i32, i32* %4, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %31
  br label %293

51:                                               ; preds = %31
  %52 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %53 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %56 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %55, i32 0, i32 3
  store i32 %54, i32* %56, align 4
  %57 = load i32, i32* %4, align 4
  switch i32 %57, label %292 [
    i32 1, label %58
    i32 2, label %67
    i32 3, label %76
    i32 4, label %85
    i32 5, label %94
    i32 6, label %103
    i32 7, label %112
    i32 8, label %121
    i32 9, label %130
    i32 10, label %139
    i32 11, label %148
    i32 12, label %157
    i32 13, label %166
    i32 14, label %175
    i32 15, label %184
    i32 16, label %193
    i32 17, label %202
    i32 18, label %211
    i32 19, label %220
    i32 20, label %229
    i32 21, label %238
    i32 22, label %247
    i32 23, label %256
    i32 24, label %265
    i32 25, label %274
  ]

58:                                               ; preds = %51
  %59 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %60 = load i32, i32* @s_0, align 4
  %61 = call i32 @slice_from_s(%struct.SN_env* %59, i32 2, i32 %60)
  store i32 %61, i32* %6, align 4
  %62 = load i32, i32* %6, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %58
  %65 = load i32, i32* %6, align 4
  store i32 %65, i32* %2, align 4
  br label %302

66:                                               ; preds = %58
  br label %292

67:                                               ; preds = %51
  %68 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %69 = load i32, i32* @s_1, align 4
  %70 = call i32 @slice_from_s(%struct.SN_env* %68, i32 2, i32 %69)
  store i32 %70, i32* %7, align 4
  %71 = load i32, i32* %7, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %67
  %74 = load i32, i32* %7, align 4
  store i32 %74, i32* %2, align 4
  br label %302

75:                                               ; preds = %67
  br label %292

76:                                               ; preds = %51
  %77 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %78 = load i32, i32* @s_2, align 4
  %79 = call i32 @slice_from_s(%struct.SN_env* %77, i32 2, i32 %78)
  store i32 %79, i32* %8, align 4
  %80 = load i32, i32* %8, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %76
  %83 = load i32, i32* %8, align 4
  store i32 %83, i32* %2, align 4
  br label %302

84:                                               ; preds = %76
  br label %292

85:                                               ; preds = %51
  %86 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %87 = load i32, i32* @s_3, align 4
  %88 = call i32 @slice_from_s(%struct.SN_env* %86, i32 2, i32 %87)
  store i32 %88, i32* %9, align 4
  %89 = load i32, i32* %9, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %85
  %92 = load i32, i32* %9, align 4
  store i32 %92, i32* %2, align 4
  br label %302

93:                                               ; preds = %85
  br label %292

94:                                               ; preds = %51
  %95 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %96 = load i32, i32* @s_4, align 4
  %97 = call i32 @slice_from_s(%struct.SN_env* %95, i32 2, i32 %96)
  store i32 %97, i32* %10, align 4
  %98 = load i32, i32* %10, align 4
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %94
  %101 = load i32, i32* %10, align 4
  store i32 %101, i32* %2, align 4
  br label %302

102:                                              ; preds = %94
  br label %292

103:                                              ; preds = %51
  %104 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %105 = load i32, i32* @s_5, align 4
  %106 = call i32 @slice_from_s(%struct.SN_env* %104, i32 2, i32 %105)
  store i32 %106, i32* %11, align 4
  %107 = load i32, i32* %11, align 4
  %108 = icmp slt i32 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %103
  %110 = load i32, i32* %11, align 4
  store i32 %110, i32* %2, align 4
  br label %302

111:                                              ; preds = %103
  br label %292

112:                                              ; preds = %51
  %113 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %114 = load i32, i32* @s_6, align 4
  %115 = call i32 @slice_from_s(%struct.SN_env* %113, i32 2, i32 %114)
  store i32 %115, i32* %12, align 4
  %116 = load i32, i32* %12, align 4
  %117 = icmp slt i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %112
  %119 = load i32, i32* %12, align 4
  store i32 %119, i32* %2, align 4
  br label %302

120:                                              ; preds = %112
  br label %292

121:                                              ; preds = %51
  %122 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %123 = load i32, i32* @s_7, align 4
  %124 = call i32 @slice_from_s(%struct.SN_env* %122, i32 2, i32 %123)
  store i32 %124, i32* %13, align 4
  %125 = load i32, i32* %13, align 4
  %126 = icmp slt i32 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %121
  %128 = load i32, i32* %13, align 4
  store i32 %128, i32* %2, align 4
  br label %302

129:                                              ; preds = %121
  br label %292

130:                                              ; preds = %51
  %131 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %132 = load i32, i32* @s_8, align 4
  %133 = call i32 @slice_from_s(%struct.SN_env* %131, i32 2, i32 %132)
  store i32 %133, i32* %14, align 4
  %134 = load i32, i32* %14, align 4
  %135 = icmp slt i32 %134, 0
  br i1 %135, label %136, label %138

136:                                              ; preds = %130
  %137 = load i32, i32* %14, align 4
  store i32 %137, i32* %2, align 4
  br label %302

138:                                              ; preds = %130
  br label %292

139:                                              ; preds = %51
  %140 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %141 = load i32, i32* @s_9, align 4
  %142 = call i32 @slice_from_s(%struct.SN_env* %140, i32 2, i32 %141)
  store i32 %142, i32* %15, align 4
  %143 = load i32, i32* %15, align 4
  %144 = icmp slt i32 %143, 0
  br i1 %144, label %145, label %147

145:                                              ; preds = %139
  %146 = load i32, i32* %15, align 4
  store i32 %146, i32* %2, align 4
  br label %302

147:                                              ; preds = %139
  br label %292

148:                                              ; preds = %51
  %149 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %150 = load i32, i32* @s_10, align 4
  %151 = call i32 @slice_from_s(%struct.SN_env* %149, i32 2, i32 %150)
  store i32 %151, i32* %16, align 4
  %152 = load i32, i32* %16, align 4
  %153 = icmp slt i32 %152, 0
  br i1 %153, label %154, label %156

154:                                              ; preds = %148
  %155 = load i32, i32* %16, align 4
  store i32 %155, i32* %2, align 4
  br label %302

156:                                              ; preds = %148
  br label %292

157:                                              ; preds = %51
  %158 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %159 = load i32, i32* @s_11, align 4
  %160 = call i32 @slice_from_s(%struct.SN_env* %158, i32 2, i32 %159)
  store i32 %160, i32* %17, align 4
  %161 = load i32, i32* %17, align 4
  %162 = icmp slt i32 %161, 0
  br i1 %162, label %163, label %165

163:                                              ; preds = %157
  %164 = load i32, i32* %17, align 4
  store i32 %164, i32* %2, align 4
  br label %302

165:                                              ; preds = %157
  br label %292

166:                                              ; preds = %51
  %167 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %168 = load i32, i32* @s_12, align 4
  %169 = call i32 @slice_from_s(%struct.SN_env* %167, i32 2, i32 %168)
  store i32 %169, i32* %18, align 4
  %170 = load i32, i32* %18, align 4
  %171 = icmp slt i32 %170, 0
  br i1 %171, label %172, label %174

172:                                              ; preds = %166
  %173 = load i32, i32* %18, align 4
  store i32 %173, i32* %2, align 4
  br label %302

174:                                              ; preds = %166
  br label %292

175:                                              ; preds = %51
  %176 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %177 = load i32, i32* @s_13, align 4
  %178 = call i32 @slice_from_s(%struct.SN_env* %176, i32 2, i32 %177)
  store i32 %178, i32* %19, align 4
  %179 = load i32, i32* %19, align 4
  %180 = icmp slt i32 %179, 0
  br i1 %180, label %181, label %183

181:                                              ; preds = %175
  %182 = load i32, i32* %19, align 4
  store i32 %182, i32* %2, align 4
  br label %302

183:                                              ; preds = %175
  br label %292

184:                                              ; preds = %51
  %185 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %186 = load i32, i32* @s_14, align 4
  %187 = call i32 @slice_from_s(%struct.SN_env* %185, i32 2, i32 %186)
  store i32 %187, i32* %20, align 4
  %188 = load i32, i32* %20, align 4
  %189 = icmp slt i32 %188, 0
  br i1 %189, label %190, label %192

190:                                              ; preds = %184
  %191 = load i32, i32* %20, align 4
  store i32 %191, i32* %2, align 4
  br label %302

192:                                              ; preds = %184
  br label %292

193:                                              ; preds = %51
  %194 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %195 = load i32, i32* @s_15, align 4
  %196 = call i32 @slice_from_s(%struct.SN_env* %194, i32 2, i32 %195)
  store i32 %196, i32* %21, align 4
  %197 = load i32, i32* %21, align 4
  %198 = icmp slt i32 %197, 0
  br i1 %198, label %199, label %201

199:                                              ; preds = %193
  %200 = load i32, i32* %21, align 4
  store i32 %200, i32* %2, align 4
  br label %302

201:                                              ; preds = %193
  br label %292

202:                                              ; preds = %51
  %203 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %204 = load i32, i32* @s_16, align 4
  %205 = call i32 @slice_from_s(%struct.SN_env* %203, i32 2, i32 %204)
  store i32 %205, i32* %22, align 4
  %206 = load i32, i32* %22, align 4
  %207 = icmp slt i32 %206, 0
  br i1 %207, label %208, label %210

208:                                              ; preds = %202
  %209 = load i32, i32* %22, align 4
  store i32 %209, i32* %2, align 4
  br label %302

210:                                              ; preds = %202
  br label %292

211:                                              ; preds = %51
  %212 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %213 = load i32, i32* @s_17, align 4
  %214 = call i32 @slice_from_s(%struct.SN_env* %212, i32 2, i32 %213)
  store i32 %214, i32* %23, align 4
  %215 = load i32, i32* %23, align 4
  %216 = icmp slt i32 %215, 0
  br i1 %216, label %217, label %219

217:                                              ; preds = %211
  %218 = load i32, i32* %23, align 4
  store i32 %218, i32* %2, align 4
  br label %302

219:                                              ; preds = %211
  br label %292

220:                                              ; preds = %51
  %221 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %222 = load i32, i32* @s_18, align 4
  %223 = call i32 @slice_from_s(%struct.SN_env* %221, i32 2, i32 %222)
  store i32 %223, i32* %24, align 4
  %224 = load i32, i32* %24, align 4
  %225 = icmp slt i32 %224, 0
  br i1 %225, label %226, label %228

226:                                              ; preds = %220
  %227 = load i32, i32* %24, align 4
  store i32 %227, i32* %2, align 4
  br label %302

228:                                              ; preds = %220
  br label %292

229:                                              ; preds = %51
  %230 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %231 = load i32, i32* @s_19, align 4
  %232 = call i32 @slice_from_s(%struct.SN_env* %230, i32 2, i32 %231)
  store i32 %232, i32* %25, align 4
  %233 = load i32, i32* %25, align 4
  %234 = icmp slt i32 %233, 0
  br i1 %234, label %235, label %237

235:                                              ; preds = %229
  %236 = load i32, i32* %25, align 4
  store i32 %236, i32* %2, align 4
  br label %302

237:                                              ; preds = %229
  br label %292

238:                                              ; preds = %51
  %239 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %240 = load i32, i32* @s_20, align 4
  %241 = call i32 @slice_from_s(%struct.SN_env* %239, i32 2, i32 %240)
  store i32 %241, i32* %26, align 4
  %242 = load i32, i32* %26, align 4
  %243 = icmp slt i32 %242, 0
  br i1 %243, label %244, label %246

244:                                              ; preds = %238
  %245 = load i32, i32* %26, align 4
  store i32 %245, i32* %2, align 4
  br label %302

246:                                              ; preds = %238
  br label %292

247:                                              ; preds = %51
  %248 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %249 = load i32, i32* @s_21, align 4
  %250 = call i32 @slice_from_s(%struct.SN_env* %248, i32 2, i32 %249)
  store i32 %250, i32* %27, align 4
  %251 = load i32, i32* %27, align 4
  %252 = icmp slt i32 %251, 0
  br i1 %252, label %253, label %255

253:                                              ; preds = %247
  %254 = load i32, i32* %27, align 4
  store i32 %254, i32* %2, align 4
  br label %302

255:                                              ; preds = %247
  br label %292

256:                                              ; preds = %51
  %257 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %258 = load i32, i32* @s_22, align 4
  %259 = call i32 @slice_from_s(%struct.SN_env* %257, i32 2, i32 %258)
  store i32 %259, i32* %28, align 4
  %260 = load i32, i32* %28, align 4
  %261 = icmp slt i32 %260, 0
  br i1 %261, label %262, label %264

262:                                              ; preds = %256
  %263 = load i32, i32* %28, align 4
  store i32 %263, i32* %2, align 4
  br label %302

264:                                              ; preds = %256
  br label %292

265:                                              ; preds = %51
  %266 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %267 = load i32, i32* @s_23, align 4
  %268 = call i32 @slice_from_s(%struct.SN_env* %266, i32 2, i32 %267)
  store i32 %268, i32* %29, align 4
  %269 = load i32, i32* %29, align 4
  %270 = icmp slt i32 %269, 0
  br i1 %270, label %271, label %273

271:                                              ; preds = %265
  %272 = load i32, i32* %29, align 4
  store i32 %272, i32* %2, align 4
  br label %302

273:                                              ; preds = %265
  br label %292

274:                                              ; preds = %51
  %275 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %276 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %275, i32 0, i32 5
  %277 = load i32, i32* %276, align 4
  %278 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %279 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %278, i32 0, i32 1
  %280 = load i32, i32* %279, align 4
  %281 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %282 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %281, i32 0, i32 4
  %283 = load i32, i32* %282, align 4
  %284 = call i32 @skip_utf8(i32 %277, i32 %280, i32 %283, i32 0, i32 -1)
  store i32 %284, i32* %30, align 4
  %285 = load i32, i32* %30, align 4
  %286 = icmp slt i32 %285, 0
  br i1 %286, label %287, label %288

287:                                              ; preds = %274
  br label %293

288:                                              ; preds = %274
  %289 = load i32, i32* %30, align 4
  %290 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %291 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %290, i32 0, i32 1
  store i32 %289, i32* %291, align 4
  br label %292

292:                                              ; preds = %51, %288, %273, %264, %255, %246, %237, %228, %219, %210, %201, %192, %183, %174, %165, %156, %147, %138, %129, %120, %111, %102, %93, %84, %75, %66
  br label %31

293:                                              ; preds = %287, %50
  %294 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %295 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %294, i32 0, i32 0
  %296 = load i32, i32* %295, align 4
  %297 = load i32, i32* %5, align 4
  %298 = sub nsw i32 %296, %297
  %299 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %300 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %299, i32 0, i32 1
  store i32 %298, i32* %300, align 4
  br label %301

301:                                              ; preds = %293
  store i32 1, i32* %2, align 4
  br label %302

302:                                              ; preds = %301, %271, %262, %253, %244, %235, %226, %217, %208, %199, %190, %181, %172, %163, %154, %145, %136, %127, %118, %109, %100, %91, %82, %73, %64
  %303 = load i32, i32* %2, align 4
  ret i32 %303
}

declare dso_local i32 @find_among_b(%struct.SN_env*, i32, i32) #1

declare dso_local i32 @slice_from_s(%struct.SN_env*, i32, i32) #1

declare dso_local i32 @skip_utf8(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
