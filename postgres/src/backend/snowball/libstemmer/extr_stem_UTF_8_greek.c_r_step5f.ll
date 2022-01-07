; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_stem_UTF_8_greek.c_r_step5f.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_stem_UTF_8_greek.c_r_step5f.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SN_env = type { i32, i32, i32, i32, i32, i32*, i64*, i64* }

@s_90 = common dso_local global i32 0, align 4
@a_50 = common dso_local global i32 0, align 4
@s_91 = common dso_local global i32 0, align 4
@s_92 = common dso_local global i32 0, align 4
@a_51 = common dso_local global i32 0, align 4
@s_93 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.SN_env*)* @r_step5f to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r_step5f(%struct.SN_env* %0) #0 {
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
  store %struct.SN_env* %0, %struct.SN_env** %3, align 8
  %13 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %14 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %17 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = sub nsw i32 %15, %18
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %22 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %25 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 8
  %26 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %27 = load i32, i32* @s_90, align 4
  %28 = call i32 @eq_s_b(%struct.SN_env* %26, i32 10, i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %1
  br label %159

31:                                               ; preds = %1
  %32 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %33 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %36 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %35, i32 0, i32 3
  store i32 %34, i32* %36, align 4
  %37 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %38 = call i32 @slice_del(%struct.SN_env* %37)
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %31
  %42 = load i32, i32* %5, align 4
  store i32 %42, i32* %2, align 4
  br label %271

43:                                               ; preds = %31
  %44 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %45 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %44, i32 0, i32 7
  %46 = load i64*, i64** %45, align 8
  %47 = getelementptr inbounds i64, i64* %46, i64 0
  store i64 0, i64* %47, align 8
  %48 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %49 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %52 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %51, i32 0, i32 2
  store i32 %50, i32* %52, align 8
  %53 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %54 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = sub nsw i32 %55, 1
  %57 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %58 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 8
  %60 = icmp sle i32 %56, %59
  br i1 %60, label %85, label %61

61:                                               ; preds = %43
  %62 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %63 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %62, i32 0, i32 5
  %64 = load i32*, i32** %63, align 8
  %65 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %66 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = sub nsw i32 %67, 1
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %64, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = icmp ne i32 %71, 128
  br i1 %72, label %73, label %86

73:                                               ; preds = %61
  %74 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %75 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %74, i32 0, i32 5
  %76 = load i32*, i32** %75, align 8
  %77 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %78 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = sub nsw i32 %79, 1
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %76, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = icmp ne i32 %83, 134
  br i1 %84, label %85, label %86

85:                                               ; preds = %73, %43
  br label %159

86:                                               ; preds = %73, %61
  %87 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %88 = load i32, i32* @a_50, align 4
  %89 = call i32 @find_among_b(%struct.SN_env* %87, i32 %88, i32 6)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %92, label %91

91:                                               ; preds = %86
  br label %159

92:                                               ; preds = %86
  %93 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %94 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %97 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %96, i32 0, i32 3
  store i32 %95, i32* %97, align 4
  %98 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %99 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %102 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %101, i32 0, i32 4
  %103 = load i32, i32* %102, align 8
  %104 = icmp sgt i32 %100, %103
  br i1 %104, label %105, label %106

105:                                              ; preds = %92
  br label %159

106:                                              ; preds = %92
  %107 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %108 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %109 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %108, i32 0, i32 6
  %110 = load i64*, i64** %109, align 8
  %111 = getelementptr inbounds i64, i64* %110, i64 0
  %112 = load i64, i64* %111, align 8
  %113 = call i8* @slice_to(%struct.SN_env* %107, i64 %112)
  %114 = ptrtoint i8* %113 to i64
  %115 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %116 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %115, i32 0, i32 6
  %117 = load i64*, i64** %116, align 8
  %118 = getelementptr inbounds i64, i64* %117, i64 0
  store i64 %114, i64* %118, align 8
  %119 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %120 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %119, i32 0, i32 6
  %121 = load i64*, i64** %120, align 8
  %122 = getelementptr inbounds i64, i64* %121, i64 0
  %123 = load i64, i64* %122, align 8
  %124 = icmp eq i64 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %106
  store i32 -1, i32* %2, align 4
  br label %271

126:                                              ; preds = %106
  %127 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %128 = load i32, i32* @s_91, align 4
  %129 = call i32 @slice_from_s(%struct.SN_env* %127, i32 8, i32 %128)
  store i32 %129, i32* %6, align 4
  %130 = load i32, i32* %6, align 4
  %131 = icmp slt i32 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %126
  %133 = load i32, i32* %6, align 4
  store i32 %133, i32* %2, align 4
  br label %271

134:                                              ; preds = %126
  %135 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %136 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  store i32 %137, i32* %8, align 4
  %138 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %139 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %140 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %143 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %146 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %145, i32 0, i32 6
  %147 = load i64*, i64** %146, align 8
  %148 = getelementptr inbounds i64, i64* %147, i64 0
  %149 = load i64, i64* %148, align 8
  %150 = call i32 @insert_v(%struct.SN_env* %138, i32 %141, i32 %144, i64 %149)
  store i32 %150, i32* %7, align 4
  %151 = load i32, i32* %8, align 4
  %152 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %153 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %152, i32 0, i32 1
  store i32 %151, i32* %153, align 4
  %154 = load i32, i32* %7, align 4
  %155 = icmp slt i32 %154, 0
  br i1 %155, label %156, label %158

156:                                              ; preds = %134
  %157 = load i32, i32* %7, align 4
  store i32 %157, i32* %2, align 4
  br label %271

158:                                              ; preds = %134
  br label %159

159:                                              ; preds = %158, %105, %91, %85, %30
  %160 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %161 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = load i32, i32* %4, align 4
  %164 = sub nsw i32 %162, %163
  %165 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %166 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %165, i32 0, i32 1
  store i32 %164, i32* %166, align 4
  %167 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %168 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %171 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %170, i32 0, i32 2
  store i32 %169, i32* %171, align 8
  %172 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %173 = load i32, i32* @s_92, align 4
  %174 = call i32 @eq_s_b(%struct.SN_env* %172, i32 8, i32 %173)
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %177, label %176

176:                                              ; preds = %159
  store i32 0, i32* %2, align 4
  br label %271

177:                                              ; preds = %159
  %178 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %179 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %182 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %181, i32 0, i32 3
  store i32 %180, i32* %182, align 4
  %183 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %184 = call i32 @slice_del(%struct.SN_env* %183)
  store i32 %184, i32* %9, align 4
  %185 = load i32, i32* %9, align 4
  %186 = icmp slt i32 %185, 0
  br i1 %186, label %187, label %189

187:                                              ; preds = %177
  %188 = load i32, i32* %9, align 4
  store i32 %188, i32* %2, align 4
  br label %271

189:                                              ; preds = %177
  %190 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %191 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %190, i32 0, i32 7
  %192 = load i64*, i64** %191, align 8
  %193 = getelementptr inbounds i64, i64* %192, i64 0
  store i64 0, i64* %193, align 8
  %194 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %195 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 4
  %197 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %198 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %197, i32 0, i32 2
  store i32 %196, i32* %198, align 8
  %199 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %200 = load i32, i32* @a_51, align 4
  %201 = call i32 @find_among_b(%struct.SN_env* %199, i32 %200, i32 9)
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %204, label %203

203:                                              ; preds = %189
  store i32 0, i32* %2, align 4
  br label %271

204:                                              ; preds = %189
  %205 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %206 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 4
  %208 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %209 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %208, i32 0, i32 3
  store i32 %207, i32* %209, align 4
  %210 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %211 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 4
  %213 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %214 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %213, i32 0, i32 4
  %215 = load i32, i32* %214, align 8
  %216 = icmp sgt i32 %212, %215
  br i1 %216, label %217, label %218

217:                                              ; preds = %204
  store i32 0, i32* %2, align 4
  br label %271

218:                                              ; preds = %204
  %219 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %220 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %221 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %220, i32 0, i32 6
  %222 = load i64*, i64** %221, align 8
  %223 = getelementptr inbounds i64, i64* %222, i64 0
  %224 = load i64, i64* %223, align 8
  %225 = call i8* @slice_to(%struct.SN_env* %219, i64 %224)
  %226 = ptrtoint i8* %225 to i64
  %227 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %228 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %227, i32 0, i32 6
  %229 = load i64*, i64** %228, align 8
  %230 = getelementptr inbounds i64, i64* %229, i64 0
  store i64 %226, i64* %230, align 8
  %231 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %232 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %231, i32 0, i32 6
  %233 = load i64*, i64** %232, align 8
  %234 = getelementptr inbounds i64, i64* %233, i64 0
  %235 = load i64, i64* %234, align 8
  %236 = icmp eq i64 %235, 0
  br i1 %236, label %237, label %238

237:                                              ; preds = %218
  store i32 -1, i32* %2, align 4
  br label %271

238:                                              ; preds = %218
  %239 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %240 = load i32, i32* @s_93, align 4
  %241 = call i32 @slice_from_s(%struct.SN_env* %239, i32 8, i32 %240)
  store i32 %241, i32* %10, align 4
  %242 = load i32, i32* %10, align 4
  %243 = icmp slt i32 %242, 0
  br i1 %243, label %244, label %246

244:                                              ; preds = %238
  %245 = load i32, i32* %10, align 4
  store i32 %245, i32* %2, align 4
  br label %271

246:                                              ; preds = %238
  %247 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %248 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %247, i32 0, i32 1
  %249 = load i32, i32* %248, align 4
  store i32 %249, i32* %12, align 4
  %250 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %251 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %252 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %251, i32 0, i32 1
  %253 = load i32, i32* %252, align 4
  %254 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %255 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %254, i32 0, i32 1
  %256 = load i32, i32* %255, align 4
  %257 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %258 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %257, i32 0, i32 6
  %259 = load i64*, i64** %258, align 8
  %260 = getelementptr inbounds i64, i64* %259, i64 0
  %261 = load i64, i64* %260, align 8
  %262 = call i32 @insert_v(%struct.SN_env* %250, i32 %253, i32 %256, i64 %261)
  store i32 %262, i32* %11, align 4
  %263 = load i32, i32* %12, align 4
  %264 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %265 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %264, i32 0, i32 1
  store i32 %263, i32* %265, align 4
  %266 = load i32, i32* %11, align 4
  %267 = icmp slt i32 %266, 0
  br i1 %267, label %268, label %270

268:                                              ; preds = %246
  %269 = load i32, i32* %11, align 4
  store i32 %269, i32* %2, align 4
  br label %271

270:                                              ; preds = %246
  store i32 1, i32* %2, align 4
  br label %271

271:                                              ; preds = %270, %268, %244, %237, %217, %203, %187, %176, %156, %132, %125, %41
  %272 = load i32, i32* %2, align 4
  ret i32 %272
}

declare dso_local i32 @eq_s_b(%struct.SN_env*, i32, i32) #1

declare dso_local i32 @slice_del(%struct.SN_env*) #1

declare dso_local i32 @find_among_b(%struct.SN_env*, i32, i32) #1

declare dso_local i8* @slice_to(%struct.SN_env*, i64) #1

declare dso_local i32 @slice_from_s(%struct.SN_env*, i32, i32) #1

declare dso_local i32 @insert_v(%struct.SN_env*, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
