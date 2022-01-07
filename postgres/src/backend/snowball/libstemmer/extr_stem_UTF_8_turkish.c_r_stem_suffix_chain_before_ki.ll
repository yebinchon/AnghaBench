; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_stem_UTF_8_turkish.c_r_stem_suffix_chain_before_ki.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_stem_UTF_8_turkish.c_r_stem_suffix_chain_before_ki.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SN_env = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.SN_env*)* @r_stem_suffix_chain_before_ki to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r_stem_suffix_chain_before_ki(%struct.SN_env* %0) #0 {
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
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  %43 = alloca i32, align 4
  %44 = alloca i32, align 4
  %45 = alloca i32, align 4
  store %struct.SN_env* %0, %struct.SN_env** %3, align 8
  %46 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %47 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %50 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 4
  %51 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %52 = call i32 @r_mark_ki(%struct.SN_env* %51)
  store i32 %52, i32* %4, align 4
  %53 = load i32, i32* %4, align 4
  %54 = icmp sle i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %1
  %56 = load i32, i32* %4, align 4
  store i32 %56, i32* %2, align 4
  br label %647

57:                                               ; preds = %1
  %58 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %59 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %62 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = sub nsw i32 %60, %63
  store i32 %64, i32* %5, align 4
  %65 = load i32, i32* %5, align 4
  %66 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %67 = call i32 @r_mark_DA(%struct.SN_env* %66)
  store i32 %67, i32* %6, align 4
  %68 = load i32, i32* %6, align 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %57
  br label %262

71:                                               ; preds = %57
  %72 = load i32, i32* %6, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %71
  %75 = load i32, i32* %6, align 4
  store i32 %75, i32* %2, align 4
  br label %647

76:                                               ; preds = %71
  %77 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %78 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %81 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %80, i32 0, i32 3
  store i32 %79, i32* %81, align 4
  %82 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %83 = call i32 @slice_del(%struct.SN_env* %82)
  store i32 %83, i32* %7, align 4
  %84 = load i32, i32* %7, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %76
  %87 = load i32, i32* %7, align 4
  store i32 %87, i32* %2, align 4
  br label %647

88:                                               ; preds = %76
  %89 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %90 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %93 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = sub nsw i32 %91, %94
  store i32 %95, i32* %8, align 4
  %96 = load i32, i32* %8, align 4
  %97 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %98 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %101 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %100, i32 0, i32 0
  store i32 %99, i32* %101, align 4
  %102 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %103 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %106 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = sub nsw i32 %104, %107
  store i32 %108, i32* %9, align 4
  %109 = load i32, i32* %9, align 4
  %110 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %111 = call i32 @r_mark_lAr(%struct.SN_env* %110)
  store i32 %111, i32* %10, align 4
  %112 = load i32, i32* %10, align 4
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %88
  br label %160

115:                                              ; preds = %88
  %116 = load i32, i32* %10, align 4
  %117 = icmp slt i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %115
  %119 = load i32, i32* %10, align 4
  store i32 %119, i32* %2, align 4
  br label %647

120:                                              ; preds = %115
  %121 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %122 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %125 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %124, i32 0, i32 3
  store i32 %123, i32* %125, align 4
  %126 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %127 = call i32 @slice_del(%struct.SN_env* %126)
  store i32 %127, i32* %11, align 4
  %128 = load i32, i32* %11, align 4
  %129 = icmp slt i32 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %120
  %131 = load i32, i32* %11, align 4
  store i32 %131, i32* %2, align 4
  br label %647

132:                                              ; preds = %120
  %133 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %134 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %137 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = sub nsw i32 %135, %138
  store i32 %139, i32* %12, align 4
  %140 = load i32, i32* %12, align 4
  %141 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %142 = call i32 @r_stem_suffix_chain_before_ki(%struct.SN_env* %141)
  store i32 %142, i32* %13, align 4
  %143 = load i32, i32* %13, align 4
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %145, label %153

145:                                              ; preds = %132
  %146 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %147 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* %12, align 4
  %150 = sub nsw i32 %148, %149
  %151 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %152 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %151, i32 0, i32 1
  store i32 %150, i32* %152, align 4
  br label %159

153:                                              ; preds = %132
  %154 = load i32, i32* %13, align 4
  %155 = icmp slt i32 %154, 0
  br i1 %155, label %156, label %158

156:                                              ; preds = %153
  %157 = load i32, i32* %13, align 4
  store i32 %157, i32* %2, align 4
  br label %647

158:                                              ; preds = %153
  br label %159

159:                                              ; preds = %158, %145
  br label %260

160:                                              ; preds = %114
  %161 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %162 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* %9, align 4
  %165 = sub nsw i32 %163, %164
  %166 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %167 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %166, i32 0, i32 1
  store i32 %165, i32* %167, align 4
  %168 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %169 = call i32 @r_mark_possessives(%struct.SN_env* %168)
  store i32 %169, i32* %14, align 4
  %170 = load i32, i32* %14, align 4
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %172, label %180

172:                                              ; preds = %160
  %173 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %174 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 4
  %176 = load i32, i32* %8, align 4
  %177 = sub nsw i32 %175, %176
  %178 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %179 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %178, i32 0, i32 1
  store i32 %177, i32* %179, align 4
  br label %261

180:                                              ; preds = %160
  %181 = load i32, i32* %14, align 4
  %182 = icmp slt i32 %181, 0
  br i1 %182, label %183, label %185

183:                                              ; preds = %180
  %184 = load i32, i32* %14, align 4
  store i32 %184, i32* %2, align 4
  br label %647

185:                                              ; preds = %180
  %186 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %187 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %190 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %189, i32 0, i32 3
  store i32 %188, i32* %190, align 4
  %191 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %192 = call i32 @slice_del(%struct.SN_env* %191)
  store i32 %192, i32* %15, align 4
  %193 = load i32, i32* %15, align 4
  %194 = icmp slt i32 %193, 0
  br i1 %194, label %195, label %197

195:                                              ; preds = %185
  %196 = load i32, i32* %15, align 4
  store i32 %196, i32* %2, align 4
  br label %647

197:                                              ; preds = %185
  %198 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %199 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %198, i32 0, i32 2
  %200 = load i32, i32* %199, align 4
  %201 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %202 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 4
  %204 = sub nsw i32 %200, %203
  store i32 %204, i32* %16, align 4
  %205 = load i32, i32* %16, align 4
  %206 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %207 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 4
  %209 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %210 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %209, i32 0, i32 0
  store i32 %208, i32* %210, align 4
  %211 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %212 = call i32 @r_mark_lAr(%struct.SN_env* %211)
  store i32 %212, i32* %17, align 4
  %213 = load i32, i32* %17, align 4
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %215, label %223

215:                                              ; preds = %197
  %216 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %217 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %216, i32 0, i32 2
  %218 = load i32, i32* %217, align 4
  %219 = load i32, i32* %16, align 4
  %220 = sub nsw i32 %218, %219
  %221 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %222 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %221, i32 0, i32 1
  store i32 %220, i32* %222, align 4
  br label %259

223:                                              ; preds = %197
  %224 = load i32, i32* %17, align 4
  %225 = icmp slt i32 %224, 0
  br i1 %225, label %226, label %228

226:                                              ; preds = %223
  %227 = load i32, i32* %17, align 4
  store i32 %227, i32* %2, align 4
  br label %647

228:                                              ; preds = %223
  %229 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %230 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %229, i32 0, i32 1
  %231 = load i32, i32* %230, align 4
  %232 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %233 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %232, i32 0, i32 3
  store i32 %231, i32* %233, align 4
  %234 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %235 = call i32 @slice_del(%struct.SN_env* %234)
  store i32 %235, i32* %18, align 4
  %236 = load i32, i32* %18, align 4
  %237 = icmp slt i32 %236, 0
  br i1 %237, label %238, label %240

238:                                              ; preds = %228
  %239 = load i32, i32* %18, align 4
  store i32 %239, i32* %2, align 4
  br label %647

240:                                              ; preds = %228
  %241 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %242 = call i32 @r_stem_suffix_chain_before_ki(%struct.SN_env* %241)
  store i32 %242, i32* %19, align 4
  %243 = load i32, i32* %19, align 4
  %244 = icmp eq i32 %243, 0
  br i1 %244, label %245, label %253

245:                                              ; preds = %240
  %246 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %247 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %246, i32 0, i32 2
  %248 = load i32, i32* %247, align 4
  %249 = load i32, i32* %16, align 4
  %250 = sub nsw i32 %248, %249
  %251 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %252 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %251, i32 0, i32 1
  store i32 %250, i32* %252, align 4
  br label %259

253:                                              ; preds = %240
  %254 = load i32, i32* %19, align 4
  %255 = icmp slt i32 %254, 0
  br i1 %255, label %256, label %258

256:                                              ; preds = %253
  %257 = load i32, i32* %19, align 4
  store i32 %257, i32* %2, align 4
  br label %647

258:                                              ; preds = %253
  br label %259

259:                                              ; preds = %258, %245, %215
  br label %260

260:                                              ; preds = %259, %159
  br label %261

261:                                              ; preds = %260, %172
  br label %646

262:                                              ; preds = %70
  %263 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %264 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %263, i32 0, i32 2
  %265 = load i32, i32* %264, align 4
  %266 = load i32, i32* %5, align 4
  %267 = sub nsw i32 %265, %266
  %268 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %269 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %268, i32 0, i32 1
  store i32 %267, i32* %269, align 4
  %270 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %271 = call i32 @r_mark_nUn(%struct.SN_env* %270)
  store i32 %271, i32* %20, align 4
  %272 = load i32, i32* %20, align 4
  %273 = icmp eq i32 %272, 0
  br i1 %273, label %274, label %275

274:                                              ; preds = %262
  br label %491

275:                                              ; preds = %262
  %276 = load i32, i32* %20, align 4
  %277 = icmp slt i32 %276, 0
  br i1 %277, label %278, label %280

278:                                              ; preds = %275
  %279 = load i32, i32* %20, align 4
  store i32 %279, i32* %2, align 4
  br label %647

280:                                              ; preds = %275
  %281 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %282 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %281, i32 0, i32 1
  %283 = load i32, i32* %282, align 4
  %284 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %285 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %284, i32 0, i32 3
  store i32 %283, i32* %285, align 4
  %286 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %287 = call i32 @slice_del(%struct.SN_env* %286)
  store i32 %287, i32* %21, align 4
  %288 = load i32, i32* %21, align 4
  %289 = icmp slt i32 %288, 0
  br i1 %289, label %290, label %292

290:                                              ; preds = %280
  %291 = load i32, i32* %21, align 4
  store i32 %291, i32* %2, align 4
  br label %647

292:                                              ; preds = %280
  %293 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %294 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %293, i32 0, i32 2
  %295 = load i32, i32* %294, align 4
  %296 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %297 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %296, i32 0, i32 1
  %298 = load i32, i32* %297, align 4
  %299 = sub nsw i32 %295, %298
  store i32 %299, i32* %22, align 4
  %300 = load i32, i32* %22, align 4
  %301 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %302 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %301, i32 0, i32 1
  %303 = load i32, i32* %302, align 4
  %304 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %305 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %304, i32 0, i32 0
  store i32 %303, i32* %305, align 4
  %306 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %307 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %306, i32 0, i32 2
  %308 = load i32, i32* %307, align 4
  %309 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %310 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %309, i32 0, i32 1
  %311 = load i32, i32* %310, align 4
  %312 = sub nsw i32 %308, %311
  store i32 %312, i32* %23, align 4
  %313 = load i32, i32* %23, align 4
  %314 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %315 = call i32 @r_mark_lArI(%struct.SN_env* %314)
  store i32 %315, i32* %24, align 4
  %316 = load i32, i32* %24, align 4
  %317 = icmp eq i32 %316, 0
  br i1 %317, label %318, label %319

318:                                              ; preds = %292
  br label %337

319:                                              ; preds = %292
  %320 = load i32, i32* %24, align 4
  %321 = icmp slt i32 %320, 0
  br i1 %321, label %322, label %324

322:                                              ; preds = %319
  %323 = load i32, i32* %24, align 4
  store i32 %323, i32* %2, align 4
  br label %647

324:                                              ; preds = %319
  %325 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %326 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %325, i32 0, i32 1
  %327 = load i32, i32* %326, align 4
  %328 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %329 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %328, i32 0, i32 3
  store i32 %327, i32* %329, align 4
  %330 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %331 = call i32 @slice_del(%struct.SN_env* %330)
  store i32 %331, i32* %25, align 4
  %332 = load i32, i32* %25, align 4
  %333 = icmp slt i32 %332, 0
  br i1 %333, label %334, label %336

334:                                              ; preds = %324
  %335 = load i32, i32* %25, align 4
  store i32 %335, i32* %2, align 4
  br label %647

336:                                              ; preds = %324
  br label %489

337:                                              ; preds = %318
  %338 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %339 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %338, i32 0, i32 2
  %340 = load i32, i32* %339, align 4
  %341 = load i32, i32* %23, align 4
  %342 = sub nsw i32 %340, %341
  %343 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %344 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %343, i32 0, i32 1
  store i32 %342, i32* %344, align 4
  %345 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %346 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %345, i32 0, i32 1
  %347 = load i32, i32* %346, align 4
  %348 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %349 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %348, i32 0, i32 0
  store i32 %347, i32* %349, align 4
  %350 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %351 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %350, i32 0, i32 2
  %352 = load i32, i32* %351, align 4
  %353 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %354 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %353, i32 0, i32 1
  %355 = load i32, i32* %354, align 4
  %356 = sub nsw i32 %352, %355
  store i32 %356, i32* %26, align 4
  %357 = load i32, i32* %26, align 4
  %358 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %359 = call i32 @r_mark_possessives(%struct.SN_env* %358)
  store i32 %359, i32* %27, align 4
  %360 = load i32, i32* %27, align 4
  %361 = icmp eq i32 %360, 0
  br i1 %361, label %362, label %363

362:                                              ; preds = %337
  br label %369

363:                                              ; preds = %337
  %364 = load i32, i32* %27, align 4
  %365 = icmp slt i32 %364, 0
  br i1 %365, label %366, label %368

366:                                              ; preds = %363
  %367 = load i32, i32* %27, align 4
  store i32 %367, i32* %2, align 4
  br label %647

368:                                              ; preds = %363
  br label %388

369:                                              ; preds = %362
  %370 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %371 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %370, i32 0, i32 2
  %372 = load i32, i32* %371, align 4
  %373 = load i32, i32* %26, align 4
  %374 = sub nsw i32 %372, %373
  %375 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %376 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %375, i32 0, i32 1
  store i32 %374, i32* %376, align 4
  %377 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %378 = call i32 @r_mark_sU(%struct.SN_env* %377)
  store i32 %378, i32* %28, align 4
  %379 = load i32, i32* %28, align 4
  %380 = icmp eq i32 %379, 0
  br i1 %380, label %381, label %382

381:                                              ; preds = %369
  br label %463

382:                                              ; preds = %369
  %383 = load i32, i32* %28, align 4
  %384 = icmp slt i32 %383, 0
  br i1 %384, label %385, label %387

385:                                              ; preds = %382
  %386 = load i32, i32* %28, align 4
  store i32 %386, i32* %2, align 4
  br label %647

387:                                              ; preds = %382
  br label %388

388:                                              ; preds = %387, %368
  %389 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %390 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %389, i32 0, i32 1
  %391 = load i32, i32* %390, align 4
  %392 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %393 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %392, i32 0, i32 3
  store i32 %391, i32* %393, align 4
  %394 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %395 = call i32 @slice_del(%struct.SN_env* %394)
  store i32 %395, i32* %29, align 4
  %396 = load i32, i32* %29, align 4
  %397 = icmp slt i32 %396, 0
  br i1 %397, label %398, label %400

398:                                              ; preds = %388
  %399 = load i32, i32* %29, align 4
  store i32 %399, i32* %2, align 4
  br label %647

400:                                              ; preds = %388
  %401 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %402 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %401, i32 0, i32 2
  %403 = load i32, i32* %402, align 4
  %404 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %405 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %404, i32 0, i32 1
  %406 = load i32, i32* %405, align 4
  %407 = sub nsw i32 %403, %406
  store i32 %407, i32* %30, align 4
  %408 = load i32, i32* %30, align 4
  %409 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %410 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %409, i32 0, i32 1
  %411 = load i32, i32* %410, align 4
  %412 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %413 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %412, i32 0, i32 0
  store i32 %411, i32* %413, align 4
  %414 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %415 = call i32 @r_mark_lAr(%struct.SN_env* %414)
  store i32 %415, i32* %31, align 4
  %416 = load i32, i32* %31, align 4
  %417 = icmp eq i32 %416, 0
  br i1 %417, label %418, label %426

418:                                              ; preds = %400
  %419 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %420 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %419, i32 0, i32 2
  %421 = load i32, i32* %420, align 4
  %422 = load i32, i32* %30, align 4
  %423 = sub nsw i32 %421, %422
  %424 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %425 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %424, i32 0, i32 1
  store i32 %423, i32* %425, align 4
  br label %462

426:                                              ; preds = %400
  %427 = load i32, i32* %31, align 4
  %428 = icmp slt i32 %427, 0
  br i1 %428, label %429, label %431

429:                                              ; preds = %426
  %430 = load i32, i32* %31, align 4
  store i32 %430, i32* %2, align 4
  br label %647

431:                                              ; preds = %426
  %432 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %433 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %432, i32 0, i32 1
  %434 = load i32, i32* %433, align 4
  %435 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %436 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %435, i32 0, i32 3
  store i32 %434, i32* %436, align 4
  %437 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %438 = call i32 @slice_del(%struct.SN_env* %437)
  store i32 %438, i32* %32, align 4
  %439 = load i32, i32* %32, align 4
  %440 = icmp slt i32 %439, 0
  br i1 %440, label %441, label %443

441:                                              ; preds = %431
  %442 = load i32, i32* %32, align 4
  store i32 %442, i32* %2, align 4
  br label %647

443:                                              ; preds = %431
  %444 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %445 = call i32 @r_stem_suffix_chain_before_ki(%struct.SN_env* %444)
  store i32 %445, i32* %33, align 4
  %446 = load i32, i32* %33, align 4
  %447 = icmp eq i32 %446, 0
  br i1 %447, label %448, label %456

448:                                              ; preds = %443
  %449 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %450 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %449, i32 0, i32 2
  %451 = load i32, i32* %450, align 4
  %452 = load i32, i32* %30, align 4
  %453 = sub nsw i32 %451, %452
  %454 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %455 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %454, i32 0, i32 1
  store i32 %453, i32* %455, align 4
  br label %462

456:                                              ; preds = %443
  %457 = load i32, i32* %33, align 4
  %458 = icmp slt i32 %457, 0
  br i1 %458, label %459, label %461

459:                                              ; preds = %456
  %460 = load i32, i32* %33, align 4
  store i32 %460, i32* %2, align 4
  br label %647

461:                                              ; preds = %456
  br label %462

462:                                              ; preds = %461, %448, %418
  br label %489

463:                                              ; preds = %381
  %464 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %465 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %464, i32 0, i32 2
  %466 = load i32, i32* %465, align 4
  %467 = load i32, i32* %23, align 4
  %468 = sub nsw i32 %466, %467
  %469 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %470 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %469, i32 0, i32 1
  store i32 %468, i32* %470, align 4
  %471 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %472 = call i32 @r_stem_suffix_chain_before_ki(%struct.SN_env* %471)
  store i32 %472, i32* %34, align 4
  %473 = load i32, i32* %34, align 4
  %474 = icmp eq i32 %473, 0
  br i1 %474, label %475, label %483

475:                                              ; preds = %463
  %476 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %477 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %476, i32 0, i32 2
  %478 = load i32, i32* %477, align 4
  %479 = load i32, i32* %22, align 4
  %480 = sub nsw i32 %478, %479
  %481 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %482 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %481, i32 0, i32 1
  store i32 %480, i32* %482, align 4
  br label %490

483:                                              ; preds = %463
  %484 = load i32, i32* %34, align 4
  %485 = icmp slt i32 %484, 0
  br i1 %485, label %486, label %488

486:                                              ; preds = %483
  %487 = load i32, i32* %34, align 4
  store i32 %487, i32* %2, align 4
  br label %647

488:                                              ; preds = %483
  br label %489

489:                                              ; preds = %488, %462, %336
  br label %490

490:                                              ; preds = %489, %475
  br label %646

491:                                              ; preds = %274
  %492 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %493 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %492, i32 0, i32 2
  %494 = load i32, i32* %493, align 4
  %495 = load i32, i32* %5, align 4
  %496 = sub nsw i32 %494, %495
  %497 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %498 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %497, i32 0, i32 1
  store i32 %496, i32* %498, align 4
  %499 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %500 = call i32 @r_mark_ndA(%struct.SN_env* %499)
  store i32 %500, i32* %35, align 4
  %501 = load i32, i32* %35, align 4
  %502 = icmp sle i32 %501, 0
  br i1 %502, label %503, label %505

503:                                              ; preds = %491
  %504 = load i32, i32* %35, align 4
  store i32 %504, i32* %2, align 4
  br label %647

505:                                              ; preds = %491
  %506 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %507 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %506, i32 0, i32 2
  %508 = load i32, i32* %507, align 4
  %509 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %510 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %509, i32 0, i32 1
  %511 = load i32, i32* %510, align 4
  %512 = sub nsw i32 %508, %511
  store i32 %512, i32* %36, align 4
  %513 = load i32, i32* %36, align 4
  %514 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %515 = call i32 @r_mark_lArI(%struct.SN_env* %514)
  store i32 %515, i32* %37, align 4
  %516 = load i32, i32* %37, align 4
  %517 = icmp eq i32 %516, 0
  br i1 %517, label %518, label %519

518:                                              ; preds = %505
  br label %537

519:                                              ; preds = %505
  %520 = load i32, i32* %37, align 4
  %521 = icmp slt i32 %520, 0
  br i1 %521, label %522, label %524

522:                                              ; preds = %519
  %523 = load i32, i32* %37, align 4
  store i32 %523, i32* %2, align 4
  br label %647

524:                                              ; preds = %519
  %525 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %526 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %525, i32 0, i32 1
  %527 = load i32, i32* %526, align 4
  %528 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %529 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %528, i32 0, i32 3
  store i32 %527, i32* %529, align 4
  %530 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %531 = call i32 @slice_del(%struct.SN_env* %530)
  store i32 %531, i32* %38, align 4
  %532 = load i32, i32* %38, align 4
  %533 = icmp slt i32 %532, 0
  br i1 %533, label %534, label %536

534:                                              ; preds = %524
  %535 = load i32, i32* %38, align 4
  store i32 %535, i32* %2, align 4
  br label %647

536:                                              ; preds = %524
  br label %645

537:                                              ; preds = %518
  %538 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %539 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %538, i32 0, i32 2
  %540 = load i32, i32* %539, align 4
  %541 = load i32, i32* %36, align 4
  %542 = sub nsw i32 %540, %541
  %543 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %544 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %543, i32 0, i32 1
  store i32 %542, i32* %544, align 4
  %545 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %546 = call i32 @r_mark_sU(%struct.SN_env* %545)
  store i32 %546, i32* %39, align 4
  %547 = load i32, i32* %39, align 4
  %548 = icmp eq i32 %547, 0
  br i1 %548, label %549, label %550

549:                                              ; preds = %537
  br label %630

550:                                              ; preds = %537
  %551 = load i32, i32* %39, align 4
  %552 = icmp slt i32 %551, 0
  br i1 %552, label %553, label %555

553:                                              ; preds = %550
  %554 = load i32, i32* %39, align 4
  store i32 %554, i32* %2, align 4
  br label %647

555:                                              ; preds = %550
  %556 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %557 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %556, i32 0, i32 1
  %558 = load i32, i32* %557, align 4
  %559 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %560 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %559, i32 0, i32 3
  store i32 %558, i32* %560, align 4
  %561 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %562 = call i32 @slice_del(%struct.SN_env* %561)
  store i32 %562, i32* %40, align 4
  %563 = load i32, i32* %40, align 4
  %564 = icmp slt i32 %563, 0
  br i1 %564, label %565, label %567

565:                                              ; preds = %555
  %566 = load i32, i32* %40, align 4
  store i32 %566, i32* %2, align 4
  br label %647

567:                                              ; preds = %555
  %568 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %569 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %568, i32 0, i32 2
  %570 = load i32, i32* %569, align 4
  %571 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %572 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %571, i32 0, i32 1
  %573 = load i32, i32* %572, align 4
  %574 = sub nsw i32 %570, %573
  store i32 %574, i32* %41, align 4
  %575 = load i32, i32* %41, align 4
  %576 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %577 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %576, i32 0, i32 1
  %578 = load i32, i32* %577, align 4
  %579 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %580 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %579, i32 0, i32 0
  store i32 %578, i32* %580, align 4
  %581 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %582 = call i32 @r_mark_lAr(%struct.SN_env* %581)
  store i32 %582, i32* %42, align 4
  %583 = load i32, i32* %42, align 4
  %584 = icmp eq i32 %583, 0
  br i1 %584, label %585, label %593

585:                                              ; preds = %567
  %586 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %587 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %586, i32 0, i32 2
  %588 = load i32, i32* %587, align 4
  %589 = load i32, i32* %41, align 4
  %590 = sub nsw i32 %588, %589
  %591 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %592 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %591, i32 0, i32 1
  store i32 %590, i32* %592, align 4
  br label %629

593:                                              ; preds = %567
  %594 = load i32, i32* %42, align 4
  %595 = icmp slt i32 %594, 0
  br i1 %595, label %596, label %598

596:                                              ; preds = %593
  %597 = load i32, i32* %42, align 4
  store i32 %597, i32* %2, align 4
  br label %647

598:                                              ; preds = %593
  %599 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %600 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %599, i32 0, i32 1
  %601 = load i32, i32* %600, align 4
  %602 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %603 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %602, i32 0, i32 3
  store i32 %601, i32* %603, align 4
  %604 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %605 = call i32 @slice_del(%struct.SN_env* %604)
  store i32 %605, i32* %43, align 4
  %606 = load i32, i32* %43, align 4
  %607 = icmp slt i32 %606, 0
  br i1 %607, label %608, label %610

608:                                              ; preds = %598
  %609 = load i32, i32* %43, align 4
  store i32 %609, i32* %2, align 4
  br label %647

610:                                              ; preds = %598
  %611 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %612 = call i32 @r_stem_suffix_chain_before_ki(%struct.SN_env* %611)
  store i32 %612, i32* %44, align 4
  %613 = load i32, i32* %44, align 4
  %614 = icmp eq i32 %613, 0
  br i1 %614, label %615, label %623

615:                                              ; preds = %610
  %616 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %617 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %616, i32 0, i32 2
  %618 = load i32, i32* %617, align 4
  %619 = load i32, i32* %41, align 4
  %620 = sub nsw i32 %618, %619
  %621 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %622 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %621, i32 0, i32 1
  store i32 %620, i32* %622, align 4
  br label %629

623:                                              ; preds = %610
  %624 = load i32, i32* %44, align 4
  %625 = icmp slt i32 %624, 0
  br i1 %625, label %626, label %628

626:                                              ; preds = %623
  %627 = load i32, i32* %44, align 4
  store i32 %627, i32* %2, align 4
  br label %647

628:                                              ; preds = %623
  br label %629

629:                                              ; preds = %628, %615, %585
  br label %645

630:                                              ; preds = %549
  %631 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %632 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %631, i32 0, i32 2
  %633 = load i32, i32* %632, align 4
  %634 = load i32, i32* %36, align 4
  %635 = sub nsw i32 %633, %634
  %636 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %637 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %636, i32 0, i32 1
  store i32 %635, i32* %637, align 4
  %638 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %639 = call i32 @r_stem_suffix_chain_before_ki(%struct.SN_env* %638)
  store i32 %639, i32* %45, align 4
  %640 = load i32, i32* %45, align 4
  %641 = icmp sle i32 %640, 0
  br i1 %641, label %642, label %644

642:                                              ; preds = %630
  %643 = load i32, i32* %45, align 4
  store i32 %643, i32* %2, align 4
  br label %647

644:                                              ; preds = %630
  br label %645

645:                                              ; preds = %644, %629, %536
  br label %646

646:                                              ; preds = %645, %490, %261
  store i32 1, i32* %2, align 4
  br label %647

647:                                              ; preds = %646, %642, %626, %608, %596, %565, %553, %534, %522, %503, %486, %459, %441, %429, %398, %385, %366, %334, %322, %290, %278, %256, %238, %226, %195, %183, %156, %130, %118, %86, %74, %55
  %648 = load i32, i32* %2, align 4
  ret i32 %648
}

declare dso_local i32 @r_mark_ki(%struct.SN_env*) #1

declare dso_local i32 @r_mark_DA(%struct.SN_env*) #1

declare dso_local i32 @slice_del(%struct.SN_env*) #1

declare dso_local i32 @r_mark_lAr(%struct.SN_env*) #1

declare dso_local i32 @r_mark_possessives(%struct.SN_env*) #1

declare dso_local i32 @r_mark_nUn(%struct.SN_env*) #1

declare dso_local i32 @r_mark_lArI(%struct.SN_env*) #1

declare dso_local i32 @r_mark_sU(%struct.SN_env*) #1

declare dso_local i32 @r_mark_ndA(%struct.SN_env*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
