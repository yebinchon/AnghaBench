; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_stem_ISO_8859_1_dutch.c_r_prelude.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_stem_ISO_8859_1_dutch.c_r_prelude.c"
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
  store %struct.SN_env* %0, %struct.SN_env** %3, align 8
  %19 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %20 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %5, align 4
  br label %22

22:                                               ; preds = %1, %141
  %23 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %24 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %6, align 4
  %26 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %27 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %30 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %32 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %35 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = icmp sge i32 %33, %36
  br i1 %37, label %66, label %38

38:                                               ; preds = %22
  %39 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %40 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %39, i32 0, i32 3
  %41 = load i32*, i32** %40, align 8
  %42 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %43 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = add nsw i32 %44, 0
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %41, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = ashr i32 %48, 5
  %50 = icmp ne i32 %49, 7
  br i1 %50, label %66, label %51

51:                                               ; preds = %38
  %52 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %53 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %52, i32 0, i32 3
  %54 = load i32*, i32** %53, align 8
  %55 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %56 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = add nsw i32 %57, 0
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %54, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = and i32 %61, 31
  %63 = ashr i32 340306450, %62
  %64 = and i32 %63, 1
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %51, %38, %22
  store i32 6, i32* %4, align 4
  br label %71

67:                                               ; preds = %51
  %68 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %69 = load i32, i32* @a_0, align 4
  %70 = call i32 @find_among(%struct.SN_env* %68, i32 %69, i32 11)
  store i32 %70, i32* %4, align 4
  br label %71

71:                                               ; preds = %67, %66
  %72 = load i32, i32* %4, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %71
  br label %142

75:                                               ; preds = %71
  %76 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %77 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %80 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %79, i32 0, i32 4
  store i32 %78, i32* %80, align 8
  %81 = load i32, i32* %4, align 4
  switch i32 %81, label %141 [
    i32 1, label %82
    i32 2, label %91
    i32 3, label %100
    i32 4, label %109
    i32 5, label %118
    i32 6, label %127
  ]

82:                                               ; preds = %75
  %83 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %84 = load i32, i32* @s_0, align 4
  %85 = call i32 @slice_from_s(%struct.SN_env* %83, i32 1, i32 %84)
  store i32 %85, i32* %7, align 4
  %86 = load i32, i32* %7, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %82
  %89 = load i32, i32* %7, align 4
  store i32 %89, i32* %2, align 4
  br label %332

90:                                               ; preds = %82
  br label %141

91:                                               ; preds = %75
  %92 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %93 = load i32, i32* @s_1, align 4
  %94 = call i32 @slice_from_s(%struct.SN_env* %92, i32 1, i32 %93)
  store i32 %94, i32* %8, align 4
  %95 = load i32, i32* %8, align 4
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %91
  %98 = load i32, i32* %8, align 4
  store i32 %98, i32* %2, align 4
  br label %332

99:                                               ; preds = %91
  br label %141

100:                                              ; preds = %75
  %101 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %102 = load i32, i32* @s_2, align 4
  %103 = call i32 @slice_from_s(%struct.SN_env* %101, i32 1, i32 %102)
  store i32 %103, i32* %9, align 4
  %104 = load i32, i32* %9, align 4
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %100
  %107 = load i32, i32* %9, align 4
  store i32 %107, i32* %2, align 4
  br label %332

108:                                              ; preds = %100
  br label %141

109:                                              ; preds = %75
  %110 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %111 = load i32, i32* @s_3, align 4
  %112 = call i32 @slice_from_s(%struct.SN_env* %110, i32 1, i32 %111)
  store i32 %112, i32* %10, align 4
  %113 = load i32, i32* %10, align 4
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %109
  %116 = load i32, i32* %10, align 4
  store i32 %116, i32* %2, align 4
  br label %332

117:                                              ; preds = %109
  br label %141

118:                                              ; preds = %75
  %119 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %120 = load i32, i32* @s_4, align 4
  %121 = call i32 @slice_from_s(%struct.SN_env* %119, i32 1, i32 %120)
  store i32 %121, i32* %11, align 4
  %122 = load i32, i32* %11, align 4
  %123 = icmp slt i32 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %118
  %125 = load i32, i32* %11, align 4
  store i32 %125, i32* %2, align 4
  br label %332

126:                                              ; preds = %118
  br label %141

127:                                              ; preds = %75
  %128 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %129 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %132 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = icmp sge i32 %130, %133
  br i1 %134, label %135, label %136

135:                                              ; preds = %127
  br label %142

136:                                              ; preds = %127
  %137 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %138 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %138, align 8
  br label %141

141:                                              ; preds = %75, %136, %126, %117, %108, %99, %90
  br label %22

142:                                              ; preds = %135, %74
  %143 = load i32, i32* %6, align 4
  %144 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %145 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %144, i32 0, i32 0
  store i32 %143, i32* %145, align 8
  br label %146

146:                                              ; preds = %142
  %147 = load i32, i32* %5, align 4
  %148 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %149 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %148, i32 0, i32 0
  store i32 %147, i32* %149, align 8
  %150 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %151 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  store i32 %152, i32* %12, align 4
  %153 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %154 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %157 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %156, i32 0, i32 1
  store i32 %155, i32* %157, align 4
  %158 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %159 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %162 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 8
  %164 = icmp eq i32 %160, %163
  br i1 %164, label %176, label %165

165:                                              ; preds = %146
  %166 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %167 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %166, i32 0, i32 3
  %168 = load i32*, i32** %167, align 8
  %169 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %170 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i32, i32* %168, i64 %172
  %174 = load i32, i32* %173, align 4
  %175 = icmp ne i32 %174, 121
  br i1 %175, label %176, label %180

176:                                              ; preds = %165, %146
  %177 = load i32, i32* %12, align 4
  %178 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %179 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %178, i32 0, i32 0
  store i32 %177, i32* %179, align 8
  br label %198

180:                                              ; preds = %165
  %181 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %182 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %182, align 8
  %185 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %186 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %189 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %188, i32 0, i32 4
  store i32 %187, i32* %189, align 8
  %190 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %191 = load i32, i32* @s_5, align 4
  %192 = call i32 @slice_from_s(%struct.SN_env* %190, i32 1, i32 %191)
  store i32 %192, i32* %13, align 4
  %193 = load i32, i32* %13, align 4
  %194 = icmp slt i32 %193, 0
  br i1 %194, label %195, label %197

195:                                              ; preds = %180
  %196 = load i32, i32* %13, align 4
  store i32 %196, i32* %2, align 4
  br label %332

197:                                              ; preds = %180
  br label %198

198:                                              ; preds = %197, %176
  br label %199

199:                                              ; preds = %198, %326
  %200 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %201 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  store i32 %202, i32* %14, align 4
  br label %203

203:                                              ; preds = %199, %321
  %204 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %205 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  store i32 %206, i32* %15, align 4
  %207 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %208 = load i32, i32* @g_v, align 4
  %209 = call i64 @in_grouping(%struct.SN_env* %207, i32 %208, i32 97, i32 232, i32 0)
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %212

211:                                              ; preds = %203
  br label %309

212:                                              ; preds = %203
  %213 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %214 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  %216 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %217 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %216, i32 0, i32 1
  store i32 %215, i32* %217, align 4
  %218 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %219 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 8
  store i32 %220, i32* %16, align 4
  %221 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %222 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 8
  %224 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %225 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %224, i32 0, i32 2
  %226 = load i32, i32* %225, align 8
  %227 = icmp eq i32 %223, %226
  br i1 %227, label %239, label %228

228:                                              ; preds = %212
  %229 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %230 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %229, i32 0, i32 3
  %231 = load i32*, i32** %230, align 8
  %232 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %233 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 8
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds i32, i32* %231, i64 %235
  %237 = load i32, i32* %236, align 4
  %238 = icmp ne i32 %237, 105
  br i1 %238, label %239, label %240

239:                                              ; preds = %228, %212
  br label %264

240:                                              ; preds = %228
  %241 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %242 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 8
  %244 = add nsw i32 %243, 1
  store i32 %244, i32* %242, align 8
  %245 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %246 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 8
  %248 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %249 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %248, i32 0, i32 4
  store i32 %247, i32* %249, align 8
  %250 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %251 = load i32, i32* @g_v, align 4
  %252 = call i64 @in_grouping(%struct.SN_env* %250, i32 %251, i32 97, i32 232, i32 0)
  %253 = icmp ne i64 %252, 0
  br i1 %253, label %254, label %255

254:                                              ; preds = %240
  br label %264

255:                                              ; preds = %240
  %256 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %257 = load i32, i32* @s_6, align 4
  %258 = call i32 @slice_from_s(%struct.SN_env* %256, i32 1, i32 %257)
  store i32 %258, i32* %17, align 4
  %259 = load i32, i32* %17, align 4
  %260 = icmp slt i32 %259, 0
  br i1 %260, label %261, label %263

261:                                              ; preds = %255
  %262 = load i32, i32* %17, align 4
  store i32 %262, i32* %2, align 4
  br label %332

263:                                              ; preds = %255
  br label %305

264:                                              ; preds = %254, %239
  %265 = load i32, i32* %16, align 4
  %266 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %267 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %266, i32 0, i32 0
  store i32 %265, i32* %267, align 8
  %268 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %269 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %268, i32 0, i32 0
  %270 = load i32, i32* %269, align 8
  %271 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %272 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %271, i32 0, i32 2
  %273 = load i32, i32* %272, align 8
  %274 = icmp eq i32 %270, %273
  br i1 %274, label %286, label %275

275:                                              ; preds = %264
  %276 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %277 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %276, i32 0, i32 3
  %278 = load i32*, i32** %277, align 8
  %279 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %280 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %279, i32 0, i32 0
  %281 = load i32, i32* %280, align 8
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds i32, i32* %278, i64 %282
  %284 = load i32, i32* %283, align 4
  %285 = icmp ne i32 %284, 121
  br i1 %285, label %286, label %287

286:                                              ; preds = %275, %264
  br label %309

287:                                              ; preds = %275
  %288 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %289 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %288, i32 0, i32 0
  %290 = load i32, i32* %289, align 8
  %291 = add nsw i32 %290, 1
  store i32 %291, i32* %289, align 8
  %292 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %293 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %292, i32 0, i32 0
  %294 = load i32, i32* %293, align 8
  %295 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %296 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %295, i32 0, i32 4
  store i32 %294, i32* %296, align 8
  %297 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %298 = load i32, i32* @s_7, align 4
  %299 = call i32 @slice_from_s(%struct.SN_env* %297, i32 1, i32 %298)
  store i32 %299, i32* %18, align 4
  %300 = load i32, i32* %18, align 4
  %301 = icmp slt i32 %300, 0
  br i1 %301, label %302, label %304

302:                                              ; preds = %287
  %303 = load i32, i32* %18, align 4
  store i32 %303, i32* %2, align 4
  br label %332

304:                                              ; preds = %287
  br label %305

305:                                              ; preds = %304, %263
  %306 = load i32, i32* %15, align 4
  %307 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %308 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %307, i32 0, i32 0
  store i32 %306, i32* %308, align 8
  br label %326

309:                                              ; preds = %286, %211
  %310 = load i32, i32* %15, align 4
  %311 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %312 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %311, i32 0, i32 0
  store i32 %310, i32* %312, align 8
  %313 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %314 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %313, i32 0, i32 0
  %315 = load i32, i32* %314, align 8
  %316 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %317 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %316, i32 0, i32 2
  %318 = load i32, i32* %317, align 8
  %319 = icmp sge i32 %315, %318
  br i1 %319, label %320, label %321

320:                                              ; preds = %309
  br label %327

321:                                              ; preds = %309
  %322 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %323 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %322, i32 0, i32 0
  %324 = load i32, i32* %323, align 8
  %325 = add nsw i32 %324, 1
  store i32 %325, i32* %323, align 8
  br label %203

326:                                              ; preds = %305
  br label %199

327:                                              ; preds = %320
  %328 = load i32, i32* %14, align 4
  %329 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %330 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %329, i32 0, i32 0
  store i32 %328, i32* %330, align 8
  br label %331

331:                                              ; preds = %327
  store i32 1, i32* %2, align 4
  br label %332

332:                                              ; preds = %331, %302, %261, %195, %124, %115, %106, %97, %88
  %333 = load i32, i32* %2, align 4
  ret i32 %333
}

declare dso_local i32 @find_among(%struct.SN_env*, i32, i32) #1

declare dso_local i32 @slice_from_s(%struct.SN_env*, i32, i32) #1

declare dso_local i64 @in_grouping(%struct.SN_env*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
