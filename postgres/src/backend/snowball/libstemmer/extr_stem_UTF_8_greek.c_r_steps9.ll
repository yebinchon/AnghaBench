; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_stem_UTF_8_greek.c_r_steps9.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_stem_UTF_8_greek.c_r_steps9.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SN_env = type { i32, i32, i32, i32*, i32, i32, i64*, i64* }

@a_26 = common dso_local global i32 0, align 4
@a_24 = common dso_local global i32 0, align 4
@s_62 = common dso_local global i32 0, align 4
@a_25 = common dso_local global i32 0, align 4
@s_63 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.SN_env*)* @r_steps9 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r_steps9(%struct.SN_env* %0) #0 {
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
  store %struct.SN_env* %0, %struct.SN_env** %3, align 8
  %12 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %13 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %16 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 8
  %17 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %18 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = sub nsw i32 %19, 7
  %21 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %22 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = icmp sle i32 %20, %23
  br i1 %24, label %53, label %25

25:                                               ; preds = %1
  %26 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %27 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %26, i32 0, i32 3
  %28 = load i32*, i32** %27, align 8
  %29 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %30 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = sub nsw i32 %31, 1
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %28, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = ashr i32 %35, 5
  %37 = icmp ne i32 %36, 5
  br i1 %37, label %53, label %38

38:                                               ; preds = %25
  %39 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %40 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %39, i32 0, i32 3
  %41 = load i32*, i32** %40, align 8
  %42 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %43 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = sub nsw i32 %44, 1
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %41, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = and i32 %48, 31
  %50 = ashr i32 -1610481664, %49
  %51 = and i32 %50, 1
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %38, %25, %1
  store i32 0, i32* %2, align 4
  br label %273

54:                                               ; preds = %38
  %55 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %56 = load i32, i32* @a_26, align 4
  %57 = call i32 @find_among_b(%struct.SN_env* %55, i32 %56, i32 3)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %54
  store i32 0, i32* %2, align 4
  br label %273

60:                                               ; preds = %54
  %61 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %62 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %65 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %64, i32 0, i32 4
  store i32 %63, i32* %65, align 8
  %66 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %67 = call i32 @slice_del(%struct.SN_env* %66)
  store i32 %67, i32* %4, align 4
  %68 = load i32, i32* %4, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %60
  %71 = load i32, i32* %4, align 4
  store i32 %71, i32* %2, align 4
  br label %273

72:                                               ; preds = %60
  %73 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %74 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %73, i32 0, i32 7
  %75 = load i64*, i64** %74, align 8
  %76 = getelementptr inbounds i64, i64* %75, i64 0
  store i64 0, i64* %76, align 8
  %77 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %78 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %77, i32 0, i32 5
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %81 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = sub nsw i32 %79, %82
  store i32 %83, i32* %5, align 4
  %84 = load i32, i32* %5, align 4
  %85 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %86 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %89 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 8
  %90 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %91 = load i32, i32* @a_24, align 4
  %92 = call i32 @find_among_b(%struct.SN_env* %90, i32 %91, i32 4)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %95, label %94

94:                                               ; preds = %72
  br label %162

95:                                               ; preds = %72
  %96 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %97 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %100 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %99, i32 0, i32 4
  store i32 %98, i32* %100, align 8
  %101 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %102 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %105 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = icmp sgt i32 %103, %106
  br i1 %107, label %108, label %109

108:                                              ; preds = %95
  br label %162

109:                                              ; preds = %95
  %110 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %111 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %112 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %111, i32 0, i32 6
  %113 = load i64*, i64** %112, align 8
  %114 = getelementptr inbounds i64, i64* %113, i64 0
  %115 = load i64, i64* %114, align 8
  %116 = call i8* @slice_to(%struct.SN_env* %110, i64 %115)
  %117 = ptrtoint i8* %116 to i64
  %118 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %119 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %118, i32 0, i32 6
  %120 = load i64*, i64** %119, align 8
  %121 = getelementptr inbounds i64, i64* %120, i64 0
  store i64 %117, i64* %121, align 8
  %122 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %123 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %122, i32 0, i32 6
  %124 = load i64*, i64** %123, align 8
  %125 = getelementptr inbounds i64, i64* %124, i64 0
  %126 = load i64, i64* %125, align 8
  %127 = icmp eq i64 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %109
  store i32 -1, i32* %2, align 4
  br label %273

129:                                              ; preds = %109
  %130 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %131 = load i32, i32* @s_62, align 4
  %132 = call i32 @slice_from_s(%struct.SN_env* %130, i32 4, i32 %131)
  store i32 %132, i32* %6, align 4
  %133 = load i32, i32* %6, align 4
  %134 = icmp slt i32 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %129
  %136 = load i32, i32* %6, align 4
  store i32 %136, i32* %2, align 4
  br label %273

137:                                              ; preds = %129
  %138 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %139 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  store i32 %140, i32* %8, align 4
  %141 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %142 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %143 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %146 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %149 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %148, i32 0, i32 6
  %150 = load i64*, i64** %149, align 8
  %151 = getelementptr inbounds i64, i64* %150, i64 0
  %152 = load i64, i64* %151, align 8
  %153 = call i32 @insert_v(%struct.SN_env* %141, i32 %144, i32 %147, i64 %152)
  store i32 %153, i32* %7, align 4
  %154 = load i32, i32* %8, align 4
  %155 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %156 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %155, i32 0, i32 1
  store i32 %154, i32* %156, align 4
  %157 = load i32, i32* %7, align 4
  %158 = icmp slt i32 %157, 0
  br i1 %158, label %159, label %161

159:                                              ; preds = %137
  %160 = load i32, i32* %7, align 4
  store i32 %160, i32* %2, align 4
  br label %273

161:                                              ; preds = %137
  br label %272

162:                                              ; preds = %108, %94
  %163 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %164 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %163, i32 0, i32 5
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* %5, align 4
  %167 = sub nsw i32 %165, %166
  %168 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %169 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %168, i32 0, i32 1
  store i32 %167, i32* %169, align 4
  %170 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %171 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %174 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %173, i32 0, i32 0
  store i32 %172, i32* %174, align 8
  %175 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %176 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = sub nsw i32 %177, 1
  %179 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %180 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 8
  %182 = icmp sle i32 %178, %181
  br i1 %182, label %207, label %183

183:                                              ; preds = %162
  %184 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %185 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %184, i32 0, i32 3
  %186 = load i32*, i32** %185, align 8
  %187 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %188 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = sub nsw i32 %189, 1
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i32, i32* %186, i64 %191
  %193 = load i32, i32* %192, align 4
  %194 = icmp ne i32 %193, 181
  br i1 %194, label %195, label %208

195:                                              ; preds = %183
  %196 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %197 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %196, i32 0, i32 3
  %198 = load i32*, i32** %197, align 8
  %199 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %200 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 4
  %202 = sub nsw i32 %201, 1
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i32, i32* %198, i64 %203
  %205 = load i32, i32* %204, align 4
  %206 = icmp ne i32 %205, 189
  br i1 %206, label %207, label %208

207:                                              ; preds = %195, %162
  store i32 0, i32* %2, align 4
  br label %273

208:                                              ; preds = %195, %183
  %209 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %210 = load i32, i32* @a_25, align 4
  %211 = call i32 @find_among_b(%struct.SN_env* %209, i32 %210, i32 2)
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %214, label %213

213:                                              ; preds = %208
  store i32 0, i32* %2, align 4
  br label %273

214:                                              ; preds = %208
  %215 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %216 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %215, i32 0, i32 1
  %217 = load i32, i32* %216, align 4
  %218 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %219 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %218, i32 0, i32 4
  store i32 %217, i32* %219, align 8
  %220 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %221 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %222 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %221, i32 0, i32 6
  %223 = load i64*, i64** %222, align 8
  %224 = getelementptr inbounds i64, i64* %223, i64 0
  %225 = load i64, i64* %224, align 8
  %226 = call i8* @slice_to(%struct.SN_env* %220, i64 %225)
  %227 = ptrtoint i8* %226 to i64
  %228 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %229 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %228, i32 0, i32 6
  %230 = load i64*, i64** %229, align 8
  %231 = getelementptr inbounds i64, i64* %230, i64 0
  store i64 %227, i64* %231, align 8
  %232 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %233 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %232, i32 0, i32 6
  %234 = load i64*, i64** %233, align 8
  %235 = getelementptr inbounds i64, i64* %234, i64 0
  %236 = load i64, i64* %235, align 8
  %237 = icmp eq i64 %236, 0
  br i1 %237, label %238, label %239

238:                                              ; preds = %214
  store i32 -1, i32* %2, align 4
  br label %273

239:                                              ; preds = %214
  %240 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %241 = load i32, i32* @s_63, align 4
  %242 = call i32 @slice_from_s(%struct.SN_env* %240, i32 4, i32 %241)
  store i32 %242, i32* %9, align 4
  %243 = load i32, i32* %9, align 4
  %244 = icmp slt i32 %243, 0
  br i1 %244, label %245, label %247

245:                                              ; preds = %239
  %246 = load i32, i32* %9, align 4
  store i32 %246, i32* %2, align 4
  br label %273

247:                                              ; preds = %239
  %248 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %249 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %248, i32 0, i32 1
  %250 = load i32, i32* %249, align 4
  store i32 %250, i32* %11, align 4
  %251 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %252 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %253 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %252, i32 0, i32 1
  %254 = load i32, i32* %253, align 4
  %255 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %256 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %255, i32 0, i32 1
  %257 = load i32, i32* %256, align 4
  %258 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %259 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %258, i32 0, i32 6
  %260 = load i64*, i64** %259, align 8
  %261 = getelementptr inbounds i64, i64* %260, i64 0
  %262 = load i64, i64* %261, align 8
  %263 = call i32 @insert_v(%struct.SN_env* %251, i32 %254, i32 %257, i64 %262)
  store i32 %263, i32* %10, align 4
  %264 = load i32, i32* %11, align 4
  %265 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %266 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %265, i32 0, i32 1
  store i32 %264, i32* %266, align 4
  %267 = load i32, i32* %10, align 4
  %268 = icmp slt i32 %267, 0
  br i1 %268, label %269, label %271

269:                                              ; preds = %247
  %270 = load i32, i32* %10, align 4
  store i32 %270, i32* %2, align 4
  br label %273

271:                                              ; preds = %247
  br label %272

272:                                              ; preds = %271, %161
  store i32 1, i32* %2, align 4
  br label %273

273:                                              ; preds = %272, %269, %245, %238, %213, %207, %159, %135, %128, %70, %59, %53
  %274 = load i32, i32* %2, align 4
  ret i32 %274
}

declare dso_local i32 @find_among_b(%struct.SN_env*, i32, i32) #1

declare dso_local i32 @slice_del(%struct.SN_env*) #1

declare dso_local i8* @slice_to(%struct.SN_env*, i64) #1

declare dso_local i32 @slice_from_s(%struct.SN_env*, i32, i32) #1

declare dso_local i32 @insert_v(%struct.SN_env*, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
