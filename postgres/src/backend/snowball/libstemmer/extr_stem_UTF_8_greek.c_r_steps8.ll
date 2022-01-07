; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_stem_UTF_8_greek.c_r_steps8.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_stem_UTF_8_greek.c_r_steps8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SN_env = type { i32, i32, i32, i32, i32, i64*, i64* }

@a_23 = common dso_local global i32 0, align 4
@a_21 = common dso_local global i32 0, align 4
@s_58 = common dso_local global i32 0, align 4
@a_22 = common dso_local global i32 0, align 4
@s_59 = common dso_local global i32 0, align 4
@s_60 = common dso_local global i32 0, align 4
@s_61 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.SN_env*)* @r_steps8 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r_steps8(%struct.SN_env* %0) #0 {
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
  store %struct.SN_env* %0, %struct.SN_env** %3, align 8
  %15 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %16 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %19 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  %20 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %21 = load i32, i32* @a_23, align 4
  %22 = call i32 @find_among_b(%struct.SN_env* %20, i32 %21, i32 8)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %289

25:                                               ; preds = %1
  %26 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %27 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %30 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 8
  %31 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %32 = call i32 @slice_del(%struct.SN_env* %31)
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %25
  %36 = load i32, i32* %4, align 4
  store i32 %36, i32* %2, align 4
  br label %289

37:                                               ; preds = %25
  %38 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %39 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %38, i32 0, i32 6
  %40 = load i64*, i64** %39, align 8
  %41 = getelementptr inbounds i64, i64* %40, i64 0
  store i64 0, i64* %41, align 8
  %42 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %43 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %46 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = sub nsw i32 %44, %47
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* %5, align 4
  %50 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %51 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %54 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  %55 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %56 = load i32, i32* @a_21, align 4
  %57 = call i32 @find_among_b(%struct.SN_env* %55, i32 %56, i32 33)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %37
  br label %127

60:                                               ; preds = %37
  %61 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %62 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %65 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %64, i32 0, i32 2
  store i32 %63, i32* %65, align 8
  %66 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %67 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %70 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 8
  %72 = icmp sgt i32 %68, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %60
  br label %127

74:                                               ; preds = %60
  %75 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %76 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %77 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %76, i32 0, i32 5
  %78 = load i64*, i64** %77, align 8
  %79 = getelementptr inbounds i64, i64* %78, i64 0
  %80 = load i64, i64* %79, align 8
  %81 = call i8* @slice_to(%struct.SN_env* %75, i64 %80)
  %82 = ptrtoint i8* %81 to i64
  %83 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %84 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %83, i32 0, i32 5
  %85 = load i64*, i64** %84, align 8
  %86 = getelementptr inbounds i64, i64* %85, i64 0
  store i64 %82, i64* %86, align 8
  %87 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %88 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %87, i32 0, i32 5
  %89 = load i64*, i64** %88, align 8
  %90 = getelementptr inbounds i64, i64* %89, i64 0
  %91 = load i64, i64* %90, align 8
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %74
  store i32 -1, i32* %2, align 4
  br label %289

94:                                               ; preds = %74
  %95 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %96 = load i32, i32* @s_58, align 4
  %97 = call i32 @slice_from_s(%struct.SN_env* %95, i32 4, i32 %96)
  store i32 %97, i32* %6, align 4
  %98 = load i32, i32* %6, align 4
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %94
  %101 = load i32, i32* %6, align 4
  store i32 %101, i32* %2, align 4
  br label %289

102:                                              ; preds = %94
  %103 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %104 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  store i32 %105, i32* %8, align 4
  %106 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %107 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %108 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %111 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %114 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %113, i32 0, i32 5
  %115 = load i64*, i64** %114, align 8
  %116 = getelementptr inbounds i64, i64* %115, i64 0
  %117 = load i64, i64* %116, align 8
  %118 = call i32 @insert_v(%struct.SN_env* %106, i32 %109, i32 %112, i64 %117)
  store i32 %118, i32* %7, align 4
  %119 = load i32, i32* %8, align 4
  %120 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %121 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %120, i32 0, i32 1
  store i32 %119, i32* %121, align 4
  %122 = load i32, i32* %7, align 4
  %123 = icmp slt i32 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %102
  %125 = load i32, i32* %7, align 4
  store i32 %125, i32* %2, align 4
  br label %289

126:                                              ; preds = %102
  br label %288

127:                                              ; preds = %73, %59
  %128 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %129 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* %5, align 4
  %132 = sub nsw i32 %130, %131
  %133 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %134 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %133, i32 0, i32 1
  store i32 %132, i32* %134, align 4
  %135 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %136 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %139 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %138, i32 0, i32 0
  store i32 %137, i32* %139, align 8
  %140 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %141 = load i32, i32* @a_22, align 4
  %142 = call i32 @find_among_b(%struct.SN_env* %140, i32 %141, i32 15)
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %145, label %144

144:                                              ; preds = %127
  br label %212

145:                                              ; preds = %127
  %146 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %147 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %150 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %149, i32 0, i32 2
  store i32 %148, i32* %150, align 8
  %151 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %152 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %155 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %154, i32 0, i32 4
  %156 = load i32, i32* %155, align 8
  %157 = icmp sgt i32 %153, %156
  br i1 %157, label %158, label %159

158:                                              ; preds = %145
  br label %212

159:                                              ; preds = %145
  %160 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %161 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %162 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %161, i32 0, i32 5
  %163 = load i64*, i64** %162, align 8
  %164 = getelementptr inbounds i64, i64* %163, i64 0
  %165 = load i64, i64* %164, align 8
  %166 = call i8* @slice_to(%struct.SN_env* %160, i64 %165)
  %167 = ptrtoint i8* %166 to i64
  %168 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %169 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %168, i32 0, i32 5
  %170 = load i64*, i64** %169, align 8
  %171 = getelementptr inbounds i64, i64* %170, i64 0
  store i64 %167, i64* %171, align 8
  %172 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %173 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %172, i32 0, i32 5
  %174 = load i64*, i64** %173, align 8
  %175 = getelementptr inbounds i64, i64* %174, i64 0
  %176 = load i64, i64* %175, align 8
  %177 = icmp eq i64 %176, 0
  br i1 %177, label %178, label %179

178:                                              ; preds = %159
  store i32 -1, i32* %2, align 4
  br label %289

179:                                              ; preds = %159
  %180 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %181 = load i32, i32* @s_59, align 4
  %182 = call i32 @slice_from_s(%struct.SN_env* %180, i32 6, i32 %181)
  store i32 %182, i32* %9, align 4
  %183 = load i32, i32* %9, align 4
  %184 = icmp slt i32 %183, 0
  br i1 %184, label %185, label %187

185:                                              ; preds = %179
  %186 = load i32, i32* %9, align 4
  store i32 %186, i32* %2, align 4
  br label %289

187:                                              ; preds = %179
  %188 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %189 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  store i32 %190, i32* %11, align 4
  %191 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %192 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %193 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  %195 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %196 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %199 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %198, i32 0, i32 5
  %200 = load i64*, i64** %199, align 8
  %201 = getelementptr inbounds i64, i64* %200, i64 0
  %202 = load i64, i64* %201, align 8
  %203 = call i32 @insert_v(%struct.SN_env* %191, i32 %194, i32 %197, i64 %202)
  store i32 %203, i32* %10, align 4
  %204 = load i32, i32* %11, align 4
  %205 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %206 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %205, i32 0, i32 1
  store i32 %204, i32* %206, align 4
  %207 = load i32, i32* %10, align 4
  %208 = icmp slt i32 %207, 0
  br i1 %208, label %209, label %211

209:                                              ; preds = %187
  %210 = load i32, i32* %10, align 4
  store i32 %210, i32* %2, align 4
  br label %289

211:                                              ; preds = %187
  br label %288

212:                                              ; preds = %158, %144
  %213 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %214 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %213, i32 0, i32 3
  %215 = load i32, i32* %214, align 4
  %216 = load i32, i32* %5, align 4
  %217 = sub nsw i32 %215, %216
  %218 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %219 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %218, i32 0, i32 1
  store i32 %217, i32* %219, align 4
  %220 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %221 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %220, i32 0, i32 1
  %222 = load i32, i32* %221, align 4
  %223 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %224 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %223, i32 0, i32 0
  store i32 %222, i32* %224, align 8
  %225 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %226 = load i32, i32* @s_60, align 4
  %227 = call i32 @eq_s_b(%struct.SN_env* %225, i32 6, i32 %226)
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %230, label %229

229:                                              ; preds = %212
  store i32 0, i32* %2, align 4
  br label %289

230:                                              ; preds = %212
  %231 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %232 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %231, i32 0, i32 1
  %233 = load i32, i32* %232, align 4
  %234 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %235 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %234, i32 0, i32 2
  store i32 %233, i32* %235, align 8
  %236 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %237 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %238 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %237, i32 0, i32 5
  %239 = load i64*, i64** %238, align 8
  %240 = getelementptr inbounds i64, i64* %239, i64 0
  %241 = load i64, i64* %240, align 8
  %242 = call i8* @slice_to(%struct.SN_env* %236, i64 %241)
  %243 = ptrtoint i8* %242 to i64
  %244 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %245 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %244, i32 0, i32 5
  %246 = load i64*, i64** %245, align 8
  %247 = getelementptr inbounds i64, i64* %246, i64 0
  store i64 %243, i64* %247, align 8
  %248 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %249 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %248, i32 0, i32 5
  %250 = load i64*, i64** %249, align 8
  %251 = getelementptr inbounds i64, i64* %250, i64 0
  %252 = load i64, i64* %251, align 8
  %253 = icmp eq i64 %252, 0
  br i1 %253, label %254, label %255

254:                                              ; preds = %230
  store i32 -1, i32* %2, align 4
  br label %289

255:                                              ; preds = %230
  %256 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %257 = load i32, i32* @s_61, align 4
  %258 = call i32 @slice_from_s(%struct.SN_env* %256, i32 6, i32 %257)
  store i32 %258, i32* %12, align 4
  %259 = load i32, i32* %12, align 4
  %260 = icmp slt i32 %259, 0
  br i1 %260, label %261, label %263

261:                                              ; preds = %255
  %262 = load i32, i32* %12, align 4
  store i32 %262, i32* %2, align 4
  br label %289

263:                                              ; preds = %255
  %264 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %265 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %264, i32 0, i32 1
  %266 = load i32, i32* %265, align 4
  store i32 %266, i32* %14, align 4
  %267 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %268 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %269 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %268, i32 0, i32 1
  %270 = load i32, i32* %269, align 4
  %271 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %272 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %271, i32 0, i32 1
  %273 = load i32, i32* %272, align 4
  %274 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %275 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %274, i32 0, i32 5
  %276 = load i64*, i64** %275, align 8
  %277 = getelementptr inbounds i64, i64* %276, i64 0
  %278 = load i64, i64* %277, align 8
  %279 = call i32 @insert_v(%struct.SN_env* %267, i32 %270, i32 %273, i64 %278)
  store i32 %279, i32* %13, align 4
  %280 = load i32, i32* %14, align 4
  %281 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %282 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %281, i32 0, i32 1
  store i32 %280, i32* %282, align 4
  %283 = load i32, i32* %13, align 4
  %284 = icmp slt i32 %283, 0
  br i1 %284, label %285, label %287

285:                                              ; preds = %263
  %286 = load i32, i32* %13, align 4
  store i32 %286, i32* %2, align 4
  br label %289

287:                                              ; preds = %263
  br label %288

288:                                              ; preds = %287, %211, %126
  store i32 1, i32* %2, align 4
  br label %289

289:                                              ; preds = %288, %285, %261, %254, %229, %209, %185, %178, %124, %100, %93, %35, %24
  %290 = load i32, i32* %2, align 4
  ret i32 %290
}

declare dso_local i32 @find_among_b(%struct.SN_env*, i32, i32) #1

declare dso_local i32 @slice_del(%struct.SN_env*) #1

declare dso_local i8* @slice_to(%struct.SN_env*, i64) #1

declare dso_local i32 @slice_from_s(%struct.SN_env*, i32, i32) #1

declare dso_local i32 @insert_v(%struct.SN_env*, i32, i32, i64) #1

declare dso_local i32 @eq_s_b(%struct.SN_env*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
