; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_stem_ISO_8859_1_porter.c_r_Step_1b.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_stem_ISO_8859_1_porter.c_r_Step_1b.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SN_env = type { i32, i32, i32, i32*, i32, i32*, i32 }

@a_2 = common dso_local global i32 0, align 4
@s_2 = common dso_local global i32 0, align 4
@g_v = common dso_local global i32 0, align 4
@a_1 = common dso_local global i32 0, align 4
@s_3 = common dso_local global i32 0, align 4
@s_4 = common dso_local global i32 0, align 4
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
  br i1 %30, label %55, label %31

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
  %42 = icmp ne i32 %41, 100
  br i1 %42, label %43, label %56

43:                                               ; preds = %31
  %44 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %45 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %44, i32 0, i32 3
  %46 = load i32*, i32** %45, align 8
  %47 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %48 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = sub nsw i32 %49, 1
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %46, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 103
  br i1 %54, label %55, label %56

55:                                               ; preds = %43, %1
  store i32 0, i32* %2, align 4
  br label %288

56:                                               ; preds = %43, %31
  %57 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %58 = load i32, i32* @a_2, align 4
  %59 = call i32 @find_among_b(%struct.SN_env* %57, i32 %58, i32 3)
  store i32 %59, i32* %4, align 4
  %60 = load i32, i32* %4, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %56
  store i32 0, i32* %2, align 4
  br label %288

63:                                               ; preds = %56
  %64 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %65 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %68 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %67, i32 0, i32 4
  store i32 %66, i32* %68, align 8
  %69 = load i32, i32* %4, align 4
  switch i32 %69, label %287 [
    i32 1, label %70
    i32 2, label %86
  ]

70:                                               ; preds = %63
  %71 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %72 = call i32 @r_R1(%struct.SN_env* %71)
  store i32 %72, i32* %5, align 4
  %73 = load i32, i32* %5, align 4
  %74 = icmp sle i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %70
  %76 = load i32, i32* %5, align 4
  store i32 %76, i32* %2, align 4
  br label %288

77:                                               ; preds = %70
  %78 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %79 = load i32, i32* @s_2, align 4
  %80 = call i32 @slice_from_s(%struct.SN_env* %78, i32 2, i32 %79)
  store i32 %80, i32* %6, align 4
  %81 = load i32, i32* %6, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %77
  %84 = load i32, i32* %6, align 4
  store i32 %84, i32* %2, align 4
  br label %288

85:                                               ; preds = %77
  br label %287

86:                                               ; preds = %63
  %87 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %88 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %87, i32 0, i32 6
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %91 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = sub nsw i32 %89, %92
  store i32 %93, i32* %7, align 4
  %94 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %95 = load i32, i32* @g_v, align 4
  %96 = call i32 @out_grouping_b(%struct.SN_env* %94, i32 %95, i32 97, i32 121, i32 1)
  store i32 %96, i32* %8, align 4
  %97 = load i32, i32* %8, align 4
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %86
  store i32 0, i32* %2, align 4
  br label %288

100:                                              ; preds = %86
  %101 = load i32, i32* %8, align 4
  %102 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %103 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = sub nsw i32 %104, %101
  store i32 %105, i32* %103, align 4
  %106 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %107 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %106, i32 0, i32 6
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* %7, align 4
  %110 = sub nsw i32 %108, %109
  %111 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %112 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %111, i32 0, i32 1
  store i32 %110, i32* %112, align 4
  %113 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %114 = call i32 @slice_del(%struct.SN_env* %113)
  store i32 %114, i32* %9, align 4
  %115 = load i32, i32* %9, align 4
  %116 = icmp slt i32 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %100
  %118 = load i32, i32* %9, align 4
  store i32 %118, i32* %2, align 4
  br label %288

119:                                              ; preds = %100
  %120 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %121 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %120, i32 0, i32 6
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %124 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = sub nsw i32 %122, %125
  store i32 %126, i32* %10, align 4
  %127 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %128 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = sub nsw i32 %129, 1
  %131 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %132 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = icmp sle i32 %130, %133
  br i1 %134, label %163, label %135

135:                                              ; preds = %119
  %136 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %137 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %136, i32 0, i32 3
  %138 = load i32*, i32** %137, align 8
  %139 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %140 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = sub nsw i32 %141, 1
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %138, i64 %143
  %145 = load i32, i32* %144, align 4
  %146 = ashr i32 %145, 5
  %147 = icmp ne i32 %146, 3
  br i1 %147, label %163, label %148

148:                                              ; preds = %135
  %149 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %150 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %149, i32 0, i32 3
  %151 = load i32*, i32** %150, align 8
  %152 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %153 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = sub nsw i32 %154, 1
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %151, i64 %156
  %158 = load i32, i32* %157, align 4
  %159 = and i32 %158, 31
  %160 = ashr i32 68514004, %159
  %161 = and i32 %160, 1
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %164, label %163

163:                                              ; preds = %148, %135, %119
  store i32 3, i32* %4, align 4
  br label %168

164:                                              ; preds = %148
  %165 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %166 = load i32, i32* @a_1, align 4
  %167 = call i32 @find_among_b(%struct.SN_env* %165, i32 %166, i32 13)
  store i32 %167, i32* %4, align 4
  br label %168

168:                                              ; preds = %164, %163
  %169 = load i32, i32* %4, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %172, label %171

171:                                              ; preds = %168
  store i32 0, i32* %2, align 4
  br label %288

172:                                              ; preds = %168
  %173 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %174 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %173, i32 0, i32 6
  %175 = load i32, i32* %174, align 8
  %176 = load i32, i32* %10, align 4
  %177 = sub nsw i32 %175, %176
  %178 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %179 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %178, i32 0, i32 1
  store i32 %177, i32* %179, align 4
  %180 = load i32, i32* %4, align 4
  switch i32 %180, label %286 [
    i32 1, label %181
    i32 2, label %202
    i32 3, label %233
  ]

181:                                              ; preds = %172
  %182 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %183 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  store i32 %184, i32* %12, align 4
  %185 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %186 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %187 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %190 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = load i32, i32* @s_3, align 4
  %193 = call i32 @insert_s(%struct.SN_env* %185, i32 %188, i32 %191, i32 1, i32 %192)
  store i32 %193, i32* %11, align 4
  %194 = load i32, i32* %12, align 4
  %195 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %196 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %195, i32 0, i32 1
  store i32 %194, i32* %196, align 4
  %197 = load i32, i32* %11, align 4
  %198 = icmp slt i32 %197, 0
  br i1 %198, label %199, label %201

199:                                              ; preds = %181
  %200 = load i32, i32* %11, align 4
  store i32 %200, i32* %2, align 4
  br label %288

201:                                              ; preds = %181
  br label %286

202:                                              ; preds = %172
  %203 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %204 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %207 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %206, i32 0, i32 0
  store i32 %205, i32* %207, align 8
  %208 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %209 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 4
  %211 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %212 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %211, i32 0, i32 2
  %213 = load i32, i32* %212, align 8
  %214 = icmp sle i32 %210, %213
  br i1 %214, label %215, label %216

215:                                              ; preds = %202
  store i32 0, i32* %2, align 4
  br label %288

216:                                              ; preds = %202
  %217 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %218 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 4
  %220 = add nsw i32 %219, -1
  store i32 %220, i32* %218, align 4
  %221 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %222 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 4
  %224 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %225 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %224, i32 0, i32 4
  store i32 %223, i32* %225, align 8
  %226 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %227 = call i32 @slice_del(%struct.SN_env* %226)
  store i32 %227, i32* %13, align 4
  %228 = load i32, i32* %13, align 4
  %229 = icmp slt i32 %228, 0
  br i1 %229, label %230, label %232

230:                                              ; preds = %216
  %231 = load i32, i32* %13, align 4
  store i32 %231, i32* %2, align 4
  br label %288

232:                                              ; preds = %216
  br label %286

233:                                              ; preds = %172
  %234 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %235 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %234, i32 0, i32 1
  %236 = load i32, i32* %235, align 4
  %237 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %238 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %237, i32 0, i32 5
  %239 = load i32*, i32** %238, align 8
  %240 = getelementptr inbounds i32, i32* %239, i64 0
  %241 = load i32, i32* %240, align 4
  %242 = icmp ne i32 %236, %241
  br i1 %242, label %243, label %244

243:                                              ; preds = %233
  store i32 0, i32* %2, align 4
  br label %288

244:                                              ; preds = %233
  %245 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %246 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %245, i32 0, i32 6
  %247 = load i32, i32* %246, align 8
  %248 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %249 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %248, i32 0, i32 1
  %250 = load i32, i32* %249, align 4
  %251 = sub nsw i32 %247, %250
  store i32 %251, i32* %14, align 4
  %252 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %253 = call i32 @r_shortv(%struct.SN_env* %252)
  store i32 %253, i32* %15, align 4
  %254 = load i32, i32* %15, align 4
  %255 = icmp sle i32 %254, 0
  br i1 %255, label %256, label %258

256:                                              ; preds = %244
  %257 = load i32, i32* %15, align 4
  store i32 %257, i32* %2, align 4
  br label %288

258:                                              ; preds = %244
  %259 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %260 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %259, i32 0, i32 6
  %261 = load i32, i32* %260, align 8
  %262 = load i32, i32* %14, align 4
  %263 = sub nsw i32 %261, %262
  %264 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %265 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %264, i32 0, i32 1
  store i32 %263, i32* %265, align 4
  %266 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %267 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %266, i32 0, i32 1
  %268 = load i32, i32* %267, align 4
  store i32 %268, i32* %17, align 4
  %269 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %270 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %271 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %270, i32 0, i32 1
  %272 = load i32, i32* %271, align 4
  %273 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %274 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %273, i32 0, i32 1
  %275 = load i32, i32* %274, align 4
  %276 = load i32, i32* @s_4, align 4
  %277 = call i32 @insert_s(%struct.SN_env* %269, i32 %272, i32 %275, i32 1, i32 %276)
  store i32 %277, i32* %16, align 4
  %278 = load i32, i32* %17, align 4
  %279 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %280 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %279, i32 0, i32 1
  store i32 %278, i32* %280, align 4
  %281 = load i32, i32* %16, align 4
  %282 = icmp slt i32 %281, 0
  br i1 %282, label %283, label %285

283:                                              ; preds = %258
  %284 = load i32, i32* %16, align 4
  store i32 %284, i32* %2, align 4
  br label %288

285:                                              ; preds = %258
  br label %286

286:                                              ; preds = %172, %285, %232, %201
  br label %287

287:                                              ; preds = %63, %286, %85
  store i32 1, i32* %2, align 4
  br label %288

288:                                              ; preds = %287, %283, %256, %243, %230, %215, %199, %171, %117, %99, %83, %75, %62, %55
  %289 = load i32, i32* %2, align 4
  ret i32 %289
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
