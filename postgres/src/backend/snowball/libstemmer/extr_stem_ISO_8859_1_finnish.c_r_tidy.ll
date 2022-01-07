; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_stem_ISO_8859_1_finnish.c_r_tidy.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_stem_ISO_8859_1_finnish.c_r_tidy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SN_env = type { i32, i32*, i32, i32, i32, i32, i8*, i64* }

@g_AEI = common dso_local global i32 0, align 4
@g_C = common dso_local global i32 0, align 4
@g_V1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.SN_env*)* @r_tidy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r_tidy(%struct.SN_env* %0) #0 {
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
  store %struct.SN_env* %0, %struct.SN_env** %3, align 8
  %17 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %18 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %21 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp slt i32 %19, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %429

27:                                               ; preds = %1
  %28 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %29 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %4, align 4
  %31 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %32 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %37 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 8
  %38 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %39 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %42 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = sub nsw i32 %40, %43
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %5, align 4
  %46 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %47 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %50 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = sub nsw i32 %48, %51
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* %6, align 4
  %54 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %55 = call i32 @r_LONG(%struct.SN_env* %54)
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %7, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %27
  br label %102

59:                                               ; preds = %27
  %60 = load i32, i32* %7, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %59
  %63 = load i32, i32* %7, align 4
  store i32 %63, i32* %2, align 4
  br label %429

64:                                               ; preds = %59
  %65 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %66 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %6, align 4
  %69 = sub nsw i32 %67, %68
  %70 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %71 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 8
  %72 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %73 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %76 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %75, i32 0, i32 4
  store i32 %74, i32* %76, align 8
  %77 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %78 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %81 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = icmp sle i32 %79, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %64
  br label %102

85:                                               ; preds = %64
  %86 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %87 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = add nsw i32 %88, -1
  store i32 %89, i32* %87, align 8
  %90 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %91 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %94 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %93, i32 0, i32 5
  store i32 %92, i32* %94, align 4
  %95 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %96 = call i32 @slice_del(%struct.SN_env* %95)
  store i32 %96, i32* %8, align 4
  %97 = load i32, i32* %8, align 4
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %85
  %100 = load i32, i32* %8, align 4
  store i32 %100, i32* %2, align 4
  br label %429

101:                                              ; preds = %85
  br label %102

102:                                              ; preds = %101, %84, %58
  %103 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %104 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* %5, align 4
  %107 = sub nsw i32 %105, %106
  %108 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %109 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %108, i32 0, i32 0
  store i32 %107, i32* %109, align 8
  %110 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %111 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %114 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = sub nsw i32 %112, %115
  store i32 %116, i32* %9, align 4
  %117 = load i32, i32* %9, align 4
  %118 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %119 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %122 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %121, i32 0, i32 4
  store i32 %120, i32* %122, align 8
  %123 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %124 = load i32, i32* @g_AEI, align 4
  %125 = call i64 @in_grouping_b(%struct.SN_env* %123, i32 %124, i32 97, i32 228, i32 0)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %102
  br label %147

128:                                              ; preds = %102
  %129 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %130 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %133 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %132, i32 0, i32 5
  store i32 %131, i32* %133, align 4
  %134 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %135 = load i32, i32* @g_C, align 4
  %136 = call i64 @in_grouping_b(%struct.SN_env* %134, i32 %135, i32 98, i32 122, i32 0)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %128
  br label %147

139:                                              ; preds = %128
  %140 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %141 = call i32 @slice_del(%struct.SN_env* %140)
  store i32 %141, i32* %10, align 4
  %142 = load i32, i32* %10, align 4
  %143 = icmp slt i32 %142, 0
  br i1 %143, label %144, label %146

144:                                              ; preds = %139
  %145 = load i32, i32* %10, align 4
  store i32 %145, i32* %2, align 4
  br label %429

146:                                              ; preds = %139
  br label %147

147:                                              ; preds = %146, %138, %127
  %148 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %149 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %148, i32 0, i32 3
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* %9, align 4
  %152 = sub nsw i32 %150, %151
  %153 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %154 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %153, i32 0, i32 0
  store i32 %152, i32* %154, align 8
  %155 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %156 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %155, i32 0, i32 3
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %159 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = sub nsw i32 %157, %160
  store i32 %161, i32* %11, align 4
  %162 = load i32, i32* %11, align 4
  %163 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %164 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %167 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %166, i32 0, i32 4
  store i32 %165, i32* %167, align 8
  %168 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %169 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %172 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 8
  %174 = icmp sle i32 %170, %173
  br i1 %174, label %188, label %175

175:                                              ; preds = %147
  %176 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %177 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %176, i32 0, i32 6
  %178 = load i8*, i8** %177, align 8
  %179 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %180 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = sub nsw i32 %181, 1
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i8, i8* %178, i64 %183
  %185 = load i8, i8* %184, align 1
  %186 = sext i8 %185 to i32
  %187 = icmp ne i32 %186, 106
  br i1 %187, label %188, label %189

188:                                              ; preds = %175, %147
  br label %275

189:                                              ; preds = %175
  %190 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %191 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = add nsw i32 %192, -1
  store i32 %193, i32* %191, align 8
  %194 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %195 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %198 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %197, i32 0, i32 5
  store i32 %196, i32* %198, align 4
  %199 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %200 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %199, i32 0, i32 3
  %201 = load i32, i32* %200, align 4
  %202 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %203 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = sub nsw i32 %201, %204
  store i32 %205, i32* %12, align 4
  %206 = load i32, i32* %12, align 4
  %207 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %208 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %211 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %210, i32 0, i32 2
  %212 = load i32, i32* %211, align 8
  %213 = icmp sle i32 %209, %212
  br i1 %213, label %227, label %214

214:                                              ; preds = %189
  %215 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %216 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %215, i32 0, i32 6
  %217 = load i8*, i8** %216, align 8
  %218 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %219 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 8
  %221 = sub nsw i32 %220, 1
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i8, i8* %217, i64 %222
  %224 = load i8, i8* %223, align 1
  %225 = sext i8 %224 to i32
  %226 = icmp ne i32 %225, 111
  br i1 %226, label %227, label %228

227:                                              ; preds = %214, %189
  br label %233

228:                                              ; preds = %214
  %229 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %230 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 8
  %232 = add nsw i32 %231, -1
  store i32 %232, i32* %230, align 8
  br label %267

233:                                              ; preds = %227
  %234 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %235 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %234, i32 0, i32 3
  %236 = load i32, i32* %235, align 4
  %237 = load i32, i32* %12, align 4
  %238 = sub nsw i32 %236, %237
  %239 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %240 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %239, i32 0, i32 0
  store i32 %238, i32* %240, align 8
  %241 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %242 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 8
  %244 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %245 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %244, i32 0, i32 2
  %246 = load i32, i32* %245, align 8
  %247 = icmp sle i32 %243, %246
  br i1 %247, label %261, label %248

248:                                              ; preds = %233
  %249 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %250 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %249, i32 0, i32 6
  %251 = load i8*, i8** %250, align 8
  %252 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %253 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 8
  %255 = sub nsw i32 %254, 1
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds i8, i8* %251, i64 %256
  %258 = load i8, i8* %257, align 1
  %259 = sext i8 %258 to i32
  %260 = icmp ne i32 %259, 117
  br i1 %260, label %261, label %262

261:                                              ; preds = %248, %233
  br label %275

262:                                              ; preds = %248
  %263 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %264 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %263, i32 0, i32 0
  %265 = load i32, i32* %264, align 8
  %266 = add nsw i32 %265, -1
  store i32 %266, i32* %264, align 8
  br label %267

267:                                              ; preds = %262, %228
  %268 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %269 = call i32 @slice_del(%struct.SN_env* %268)
  store i32 %269, i32* %13, align 4
  %270 = load i32, i32* %13, align 4
  %271 = icmp slt i32 %270, 0
  br i1 %271, label %272, label %274

272:                                              ; preds = %267
  %273 = load i32, i32* %13, align 4
  store i32 %273, i32* %2, align 4
  br label %429

274:                                              ; preds = %267
  br label %275

275:                                              ; preds = %274, %261, %188
  %276 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %277 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %276, i32 0, i32 3
  %278 = load i32, i32* %277, align 4
  %279 = load i32, i32* %11, align 4
  %280 = sub nsw i32 %278, %279
  %281 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %282 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %281, i32 0, i32 0
  store i32 %280, i32* %282, align 8
  %283 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %284 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %283, i32 0, i32 3
  %285 = load i32, i32* %284, align 4
  %286 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %287 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %286, i32 0, i32 0
  %288 = load i32, i32* %287, align 8
  %289 = sub nsw i32 %285, %288
  store i32 %289, i32* %14, align 4
  %290 = load i32, i32* %14, align 4
  %291 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %292 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %291, i32 0, i32 0
  %293 = load i32, i32* %292, align 8
  %294 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %295 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %294, i32 0, i32 4
  store i32 %293, i32* %295, align 8
  %296 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %297 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %296, i32 0, i32 0
  %298 = load i32, i32* %297, align 8
  %299 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %300 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %299, i32 0, i32 2
  %301 = load i32, i32* %300, align 8
  %302 = icmp sle i32 %298, %301
  br i1 %302, label %316, label %303

303:                                              ; preds = %275
  %304 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %305 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %304, i32 0, i32 6
  %306 = load i8*, i8** %305, align 8
  %307 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %308 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %307, i32 0, i32 0
  %309 = load i32, i32* %308, align 8
  %310 = sub nsw i32 %309, 1
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds i8, i8* %306, i64 %311
  %313 = load i8, i8* %312, align 1
  %314 = sext i8 %313 to i32
  %315 = icmp ne i32 %314, 111
  br i1 %315, label %316, label %317

316:                                              ; preds = %303, %275
  br label %360

317:                                              ; preds = %303
  %318 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %319 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %318, i32 0, i32 0
  %320 = load i32, i32* %319, align 8
  %321 = add nsw i32 %320, -1
  store i32 %321, i32* %319, align 8
  %322 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %323 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %322, i32 0, i32 0
  %324 = load i32, i32* %323, align 8
  %325 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %326 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %325, i32 0, i32 5
  store i32 %324, i32* %326, align 4
  %327 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %328 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %327, i32 0, i32 0
  %329 = load i32, i32* %328, align 8
  %330 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %331 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %330, i32 0, i32 2
  %332 = load i32, i32* %331, align 8
  %333 = icmp sle i32 %329, %332
  br i1 %333, label %347, label %334

334:                                              ; preds = %317
  %335 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %336 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %335, i32 0, i32 6
  %337 = load i8*, i8** %336, align 8
  %338 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %339 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %338, i32 0, i32 0
  %340 = load i32, i32* %339, align 8
  %341 = sub nsw i32 %340, 1
  %342 = sext i32 %341 to i64
  %343 = getelementptr inbounds i8, i8* %337, i64 %342
  %344 = load i8, i8* %343, align 1
  %345 = sext i8 %344 to i32
  %346 = icmp ne i32 %345, 106
  br i1 %346, label %347, label %348

347:                                              ; preds = %334, %317
  br label %360

348:                                              ; preds = %334
  %349 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %350 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %349, i32 0, i32 0
  %351 = load i32, i32* %350, align 8
  %352 = add nsw i32 %351, -1
  store i32 %352, i32* %350, align 8
  %353 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %354 = call i32 @slice_del(%struct.SN_env* %353)
  store i32 %354, i32* %15, align 4
  %355 = load i32, i32* %15, align 4
  %356 = icmp slt i32 %355, 0
  br i1 %356, label %357, label %359

357:                                              ; preds = %348
  %358 = load i32, i32* %15, align 4
  store i32 %358, i32* %2, align 4
  br label %429

359:                                              ; preds = %348
  br label %360

360:                                              ; preds = %359, %347, %316
  %361 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %362 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %361, i32 0, i32 3
  %363 = load i32, i32* %362, align 4
  %364 = load i32, i32* %14, align 4
  %365 = sub nsw i32 %363, %364
  %366 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %367 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %366, i32 0, i32 0
  store i32 %365, i32* %367, align 8
  %368 = load i32, i32* %4, align 4
  %369 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %370 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %369, i32 0, i32 2
  store i32 %368, i32* %370, align 8
  %371 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %372 = load i32, i32* @g_V1, align 4
  %373 = call i64 @in_grouping_b(%struct.SN_env* %371, i32 %372, i32 97, i32 246, i32 1)
  %374 = icmp slt i64 %373, 0
  br i1 %374, label %375, label %376

375:                                              ; preds = %360
  store i32 0, i32* %2, align 4
  br label %429

376:                                              ; preds = %360
  %377 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %378 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %377, i32 0, i32 0
  %379 = load i32, i32* %378, align 8
  %380 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %381 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %380, i32 0, i32 4
  store i32 %379, i32* %381, align 8
  %382 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %383 = load i32, i32* @g_C, align 4
  %384 = call i64 @in_grouping_b(%struct.SN_env* %382, i32 %383, i32 98, i32 122, i32 0)
  %385 = icmp ne i64 %384, 0
  br i1 %385, label %386, label %387

386:                                              ; preds = %376
  store i32 0, i32* %2, align 4
  br label %429

387:                                              ; preds = %376
  %388 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %389 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %388, i32 0, i32 0
  %390 = load i32, i32* %389, align 8
  %391 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %392 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %391, i32 0, i32 5
  store i32 %390, i32* %392, align 4
  %393 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %394 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %395 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %394, i32 0, i32 7
  %396 = load i64*, i64** %395, align 8
  %397 = getelementptr inbounds i64, i64* %396, i64 0
  %398 = load i64, i64* %397, align 8
  %399 = call i64 @slice_to(%struct.SN_env* %393, i64 %398)
  %400 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %401 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %400, i32 0, i32 7
  %402 = load i64*, i64** %401, align 8
  %403 = getelementptr inbounds i64, i64* %402, i64 0
  store i64 %399, i64* %403, align 8
  %404 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %405 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %404, i32 0, i32 7
  %406 = load i64*, i64** %405, align 8
  %407 = getelementptr inbounds i64, i64* %406, i64 0
  %408 = load i64, i64* %407, align 8
  %409 = icmp eq i64 %408, 0
  br i1 %409, label %410, label %411

410:                                              ; preds = %387
  store i32 -1, i32* %2, align 4
  br label %429

411:                                              ; preds = %387
  %412 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %413 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %414 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %413, i32 0, i32 7
  %415 = load i64*, i64** %414, align 8
  %416 = getelementptr inbounds i64, i64* %415, i64 0
  %417 = load i64, i64* %416, align 8
  %418 = call i32 @eq_v_b(%struct.SN_env* %412, i64 %417)
  %419 = icmp ne i32 %418, 0
  br i1 %419, label %421, label %420

420:                                              ; preds = %411
  store i32 0, i32* %2, align 4
  br label %429

421:                                              ; preds = %411
  %422 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %423 = call i32 @slice_del(%struct.SN_env* %422)
  store i32 %423, i32* %16, align 4
  %424 = load i32, i32* %16, align 4
  %425 = icmp slt i32 %424, 0
  br i1 %425, label %426, label %428

426:                                              ; preds = %421
  %427 = load i32, i32* %16, align 4
  store i32 %427, i32* %2, align 4
  br label %429

428:                                              ; preds = %421
  store i32 1, i32* %2, align 4
  br label %429

429:                                              ; preds = %428, %426, %420, %410, %386, %375, %357, %272, %144, %99, %62, %26
  %430 = load i32, i32* %2, align 4
  ret i32 %430
}

declare dso_local i32 @r_LONG(%struct.SN_env*) #1

declare dso_local i32 @slice_del(%struct.SN_env*) #1

declare dso_local i64 @in_grouping_b(%struct.SN_env*, i32, i32, i32, i32) #1

declare dso_local i64 @slice_to(%struct.SN_env*, i64) #1

declare dso_local i32 @eq_v_b(%struct.SN_env*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
