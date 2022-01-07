; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_stem_UTF_8_greek.c_r_steps6.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_stem_UTF_8_greek.c_r_steps6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SN_env = type { i32, i32, i32, i32, i32, i32*, i64*, i64* }

@a_18 = common dso_local global i32 0, align 4
@a_15 = common dso_local global i32 0, align 4
@s_45 = common dso_local global i32 0, align 4
@a_16 = common dso_local global i32 0, align 4
@s_46 = common dso_local global i32 0, align 4
@a_17 = common dso_local global i32 0, align 4
@s_47 = common dso_local global i32 0, align 4
@s_48 = common dso_local global i32 0, align 4
@s_49 = common dso_local global i32 0, align 4
@s_50 = common dso_local global i32 0, align 4
@s_51 = common dso_local global i32 0, align 4
@s_52 = common dso_local global i32 0, align 4
@s_53 = common dso_local global i32 0, align 4
@s_54 = common dso_local global i32 0, align 4
@s_55 = common dso_local global i32 0, align 4
@s_56 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.SN_env*)* @r_steps6 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r_steps6(%struct.SN_env* %0) #0 {
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
  store %struct.SN_env* %0, %struct.SN_env** %3, align 8
  %23 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %24 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %27 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %29 = load i32, i32* @a_18, align 4
  %30 = call i32 @find_among_b(%struct.SN_env* %28, i32 %29, i32 6)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %416

33:                                               ; preds = %1
  %34 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %35 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %38 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 8
  %39 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %40 = call i32 @slice_del(%struct.SN_env* %39)
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %5, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %33
  %44 = load i32, i32* %5, align 4
  store i32 %44, i32* %2, align 4
  br label %416

45:                                               ; preds = %33
  %46 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %47 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %46, i32 0, i32 7
  %48 = load i64*, i64** %47, align 8
  %49 = getelementptr inbounds i64, i64* %48, i64 0
  store i64 0, i64* %49, align 8
  %50 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %51 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %54 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = sub nsw i32 %52, %55
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* %6, align 4
  %58 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %59 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %62 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  %63 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %64 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = sub nsw i32 %65, 3
  %67 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %68 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 8
  %70 = icmp sle i32 %66, %69
  br i1 %70, label %83, label %71

71:                                               ; preds = %45
  %72 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %73 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %72, i32 0, i32 5
  %74 = load i32*, i32** %73, align 8
  %75 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %76 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = sub nsw i32 %77, 1
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %74, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = icmp ne i32 %81, 181
  br i1 %82, label %83, label %84

83:                                               ; preds = %71, %45
  br label %157

84:                                               ; preds = %71
  %85 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %86 = load i32, i32* @a_15, align 4
  %87 = call i32 @find_among_b(%struct.SN_env* %85, i32 %86, i32 5)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %90, label %89

89:                                               ; preds = %84
  br label %157

90:                                               ; preds = %84
  %91 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %92 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %95 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %94, i32 0, i32 2
  store i32 %93, i32* %95, align 8
  %96 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %97 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %100 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %99, i32 0, i32 4
  %101 = load i32, i32* %100, align 8
  %102 = icmp sgt i32 %98, %101
  br i1 %102, label %103, label %104

103:                                              ; preds = %90
  br label %157

104:                                              ; preds = %90
  %105 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %106 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %107 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %106, i32 0, i32 6
  %108 = load i64*, i64** %107, align 8
  %109 = getelementptr inbounds i64, i64* %108, i64 0
  %110 = load i64, i64* %109, align 8
  %111 = call i8* @slice_to(%struct.SN_env* %105, i64 %110)
  %112 = ptrtoint i8* %111 to i64
  %113 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %114 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %113, i32 0, i32 6
  %115 = load i64*, i64** %114, align 8
  %116 = getelementptr inbounds i64, i64* %115, i64 0
  store i64 %112, i64* %116, align 8
  %117 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %118 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %117, i32 0, i32 6
  %119 = load i64*, i64** %118, align 8
  %120 = getelementptr inbounds i64, i64* %119, i64 0
  %121 = load i64, i64* %120, align 8
  %122 = icmp eq i64 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %104
  store i32 -1, i32* %2, align 4
  br label %416

124:                                              ; preds = %104
  %125 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %126 = load i32, i32* @s_45, align 4
  %127 = call i32 @slice_from_s(%struct.SN_env* %125, i32 6, i32 %126)
  store i32 %127, i32* %7, align 4
  %128 = load i32, i32* %7, align 4
  %129 = icmp slt i32 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %124
  %131 = load i32, i32* %7, align 4
  store i32 %131, i32* %2, align 4
  br label %416

132:                                              ; preds = %124
  %133 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %134 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  store i32 %135, i32* %9, align 4
  %136 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %137 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %138 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %141 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %144 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %143, i32 0, i32 6
  %145 = load i64*, i64** %144, align 8
  %146 = getelementptr inbounds i64, i64* %145, i64 0
  %147 = load i64, i64* %146, align 8
  %148 = call i32 @insert_v(%struct.SN_env* %136, i32 %139, i32 %142, i64 %147)
  store i32 %148, i32* %8, align 4
  %149 = load i32, i32* %9, align 4
  %150 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %151 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %150, i32 0, i32 1
  store i32 %149, i32* %151, align 4
  %152 = load i32, i32* %8, align 4
  %153 = icmp slt i32 %152, 0
  br i1 %153, label %154, label %156

154:                                              ; preds = %132
  %155 = load i32, i32* %8, align 4
  store i32 %155, i32* %2, align 4
  br label %416

156:                                              ; preds = %132
  br label %415

157:                                              ; preds = %103, %89, %83
  %158 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %159 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %158, i32 0, i32 3
  %160 = load i32, i32* %159, align 4
  %161 = load i32, i32* %6, align 4
  %162 = sub nsw i32 %160, %161
  %163 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %164 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %163, i32 0, i32 1
  store i32 %162, i32* %164, align 4
  %165 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %166 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %169 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %168, i32 0, i32 0
  store i32 %167, i32* %169, align 8
  %170 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %171 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = sub nsw i32 %172, 7
  %174 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %175 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %174, i32 0, i32 4
  %176 = load i32, i32* %175, align 8
  %177 = icmp sle i32 %173, %176
  br i1 %177, label %190, label %178

178:                                              ; preds = %157
  %179 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %180 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %179, i32 0, i32 5
  %181 = load i32*, i32** %180, align 8
  %182 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %183 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = sub nsw i32 %184, 1
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i32, i32* %181, i64 %186
  %188 = load i32, i32* %187, align 4
  %189 = icmp ne i32 %188, 181
  br i1 %189, label %190, label %191

190:                                              ; preds = %178, %157
  br label %264

191:                                              ; preds = %178
  %192 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %193 = load i32, i32* @a_16, align 4
  %194 = call i32 @find_among_b(%struct.SN_env* %192, i32 %193, i32 2)
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %197, label %196

196:                                              ; preds = %191
  br label %264

197:                                              ; preds = %191
  %198 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %199 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %202 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %201, i32 0, i32 2
  store i32 %200, i32* %202, align 8
  %203 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %204 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %207 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %206, i32 0, i32 4
  %208 = load i32, i32* %207, align 8
  %209 = icmp sgt i32 %205, %208
  br i1 %209, label %210, label %211

210:                                              ; preds = %197
  br label %264

211:                                              ; preds = %197
  %212 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %213 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %214 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %213, i32 0, i32 6
  %215 = load i64*, i64** %214, align 8
  %216 = getelementptr inbounds i64, i64* %215, i64 0
  %217 = load i64, i64* %216, align 8
  %218 = call i8* @slice_to(%struct.SN_env* %212, i64 %217)
  %219 = ptrtoint i8* %218 to i64
  %220 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %221 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %220, i32 0, i32 6
  %222 = load i64*, i64** %221, align 8
  %223 = getelementptr inbounds i64, i64* %222, i64 0
  store i64 %219, i64* %223, align 8
  %224 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %225 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %224, i32 0, i32 6
  %226 = load i64*, i64** %225, align 8
  %227 = getelementptr inbounds i64, i64* %226, i64 0
  %228 = load i64, i64* %227, align 8
  %229 = icmp eq i64 %228, 0
  br i1 %229, label %230, label %231

230:                                              ; preds = %211
  store i32 -1, i32* %2, align 4
  br label %416

231:                                              ; preds = %211
  %232 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %233 = load i32, i32* @s_46, align 4
  %234 = call i32 @slice_from_s(%struct.SN_env* %232, i32 2, i32 %233)
  store i32 %234, i32* %10, align 4
  %235 = load i32, i32* %10, align 4
  %236 = icmp slt i32 %235, 0
  br i1 %236, label %237, label %239

237:                                              ; preds = %231
  %238 = load i32, i32* %10, align 4
  store i32 %238, i32* %2, align 4
  br label %416

239:                                              ; preds = %231
  %240 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %241 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %240, i32 0, i32 1
  %242 = load i32, i32* %241, align 4
  store i32 %242, i32* %12, align 4
  %243 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %244 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %245 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %244, i32 0, i32 1
  %246 = load i32, i32* %245, align 4
  %247 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %248 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %247, i32 0, i32 1
  %249 = load i32, i32* %248, align 4
  %250 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %251 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %250, i32 0, i32 6
  %252 = load i64*, i64** %251, align 8
  %253 = getelementptr inbounds i64, i64* %252, i64 0
  %254 = load i64, i64* %253, align 8
  %255 = call i32 @insert_v(%struct.SN_env* %243, i32 %246, i32 %249, i64 %254)
  store i32 %255, i32* %11, align 4
  %256 = load i32, i32* %12, align 4
  %257 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %258 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %257, i32 0, i32 1
  store i32 %256, i32* %258, align 4
  %259 = load i32, i32* %11, align 4
  %260 = icmp slt i32 %259, 0
  br i1 %260, label %261, label %263

261:                                              ; preds = %239
  %262 = load i32, i32* %11, align 4
  store i32 %262, i32* %2, align 4
  br label %416

263:                                              ; preds = %239
  br label %415

264:                                              ; preds = %210, %196, %190
  %265 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %266 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %265, i32 0, i32 3
  %267 = load i32, i32* %266, align 4
  %268 = load i32, i32* %6, align 4
  %269 = sub nsw i32 %267, %268
  %270 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %271 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %270, i32 0, i32 1
  store i32 %269, i32* %271, align 4
  %272 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %273 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %272, i32 0, i32 1
  %274 = load i32, i32* %273, align 4
  %275 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %276 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %275, i32 0, i32 0
  store i32 %274, i32* %276, align 8
  %277 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %278 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %277, i32 0, i32 1
  %279 = load i32, i32* %278, align 4
  %280 = sub nsw i32 %279, 9
  %281 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %282 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %281, i32 0, i32 4
  %283 = load i32, i32* %282, align 8
  %284 = icmp sle i32 %280, %283
  br i1 %284, label %309, label %285

285:                                              ; preds = %264
  %286 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %287 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %286, i32 0, i32 5
  %288 = load i32*, i32** %287, align 8
  %289 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %290 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %289, i32 0, i32 1
  %291 = load i32, i32* %290, align 4
  %292 = sub nsw i32 %291, 1
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds i32, i32* %288, i64 %293
  %295 = load i32, i32* %294, align 4
  %296 = icmp ne i32 %295, 186
  br i1 %296, label %297, label %310

297:                                              ; preds = %285
  %298 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %299 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %298, i32 0, i32 5
  %300 = load i32*, i32** %299, align 8
  %301 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %302 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %301, i32 0, i32 1
  %303 = load i32, i32* %302, align 4
  %304 = sub nsw i32 %303, 1
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds i32, i32* %300, i64 %305
  %307 = load i32, i32* %306, align 4
  %308 = icmp ne i32 %307, 189
  br i1 %308, label %309, label %310

309:                                              ; preds = %297, %264
  store i32 0, i32* %2, align 4
  br label %416

310:                                              ; preds = %297, %285
  %311 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %312 = load i32, i32* @a_17, align 4
  %313 = call i32 @find_among_b(%struct.SN_env* %311, i32 %312, i32 10)
  store i32 %313, i32* %4, align 4
  %314 = load i32, i32* %4, align 4
  %315 = icmp ne i32 %314, 0
  br i1 %315, label %317, label %316

316:                                              ; preds = %310
  store i32 0, i32* %2, align 4
  br label %416

317:                                              ; preds = %310
  %318 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %319 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %318, i32 0, i32 1
  %320 = load i32, i32* %319, align 4
  %321 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %322 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %321, i32 0, i32 2
  store i32 %320, i32* %322, align 8
  %323 = load i32, i32* %4, align 4
  switch i32 %323, label %414 [
    i32 1, label %324
    i32 2, label %333
    i32 3, label %342
    i32 4, label %351
    i32 5, label %360
    i32 6, label %369
    i32 7, label %378
    i32 8, label %387
    i32 9, label %396
    i32 10, label %405
  ]

324:                                              ; preds = %317
  %325 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %326 = load i32, i32* @s_47, align 4
  %327 = call i32 @slice_from_s(%struct.SN_env* %325, i32 12, i32 %326)
  store i32 %327, i32* %13, align 4
  %328 = load i32, i32* %13, align 4
  %329 = icmp slt i32 %328, 0
  br i1 %329, label %330, label %332

330:                                              ; preds = %324
  %331 = load i32, i32* %13, align 4
  store i32 %331, i32* %2, align 4
  br label %416

332:                                              ; preds = %324
  br label %414

333:                                              ; preds = %317
  %334 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %335 = load i32, i32* @s_48, align 4
  %336 = call i32 @slice_from_s(%struct.SN_env* %334, i32 8, i32 %335)
  store i32 %336, i32* %14, align 4
  %337 = load i32, i32* %14, align 4
  %338 = icmp slt i32 %337, 0
  br i1 %338, label %339, label %341

339:                                              ; preds = %333
  %340 = load i32, i32* %14, align 4
  store i32 %340, i32* %2, align 4
  br label %416

341:                                              ; preds = %333
  br label %414

342:                                              ; preds = %317
  %343 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %344 = load i32, i32* @s_49, align 4
  %345 = call i32 @slice_from_s(%struct.SN_env* %343, i32 10, i32 %344)
  store i32 %345, i32* %15, align 4
  %346 = load i32, i32* %15, align 4
  %347 = icmp slt i32 %346, 0
  br i1 %347, label %348, label %350

348:                                              ; preds = %342
  %349 = load i32, i32* %15, align 4
  store i32 %349, i32* %2, align 4
  br label %416

350:                                              ; preds = %342
  br label %414

351:                                              ; preds = %317
  %352 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %353 = load i32, i32* @s_50, align 4
  %354 = call i32 @slice_from_s(%struct.SN_env* %352, i32 6, i32 %353)
  store i32 %354, i32* %16, align 4
  %355 = load i32, i32* %16, align 4
  %356 = icmp slt i32 %355, 0
  br i1 %356, label %357, label %359

357:                                              ; preds = %351
  %358 = load i32, i32* %16, align 4
  store i32 %358, i32* %2, align 4
  br label %416

359:                                              ; preds = %351
  br label %414

360:                                              ; preds = %317
  %361 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %362 = load i32, i32* @s_51, align 4
  %363 = call i32 @slice_from_s(%struct.SN_env* %361, i32 12, i32 %362)
  store i32 %363, i32* %17, align 4
  %364 = load i32, i32* %17, align 4
  %365 = icmp slt i32 %364, 0
  br i1 %365, label %366, label %368

366:                                              ; preds = %360
  %367 = load i32, i32* %17, align 4
  store i32 %367, i32* %2, align 4
  br label %416

368:                                              ; preds = %360
  br label %414

369:                                              ; preds = %317
  %370 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %371 = load i32, i32* @s_52, align 4
  %372 = call i32 @slice_from_s(%struct.SN_env* %370, i32 10, i32 %371)
  store i32 %372, i32* %18, align 4
  %373 = load i32, i32* %18, align 4
  %374 = icmp slt i32 %373, 0
  br i1 %374, label %375, label %377

375:                                              ; preds = %369
  %376 = load i32, i32* %18, align 4
  store i32 %376, i32* %2, align 4
  br label %416

377:                                              ; preds = %369
  br label %414

378:                                              ; preds = %317
  %379 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %380 = load i32, i32* @s_53, align 4
  %381 = call i32 @slice_from_s(%struct.SN_env* %379, i32 6, i32 %380)
  store i32 %381, i32* %19, align 4
  %382 = load i32, i32* %19, align 4
  %383 = icmp slt i32 %382, 0
  br i1 %383, label %384, label %386

384:                                              ; preds = %378
  %385 = load i32, i32* %19, align 4
  store i32 %385, i32* %2, align 4
  br label %416

386:                                              ; preds = %378
  br label %414

387:                                              ; preds = %317
  %388 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %389 = load i32, i32* @s_54, align 4
  %390 = call i32 @slice_from_s(%struct.SN_env* %388, i32 16, i32 %389)
  store i32 %390, i32* %20, align 4
  %391 = load i32, i32* %20, align 4
  %392 = icmp slt i32 %391, 0
  br i1 %392, label %393, label %395

393:                                              ; preds = %387
  %394 = load i32, i32* %20, align 4
  store i32 %394, i32* %2, align 4
  br label %416

395:                                              ; preds = %387
  br label %414

396:                                              ; preds = %317
  %397 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %398 = load i32, i32* @s_55, align 4
  %399 = call i32 @slice_from_s(%struct.SN_env* %397, i32 12, i32 %398)
  store i32 %399, i32* %21, align 4
  %400 = load i32, i32* %21, align 4
  %401 = icmp slt i32 %400, 0
  br i1 %401, label %402, label %404

402:                                              ; preds = %396
  %403 = load i32, i32* %21, align 4
  store i32 %403, i32* %2, align 4
  br label %416

404:                                              ; preds = %396
  br label %414

405:                                              ; preds = %317
  %406 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %407 = load i32, i32* @s_56, align 4
  %408 = call i32 @slice_from_s(%struct.SN_env* %406, i32 10, i32 %407)
  store i32 %408, i32* %22, align 4
  %409 = load i32, i32* %22, align 4
  %410 = icmp slt i32 %409, 0
  br i1 %410, label %411, label %413

411:                                              ; preds = %405
  %412 = load i32, i32* %22, align 4
  store i32 %412, i32* %2, align 4
  br label %416

413:                                              ; preds = %405
  br label %414

414:                                              ; preds = %317, %413, %404, %395, %386, %377, %368, %359, %350, %341, %332
  br label %415

415:                                              ; preds = %414, %263, %156
  store i32 1, i32* %2, align 4
  br label %416

416:                                              ; preds = %415, %411, %402, %393, %384, %375, %366, %357, %348, %339, %330, %316, %309, %261, %237, %230, %154, %130, %123, %43, %32
  %417 = load i32, i32* %2, align 4
  ret i32 %417
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
