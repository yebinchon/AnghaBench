; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_stem_UTF_8_french.c_r_prelude.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_stem_UTF_8_french.c_r_prelude.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SN_env = type { i32, i32, i32, i8*, i64 }

@g_v = common dso_local global i32 0, align 4
@s_0 = common dso_local global i32 0, align 4
@s_1 = common dso_local global i32 0, align 4
@s_2 = common dso_local global i32 0, align 4
@s_3 = common dso_local global i32 0, align 4
@s_4 = common dso_local global i32 0, align 4
@s_5 = common dso_local global i32 0, align 4
@s_6 = common dso_local global i32 0, align 4
@s_7 = common dso_local global i32 0, align 4
@s_8 = common dso_local global i32 0, align 4
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
  store %struct.SN_env* %0, %struct.SN_env** %3, align 8
  br label %16

16:                                               ; preds = %1, %389
  %17 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %18 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %4, align 4
  br label %20

20:                                               ; preds = %16, %385
  %21 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %22 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %5, align 4
  %24 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %25 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %6, align 4
  %27 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %28 = load i32, i32* @g_v, align 4
  %29 = call i64 @in_grouping_U(%struct.SN_env* %27, i32 %28, i32 97, i32 251, i32 0)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %20
  br label %179

32:                                               ; preds = %20
  %33 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %34 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %37 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %39 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  store i32 %40, i32* %7, align 4
  %41 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %42 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %45 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = icmp eq i32 %43, %46
  br i1 %47, label %60, label %48

48:                                               ; preds = %32
  %49 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %50 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %49, i32 0, i32 3
  %51 = load i8*, i8** %50, align 8
  %52 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %53 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8, i8* %51, i64 %55
  %57 = load i8, i8* %56, align 1
  %58 = zext i8 %57 to i32
  %59 = icmp ne i32 %58, 117
  br i1 %59, label %60, label %61

60:                                               ; preds = %48, %32
  br label %86

61:                                               ; preds = %48
  %62 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %63 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %63, align 8
  %66 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %67 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = sext i32 %68 to i64
  %70 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %71 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %70, i32 0, i32 4
  store i64 %69, i64* %71, align 8
  %72 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %73 = load i32, i32* @g_v, align 4
  %74 = call i64 @in_grouping_U(%struct.SN_env* %72, i32 %73, i32 97, i32 251, i32 0)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %61
  br label %86

77:                                               ; preds = %61
  %78 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %79 = load i32, i32* @s_0, align 4
  %80 = call i32 @slice_from_s(%struct.SN_env* %78, i32 1, i32 %79)
  store i32 %80, i32* %8, align 4
  %81 = load i32, i32* %8, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %77
  %84 = load i32, i32* %8, align 4
  store i32 %84, i32* %2, align 4
  br label %395

85:                                               ; preds = %77
  br label %178

86:                                               ; preds = %76, %60
  %87 = load i32, i32* %7, align 4
  %88 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %89 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 8
  %90 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %91 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %94 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = icmp eq i32 %92, %95
  br i1 %96, label %109, label %97

97:                                               ; preds = %86
  %98 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %99 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %98, i32 0, i32 3
  %100 = load i8*, i8** %99, align 8
  %101 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %102 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i8, i8* %100, i64 %104
  %106 = load i8, i8* %105, align 1
  %107 = zext i8 %106 to i32
  %108 = icmp ne i32 %107, 105
  br i1 %108, label %109, label %110

109:                                              ; preds = %97, %86
  br label %135

110:                                              ; preds = %97
  %111 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %112 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %112, align 8
  %115 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %116 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = sext i32 %117 to i64
  %119 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %120 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %119, i32 0, i32 4
  store i64 %118, i64* %120, align 8
  %121 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %122 = load i32, i32* @g_v, align 4
  %123 = call i64 @in_grouping_U(%struct.SN_env* %121, i32 %122, i32 97, i32 251, i32 0)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %110
  br label %135

126:                                              ; preds = %110
  %127 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %128 = load i32, i32* @s_1, align 4
  %129 = call i32 @slice_from_s(%struct.SN_env* %127, i32 1, i32 %128)
  store i32 %129, i32* %9, align 4
  %130 = load i32, i32* %9, align 4
  %131 = icmp slt i32 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %126
  %133 = load i32, i32* %9, align 4
  store i32 %133, i32* %2, align 4
  br label %395

134:                                              ; preds = %126
  br label %178

135:                                              ; preds = %125, %109
  %136 = load i32, i32* %7, align 4
  %137 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %138 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %137, i32 0, i32 0
  store i32 %136, i32* %138, align 8
  %139 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %140 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %143 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 8
  %145 = icmp eq i32 %141, %144
  br i1 %145, label %158, label %146

146:                                              ; preds = %135
  %147 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %148 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %147, i32 0, i32 3
  %149 = load i8*, i8** %148, align 8
  %150 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %151 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i8, i8* %149, i64 %153
  %155 = load i8, i8* %154, align 1
  %156 = zext i8 %155 to i32
  %157 = icmp ne i32 %156, 121
  br i1 %157, label %158, label %159

158:                                              ; preds = %146, %135
  br label %179

159:                                              ; preds = %146
  %160 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %161 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %161, align 8
  %164 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %165 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = sext i32 %166 to i64
  %168 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %169 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %168, i32 0, i32 4
  store i64 %167, i64* %169, align 8
  %170 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %171 = load i32, i32* @s_2, align 4
  %172 = call i32 @slice_from_s(%struct.SN_env* %170, i32 1, i32 %171)
  store i32 %172, i32* %10, align 4
  %173 = load i32, i32* %10, align 4
  %174 = icmp slt i32 %173, 0
  br i1 %174, label %175, label %177

175:                                              ; preds = %159
  %176 = load i32, i32* %10, align 4
  store i32 %176, i32* %2, align 4
  br label %395

177:                                              ; preds = %159
  br label %178

178:                                              ; preds = %177, %134, %85
  br label %364

179:                                              ; preds = %158, %31
  %180 = load i32, i32* %6, align 4
  %181 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %182 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %181, i32 0, i32 0
  store i32 %180, i32* %182, align 8
  %183 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %184 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %187 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %186, i32 0, i32 1
  store i32 %185, i32* %187, align 4
  %188 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %189 = load i32, i32* @s_3, align 4
  %190 = call i32 @eq_s(%struct.SN_env* %188, i32 2, i32 %189)
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %193, label %192

192:                                              ; preds = %179
  br label %208

193:                                              ; preds = %179
  %194 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %195 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = sext i32 %196 to i64
  %198 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %199 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %198, i32 0, i32 4
  store i64 %197, i64* %199, align 8
  %200 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %201 = load i32, i32* @s_4, align 4
  %202 = call i32 @slice_from_s(%struct.SN_env* %200, i32 2, i32 %201)
  store i32 %202, i32* %11, align 4
  %203 = load i32, i32* %11, align 4
  %204 = icmp slt i32 %203, 0
  br i1 %204, label %205, label %207

205:                                              ; preds = %193
  %206 = load i32, i32* %11, align 4
  store i32 %206, i32* %2, align 4
  br label %395

207:                                              ; preds = %193
  br label %364

208:                                              ; preds = %192
  %209 = load i32, i32* %6, align 4
  %210 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %211 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %210, i32 0, i32 0
  store i32 %209, i32* %211, align 8
  %212 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %213 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 8
  %215 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %216 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %215, i32 0, i32 1
  store i32 %214, i32* %216, align 4
  %217 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %218 = load i32, i32* @s_5, align 4
  %219 = call i32 @eq_s(%struct.SN_env* %217, i32 2, i32 %218)
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %222, label %221

221:                                              ; preds = %208
  br label %237

222:                                              ; preds = %208
  %223 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %224 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = sext i32 %225 to i64
  %227 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %228 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %227, i32 0, i32 4
  store i64 %226, i64* %228, align 8
  %229 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %230 = load i32, i32* @s_6, align 4
  %231 = call i32 @slice_from_s(%struct.SN_env* %229, i32 2, i32 %230)
  store i32 %231, i32* %12, align 4
  %232 = load i32, i32* %12, align 4
  %233 = icmp slt i32 %232, 0
  br i1 %233, label %234, label %236

234:                                              ; preds = %222
  %235 = load i32, i32* %12, align 4
  store i32 %235, i32* %2, align 4
  br label %395

236:                                              ; preds = %222
  br label %364

237:                                              ; preds = %221
  %238 = load i32, i32* %6, align 4
  %239 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %240 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %239, i32 0, i32 0
  store i32 %238, i32* %240, align 8
  %241 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %242 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 8
  %244 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %245 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %244, i32 0, i32 1
  store i32 %243, i32* %245, align 4
  %246 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %247 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 8
  %249 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %250 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %249, i32 0, i32 2
  %251 = load i32, i32* %250, align 8
  %252 = icmp eq i32 %248, %251
  br i1 %252, label %265, label %253

253:                                              ; preds = %237
  %254 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %255 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %254, i32 0, i32 3
  %256 = load i8*, i8** %255, align 8
  %257 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %258 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %257, i32 0, i32 0
  %259 = load i32, i32* %258, align 8
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds i8, i8* %256, i64 %260
  %262 = load i8, i8* %261, align 1
  %263 = zext i8 %262 to i32
  %264 = icmp ne i32 %263, 121
  br i1 %264, label %265, label %266

265:                                              ; preds = %253, %237
  br label %291

266:                                              ; preds = %253
  %267 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %268 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 8
  %270 = add nsw i32 %269, 1
  store i32 %270, i32* %268, align 8
  %271 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %272 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %271, i32 0, i32 0
  %273 = load i32, i32* %272, align 8
  %274 = sext i32 %273 to i64
  %275 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %276 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %275, i32 0, i32 4
  store i64 %274, i64* %276, align 8
  %277 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %278 = load i32, i32* @g_v, align 4
  %279 = call i64 @in_grouping_U(%struct.SN_env* %277, i32 %278, i32 97, i32 251, i32 0)
  %280 = icmp ne i64 %279, 0
  br i1 %280, label %281, label %282

281:                                              ; preds = %266
  br label %291

282:                                              ; preds = %266
  %283 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %284 = load i32, i32* @s_7, align 4
  %285 = call i32 @slice_from_s(%struct.SN_env* %283, i32 1, i32 %284)
  store i32 %285, i32* %13, align 4
  %286 = load i32, i32* %13, align 4
  %287 = icmp slt i32 %286, 0
  br i1 %287, label %288, label %290

288:                                              ; preds = %282
  %289 = load i32, i32* %13, align 4
  store i32 %289, i32* %2, align 4
  br label %395

290:                                              ; preds = %282
  br label %364

291:                                              ; preds = %281, %265
  %292 = load i32, i32* %6, align 4
  %293 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %294 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %293, i32 0, i32 0
  store i32 %292, i32* %294, align 8
  %295 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %296 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %295, i32 0, i32 0
  %297 = load i32, i32* %296, align 8
  %298 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %299 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %298, i32 0, i32 2
  %300 = load i32, i32* %299, align 8
  %301 = icmp eq i32 %297, %300
  br i1 %301, label %314, label %302

302:                                              ; preds = %291
  %303 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %304 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %303, i32 0, i32 3
  %305 = load i8*, i8** %304, align 8
  %306 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %307 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %306, i32 0, i32 0
  %308 = load i32, i32* %307, align 8
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds i8, i8* %305, i64 %309
  %311 = load i8, i8* %310, align 1
  %312 = zext i8 %311 to i32
  %313 = icmp ne i32 %312, 113
  br i1 %313, label %314, label %315

314:                                              ; preds = %302, %291
  br label %368

315:                                              ; preds = %302
  %316 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %317 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %316, i32 0, i32 0
  %318 = load i32, i32* %317, align 8
  %319 = add nsw i32 %318, 1
  store i32 %319, i32* %317, align 8
  %320 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %321 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %320, i32 0, i32 0
  %322 = load i32, i32* %321, align 8
  %323 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %324 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %323, i32 0, i32 1
  store i32 %322, i32* %324, align 4
  %325 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %326 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %325, i32 0, i32 0
  %327 = load i32, i32* %326, align 8
  %328 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %329 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %328, i32 0, i32 2
  %330 = load i32, i32* %329, align 8
  %331 = icmp eq i32 %327, %330
  br i1 %331, label %344, label %332

332:                                              ; preds = %315
  %333 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %334 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %333, i32 0, i32 3
  %335 = load i8*, i8** %334, align 8
  %336 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %337 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %336, i32 0, i32 0
  %338 = load i32, i32* %337, align 8
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds i8, i8* %335, i64 %339
  %341 = load i8, i8* %340, align 1
  %342 = zext i8 %341 to i32
  %343 = icmp ne i32 %342, 117
  br i1 %343, label %344, label %345

344:                                              ; preds = %332, %315
  br label %368

345:                                              ; preds = %332
  %346 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %347 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %346, i32 0, i32 0
  %348 = load i32, i32* %347, align 8
  %349 = add nsw i32 %348, 1
  store i32 %349, i32* %347, align 8
  %350 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %351 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %350, i32 0, i32 0
  %352 = load i32, i32* %351, align 8
  %353 = sext i32 %352 to i64
  %354 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %355 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %354, i32 0, i32 4
  store i64 %353, i64* %355, align 8
  %356 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %357 = load i32, i32* @s_8, align 4
  %358 = call i32 @slice_from_s(%struct.SN_env* %356, i32 1, i32 %357)
  store i32 %358, i32* %14, align 4
  %359 = load i32, i32* %14, align 4
  %360 = icmp slt i32 %359, 0
  br i1 %360, label %361, label %363

361:                                              ; preds = %345
  %362 = load i32, i32* %14, align 4
  store i32 %362, i32* %2, align 4
  br label %395

363:                                              ; preds = %345
  br label %364

364:                                              ; preds = %363, %290, %236, %207, %178
  %365 = load i32, i32* %5, align 4
  %366 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %367 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %366, i32 0, i32 0
  store i32 %365, i32* %367, align 8
  br label %389

368:                                              ; preds = %344, %314
  %369 = load i32, i32* %5, align 4
  %370 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %371 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %370, i32 0, i32 0
  store i32 %369, i32* %371, align 8
  %372 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %373 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %372, i32 0, i32 3
  %374 = load i8*, i8** %373, align 8
  %375 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %376 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %375, i32 0, i32 0
  %377 = load i32, i32* %376, align 8
  %378 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %379 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %378, i32 0, i32 2
  %380 = load i32, i32* %379, align 8
  %381 = call i32 @skip_utf8(i8* %374, i32 %377, i32 0, i32 %380, i32 1)
  store i32 %381, i32* %15, align 4
  %382 = load i32, i32* %15, align 4
  %383 = icmp slt i32 %382, 0
  br i1 %383, label %384, label %385

384:                                              ; preds = %368
  br label %390

385:                                              ; preds = %368
  %386 = load i32, i32* %15, align 4
  %387 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %388 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %387, i32 0, i32 0
  store i32 %386, i32* %388, align 8
  br label %20

389:                                              ; preds = %364
  br label %16

390:                                              ; preds = %384
  %391 = load i32, i32* %4, align 4
  %392 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %393 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %392, i32 0, i32 0
  store i32 %391, i32* %393, align 8
  br label %394

394:                                              ; preds = %390
  store i32 1, i32* %2, align 4
  br label %395

395:                                              ; preds = %394, %361, %288, %234, %205, %175, %132, %83
  %396 = load i32, i32* %2, align 4
  ret i32 %396
}

declare dso_local i64 @in_grouping_U(%struct.SN_env*, i32, i32, i32, i32) #1

declare dso_local i32 @slice_from_s(%struct.SN_env*, i32, i32) #1

declare dso_local i32 @eq_s(%struct.SN_env*, i32, i32) #1

declare dso_local i32 @skip_utf8(i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
