; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_stem_ISO_8859_1_english.c_r_Step_1b.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_stem_ISO_8859_1_english.c_r_Step_1b.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SN_env = type { i32, i32, i32, i32*, i32, i32*, i32 }

@a_4 = common dso_local global i32 0, align 4
@s_5 = common dso_local global i32 0, align 4
@g_v = common dso_local global i32 0, align 4
@a_3 = common dso_local global i32 0, align 4
@s_6 = common dso_local global i32 0, align 4
@s_7 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.SN_env*)* @r_Step_1b to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r_Step_1b(%struct.SN_env* %0) #0 {
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
  store %struct.SN_env* %0, %struct.SN_env** %3, align 8
  %18 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %19 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %22 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %24 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = sub nsw i32 %25, 1
  %27 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %28 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = icmp sle i32 %26, %29
  br i1 %30, label %59, label %31

31:                                               ; preds = %1
  %32 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %33 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %32, i32 0, i32 3
  %34 = load i32*, i32** %33, align 8
  %35 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %36 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = sub nsw i32 %37, 1
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %34, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = ashr i32 %41, 5
  %43 = icmp ne i32 %42, 3
  br i1 %43, label %59, label %44

44:                                               ; preds = %31
  %45 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %46 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %45, i32 0, i32 3
  %47 = load i32*, i32** %46, align 8
  %48 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %49 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = sub nsw i32 %50, 1
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %47, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = and i32 %54, 31
  %56 = ashr i32 33554576, %55
  %57 = and i32 %56, 1
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %44, %31, %1
  store i32 0, i32* %2, align 4
  br label %292

60:                                               ; preds = %44
  %61 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %62 = load i32, i32* @a_4, align 4
  %63 = call i32 @find_among_b(%struct.SN_env* %61, i32 %62, i32 6)
  store i32 %63, i32* %4, align 4
  %64 = load i32, i32* %4, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %60
  store i32 0, i32* %2, align 4
  br label %292

67:                                               ; preds = %60
  %68 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %69 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %72 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %71, i32 0, i32 4
  store i32 %70, i32* %72, align 8
  %73 = load i32, i32* %4, align 4
  switch i32 %73, label %291 [
    i32 1, label %74
    i32 2, label %90
  ]

74:                                               ; preds = %67
  %75 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %76 = call i32 @r_R1(%struct.SN_env* %75)
  store i32 %76, i32* %5, align 4
  %77 = load i32, i32* %5, align 4
  %78 = icmp sle i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %74
  %80 = load i32, i32* %5, align 4
  store i32 %80, i32* %2, align 4
  br label %292

81:                                               ; preds = %74
  %82 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %83 = load i32, i32* @s_5, align 4
  %84 = call i32 @slice_from_s(%struct.SN_env* %82, i32 2, i32 %83)
  store i32 %84, i32* %6, align 4
  %85 = load i32, i32* %6, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %81
  %88 = load i32, i32* %6, align 4
  store i32 %88, i32* %2, align 4
  br label %292

89:                                               ; preds = %81
  br label %291

90:                                               ; preds = %67
  %91 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %92 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %91, i32 0, i32 6
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %95 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = sub nsw i32 %93, %96
  store i32 %97, i32* %7, align 4
  %98 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %99 = load i32, i32* @g_v, align 4
  %100 = call i32 @out_grouping_b(%struct.SN_env* %98, i32 %99, i32 97, i32 121, i32 1)
  store i32 %100, i32* %8, align 4
  %101 = load i32, i32* %8, align 4
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %90
  store i32 0, i32* %2, align 4
  br label %292

104:                                              ; preds = %90
  %105 = load i32, i32* %8, align 4
  %106 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %107 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = sub nsw i32 %108, %105
  store i32 %109, i32* %107, align 4
  %110 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %111 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %110, i32 0, i32 6
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* %7, align 4
  %114 = sub nsw i32 %112, %113
  %115 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %116 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %115, i32 0, i32 1
  store i32 %114, i32* %116, align 4
  %117 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %118 = call i32 @slice_del(%struct.SN_env* %117)
  store i32 %118, i32* %9, align 4
  %119 = load i32, i32* %9, align 4
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %104
  %122 = load i32, i32* %9, align 4
  store i32 %122, i32* %2, align 4
  br label %292

123:                                              ; preds = %104
  %124 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %125 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %124, i32 0, i32 6
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %128 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = sub nsw i32 %126, %129
  store i32 %130, i32* %10, align 4
  %131 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %132 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = sub nsw i32 %133, 1
  %135 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %136 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = icmp sle i32 %134, %137
  br i1 %138, label %167, label %139

139:                                              ; preds = %123
  %140 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %141 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %140, i32 0, i32 3
  %142 = load i32*, i32** %141, align 8
  %143 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %144 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = sub nsw i32 %145, 1
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %142, i64 %147
  %149 = load i32, i32* %148, align 4
  %150 = ashr i32 %149, 5
  %151 = icmp ne i32 %150, 3
  br i1 %151, label %167, label %152

152:                                              ; preds = %139
  %153 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %154 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %153, i32 0, i32 3
  %155 = load i32*, i32** %154, align 8
  %156 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %157 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = sub nsw i32 %158, 1
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i32, i32* %155, i64 %160
  %162 = load i32, i32* %161, align 4
  %163 = and i32 %162, 31
  %164 = ashr i32 68514004, %163
  %165 = and i32 %164, 1
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %168, label %167

167:                                              ; preds = %152, %139, %123
  store i32 3, i32* %4, align 4
  br label %172

168:                                              ; preds = %152
  %169 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %170 = load i32, i32* @a_3, align 4
  %171 = call i32 @find_among_b(%struct.SN_env* %169, i32 %170, i32 13)
  store i32 %171, i32* %4, align 4
  br label %172

172:                                              ; preds = %168, %167
  %173 = load i32, i32* %4, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %176, label %175

175:                                              ; preds = %172
  store i32 0, i32* %2, align 4
  br label %292

176:                                              ; preds = %172
  %177 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %178 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %177, i32 0, i32 6
  %179 = load i32, i32* %178, align 8
  %180 = load i32, i32* %10, align 4
  %181 = sub nsw i32 %179, %180
  %182 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %183 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %182, i32 0, i32 1
  store i32 %181, i32* %183, align 4
  %184 = load i32, i32* %4, align 4
  switch i32 %184, label %290 [
    i32 1, label %185
    i32 2, label %206
    i32 3, label %237
  ]

185:                                              ; preds = %176
  %186 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %187 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  store i32 %188, i32* %12, align 4
  %189 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %190 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %191 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %194 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = load i32, i32* @s_6, align 4
  %197 = call i32 @insert_s(%struct.SN_env* %189, i32 %192, i32 %195, i32 1, i32 %196)
  store i32 %197, i32* %11, align 4
  %198 = load i32, i32* %12, align 4
  %199 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %200 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %199, i32 0, i32 1
  store i32 %198, i32* %200, align 4
  %201 = load i32, i32* %11, align 4
  %202 = icmp slt i32 %201, 0
  br i1 %202, label %203, label %205

203:                                              ; preds = %185
  %204 = load i32, i32* %11, align 4
  store i32 %204, i32* %2, align 4
  br label %292

205:                                              ; preds = %185
  br label %290

206:                                              ; preds = %176
  %207 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %208 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 4
  %210 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %211 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %210, i32 0, i32 0
  store i32 %209, i32* %211, align 8
  %212 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %213 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 4
  %215 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %216 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %215, i32 0, i32 2
  %217 = load i32, i32* %216, align 8
  %218 = icmp sle i32 %214, %217
  br i1 %218, label %219, label %220

219:                                              ; preds = %206
  store i32 0, i32* %2, align 4
  br label %292

220:                                              ; preds = %206
  %221 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %222 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 4
  %224 = add nsw i32 %223, -1
  store i32 %224, i32* %222, align 4
  %225 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %226 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 4
  %228 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %229 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %228, i32 0, i32 4
  store i32 %227, i32* %229, align 8
  %230 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %231 = call i32 @slice_del(%struct.SN_env* %230)
  store i32 %231, i32* %13, align 4
  %232 = load i32, i32* %13, align 4
  %233 = icmp slt i32 %232, 0
  br i1 %233, label %234, label %236

234:                                              ; preds = %220
  %235 = load i32, i32* %13, align 4
  store i32 %235, i32* %2, align 4
  br label %292

236:                                              ; preds = %220
  br label %290

237:                                              ; preds = %176
  %238 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %239 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %238, i32 0, i32 1
  %240 = load i32, i32* %239, align 4
  %241 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %242 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %241, i32 0, i32 5
  %243 = load i32*, i32** %242, align 8
  %244 = getelementptr inbounds i32, i32* %243, i64 0
  %245 = load i32, i32* %244, align 4
  %246 = icmp ne i32 %240, %245
  br i1 %246, label %247, label %248

247:                                              ; preds = %237
  store i32 0, i32* %2, align 4
  br label %292

248:                                              ; preds = %237
  %249 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %250 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %249, i32 0, i32 6
  %251 = load i32, i32* %250, align 8
  %252 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %253 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %252, i32 0, i32 1
  %254 = load i32, i32* %253, align 4
  %255 = sub nsw i32 %251, %254
  store i32 %255, i32* %14, align 4
  %256 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %257 = call i32 @r_shortv(%struct.SN_env* %256)
  store i32 %257, i32* %15, align 4
  %258 = load i32, i32* %15, align 4
  %259 = icmp sle i32 %258, 0
  br i1 %259, label %260, label %262

260:                                              ; preds = %248
  %261 = load i32, i32* %15, align 4
  store i32 %261, i32* %2, align 4
  br label %292

262:                                              ; preds = %248
  %263 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %264 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %263, i32 0, i32 6
  %265 = load i32, i32* %264, align 8
  %266 = load i32, i32* %14, align 4
  %267 = sub nsw i32 %265, %266
  %268 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %269 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %268, i32 0, i32 1
  store i32 %267, i32* %269, align 4
  %270 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %271 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %270, i32 0, i32 1
  %272 = load i32, i32* %271, align 4
  store i32 %272, i32* %17, align 4
  %273 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %274 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %275 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %274, i32 0, i32 1
  %276 = load i32, i32* %275, align 4
  %277 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %278 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %277, i32 0, i32 1
  %279 = load i32, i32* %278, align 4
  %280 = load i32, i32* @s_7, align 4
  %281 = call i32 @insert_s(%struct.SN_env* %273, i32 %276, i32 %279, i32 1, i32 %280)
  store i32 %281, i32* %16, align 4
  %282 = load i32, i32* %17, align 4
  %283 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %284 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %283, i32 0, i32 1
  store i32 %282, i32* %284, align 4
  %285 = load i32, i32* %16, align 4
  %286 = icmp slt i32 %285, 0
  br i1 %286, label %287, label %289

287:                                              ; preds = %262
  %288 = load i32, i32* %16, align 4
  store i32 %288, i32* %2, align 4
  br label %292

289:                                              ; preds = %262
  br label %290

290:                                              ; preds = %176, %289, %236, %205
  br label %291

291:                                              ; preds = %67, %290, %89
  store i32 1, i32* %2, align 4
  br label %292

292:                                              ; preds = %291, %287, %260, %247, %234, %219, %203, %175, %121, %103, %87, %79, %66, %59
  %293 = load i32, i32* %2, align 4
  ret i32 %293
}

declare dso_local i32 @find_among_b(%struct.SN_env*, i32, i32) #1

declare dso_local i32 @r_R1(%struct.SN_env*) #1

declare dso_local i32 @slice_from_s(%struct.SN_env*, i32, i32) #1

declare dso_local i32 @out_grouping_b(%struct.SN_env*, i32, i32, i32, i32) #1

declare dso_local i32 @slice_del(%struct.SN_env*) #1

declare dso_local i32 @insert_s(%struct.SN_env*, i32, i32, i32, i32) #1

declare dso_local i32 @r_shortv(%struct.SN_env*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
