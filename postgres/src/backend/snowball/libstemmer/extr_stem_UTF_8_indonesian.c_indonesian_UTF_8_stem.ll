; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_stem_UTF_8_indonesian.c_indonesian_UTF_8_stem.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_stem_UTF_8_indonesian.c_indonesian_UTF_8_stem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SN_env = type { i32*, i32, i32, i32 }

@g_vowel = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @indonesian_UTF_8_stem(%struct.SN_env* %0) #0 {
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
  store %struct.SN_env* %0, %struct.SN_env** %3, align 8
  %22 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %23 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  store i32 0, i32* %25, align 4
  %26 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %27 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %4, align 4
  br label %29

29:                                               ; preds = %1, %39
  %30 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %31 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %5, align 4
  %33 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %34 = load i32, i32* @g_vowel, align 4
  %35 = call i32 @out_grouping_U(%struct.SN_env* %33, i32 %34, i32 97, i32 117, i32 1)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %29
  br label %51

39:                                               ; preds = %29
  %40 = load i32, i32* %6, align 4
  %41 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %42 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = add nsw i32 %43, %40
  store i32 %44, i32* %42, align 8
  %45 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %46 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  %49 = load i32, i32* %48, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %48, align 4
  br label %29

51:                                               ; preds = %38
  %52 = load i32, i32* %5, align 4
  %53 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %54 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 8
  br label %55

55:                                               ; preds = %51
  %56 = load i32, i32* %4, align 4
  %57 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %58 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 8
  %59 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %60 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 0
  %63 = load i32, i32* %62, align 4
  %64 = icmp sgt i32 %63, 2
  br i1 %64, label %66, label %65

65:                                               ; preds = %55
  store i32 0, i32* %2, align 4
  br label %306

66:                                               ; preds = %55
  %67 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %68 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 1
  store i32 0, i32* %70, align 4
  %71 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %72 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %75 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %74, i32 0, i32 2
  store i32 %73, i32* %75, align 4
  %76 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %77 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %80 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 8
  %81 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %82 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %85 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = sub nsw i32 %83, %86
  store i32 %87, i32* %7, align 4
  %88 = load i32, i32* %7, align 4
  %89 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %90 = call i32 @r_remove_particle(%struct.SN_env* %89)
  store i32 %90, i32* %8, align 4
  %91 = load i32, i32* %8, align 4
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %66
  br label %100

94:                                               ; preds = %66
  %95 = load i32, i32* %8, align 4
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %94
  %98 = load i32, i32* %8, align 4
  store i32 %98, i32* %2, align 4
  br label %306

99:                                               ; preds = %94
  br label %100

100:                                              ; preds = %99, %93
  %101 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %102 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* %7, align 4
  %105 = sub nsw i32 %103, %104
  %106 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %107 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %106, i32 0, i32 1
  store i32 %105, i32* %107, align 8
  %108 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %109 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %108, i32 0, i32 0
  %110 = load i32*, i32** %109, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 0
  %112 = load i32, i32* %111, align 4
  %113 = icmp sgt i32 %112, 2
  br i1 %113, label %115, label %114

114:                                              ; preds = %100
  store i32 0, i32* %2, align 4
  br label %306

115:                                              ; preds = %100
  %116 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %117 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %120 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = sub nsw i32 %118, %121
  store i32 %122, i32* %9, align 4
  %123 = load i32, i32* %9, align 4
  %124 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %125 = call i32 @r_remove_possessive_pronoun(%struct.SN_env* %124)
  store i32 %125, i32* %10, align 4
  %126 = load i32, i32* %10, align 4
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %115
  br label %135

129:                                              ; preds = %115
  %130 = load i32, i32* %10, align 4
  %131 = icmp slt i32 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %129
  %133 = load i32, i32* %10, align 4
  store i32 %133, i32* %2, align 4
  br label %306

134:                                              ; preds = %129
  br label %135

135:                                              ; preds = %134, %128
  %136 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %137 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %136, i32 0, i32 3
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* %9, align 4
  %140 = sub nsw i32 %138, %139
  %141 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %142 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %141, i32 0, i32 1
  store i32 %140, i32* %142, align 8
  %143 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %144 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %147 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %146, i32 0, i32 1
  store i32 %145, i32* %147, align 8
  %148 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %149 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %148, i32 0, i32 0
  %150 = load i32*, i32** %149, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 0
  %152 = load i32, i32* %151, align 4
  %153 = icmp sgt i32 %152, 2
  br i1 %153, label %155, label %154

154:                                              ; preds = %135
  store i32 0, i32* %2, align 4
  br label %306

155:                                              ; preds = %135
  %156 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %157 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 8
  store i32 %158, i32* %11, align 4
  %159 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %160 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 8
  store i32 %161, i32* %12, align 4
  %162 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %163 = call i32 @r_remove_first_order_prefix(%struct.SN_env* %162)
  store i32 %163, i32* %13, align 4
  %164 = load i32, i32* %13, align 4
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %166, label %167

166:                                              ; preds = %155
  br label %242

167:                                              ; preds = %155
  %168 = load i32, i32* %13, align 4
  %169 = icmp slt i32 %168, 0
  br i1 %169, label %170, label %172

170:                                              ; preds = %167
  %171 = load i32, i32* %13, align 4
  store i32 %171, i32* %2, align 4
  br label %306

172:                                              ; preds = %167
  %173 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %174 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 8
  store i32 %175, i32* %14, align 4
  %176 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %177 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 8
  store i32 %178, i32* %15, align 4
  %179 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %180 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %179, i32 0, i32 0
  %181 = load i32*, i32** %180, align 8
  %182 = getelementptr inbounds i32, i32* %181, i64 0
  %183 = load i32, i32* %182, align 4
  %184 = icmp sgt i32 %183, 2
  br i1 %184, label %186, label %185

185:                                              ; preds = %172
  br label %235

186:                                              ; preds = %172
  %187 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %188 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 8
  %190 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %191 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %190, i32 0, i32 2
  store i32 %189, i32* %191, align 4
  %192 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %193 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %192, i32 0, i32 3
  %194 = load i32, i32* %193, align 8
  %195 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %196 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %195, i32 0, i32 1
  store i32 %194, i32* %196, align 8
  %197 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %198 = call i32 @r_remove_suffix(%struct.SN_env* %197)
  store i32 %198, i32* %16, align 4
  %199 = load i32, i32* %16, align 4
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %201, label %202

201:                                              ; preds = %186
  br label %235

202:                                              ; preds = %186
  %203 = load i32, i32* %16, align 4
  %204 = icmp slt i32 %203, 0
  br i1 %204, label %205, label %207

205:                                              ; preds = %202
  %206 = load i32, i32* %16, align 4
  store i32 %206, i32* %2, align 4
  br label %306

207:                                              ; preds = %202
  %208 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %209 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %208, i32 0, i32 2
  %210 = load i32, i32* %209, align 4
  %211 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %212 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %211, i32 0, i32 1
  store i32 %210, i32* %212, align 8
  %213 = load i32, i32* %15, align 4
  %214 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %215 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %214, i32 0, i32 1
  store i32 %213, i32* %215, align 8
  %216 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %217 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %216, i32 0, i32 0
  %218 = load i32*, i32** %217, align 8
  %219 = getelementptr inbounds i32, i32* %218, i64 0
  %220 = load i32, i32* %219, align 4
  %221 = icmp sgt i32 %220, 2
  br i1 %221, label %223, label %222

222:                                              ; preds = %207
  br label %235

223:                                              ; preds = %207
  %224 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %225 = call i32 @r_remove_second_order_prefix(%struct.SN_env* %224)
  store i32 %225, i32* %17, align 4
  %226 = load i32, i32* %17, align 4
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %228, label %229

228:                                              ; preds = %223
  br label %235

229:                                              ; preds = %223
  %230 = load i32, i32* %17, align 4
  %231 = icmp slt i32 %230, 0
  br i1 %231, label %232, label %234

232:                                              ; preds = %229
  %233 = load i32, i32* %17, align 4
  store i32 %233, i32* %2, align 4
  br label %306

234:                                              ; preds = %229
  br label %235

235:                                              ; preds = %234, %228, %222, %201, %185
  %236 = load i32, i32* %14, align 4
  %237 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %238 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %237, i32 0, i32 1
  store i32 %236, i32* %238, align 8
  %239 = load i32, i32* %12, align 4
  %240 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %241 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %240, i32 0, i32 1
  store i32 %239, i32* %241, align 8
  br label %305

242:                                              ; preds = %166
  %243 = load i32, i32* %11, align 4
  %244 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %245 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %244, i32 0, i32 1
  store i32 %243, i32* %245, align 8
  %246 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %247 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %246, i32 0, i32 1
  %248 = load i32, i32* %247, align 8
  store i32 %248, i32* %18, align 4
  %249 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %250 = call i32 @r_remove_second_order_prefix(%struct.SN_env* %249)
  store i32 %250, i32* %19, align 4
  %251 = load i32, i32* %19, align 4
  %252 = icmp eq i32 %251, 0
  br i1 %252, label %253, label %254

253:                                              ; preds = %242
  br label %260

254:                                              ; preds = %242
  %255 = load i32, i32* %19, align 4
  %256 = icmp slt i32 %255, 0
  br i1 %256, label %257, label %259

257:                                              ; preds = %254
  %258 = load i32, i32* %19, align 4
  store i32 %258, i32* %2, align 4
  br label %306

259:                                              ; preds = %254
  br label %260

260:                                              ; preds = %259, %253
  %261 = load i32, i32* %18, align 4
  %262 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %263 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %262, i32 0, i32 1
  store i32 %261, i32* %263, align 8
  %264 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %265 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %264, i32 0, i32 1
  %266 = load i32, i32* %265, align 8
  store i32 %266, i32* %20, align 4
  %267 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %268 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %267, i32 0, i32 0
  %269 = load i32*, i32** %268, align 8
  %270 = getelementptr inbounds i32, i32* %269, i64 0
  %271 = load i32, i32* %270, align 4
  %272 = icmp sgt i32 %271, 2
  br i1 %272, label %274, label %273

273:                                              ; preds = %260
  br label %301

274:                                              ; preds = %260
  %275 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %276 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %275, i32 0, i32 1
  %277 = load i32, i32* %276, align 8
  %278 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %279 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %278, i32 0, i32 2
  store i32 %277, i32* %279, align 4
  %280 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %281 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %280, i32 0, i32 3
  %282 = load i32, i32* %281, align 8
  %283 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %284 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %283, i32 0, i32 1
  store i32 %282, i32* %284, align 8
  %285 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %286 = call i32 @r_remove_suffix(%struct.SN_env* %285)
  store i32 %286, i32* %21, align 4
  %287 = load i32, i32* %21, align 4
  %288 = icmp eq i32 %287, 0
  br i1 %288, label %289, label %290

289:                                              ; preds = %274
  br label %301

290:                                              ; preds = %274
  %291 = load i32, i32* %21, align 4
  %292 = icmp slt i32 %291, 0
  br i1 %292, label %293, label %295

293:                                              ; preds = %290
  %294 = load i32, i32* %21, align 4
  store i32 %294, i32* %2, align 4
  br label %306

295:                                              ; preds = %290
  %296 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %297 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %296, i32 0, i32 2
  %298 = load i32, i32* %297, align 4
  %299 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %300 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %299, i32 0, i32 1
  store i32 %298, i32* %300, align 8
  br label %301

301:                                              ; preds = %295, %289, %273
  %302 = load i32, i32* %20, align 4
  %303 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %304 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %303, i32 0, i32 1
  store i32 %302, i32* %304, align 8
  br label %305

305:                                              ; preds = %301, %235
  store i32 1, i32* %2, align 4
  br label %306

306:                                              ; preds = %305, %293, %257, %232, %205, %170, %154, %132, %114, %97, %65
  %307 = load i32, i32* %2, align 4
  ret i32 %307
}

declare dso_local i32 @out_grouping_U(%struct.SN_env*, i32, i32, i32, i32) #1

declare dso_local i32 @r_remove_particle(%struct.SN_env*) #1

declare dso_local i32 @r_remove_possessive_pronoun(%struct.SN_env*) #1

declare dso_local i32 @r_remove_first_order_prefix(%struct.SN_env*) #1

declare dso_local i32 @r_remove_suffix(%struct.SN_env*) #1

declare dso_local i32 @r_remove_second_order_prefix(%struct.SN_env*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
