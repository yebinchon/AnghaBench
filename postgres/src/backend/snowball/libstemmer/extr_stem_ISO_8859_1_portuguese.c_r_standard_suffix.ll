; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_stem_ISO_8859_1_portuguese.c_r_standard_suffix.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_stem_ISO_8859_1_portuguese.c_r_standard_suffix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SN_env = type { i32, i32, i32, i32*, i32, i32 }

@a_5 = common dso_local global i32 0, align 4
@s_4 = common dso_local global i32 0, align 4
@s_5 = common dso_local global i32 0, align 4
@s_6 = common dso_local global i32 0, align 4
@a_2 = common dso_local global i32 0, align 4
@s_7 = common dso_local global i32 0, align 4
@a_3 = common dso_local global i32 0, align 4
@a_4 = common dso_local global i32 0, align 4
@s_8 = common dso_local global i32 0, align 4
@s_9 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.SN_env*)* @r_standard_suffix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r_standard_suffix(%struct.SN_env* %0) #0 {
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
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  store %struct.SN_env* %0, %struct.SN_env** %3, align 8
  %37 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %38 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %41 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %43 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = sub nsw i32 %44, 2
  %46 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %47 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = icmp sle i32 %45, %48
  br i1 %49, label %78, label %50

50:                                               ; preds = %1
  %51 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %52 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %51, i32 0, i32 3
  %53 = load i32*, i32** %52, align 8
  %54 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %55 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = sub nsw i32 %56, 1
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %53, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = ashr i32 %60, 5
  %62 = icmp ne i32 %61, 3
  br i1 %62, label %78, label %63

63:                                               ; preds = %50
  %64 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %65 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %64, i32 0, i32 3
  %66 = load i32*, i32** %65, align 8
  %67 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %68 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = sub nsw i32 %69, 1
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %66, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = and i32 %73, 31
  %75 = ashr i32 823330, %74
  %76 = and i32 %75, 1
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %63, %50, %1
  store i32 0, i32* %2, align 4
  br label %669

79:                                               ; preds = %63
  %80 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %81 = load i32, i32* @a_5, align 4
  %82 = call i32 @find_among_b(%struct.SN_env* %80, i32 %81, i32 45)
  store i32 %82, i32* %4, align 4
  %83 = load i32, i32* %4, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %86, label %85

85:                                               ; preds = %79
  store i32 0, i32* %2, align 4
  br label %669

86:                                               ; preds = %79
  %87 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %88 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %91 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %90, i32 0, i32 4
  store i32 %89, i32* %91, align 8
  %92 = load i32, i32* %4, align 4
  switch i32 %92, label %668 [
    i32 1, label %93
    i32 2, label %108
    i32 3, label %124
    i32 4, label %140
    i32 5, label %156
    i32 6, label %325
    i32 7, label %438
    i32 8, label %555
    i32 9, label %627
  ]

93:                                               ; preds = %86
  %94 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %95 = call i32 @r_R2(%struct.SN_env* %94)
  store i32 %95, i32* %5, align 4
  %96 = load i32, i32* %5, align 4
  %97 = icmp sle i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %93
  %99 = load i32, i32* %5, align 4
  store i32 %99, i32* %2, align 4
  br label %669

100:                                              ; preds = %93
  %101 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %102 = call i32 @slice_del(%struct.SN_env* %101)
  store i32 %102, i32* %6, align 4
  %103 = load i32, i32* %6, align 4
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %100
  %106 = load i32, i32* %6, align 4
  store i32 %106, i32* %2, align 4
  br label %669

107:                                              ; preds = %100
  br label %668

108:                                              ; preds = %86
  %109 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %110 = call i32 @r_R2(%struct.SN_env* %109)
  store i32 %110, i32* %7, align 4
  %111 = load i32, i32* %7, align 4
  %112 = icmp sle i32 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %108
  %114 = load i32, i32* %7, align 4
  store i32 %114, i32* %2, align 4
  br label %669

115:                                              ; preds = %108
  %116 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %117 = load i32, i32* @s_4, align 4
  %118 = call i32 @slice_from_s(%struct.SN_env* %116, i32 3, i32 %117)
  store i32 %118, i32* %8, align 4
  %119 = load i32, i32* %8, align 4
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %115
  %122 = load i32, i32* %8, align 4
  store i32 %122, i32* %2, align 4
  br label %669

123:                                              ; preds = %115
  br label %668

124:                                              ; preds = %86
  %125 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %126 = call i32 @r_R2(%struct.SN_env* %125)
  store i32 %126, i32* %9, align 4
  %127 = load i32, i32* %9, align 4
  %128 = icmp sle i32 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %124
  %130 = load i32, i32* %9, align 4
  store i32 %130, i32* %2, align 4
  br label %669

131:                                              ; preds = %124
  %132 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %133 = load i32, i32* @s_5, align 4
  %134 = call i32 @slice_from_s(%struct.SN_env* %132, i32 1, i32 %133)
  store i32 %134, i32* %10, align 4
  %135 = load i32, i32* %10, align 4
  %136 = icmp slt i32 %135, 0
  br i1 %136, label %137, label %139

137:                                              ; preds = %131
  %138 = load i32, i32* %10, align 4
  store i32 %138, i32* %2, align 4
  br label %669

139:                                              ; preds = %131
  br label %668

140:                                              ; preds = %86
  %141 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %142 = call i32 @r_R2(%struct.SN_env* %141)
  store i32 %142, i32* %11, align 4
  %143 = load i32, i32* %11, align 4
  %144 = icmp sle i32 %143, 0
  br i1 %144, label %145, label %147

145:                                              ; preds = %140
  %146 = load i32, i32* %11, align 4
  store i32 %146, i32* %2, align 4
  br label %669

147:                                              ; preds = %140
  %148 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %149 = load i32, i32* @s_6, align 4
  %150 = call i32 @slice_from_s(%struct.SN_env* %148, i32 4, i32 %149)
  store i32 %150, i32* %12, align 4
  %151 = load i32, i32* %12, align 4
  %152 = icmp slt i32 %151, 0
  br i1 %152, label %153, label %155

153:                                              ; preds = %147
  %154 = load i32, i32* %12, align 4
  store i32 %154, i32* %2, align 4
  br label %669

155:                                              ; preds = %147
  br label %668

156:                                              ; preds = %86
  %157 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %158 = call i32 @r_R1(%struct.SN_env* %157)
  store i32 %158, i32* %13, align 4
  %159 = load i32, i32* %13, align 4
  %160 = icmp sle i32 %159, 0
  br i1 %160, label %161, label %163

161:                                              ; preds = %156
  %162 = load i32, i32* %13, align 4
  store i32 %162, i32* %2, align 4
  br label %669

163:                                              ; preds = %156
  %164 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %165 = call i32 @slice_del(%struct.SN_env* %164)
  store i32 %165, i32* %14, align 4
  %166 = load i32, i32* %14, align 4
  %167 = icmp slt i32 %166, 0
  br i1 %167, label %168, label %170

168:                                              ; preds = %163
  %169 = load i32, i32* %14, align 4
  store i32 %169, i32* %2, align 4
  br label %669

170:                                              ; preds = %163
  %171 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %172 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %171, i32 0, i32 5
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %175 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = sub nsw i32 %173, %176
  store i32 %177, i32* %15, align 4
  %178 = load i32, i32* %15, align 4
  %179 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %180 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %183 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %182, i32 0, i32 0
  store i32 %181, i32* %183, align 8
  %184 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %185 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = sub nsw i32 %186, 1
  %188 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %189 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %188, i32 0, i32 2
  %190 = load i32, i32* %189, align 8
  %191 = icmp sle i32 %187, %190
  br i1 %191, label %220, label %192

192:                                              ; preds = %170
  %193 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %194 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %193, i32 0, i32 3
  %195 = load i32*, i32** %194, align 8
  %196 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %197 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  %199 = sub nsw i32 %198, 1
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i32, i32* %195, i64 %200
  %202 = load i32, i32* %201, align 4
  %203 = ashr i32 %202, 5
  %204 = icmp ne i32 %203, 3
  br i1 %204, label %220, label %205

205:                                              ; preds = %192
  %206 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %207 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %206, i32 0, i32 3
  %208 = load i32*, i32** %207, align 8
  %209 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %210 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 4
  %212 = sub nsw i32 %211, 1
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i32, i32* %208, i64 %213
  %215 = load i32, i32* %214, align 4
  %216 = and i32 %215, 31
  %217 = ashr i32 4718616, %216
  %218 = and i32 %217, 1
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %228, label %220

220:                                              ; preds = %205, %192, %170
  %221 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %222 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %221, i32 0, i32 5
  %223 = load i32, i32* %222, align 4
  %224 = load i32, i32* %15, align 4
  %225 = sub nsw i32 %223, %224
  %226 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %227 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %226, i32 0, i32 1
  store i32 %225, i32* %227, align 4
  br label %324

228:                                              ; preds = %205
  %229 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %230 = load i32, i32* @a_2, align 4
  %231 = call i32 @find_among_b(%struct.SN_env* %229, i32 %230, i32 4)
  store i32 %231, i32* %4, align 4
  %232 = load i32, i32* %4, align 4
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %242, label %234

234:                                              ; preds = %228
  %235 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %236 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %235, i32 0, i32 5
  %237 = load i32, i32* %236, align 4
  %238 = load i32, i32* %15, align 4
  %239 = sub nsw i32 %237, %238
  %240 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %241 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %240, i32 0, i32 1
  store i32 %239, i32* %241, align 4
  br label %324

242:                                              ; preds = %228
  %243 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %244 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %243, i32 0, i32 1
  %245 = load i32, i32* %244, align 4
  %246 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %247 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %246, i32 0, i32 4
  store i32 %245, i32* %247, align 8
  %248 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %249 = call i32 @r_R2(%struct.SN_env* %248)
  store i32 %249, i32* %16, align 4
  %250 = load i32, i32* %16, align 4
  %251 = icmp eq i32 %250, 0
  br i1 %251, label %252, label %260

252:                                              ; preds = %242
  %253 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %254 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %253, i32 0, i32 5
  %255 = load i32, i32* %254, align 4
  %256 = load i32, i32* %15, align 4
  %257 = sub nsw i32 %255, %256
  %258 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %259 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %258, i32 0, i32 1
  store i32 %257, i32* %259, align 4
  br label %324

260:                                              ; preds = %242
  %261 = load i32, i32* %16, align 4
  %262 = icmp slt i32 %261, 0
  br i1 %262, label %263, label %265

263:                                              ; preds = %260
  %264 = load i32, i32* %16, align 4
  store i32 %264, i32* %2, align 4
  br label %669

265:                                              ; preds = %260
  %266 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %267 = call i32 @slice_del(%struct.SN_env* %266)
  store i32 %267, i32* %17, align 4
  %268 = load i32, i32* %17, align 4
  %269 = icmp slt i32 %268, 0
  br i1 %269, label %270, label %272

270:                                              ; preds = %265
  %271 = load i32, i32* %17, align 4
  store i32 %271, i32* %2, align 4
  br label %669

272:                                              ; preds = %265
  %273 = load i32, i32* %4, align 4
  switch i32 %273, label %323 [
    i32 1, label %274
  ]

274:                                              ; preds = %272
  %275 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %276 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %275, i32 0, i32 1
  %277 = load i32, i32* %276, align 4
  %278 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %279 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %278, i32 0, i32 0
  store i32 %277, i32* %279, align 8
  %280 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %281 = load i32, i32* @s_7, align 4
  %282 = call i32 @eq_s_b(%struct.SN_env* %280, i32 2, i32 %281)
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %292, label %284

284:                                              ; preds = %274
  %285 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %286 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %285, i32 0, i32 5
  %287 = load i32, i32* %286, align 4
  %288 = load i32, i32* %15, align 4
  %289 = sub nsw i32 %287, %288
  %290 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %291 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %290, i32 0, i32 1
  store i32 %289, i32* %291, align 4
  br label %324

292:                                              ; preds = %274
  %293 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %294 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %293, i32 0, i32 1
  %295 = load i32, i32* %294, align 4
  %296 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %297 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %296, i32 0, i32 4
  store i32 %295, i32* %297, align 8
  %298 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %299 = call i32 @r_R2(%struct.SN_env* %298)
  store i32 %299, i32* %18, align 4
  %300 = load i32, i32* %18, align 4
  %301 = icmp eq i32 %300, 0
  br i1 %301, label %302, label %310

302:                                              ; preds = %292
  %303 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %304 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %303, i32 0, i32 5
  %305 = load i32, i32* %304, align 4
  %306 = load i32, i32* %15, align 4
  %307 = sub nsw i32 %305, %306
  %308 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %309 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %308, i32 0, i32 1
  store i32 %307, i32* %309, align 4
  br label %324

310:                                              ; preds = %292
  %311 = load i32, i32* %18, align 4
  %312 = icmp slt i32 %311, 0
  br i1 %312, label %313, label %315

313:                                              ; preds = %310
  %314 = load i32, i32* %18, align 4
  store i32 %314, i32* %2, align 4
  br label %669

315:                                              ; preds = %310
  %316 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %317 = call i32 @slice_del(%struct.SN_env* %316)
  store i32 %317, i32* %19, align 4
  %318 = load i32, i32* %19, align 4
  %319 = icmp slt i32 %318, 0
  br i1 %319, label %320, label %322

320:                                              ; preds = %315
  %321 = load i32, i32* %19, align 4
  store i32 %321, i32* %2, align 4
  br label %669

322:                                              ; preds = %315
  br label %323

323:                                              ; preds = %272, %322
  br label %324

324:                                              ; preds = %323, %302, %284, %252, %234, %220
  br label %668

325:                                              ; preds = %86
  %326 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %327 = call i32 @r_R2(%struct.SN_env* %326)
  store i32 %327, i32* %20, align 4
  %328 = load i32, i32* %20, align 4
  %329 = icmp sle i32 %328, 0
  br i1 %329, label %330, label %332

330:                                              ; preds = %325
  %331 = load i32, i32* %20, align 4
  store i32 %331, i32* %2, align 4
  br label %669

332:                                              ; preds = %325
  %333 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %334 = call i32 @slice_del(%struct.SN_env* %333)
  store i32 %334, i32* %21, align 4
  %335 = load i32, i32* %21, align 4
  %336 = icmp slt i32 %335, 0
  br i1 %336, label %337, label %339

337:                                              ; preds = %332
  %338 = load i32, i32* %21, align 4
  store i32 %338, i32* %2, align 4
  br label %669

339:                                              ; preds = %332
  %340 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %341 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %340, i32 0, i32 5
  %342 = load i32, i32* %341, align 4
  %343 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %344 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %343, i32 0, i32 1
  %345 = load i32, i32* %344, align 4
  %346 = sub nsw i32 %342, %345
  store i32 %346, i32* %22, align 4
  %347 = load i32, i32* %22, align 4
  %348 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %349 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %348, i32 0, i32 1
  %350 = load i32, i32* %349, align 4
  %351 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %352 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %351, i32 0, i32 0
  store i32 %350, i32* %352, align 8
  %353 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %354 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %353, i32 0, i32 1
  %355 = load i32, i32* %354, align 4
  %356 = sub nsw i32 %355, 3
  %357 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %358 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %357, i32 0, i32 2
  %359 = load i32, i32* %358, align 8
  %360 = icmp sle i32 %356, %359
  br i1 %360, label %385, label %361

361:                                              ; preds = %339
  %362 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %363 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %362, i32 0, i32 3
  %364 = load i32*, i32** %363, align 8
  %365 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %366 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %365, i32 0, i32 1
  %367 = load i32, i32* %366, align 4
  %368 = sub nsw i32 %367, 1
  %369 = sext i32 %368 to i64
  %370 = getelementptr inbounds i32, i32* %364, i64 %369
  %371 = load i32, i32* %370, align 4
  %372 = icmp ne i32 %371, 101
  br i1 %372, label %373, label %393

373:                                              ; preds = %361
  %374 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %375 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %374, i32 0, i32 3
  %376 = load i32*, i32** %375, align 8
  %377 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %378 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %377, i32 0, i32 1
  %379 = load i32, i32* %378, align 4
  %380 = sub nsw i32 %379, 1
  %381 = sext i32 %380 to i64
  %382 = getelementptr inbounds i32, i32* %376, i64 %381
  %383 = load i32, i32* %382, align 4
  %384 = icmp ne i32 %383, 108
  br i1 %384, label %385, label %393

385:                                              ; preds = %373, %339
  %386 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %387 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %386, i32 0, i32 5
  %388 = load i32, i32* %387, align 4
  %389 = load i32, i32* %22, align 4
  %390 = sub nsw i32 %388, %389
  %391 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %392 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %391, i32 0, i32 1
  store i32 %390, i32* %392, align 4
  br label %437

393:                                              ; preds = %373, %361
  %394 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %395 = load i32, i32* @a_3, align 4
  %396 = call i32 @find_among_b(%struct.SN_env* %394, i32 %395, i32 3)
  %397 = icmp ne i32 %396, 0
  br i1 %397, label %406, label %398

398:                                              ; preds = %393
  %399 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %400 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %399, i32 0, i32 5
  %401 = load i32, i32* %400, align 4
  %402 = load i32, i32* %22, align 4
  %403 = sub nsw i32 %401, %402
  %404 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %405 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %404, i32 0, i32 1
  store i32 %403, i32* %405, align 4
  br label %437

406:                                              ; preds = %393
  %407 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %408 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %407, i32 0, i32 1
  %409 = load i32, i32* %408, align 4
  %410 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %411 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %410, i32 0, i32 4
  store i32 %409, i32* %411, align 8
  %412 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %413 = call i32 @r_R2(%struct.SN_env* %412)
  store i32 %413, i32* %23, align 4
  %414 = load i32, i32* %23, align 4
  %415 = icmp eq i32 %414, 0
  br i1 %415, label %416, label %424

416:                                              ; preds = %406
  %417 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %418 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %417, i32 0, i32 5
  %419 = load i32, i32* %418, align 4
  %420 = load i32, i32* %22, align 4
  %421 = sub nsw i32 %419, %420
  %422 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %423 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %422, i32 0, i32 1
  store i32 %421, i32* %423, align 4
  br label %437

424:                                              ; preds = %406
  %425 = load i32, i32* %23, align 4
  %426 = icmp slt i32 %425, 0
  br i1 %426, label %427, label %429

427:                                              ; preds = %424
  %428 = load i32, i32* %23, align 4
  store i32 %428, i32* %2, align 4
  br label %669

429:                                              ; preds = %424
  %430 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %431 = call i32 @slice_del(%struct.SN_env* %430)
  store i32 %431, i32* %24, align 4
  %432 = load i32, i32* %24, align 4
  %433 = icmp slt i32 %432, 0
  br i1 %433, label %434, label %436

434:                                              ; preds = %429
  %435 = load i32, i32* %24, align 4
  store i32 %435, i32* %2, align 4
  br label %669

436:                                              ; preds = %429
  br label %437

437:                                              ; preds = %436, %416, %398, %385
  br label %668

438:                                              ; preds = %86
  %439 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %440 = call i32 @r_R2(%struct.SN_env* %439)
  store i32 %440, i32* %25, align 4
  %441 = load i32, i32* %25, align 4
  %442 = icmp sle i32 %441, 0
  br i1 %442, label %443, label %445

443:                                              ; preds = %438
  %444 = load i32, i32* %25, align 4
  store i32 %444, i32* %2, align 4
  br label %669

445:                                              ; preds = %438
  %446 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %447 = call i32 @slice_del(%struct.SN_env* %446)
  store i32 %447, i32* %26, align 4
  %448 = load i32, i32* %26, align 4
  %449 = icmp slt i32 %448, 0
  br i1 %449, label %450, label %452

450:                                              ; preds = %445
  %451 = load i32, i32* %26, align 4
  store i32 %451, i32* %2, align 4
  br label %669

452:                                              ; preds = %445
  %453 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %454 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %453, i32 0, i32 5
  %455 = load i32, i32* %454, align 4
  %456 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %457 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %456, i32 0, i32 1
  %458 = load i32, i32* %457, align 4
  %459 = sub nsw i32 %455, %458
  store i32 %459, i32* %27, align 4
  %460 = load i32, i32* %27, align 4
  %461 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %462 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %461, i32 0, i32 1
  %463 = load i32, i32* %462, align 4
  %464 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %465 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %464, i32 0, i32 0
  store i32 %463, i32* %465, align 8
  %466 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %467 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %466, i32 0, i32 1
  %468 = load i32, i32* %467, align 4
  %469 = sub nsw i32 %468, 1
  %470 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %471 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %470, i32 0, i32 2
  %472 = load i32, i32* %471, align 8
  %473 = icmp sle i32 %469, %472
  br i1 %473, label %502, label %474

474:                                              ; preds = %452
  %475 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %476 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %475, i32 0, i32 3
  %477 = load i32*, i32** %476, align 8
  %478 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %479 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %478, i32 0, i32 1
  %480 = load i32, i32* %479, align 4
  %481 = sub nsw i32 %480, 1
  %482 = sext i32 %481 to i64
  %483 = getelementptr inbounds i32, i32* %477, i64 %482
  %484 = load i32, i32* %483, align 4
  %485 = ashr i32 %484, 5
  %486 = icmp ne i32 %485, 3
  br i1 %486, label %502, label %487

487:                                              ; preds = %474
  %488 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %489 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %488, i32 0, i32 3
  %490 = load i32*, i32** %489, align 8
  %491 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %492 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %491, i32 0, i32 1
  %493 = load i32, i32* %492, align 4
  %494 = sub nsw i32 %493, 1
  %495 = sext i32 %494 to i64
  %496 = getelementptr inbounds i32, i32* %490, i64 %495
  %497 = load i32, i32* %496, align 4
  %498 = and i32 %497, 31
  %499 = ashr i32 4198408, %498
  %500 = and i32 %499, 1
  %501 = icmp ne i32 %500, 0
  br i1 %501, label %510, label %502

502:                                              ; preds = %487, %474, %452
  %503 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %504 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %503, i32 0, i32 5
  %505 = load i32, i32* %504, align 4
  %506 = load i32, i32* %27, align 4
  %507 = sub nsw i32 %505, %506
  %508 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %509 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %508, i32 0, i32 1
  store i32 %507, i32* %509, align 4
  br label %554

510:                                              ; preds = %487
  %511 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %512 = load i32, i32* @a_4, align 4
  %513 = call i32 @find_among_b(%struct.SN_env* %511, i32 %512, i32 3)
  %514 = icmp ne i32 %513, 0
  br i1 %514, label %523, label %515

515:                                              ; preds = %510
  %516 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %517 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %516, i32 0, i32 5
  %518 = load i32, i32* %517, align 4
  %519 = load i32, i32* %27, align 4
  %520 = sub nsw i32 %518, %519
  %521 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %522 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %521, i32 0, i32 1
  store i32 %520, i32* %522, align 4
  br label %554

523:                                              ; preds = %510
  %524 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %525 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %524, i32 0, i32 1
  %526 = load i32, i32* %525, align 4
  %527 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %528 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %527, i32 0, i32 4
  store i32 %526, i32* %528, align 8
  %529 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %530 = call i32 @r_R2(%struct.SN_env* %529)
  store i32 %530, i32* %28, align 4
  %531 = load i32, i32* %28, align 4
  %532 = icmp eq i32 %531, 0
  br i1 %532, label %533, label %541

533:                                              ; preds = %523
  %534 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %535 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %534, i32 0, i32 5
  %536 = load i32, i32* %535, align 4
  %537 = load i32, i32* %27, align 4
  %538 = sub nsw i32 %536, %537
  %539 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %540 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %539, i32 0, i32 1
  store i32 %538, i32* %540, align 4
  br label %554

541:                                              ; preds = %523
  %542 = load i32, i32* %28, align 4
  %543 = icmp slt i32 %542, 0
  br i1 %543, label %544, label %546

544:                                              ; preds = %541
  %545 = load i32, i32* %28, align 4
  store i32 %545, i32* %2, align 4
  br label %669

546:                                              ; preds = %541
  %547 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %548 = call i32 @slice_del(%struct.SN_env* %547)
  store i32 %548, i32* %29, align 4
  %549 = load i32, i32* %29, align 4
  %550 = icmp slt i32 %549, 0
  br i1 %550, label %551, label %553

551:                                              ; preds = %546
  %552 = load i32, i32* %29, align 4
  store i32 %552, i32* %2, align 4
  br label %669

553:                                              ; preds = %546
  br label %554

554:                                              ; preds = %553, %533, %515, %502
  br label %668

555:                                              ; preds = %86
  %556 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %557 = call i32 @r_R2(%struct.SN_env* %556)
  store i32 %557, i32* %30, align 4
  %558 = load i32, i32* %30, align 4
  %559 = icmp sle i32 %558, 0
  br i1 %559, label %560, label %562

560:                                              ; preds = %555
  %561 = load i32, i32* %30, align 4
  store i32 %561, i32* %2, align 4
  br label %669

562:                                              ; preds = %555
  %563 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %564 = call i32 @slice_del(%struct.SN_env* %563)
  store i32 %564, i32* %31, align 4
  %565 = load i32, i32* %31, align 4
  %566 = icmp slt i32 %565, 0
  br i1 %566, label %567, label %569

567:                                              ; preds = %562
  %568 = load i32, i32* %31, align 4
  store i32 %568, i32* %2, align 4
  br label %669

569:                                              ; preds = %562
  %570 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %571 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %570, i32 0, i32 5
  %572 = load i32, i32* %571, align 4
  %573 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %574 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %573, i32 0, i32 1
  %575 = load i32, i32* %574, align 4
  %576 = sub nsw i32 %572, %575
  store i32 %576, i32* %32, align 4
  %577 = load i32, i32* %32, align 4
  %578 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %579 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %578, i32 0, i32 1
  %580 = load i32, i32* %579, align 4
  %581 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %582 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %581, i32 0, i32 0
  store i32 %580, i32* %582, align 8
  %583 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %584 = load i32, i32* @s_8, align 4
  %585 = call i32 @eq_s_b(%struct.SN_env* %583, i32 2, i32 %584)
  %586 = icmp ne i32 %585, 0
  br i1 %586, label %595, label %587

587:                                              ; preds = %569
  %588 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %589 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %588, i32 0, i32 5
  %590 = load i32, i32* %589, align 4
  %591 = load i32, i32* %32, align 4
  %592 = sub nsw i32 %590, %591
  %593 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %594 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %593, i32 0, i32 1
  store i32 %592, i32* %594, align 4
  br label %626

595:                                              ; preds = %569
  %596 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %597 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %596, i32 0, i32 1
  %598 = load i32, i32* %597, align 4
  %599 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %600 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %599, i32 0, i32 4
  store i32 %598, i32* %600, align 8
  %601 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %602 = call i32 @r_R2(%struct.SN_env* %601)
  store i32 %602, i32* %33, align 4
  %603 = load i32, i32* %33, align 4
  %604 = icmp eq i32 %603, 0
  br i1 %604, label %605, label %613

605:                                              ; preds = %595
  %606 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %607 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %606, i32 0, i32 5
  %608 = load i32, i32* %607, align 4
  %609 = load i32, i32* %32, align 4
  %610 = sub nsw i32 %608, %609
  %611 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %612 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %611, i32 0, i32 1
  store i32 %610, i32* %612, align 4
  br label %626

613:                                              ; preds = %595
  %614 = load i32, i32* %33, align 4
  %615 = icmp slt i32 %614, 0
  br i1 %615, label %616, label %618

616:                                              ; preds = %613
  %617 = load i32, i32* %33, align 4
  store i32 %617, i32* %2, align 4
  br label %669

618:                                              ; preds = %613
  %619 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %620 = call i32 @slice_del(%struct.SN_env* %619)
  store i32 %620, i32* %34, align 4
  %621 = load i32, i32* %34, align 4
  %622 = icmp slt i32 %621, 0
  br i1 %622, label %623, label %625

623:                                              ; preds = %618
  %624 = load i32, i32* %34, align 4
  store i32 %624, i32* %2, align 4
  br label %669

625:                                              ; preds = %618
  br label %626

626:                                              ; preds = %625, %605, %587
  br label %668

627:                                              ; preds = %86
  %628 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %629 = call i32 @r_RV(%struct.SN_env* %628)
  store i32 %629, i32* %35, align 4
  %630 = load i32, i32* %35, align 4
  %631 = icmp sle i32 %630, 0
  br i1 %631, label %632, label %634

632:                                              ; preds = %627
  %633 = load i32, i32* %35, align 4
  store i32 %633, i32* %2, align 4
  br label %669

634:                                              ; preds = %627
  %635 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %636 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %635, i32 0, i32 1
  %637 = load i32, i32* %636, align 4
  %638 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %639 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %638, i32 0, i32 2
  %640 = load i32, i32* %639, align 8
  %641 = icmp sle i32 %637, %640
  br i1 %641, label %654, label %642

642:                                              ; preds = %634
  %643 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %644 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %643, i32 0, i32 3
  %645 = load i32*, i32** %644, align 8
  %646 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %647 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %646, i32 0, i32 1
  %648 = load i32, i32* %647, align 4
  %649 = sub nsw i32 %648, 1
  %650 = sext i32 %649 to i64
  %651 = getelementptr inbounds i32, i32* %645, i64 %650
  %652 = load i32, i32* %651, align 4
  %653 = icmp ne i32 %652, 101
  br i1 %653, label %654, label %655

654:                                              ; preds = %642, %634
  store i32 0, i32* %2, align 4
  br label %669

655:                                              ; preds = %642
  %656 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %657 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %656, i32 0, i32 1
  %658 = load i32, i32* %657, align 4
  %659 = add nsw i32 %658, -1
  store i32 %659, i32* %657, align 4
  %660 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %661 = load i32, i32* @s_9, align 4
  %662 = call i32 @slice_from_s(%struct.SN_env* %660, i32 2, i32 %661)
  store i32 %662, i32* %36, align 4
  %663 = load i32, i32* %36, align 4
  %664 = icmp slt i32 %663, 0
  br i1 %664, label %665, label %667

665:                                              ; preds = %655
  %666 = load i32, i32* %36, align 4
  store i32 %666, i32* %2, align 4
  br label %669

667:                                              ; preds = %655
  br label %668

668:                                              ; preds = %86, %667, %626, %554, %437, %324, %155, %139, %123, %107
  store i32 1, i32* %2, align 4
  br label %669

669:                                              ; preds = %668, %665, %654, %632, %623, %616, %567, %560, %551, %544, %450, %443, %434, %427, %337, %330, %320, %313, %270, %263, %168, %161, %153, %145, %137, %129, %121, %113, %105, %98, %85, %78
  %670 = load i32, i32* %2, align 4
  ret i32 %670
}

declare dso_local i32 @find_among_b(%struct.SN_env*, i32, i32) #1

declare dso_local i32 @r_R2(%struct.SN_env*) #1

declare dso_local i32 @slice_del(%struct.SN_env*) #1

declare dso_local i32 @slice_from_s(%struct.SN_env*, i32, i32) #1

declare dso_local i32 @r_R1(%struct.SN_env*) #1

declare dso_local i32 @eq_s_b(%struct.SN_env*, i32, i32) #1

declare dso_local i32 @r_RV(%struct.SN_env*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
