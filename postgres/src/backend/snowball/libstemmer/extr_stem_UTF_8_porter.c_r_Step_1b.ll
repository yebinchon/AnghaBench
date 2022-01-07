; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_stem_UTF_8_porter.c_r_Step_1b.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_stem_UTF_8_porter.c_r_Step_1b.c"
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
  %18 = alloca i32, align 4
  store %struct.SN_env* %0, %struct.SN_env** %3, align 8
  %19 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %20 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %23 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  %24 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %25 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = sub nsw i32 %26, 1
  %28 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %29 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = icmp sle i32 %27, %30
  br i1 %31, label %56, label %32

32:                                               ; preds = %1
  %33 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %34 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %33, i32 0, i32 3
  %35 = load i32*, i32** %34, align 8
  %36 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %37 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = sub nsw i32 %38, 1
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %35, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 100
  br i1 %43, label %44, label %57

44:                                               ; preds = %32
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
  %55 = icmp ne i32 %54, 103
  br i1 %55, label %56, label %57

56:                                               ; preds = %44, %1
  store i32 0, i32* %2, align 4
  br label %293

57:                                               ; preds = %44, %32
  %58 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %59 = load i32, i32* @a_2, align 4
  %60 = call i32 @find_among_b(%struct.SN_env* %58, i32 %59, i32 3)
  store i32 %60, i32* %4, align 4
  %61 = load i32, i32* %4, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %57
  store i32 0, i32* %2, align 4
  br label %293

64:                                               ; preds = %57
  %65 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %66 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %69 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %68, i32 0, i32 4
  store i32 %67, i32* %69, align 8
  %70 = load i32, i32* %4, align 4
  switch i32 %70, label %292 [
    i32 1, label %71
    i32 2, label %87
  ]

71:                                               ; preds = %64
  %72 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %73 = call i32 @r_R1(%struct.SN_env* %72)
  store i32 %73, i32* %5, align 4
  %74 = load i32, i32* %5, align 4
  %75 = icmp sle i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %71
  %77 = load i32, i32* %5, align 4
  store i32 %77, i32* %2, align 4
  br label %293

78:                                               ; preds = %71
  %79 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %80 = load i32, i32* @s_2, align 4
  %81 = call i32 @slice_from_s(%struct.SN_env* %79, i32 2, i32 %80)
  store i32 %81, i32* %6, align 4
  %82 = load i32, i32* %6, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %78
  %85 = load i32, i32* %6, align 4
  store i32 %85, i32* %2, align 4
  br label %293

86:                                               ; preds = %78
  br label %292

87:                                               ; preds = %64
  %88 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %89 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %88, i32 0, i32 6
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %92 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = sub nsw i32 %90, %93
  store i32 %94, i32* %7, align 4
  %95 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %96 = load i32, i32* @g_v, align 4
  %97 = call i32 @out_grouping_b_U(%struct.SN_env* %95, i32 %96, i32 97, i32 121, i32 1)
  store i32 %97, i32* %8, align 4
  %98 = load i32, i32* %8, align 4
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %87
  store i32 0, i32* %2, align 4
  br label %293

101:                                              ; preds = %87
  %102 = load i32, i32* %8, align 4
  %103 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %104 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = sub nsw i32 %105, %102
  store i32 %106, i32* %104, align 4
  %107 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %108 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %107, i32 0, i32 6
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* %7, align 4
  %111 = sub nsw i32 %109, %110
  %112 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %113 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %112, i32 0, i32 1
  store i32 %111, i32* %113, align 4
  %114 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %115 = call i32 @slice_del(%struct.SN_env* %114)
  store i32 %115, i32* %9, align 4
  %116 = load i32, i32* %9, align 4
  %117 = icmp slt i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %101
  %119 = load i32, i32* %9, align 4
  store i32 %119, i32* %2, align 4
  br label %293

120:                                              ; preds = %101
  %121 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %122 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %121, i32 0, i32 6
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %125 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = sub nsw i32 %123, %126
  store i32 %127, i32* %10, align 4
  %128 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %129 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = sub nsw i32 %130, 1
  %132 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %133 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 8
  %135 = icmp sle i32 %131, %134
  br i1 %135, label %164, label %136

136:                                              ; preds = %120
  %137 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %138 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %137, i32 0, i32 3
  %139 = load i32*, i32** %138, align 8
  %140 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %141 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = sub nsw i32 %142, 1
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %139, i64 %144
  %146 = load i32, i32* %145, align 4
  %147 = ashr i32 %146, 5
  %148 = icmp ne i32 %147, 3
  br i1 %148, label %164, label %149

149:                                              ; preds = %136
  %150 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %151 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %150, i32 0, i32 3
  %152 = load i32*, i32** %151, align 8
  %153 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %154 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = sub nsw i32 %155, 1
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32, i32* %152, i64 %157
  %159 = load i32, i32* %158, align 4
  %160 = and i32 %159, 31
  %161 = ashr i32 68514004, %160
  %162 = and i32 %161, 1
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %165, label %164

164:                                              ; preds = %149, %136, %120
  store i32 3, i32* %4, align 4
  br label %169

165:                                              ; preds = %149
  %166 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %167 = load i32, i32* @a_1, align 4
  %168 = call i32 @find_among_b(%struct.SN_env* %166, i32 %167, i32 13)
  store i32 %168, i32* %4, align 4
  br label %169

169:                                              ; preds = %165, %164
  %170 = load i32, i32* %4, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %173, label %172

172:                                              ; preds = %169
  store i32 0, i32* %2, align 4
  br label %293

173:                                              ; preds = %169
  %174 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %175 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %174, i32 0, i32 6
  %176 = load i32, i32* %175, align 8
  %177 = load i32, i32* %10, align 4
  %178 = sub nsw i32 %176, %177
  %179 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %180 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %179, i32 0, i32 1
  store i32 %178, i32* %180, align 4
  %181 = load i32, i32* %4, align 4
  switch i32 %181, label %291 [
    i32 1, label %182
    i32 2, label %203
    i32 3, label %238
  ]

182:                                              ; preds = %173
  %183 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %184 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  store i32 %185, i32* %12, align 4
  %186 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %187 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %188 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %191 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = load i32, i32* @s_3, align 4
  %194 = call i32 @insert_s(%struct.SN_env* %186, i32 %189, i32 %192, i32 1, i32 %193)
  store i32 %194, i32* %11, align 4
  %195 = load i32, i32* %12, align 4
  %196 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %197 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %196, i32 0, i32 1
  store i32 %195, i32* %197, align 4
  %198 = load i32, i32* %11, align 4
  %199 = icmp slt i32 %198, 0
  br i1 %199, label %200, label %202

200:                                              ; preds = %182
  %201 = load i32, i32* %11, align 4
  store i32 %201, i32* %2, align 4
  br label %293

202:                                              ; preds = %182
  br label %291

203:                                              ; preds = %173
  %204 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %205 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 4
  %207 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %208 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %207, i32 0, i32 0
  store i32 %206, i32* %208, align 8
  %209 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %210 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %209, i32 0, i32 3
  %211 = load i32*, i32** %210, align 8
  %212 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %213 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 4
  %215 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %216 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %215, i32 0, i32 2
  %217 = load i32, i32* %216, align 8
  %218 = call i32 @skip_utf8(i32* %211, i32 %214, i32 %217, i32 0, i32 -1)
  store i32 %218, i32* %13, align 4
  %219 = load i32, i32* %13, align 4
  %220 = icmp slt i32 %219, 0
  br i1 %220, label %221, label %222

221:                                              ; preds = %203
  store i32 0, i32* %2, align 4
  br label %293

222:                                              ; preds = %203
  %223 = load i32, i32* %13, align 4
  %224 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %225 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %224, i32 0, i32 1
  store i32 %223, i32* %225, align 4
  %226 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %227 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %226, i32 0, i32 1
  %228 = load i32, i32* %227, align 4
  %229 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %230 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %229, i32 0, i32 4
  store i32 %228, i32* %230, align 8
  %231 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %232 = call i32 @slice_del(%struct.SN_env* %231)
  store i32 %232, i32* %14, align 4
  %233 = load i32, i32* %14, align 4
  %234 = icmp slt i32 %233, 0
  br i1 %234, label %235, label %237

235:                                              ; preds = %222
  %236 = load i32, i32* %14, align 4
  store i32 %236, i32* %2, align 4
  br label %293

237:                                              ; preds = %222
  br label %291

238:                                              ; preds = %173
  %239 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %240 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %239, i32 0, i32 1
  %241 = load i32, i32* %240, align 4
  %242 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %243 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %242, i32 0, i32 5
  %244 = load i32*, i32** %243, align 8
  %245 = getelementptr inbounds i32, i32* %244, i64 0
  %246 = load i32, i32* %245, align 4
  %247 = icmp ne i32 %241, %246
  br i1 %247, label %248, label %249

248:                                              ; preds = %238
  store i32 0, i32* %2, align 4
  br label %293

249:                                              ; preds = %238
  %250 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %251 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %250, i32 0, i32 6
  %252 = load i32, i32* %251, align 8
  %253 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %254 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %253, i32 0, i32 1
  %255 = load i32, i32* %254, align 4
  %256 = sub nsw i32 %252, %255
  store i32 %256, i32* %15, align 4
  %257 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %258 = call i32 @r_shortv(%struct.SN_env* %257)
  store i32 %258, i32* %16, align 4
  %259 = load i32, i32* %16, align 4
  %260 = icmp sle i32 %259, 0
  br i1 %260, label %261, label %263

261:                                              ; preds = %249
  %262 = load i32, i32* %16, align 4
  store i32 %262, i32* %2, align 4
  br label %293

263:                                              ; preds = %249
  %264 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %265 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %264, i32 0, i32 6
  %266 = load i32, i32* %265, align 8
  %267 = load i32, i32* %15, align 4
  %268 = sub nsw i32 %266, %267
  %269 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %270 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %269, i32 0, i32 1
  store i32 %268, i32* %270, align 4
  %271 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %272 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %271, i32 0, i32 1
  %273 = load i32, i32* %272, align 4
  store i32 %273, i32* %18, align 4
  %274 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %275 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %276 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %275, i32 0, i32 1
  %277 = load i32, i32* %276, align 4
  %278 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %279 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %278, i32 0, i32 1
  %280 = load i32, i32* %279, align 4
  %281 = load i32, i32* @s_4, align 4
  %282 = call i32 @insert_s(%struct.SN_env* %274, i32 %277, i32 %280, i32 1, i32 %281)
  store i32 %282, i32* %17, align 4
  %283 = load i32, i32* %18, align 4
  %284 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %285 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %284, i32 0, i32 1
  store i32 %283, i32* %285, align 4
  %286 = load i32, i32* %17, align 4
  %287 = icmp slt i32 %286, 0
  br i1 %287, label %288, label %290

288:                                              ; preds = %263
  %289 = load i32, i32* %17, align 4
  store i32 %289, i32* %2, align 4
  br label %293

290:                                              ; preds = %263
  br label %291

291:                                              ; preds = %173, %290, %237, %202
  br label %292

292:                                              ; preds = %64, %291, %86
  store i32 1, i32* %2, align 4
  br label %293

293:                                              ; preds = %292, %288, %261, %248, %235, %221, %200, %172, %118, %100, %84, %76, %63, %56
  %294 = load i32, i32* %2, align 4
  ret i32 %294
}

declare dso_local i32 @find_among_b(%struct.SN_env*, i32, i32) #1

declare dso_local i32 @r_R1(%struct.SN_env*) #1

declare dso_local i32 @slice_from_s(%struct.SN_env*, i32, i32) #1

declare dso_local i32 @out_grouping_b_U(%struct.SN_env*, i32, i32, i32, i32) #1

declare dso_local i32 @slice_del(%struct.SN_env*) #1

declare dso_local i32 @insert_s(%struct.SN_env*, i32, i32, i32, i32) #1

declare dso_local i32 @skip_utf8(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @r_shortv(%struct.SN_env*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
