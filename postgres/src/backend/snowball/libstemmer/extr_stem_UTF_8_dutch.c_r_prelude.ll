; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_stem_UTF_8_dutch.c_r_prelude.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_stem_UTF_8_dutch.c_r_prelude.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SN_env = type { i32, i32, i32, i32*, i32 }

@a_0 = common dso_local global i32 0, align 4
@s_0 = common dso_local global i32 0, align 4
@s_1 = common dso_local global i32 0, align 4
@s_2 = common dso_local global i32 0, align 4
@s_3 = common dso_local global i32 0, align 4
@s_4 = common dso_local global i32 0, align 4
@s_5 = common dso_local global i32 0, align 4
@g_v = common dso_local global i32 0, align 4
@s_6 = common dso_local global i32 0, align 4
@s_7 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.SN_env*)* @r_prelude to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r_prelude(%struct.SN_env* %0) #0 {
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
  store %struct.SN_env* %0, %struct.SN_env** %3, align 8
  %21 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %22 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %5, align 4
  br label %24

24:                                               ; preds = %1, %148
  %25 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %26 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %6, align 4
  %28 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %29 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %32 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %34 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = add nsw i32 %35, 1
  %37 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %38 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = icmp sge i32 %36, %39
  br i1 %40, label %69, label %41

41:                                               ; preds = %24
  %42 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %43 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %42, i32 0, i32 3
  %44 = load i32*, i32** %43, align 8
  %45 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %46 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = add nsw i32 %47, 1
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %44, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = ashr i32 %51, 5
  %53 = icmp ne i32 %52, 5
  br i1 %53, label %69, label %54

54:                                               ; preds = %41
  %55 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %56 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %55, i32 0, i32 3
  %57 = load i32*, i32** %56, align 8
  %58 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %59 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = add nsw i32 %60, 1
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %57, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = and i32 %64, 31
  %66 = ashr i32 340306450, %65
  %67 = and i32 %66, 1
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %54, %41, %24
  store i32 6, i32* %4, align 4
  br label %74

70:                                               ; preds = %54
  %71 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %72 = load i32, i32* @a_0, align 4
  %73 = call i32 @find_among(%struct.SN_env* %71, i32 %72, i32 11)
  store i32 %73, i32* %4, align 4
  br label %74

74:                                               ; preds = %70, %69
  %75 = load i32, i32* %4, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %74
  br label %149

78:                                               ; preds = %74
  %79 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %80 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %83 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %82, i32 0, i32 4
  store i32 %81, i32* %83, align 8
  %84 = load i32, i32* %4, align 4
  switch i32 %84, label %148 [
    i32 1, label %85
    i32 2, label %94
    i32 3, label %103
    i32 4, label %112
    i32 5, label %121
    i32 6, label %130
  ]

85:                                               ; preds = %78
  %86 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %87 = load i32, i32* @s_0, align 4
  %88 = call i32 @slice_from_s(%struct.SN_env* %86, i32 1, i32 %87)
  store i32 %88, i32* %7, align 4
  %89 = load i32, i32* %7, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %85
  %92 = load i32, i32* %7, align 4
  store i32 %92, i32* %2, align 4
  br label %343

93:                                               ; preds = %85
  br label %148

94:                                               ; preds = %78
  %95 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %96 = load i32, i32* @s_1, align 4
  %97 = call i32 @slice_from_s(%struct.SN_env* %95, i32 1, i32 %96)
  store i32 %97, i32* %8, align 4
  %98 = load i32, i32* %8, align 4
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %94
  %101 = load i32, i32* %8, align 4
  store i32 %101, i32* %2, align 4
  br label %343

102:                                              ; preds = %94
  br label %148

103:                                              ; preds = %78
  %104 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %105 = load i32, i32* @s_2, align 4
  %106 = call i32 @slice_from_s(%struct.SN_env* %104, i32 1, i32 %105)
  store i32 %106, i32* %9, align 4
  %107 = load i32, i32* %9, align 4
  %108 = icmp slt i32 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %103
  %110 = load i32, i32* %9, align 4
  store i32 %110, i32* %2, align 4
  br label %343

111:                                              ; preds = %103
  br label %148

112:                                              ; preds = %78
  %113 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %114 = load i32, i32* @s_3, align 4
  %115 = call i32 @slice_from_s(%struct.SN_env* %113, i32 1, i32 %114)
  store i32 %115, i32* %10, align 4
  %116 = load i32, i32* %10, align 4
  %117 = icmp slt i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %112
  %119 = load i32, i32* %10, align 4
  store i32 %119, i32* %2, align 4
  br label %343

120:                                              ; preds = %112
  br label %148

121:                                              ; preds = %78
  %122 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %123 = load i32, i32* @s_4, align 4
  %124 = call i32 @slice_from_s(%struct.SN_env* %122, i32 1, i32 %123)
  store i32 %124, i32* %11, align 4
  %125 = load i32, i32* %11, align 4
  %126 = icmp slt i32 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %121
  %128 = load i32, i32* %11, align 4
  store i32 %128, i32* %2, align 4
  br label %343

129:                                              ; preds = %121
  br label %148

130:                                              ; preds = %78
  %131 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %132 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %131, i32 0, i32 3
  %133 = load i32*, i32** %132, align 8
  %134 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %135 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %138 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 8
  %140 = call i32 @skip_utf8(i32* %133, i32 %136, i32 0, i32 %139, i32 1)
  store i32 %140, i32* %12, align 4
  %141 = load i32, i32* %12, align 4
  %142 = icmp slt i32 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %130
  br label %149

144:                                              ; preds = %130
  %145 = load i32, i32* %12, align 4
  %146 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %147 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %146, i32 0, i32 0
  store i32 %145, i32* %147, align 8
  br label %148

148:                                              ; preds = %78, %144, %129, %120, %111, %102, %93
  br label %24

149:                                              ; preds = %143, %77
  %150 = load i32, i32* %6, align 4
  %151 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %152 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %151, i32 0, i32 0
  store i32 %150, i32* %152, align 8
  br label %153

153:                                              ; preds = %149
  %154 = load i32, i32* %5, align 4
  %155 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %156 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %155, i32 0, i32 0
  store i32 %154, i32* %156, align 8
  %157 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %158 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  store i32 %159, i32* %13, align 4
  %160 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %161 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %164 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %163, i32 0, i32 1
  store i32 %162, i32* %164, align 4
  %165 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %166 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %169 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 8
  %171 = icmp eq i32 %167, %170
  br i1 %171, label %183, label %172

172:                                              ; preds = %153
  %173 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %174 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %173, i32 0, i32 3
  %175 = load i32*, i32** %174, align 8
  %176 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %177 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i32, i32* %175, i64 %179
  %181 = load i32, i32* %180, align 4
  %182 = icmp ne i32 %181, 121
  br i1 %182, label %183, label %187

183:                                              ; preds = %172, %153
  %184 = load i32, i32* %13, align 4
  %185 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %186 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %185, i32 0, i32 0
  store i32 %184, i32* %186, align 8
  br label %205

187:                                              ; preds = %172
  %188 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %189 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %189, align 8
  %192 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %193 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %196 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %195, i32 0, i32 4
  store i32 %194, i32* %196, align 8
  %197 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %198 = load i32, i32* @s_5, align 4
  %199 = call i32 @slice_from_s(%struct.SN_env* %197, i32 1, i32 %198)
  store i32 %199, i32* %14, align 4
  %200 = load i32, i32* %14, align 4
  %201 = icmp slt i32 %200, 0
  br i1 %201, label %202, label %204

202:                                              ; preds = %187
  %203 = load i32, i32* %14, align 4
  store i32 %203, i32* %2, align 4
  br label %343

204:                                              ; preds = %187
  br label %205

205:                                              ; preds = %204, %183
  br label %206

206:                                              ; preds = %205, %337
  %207 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %208 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  store i32 %209, i32* %15, align 4
  br label %210

210:                                              ; preds = %206, %333
  %211 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %212 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  store i32 %213, i32* %16, align 4
  %214 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %215 = load i32, i32* @g_v, align 4
  %216 = call i64 @in_grouping_U(%struct.SN_env* %214, i32 %215, i32 97, i32 232, i32 0)
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %218, label %219

218:                                              ; preds = %210
  br label %316

219:                                              ; preds = %210
  %220 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %221 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 8
  %223 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %224 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %223, i32 0, i32 1
  store i32 %222, i32* %224, align 4
  %225 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %226 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 8
  store i32 %227, i32* %17, align 4
  %228 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %229 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 8
  %231 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %232 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %231, i32 0, i32 2
  %233 = load i32, i32* %232, align 8
  %234 = icmp eq i32 %230, %233
  br i1 %234, label %246, label %235

235:                                              ; preds = %219
  %236 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %237 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %236, i32 0, i32 3
  %238 = load i32*, i32** %237, align 8
  %239 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %240 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 8
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds i32, i32* %238, i64 %242
  %244 = load i32, i32* %243, align 4
  %245 = icmp ne i32 %244, 105
  br i1 %245, label %246, label %247

246:                                              ; preds = %235, %219
  br label %271

247:                                              ; preds = %235
  %248 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %249 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 8
  %251 = add nsw i32 %250, 1
  store i32 %251, i32* %249, align 8
  %252 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %253 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 8
  %255 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %256 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %255, i32 0, i32 4
  store i32 %254, i32* %256, align 8
  %257 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %258 = load i32, i32* @g_v, align 4
  %259 = call i64 @in_grouping_U(%struct.SN_env* %257, i32 %258, i32 97, i32 232, i32 0)
  %260 = icmp ne i64 %259, 0
  br i1 %260, label %261, label %262

261:                                              ; preds = %247
  br label %271

262:                                              ; preds = %247
  %263 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %264 = load i32, i32* @s_6, align 4
  %265 = call i32 @slice_from_s(%struct.SN_env* %263, i32 1, i32 %264)
  store i32 %265, i32* %18, align 4
  %266 = load i32, i32* %18, align 4
  %267 = icmp slt i32 %266, 0
  br i1 %267, label %268, label %270

268:                                              ; preds = %262
  %269 = load i32, i32* %18, align 4
  store i32 %269, i32* %2, align 4
  br label %343

270:                                              ; preds = %262
  br label %312

271:                                              ; preds = %261, %246
  %272 = load i32, i32* %17, align 4
  %273 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %274 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %273, i32 0, i32 0
  store i32 %272, i32* %274, align 8
  %275 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %276 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %275, i32 0, i32 0
  %277 = load i32, i32* %276, align 8
  %278 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %279 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %278, i32 0, i32 2
  %280 = load i32, i32* %279, align 8
  %281 = icmp eq i32 %277, %280
  br i1 %281, label %293, label %282

282:                                              ; preds = %271
  %283 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %284 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %283, i32 0, i32 3
  %285 = load i32*, i32** %284, align 8
  %286 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %287 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %286, i32 0, i32 0
  %288 = load i32, i32* %287, align 8
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds i32, i32* %285, i64 %289
  %291 = load i32, i32* %290, align 4
  %292 = icmp ne i32 %291, 121
  br i1 %292, label %293, label %294

293:                                              ; preds = %282, %271
  br label %316

294:                                              ; preds = %282
  %295 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %296 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %295, i32 0, i32 0
  %297 = load i32, i32* %296, align 8
  %298 = add nsw i32 %297, 1
  store i32 %298, i32* %296, align 8
  %299 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %300 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %299, i32 0, i32 0
  %301 = load i32, i32* %300, align 8
  %302 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %303 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %302, i32 0, i32 4
  store i32 %301, i32* %303, align 8
  %304 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %305 = load i32, i32* @s_7, align 4
  %306 = call i32 @slice_from_s(%struct.SN_env* %304, i32 1, i32 %305)
  store i32 %306, i32* %19, align 4
  %307 = load i32, i32* %19, align 4
  %308 = icmp slt i32 %307, 0
  br i1 %308, label %309, label %311

309:                                              ; preds = %294
  %310 = load i32, i32* %19, align 4
  store i32 %310, i32* %2, align 4
  br label %343

311:                                              ; preds = %294
  br label %312

312:                                              ; preds = %311, %270
  %313 = load i32, i32* %16, align 4
  %314 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %315 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %314, i32 0, i32 0
  store i32 %313, i32* %315, align 8
  br label %337

316:                                              ; preds = %293, %218
  %317 = load i32, i32* %16, align 4
  %318 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %319 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %318, i32 0, i32 0
  store i32 %317, i32* %319, align 8
  %320 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %321 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %320, i32 0, i32 3
  %322 = load i32*, i32** %321, align 8
  %323 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %324 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %323, i32 0, i32 0
  %325 = load i32, i32* %324, align 8
  %326 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %327 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %326, i32 0, i32 2
  %328 = load i32, i32* %327, align 8
  %329 = call i32 @skip_utf8(i32* %322, i32 %325, i32 0, i32 %328, i32 1)
  store i32 %329, i32* %20, align 4
  %330 = load i32, i32* %20, align 4
  %331 = icmp slt i32 %330, 0
  br i1 %331, label %332, label %333

332:                                              ; preds = %316
  br label %338

333:                                              ; preds = %316
  %334 = load i32, i32* %20, align 4
  %335 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %336 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %335, i32 0, i32 0
  store i32 %334, i32* %336, align 8
  br label %210

337:                                              ; preds = %312
  br label %206

338:                                              ; preds = %332
  %339 = load i32, i32* %15, align 4
  %340 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %341 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %340, i32 0, i32 0
  store i32 %339, i32* %341, align 8
  br label %342

342:                                              ; preds = %338
  store i32 1, i32* %2, align 4
  br label %343

343:                                              ; preds = %342, %309, %268, %202, %127, %118, %109, %100, %91
  %344 = load i32, i32* %2, align 4
  ret i32 %344
}

declare dso_local i32 @find_among(%struct.SN_env*, i32, i32) #1

declare dso_local i32 @slice_from_s(%struct.SN_env*, i32, i32) #1

declare dso_local i32 @skip_utf8(i32*, i32, i32, i32, i32) #1

declare dso_local i64 @in_grouping_U(%struct.SN_env*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
