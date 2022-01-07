; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_stem_UTF_8_finnish.c_r_tidy.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_stem_UTF_8_finnish.c_r_tidy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SN_env = type { i32, i32*, i32, i32, i32, i8*, i32, i64* }

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
  %17 = alloca i32, align 4
  store %struct.SN_env* %0, %struct.SN_env** %3, align 8
  %18 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %19 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %22 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp slt i32 %20, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %434

28:                                               ; preds = %1
  %29 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %30 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %4, align 4
  %32 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %33 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %38 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 8
  %39 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %40 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %43 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = sub nsw i32 %41, %44
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* %5, align 4
  %47 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %48 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %51 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = sub nsw i32 %49, %52
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* %6, align 4
  %55 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %56 = call i32 @r_LONG(%struct.SN_env* %55)
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %7, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %28
  br label %107

60:                                               ; preds = %28
  %61 = load i32, i32* %7, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %60
  %64 = load i32, i32* %7, align 4
  store i32 %64, i32* %2, align 4
  br label %434

65:                                               ; preds = %60
  %66 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %67 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %6, align 4
  %70 = sub nsw i32 %68, %69
  %71 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %72 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 8
  %73 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %74 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %77 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %76, i32 0, i32 4
  store i32 %75, i32* %77, align 8
  %78 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %79 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %78, i32 0, i32 5
  %80 = load i8*, i8** %79, align 8
  %81 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %82 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %85 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @skip_utf8(i8* %80, i32 %83, i32 %86, i32 0, i32 -1)
  store i32 %87, i32* %8, align 4
  %88 = load i32, i32* %8, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %65
  br label %107

91:                                               ; preds = %65
  %92 = load i32, i32* %8, align 4
  %93 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %94 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %93, i32 0, i32 0
  store i32 %92, i32* %94, align 8
  %95 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %96 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %99 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %98, i32 0, i32 6
  store i32 %97, i32* %99, align 8
  %100 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %101 = call i32 @slice_del(%struct.SN_env* %100)
  store i32 %101, i32* %9, align 4
  %102 = load i32, i32* %9, align 4
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %91
  %105 = load i32, i32* %9, align 4
  store i32 %105, i32* %2, align 4
  br label %434

106:                                              ; preds = %91
  br label %107

107:                                              ; preds = %106, %90, %59
  %108 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %109 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* %5, align 4
  %112 = sub nsw i32 %110, %111
  %113 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %114 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %113, i32 0, i32 0
  store i32 %112, i32* %114, align 8
  %115 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %116 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %119 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = sub nsw i32 %117, %120
  store i32 %121, i32* %10, align 4
  %122 = load i32, i32* %10, align 4
  %123 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %124 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %127 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %126, i32 0, i32 4
  store i32 %125, i32* %127, align 8
  %128 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %129 = load i32, i32* @g_AEI, align 4
  %130 = call i64 @in_grouping_b_U(%struct.SN_env* %128, i32 %129, i32 97, i32 228, i32 0)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %107
  br label %152

133:                                              ; preds = %107
  %134 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %135 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %138 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %137, i32 0, i32 6
  store i32 %136, i32* %138, align 8
  %139 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %140 = load i32, i32* @g_C, align 4
  %141 = call i64 @in_grouping_b_U(%struct.SN_env* %139, i32 %140, i32 98, i32 122, i32 0)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %133
  br label %152

144:                                              ; preds = %133
  %145 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %146 = call i32 @slice_del(%struct.SN_env* %145)
  store i32 %146, i32* %11, align 4
  %147 = load i32, i32* %11, align 4
  %148 = icmp slt i32 %147, 0
  br i1 %148, label %149, label %151

149:                                              ; preds = %144
  %150 = load i32, i32* %11, align 4
  store i32 %150, i32* %2, align 4
  br label %434

151:                                              ; preds = %144
  br label %152

152:                                              ; preds = %151, %143, %132
  %153 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %154 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %153, i32 0, i32 3
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* %10, align 4
  %157 = sub nsw i32 %155, %156
  %158 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %159 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %158, i32 0, i32 0
  store i32 %157, i32* %159, align 8
  %160 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %161 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %160, i32 0, i32 3
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %164 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = sub nsw i32 %162, %165
  store i32 %166, i32* %12, align 4
  %167 = load i32, i32* %12, align 4
  %168 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %169 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %172 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %171, i32 0, i32 4
  store i32 %170, i32* %172, align 8
  %173 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %174 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %177 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %176, i32 0, i32 2
  %178 = load i32, i32* %177, align 8
  %179 = icmp sle i32 %175, %178
  br i1 %179, label %193, label %180

180:                                              ; preds = %152
  %181 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %182 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %181, i32 0, i32 5
  %183 = load i8*, i8** %182, align 8
  %184 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %185 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = sub nsw i32 %186, 1
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i8, i8* %183, i64 %188
  %190 = load i8, i8* %189, align 1
  %191 = sext i8 %190 to i32
  %192 = icmp ne i32 %191, 106
  br i1 %192, label %193, label %194

193:                                              ; preds = %180, %152
  br label %280

194:                                              ; preds = %180
  %195 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %196 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = add nsw i32 %197, -1
  store i32 %198, i32* %196, align 8
  %199 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %200 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %203 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %202, i32 0, i32 6
  store i32 %201, i32* %203, align 8
  %204 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %205 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %204, i32 0, i32 3
  %206 = load i32, i32* %205, align 4
  %207 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %208 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = sub nsw i32 %206, %209
  store i32 %210, i32* %13, align 4
  %211 = load i32, i32* %13, align 4
  %212 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %213 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 8
  %215 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %216 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %215, i32 0, i32 2
  %217 = load i32, i32* %216, align 8
  %218 = icmp sle i32 %214, %217
  br i1 %218, label %232, label %219

219:                                              ; preds = %194
  %220 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %221 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %220, i32 0, i32 5
  %222 = load i8*, i8** %221, align 8
  %223 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %224 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = sub nsw i32 %225, 1
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds i8, i8* %222, i64 %227
  %229 = load i8, i8* %228, align 1
  %230 = sext i8 %229 to i32
  %231 = icmp ne i32 %230, 111
  br i1 %231, label %232, label %233

232:                                              ; preds = %219, %194
  br label %238

233:                                              ; preds = %219
  %234 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %235 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 8
  %237 = add nsw i32 %236, -1
  store i32 %237, i32* %235, align 8
  br label %272

238:                                              ; preds = %232
  %239 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %240 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %239, i32 0, i32 3
  %241 = load i32, i32* %240, align 4
  %242 = load i32, i32* %13, align 4
  %243 = sub nsw i32 %241, %242
  %244 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %245 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %244, i32 0, i32 0
  store i32 %243, i32* %245, align 8
  %246 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %247 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 8
  %249 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %250 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %249, i32 0, i32 2
  %251 = load i32, i32* %250, align 8
  %252 = icmp sle i32 %248, %251
  br i1 %252, label %266, label %253

253:                                              ; preds = %238
  %254 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %255 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %254, i32 0, i32 5
  %256 = load i8*, i8** %255, align 8
  %257 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %258 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %257, i32 0, i32 0
  %259 = load i32, i32* %258, align 8
  %260 = sub nsw i32 %259, 1
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds i8, i8* %256, i64 %261
  %263 = load i8, i8* %262, align 1
  %264 = sext i8 %263 to i32
  %265 = icmp ne i32 %264, 117
  br i1 %265, label %266, label %267

266:                                              ; preds = %253, %238
  br label %280

267:                                              ; preds = %253
  %268 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %269 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %268, i32 0, i32 0
  %270 = load i32, i32* %269, align 8
  %271 = add nsw i32 %270, -1
  store i32 %271, i32* %269, align 8
  br label %272

272:                                              ; preds = %267, %233
  %273 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %274 = call i32 @slice_del(%struct.SN_env* %273)
  store i32 %274, i32* %14, align 4
  %275 = load i32, i32* %14, align 4
  %276 = icmp slt i32 %275, 0
  br i1 %276, label %277, label %279

277:                                              ; preds = %272
  %278 = load i32, i32* %14, align 4
  store i32 %278, i32* %2, align 4
  br label %434

279:                                              ; preds = %272
  br label %280

280:                                              ; preds = %279, %266, %193
  %281 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %282 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %281, i32 0, i32 3
  %283 = load i32, i32* %282, align 4
  %284 = load i32, i32* %12, align 4
  %285 = sub nsw i32 %283, %284
  %286 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %287 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %286, i32 0, i32 0
  store i32 %285, i32* %287, align 8
  %288 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %289 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %288, i32 0, i32 3
  %290 = load i32, i32* %289, align 4
  %291 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %292 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %291, i32 0, i32 0
  %293 = load i32, i32* %292, align 8
  %294 = sub nsw i32 %290, %293
  store i32 %294, i32* %15, align 4
  %295 = load i32, i32* %15, align 4
  %296 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %297 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %296, i32 0, i32 0
  %298 = load i32, i32* %297, align 8
  %299 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %300 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %299, i32 0, i32 4
  store i32 %298, i32* %300, align 8
  %301 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %302 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %301, i32 0, i32 0
  %303 = load i32, i32* %302, align 8
  %304 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %305 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %304, i32 0, i32 2
  %306 = load i32, i32* %305, align 8
  %307 = icmp sle i32 %303, %306
  br i1 %307, label %321, label %308

308:                                              ; preds = %280
  %309 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %310 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %309, i32 0, i32 5
  %311 = load i8*, i8** %310, align 8
  %312 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %313 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %312, i32 0, i32 0
  %314 = load i32, i32* %313, align 8
  %315 = sub nsw i32 %314, 1
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds i8, i8* %311, i64 %316
  %318 = load i8, i8* %317, align 1
  %319 = sext i8 %318 to i32
  %320 = icmp ne i32 %319, 111
  br i1 %320, label %321, label %322

321:                                              ; preds = %308, %280
  br label %365

322:                                              ; preds = %308
  %323 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %324 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %323, i32 0, i32 0
  %325 = load i32, i32* %324, align 8
  %326 = add nsw i32 %325, -1
  store i32 %326, i32* %324, align 8
  %327 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %328 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %327, i32 0, i32 0
  %329 = load i32, i32* %328, align 8
  %330 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %331 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %330, i32 0, i32 6
  store i32 %329, i32* %331, align 8
  %332 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %333 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %332, i32 0, i32 0
  %334 = load i32, i32* %333, align 8
  %335 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %336 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %335, i32 0, i32 2
  %337 = load i32, i32* %336, align 8
  %338 = icmp sle i32 %334, %337
  br i1 %338, label %352, label %339

339:                                              ; preds = %322
  %340 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %341 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %340, i32 0, i32 5
  %342 = load i8*, i8** %341, align 8
  %343 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %344 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %343, i32 0, i32 0
  %345 = load i32, i32* %344, align 8
  %346 = sub nsw i32 %345, 1
  %347 = sext i32 %346 to i64
  %348 = getelementptr inbounds i8, i8* %342, i64 %347
  %349 = load i8, i8* %348, align 1
  %350 = sext i8 %349 to i32
  %351 = icmp ne i32 %350, 106
  br i1 %351, label %352, label %353

352:                                              ; preds = %339, %322
  br label %365

353:                                              ; preds = %339
  %354 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %355 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %354, i32 0, i32 0
  %356 = load i32, i32* %355, align 8
  %357 = add nsw i32 %356, -1
  store i32 %357, i32* %355, align 8
  %358 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %359 = call i32 @slice_del(%struct.SN_env* %358)
  store i32 %359, i32* %16, align 4
  %360 = load i32, i32* %16, align 4
  %361 = icmp slt i32 %360, 0
  br i1 %361, label %362, label %364

362:                                              ; preds = %353
  %363 = load i32, i32* %16, align 4
  store i32 %363, i32* %2, align 4
  br label %434

364:                                              ; preds = %353
  br label %365

365:                                              ; preds = %364, %352, %321
  %366 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %367 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %366, i32 0, i32 3
  %368 = load i32, i32* %367, align 4
  %369 = load i32, i32* %15, align 4
  %370 = sub nsw i32 %368, %369
  %371 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %372 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %371, i32 0, i32 0
  store i32 %370, i32* %372, align 8
  %373 = load i32, i32* %4, align 4
  %374 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %375 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %374, i32 0, i32 2
  store i32 %373, i32* %375, align 8
  %376 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %377 = load i32, i32* @g_V1, align 4
  %378 = call i64 @in_grouping_b_U(%struct.SN_env* %376, i32 %377, i32 97, i32 246, i32 1)
  %379 = icmp slt i64 %378, 0
  br i1 %379, label %380, label %381

380:                                              ; preds = %365
  store i32 0, i32* %2, align 4
  br label %434

381:                                              ; preds = %365
  %382 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %383 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %382, i32 0, i32 0
  %384 = load i32, i32* %383, align 8
  %385 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %386 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %385, i32 0, i32 4
  store i32 %384, i32* %386, align 8
  %387 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %388 = load i32, i32* @g_C, align 4
  %389 = call i64 @in_grouping_b_U(%struct.SN_env* %387, i32 %388, i32 98, i32 122, i32 0)
  %390 = icmp ne i64 %389, 0
  br i1 %390, label %391, label %392

391:                                              ; preds = %381
  store i32 0, i32* %2, align 4
  br label %434

392:                                              ; preds = %381
  %393 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %394 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %393, i32 0, i32 0
  %395 = load i32, i32* %394, align 8
  %396 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %397 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %396, i32 0, i32 6
  store i32 %395, i32* %397, align 8
  %398 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %399 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %400 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %399, i32 0, i32 7
  %401 = load i64*, i64** %400, align 8
  %402 = getelementptr inbounds i64, i64* %401, i64 0
  %403 = load i64, i64* %402, align 8
  %404 = call i64 @slice_to(%struct.SN_env* %398, i64 %403)
  %405 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %406 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %405, i32 0, i32 7
  %407 = load i64*, i64** %406, align 8
  %408 = getelementptr inbounds i64, i64* %407, i64 0
  store i64 %404, i64* %408, align 8
  %409 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %410 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %409, i32 0, i32 7
  %411 = load i64*, i64** %410, align 8
  %412 = getelementptr inbounds i64, i64* %411, i64 0
  %413 = load i64, i64* %412, align 8
  %414 = icmp eq i64 %413, 0
  br i1 %414, label %415, label %416

415:                                              ; preds = %392
  store i32 -1, i32* %2, align 4
  br label %434

416:                                              ; preds = %392
  %417 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %418 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %419 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %418, i32 0, i32 7
  %420 = load i64*, i64** %419, align 8
  %421 = getelementptr inbounds i64, i64* %420, i64 0
  %422 = load i64, i64* %421, align 8
  %423 = call i32 @eq_v_b(%struct.SN_env* %417, i64 %422)
  %424 = icmp ne i32 %423, 0
  br i1 %424, label %426, label %425

425:                                              ; preds = %416
  store i32 0, i32* %2, align 4
  br label %434

426:                                              ; preds = %416
  %427 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %428 = call i32 @slice_del(%struct.SN_env* %427)
  store i32 %428, i32* %17, align 4
  %429 = load i32, i32* %17, align 4
  %430 = icmp slt i32 %429, 0
  br i1 %430, label %431, label %433

431:                                              ; preds = %426
  %432 = load i32, i32* %17, align 4
  store i32 %432, i32* %2, align 4
  br label %434

433:                                              ; preds = %426
  store i32 1, i32* %2, align 4
  br label %434

434:                                              ; preds = %433, %431, %425, %415, %391, %380, %362, %277, %149, %104, %63, %27
  %435 = load i32, i32* %2, align 4
  ret i32 %435
}

declare dso_local i32 @r_LONG(%struct.SN_env*) #1

declare dso_local i32 @skip_utf8(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @slice_del(%struct.SN_env*) #1

declare dso_local i64 @in_grouping_b_U(%struct.SN_env*, i32, i32, i32, i32) #1

declare dso_local i64 @slice_to(%struct.SN_env*, i64) #1

declare dso_local i32 @eq_v_b(%struct.SN_env*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
