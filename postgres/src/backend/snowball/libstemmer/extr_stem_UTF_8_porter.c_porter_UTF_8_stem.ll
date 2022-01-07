; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_stem_UTF_8_porter.c_porter_UTF_8_stem.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_stem_UTF_8_porter.c_porter_UTF_8_stem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SN_env = type { i32*, i32, i32, i32, i8*, i64, i32*, i32 }

@s_21 = common dso_local global i32 0, align 4
@g_v = common dso_local global i32 0, align 4
@s_22 = common dso_local global i32 0, align 4
@s_23 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @porter_UTF_8_stem(%struct.SN_env* %0) #0 {
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
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  store %struct.SN_env* %0, %struct.SN_env** %3, align 8
  %37 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %38 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  store i32 0, i32* %40, align 4
  %41 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %42 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  store i32 %43, i32* %4, align 4
  %44 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %45 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %48 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 4
  %49 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %50 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %53 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 8
  %55 = icmp eq i32 %51, %54
  br i1 %55, label %68, label %56

56:                                               ; preds = %1
  %57 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %58 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %57, i32 0, i32 4
  %59 = load i8*, i8** %58, align 8
  %60 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %61 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8, i8* %59, i64 %63
  %65 = load i8, i8* %64, align 1
  %66 = sext i8 %65 to i32
  %67 = icmp ne i32 %66, 121
  br i1 %67, label %68, label %69

68:                                               ; preds = %56, %1
  br label %92

69:                                               ; preds = %56
  %70 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %71 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %71, align 8
  %74 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %75 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = sext i32 %76 to i64
  %78 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %79 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %78, i32 0, i32 5
  store i64 %77, i64* %79, align 8
  %80 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %81 = load i32, i32* @s_21, align 4
  %82 = call i32 @slice_from_s(%struct.SN_env* %80, i32 1, i32 %81)
  store i32 %82, i32* %5, align 4
  %83 = load i32, i32* %5, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %69
  %86 = load i32, i32* %5, align 4
  store i32 %86, i32* %2, align 4
  br label %605

87:                                               ; preds = %69
  %88 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %89 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 0
  store i32 1, i32* %91, align 4
  br label %92

92:                                               ; preds = %87, %68
  %93 = load i32, i32* %4, align 4
  %94 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %95 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %94, i32 0, i32 1
  store i32 %93, i32* %95, align 8
  %96 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %97 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  store i32 %98, i32* %6, align 4
  br label %99

99:                                               ; preds = %92, %181
  %100 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %101 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  store i32 %102, i32* %7, align 4
  br label %103

103:                                              ; preds = %99, %169
  %104 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %105 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  store i32 %106, i32* %8, align 4
  %107 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %108 = load i32, i32* @g_v, align 4
  %109 = call i32 @in_grouping_U(%struct.SN_env* %107, i32 %108, i32 97, i32 121, i32 0)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %103
  br label %152

112:                                              ; preds = %103
  %113 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %114 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %117 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %116, i32 0, i32 2
  store i32 %115, i32* %117, align 4
  %118 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %119 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %122 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 8
  %124 = icmp eq i32 %120, %123
  br i1 %124, label %137, label %125

125:                                              ; preds = %112
  %126 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %127 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %126, i32 0, i32 4
  %128 = load i8*, i8** %127, align 8
  %129 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %130 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 8
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i8, i8* %128, i64 %132
  %134 = load i8, i8* %133, align 1
  %135 = sext i8 %134 to i32
  %136 = icmp ne i32 %135, 121
  br i1 %136, label %137, label %138

137:                                              ; preds = %125, %112
  br label %152

138:                                              ; preds = %125
  %139 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %140 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 8
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %140, align 8
  %143 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %144 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 8
  %146 = sext i32 %145 to i64
  %147 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %148 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %147, i32 0, i32 5
  store i64 %146, i64* %148, align 8
  %149 = load i32, i32* %8, align 4
  %150 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %151 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %150, i32 0, i32 1
  store i32 %149, i32* %151, align 8
  br label %173

152:                                              ; preds = %137, %111
  %153 = load i32, i32* %8, align 4
  %154 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %155 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %154, i32 0, i32 1
  store i32 %153, i32* %155, align 8
  %156 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %157 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %156, i32 0, i32 4
  %158 = load i8*, i8** %157, align 8
  %159 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %160 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 8
  %162 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %163 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %162, i32 0, i32 3
  %164 = load i32, i32* %163, align 8
  %165 = call i32 @skip_utf8(i8* %158, i32 %161, i32 0, i32 %164, i32 1)
  store i32 %165, i32* %9, align 4
  %166 = load i32, i32* %9, align 4
  %167 = icmp slt i32 %166, 0
  br i1 %167, label %168, label %169

168:                                              ; preds = %152
  br label %186

169:                                              ; preds = %152
  %170 = load i32, i32* %9, align 4
  %171 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %172 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %171, i32 0, i32 1
  store i32 %170, i32* %172, align 8
  br label %103

173:                                              ; preds = %138
  %174 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %175 = load i32, i32* @s_22, align 4
  %176 = call i32 @slice_from_s(%struct.SN_env* %174, i32 1, i32 %175)
  store i32 %176, i32* %10, align 4
  %177 = load i32, i32* %10, align 4
  %178 = icmp slt i32 %177, 0
  br i1 %178, label %179, label %181

179:                                              ; preds = %173
  %180 = load i32, i32* %10, align 4
  store i32 %180, i32* %2, align 4
  br label %605

181:                                              ; preds = %173
  %182 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %183 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %182, i32 0, i32 0
  %184 = load i32*, i32** %183, align 8
  %185 = getelementptr inbounds i32, i32* %184, i64 0
  store i32 1, i32* %185, align 4
  br label %99

186:                                              ; preds = %168
  %187 = load i32, i32* %7, align 4
  %188 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %189 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %188, i32 0, i32 1
  store i32 %187, i32* %189, align 8
  br label %190

190:                                              ; preds = %186
  %191 = load i32, i32* %6, align 4
  %192 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %193 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %192, i32 0, i32 1
  store i32 %191, i32* %193, align 8
  %194 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %195 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %194, i32 0, i32 3
  %196 = load i32, i32* %195, align 8
  %197 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %198 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %197, i32 0, i32 6
  %199 = load i32*, i32** %198, align 8
  %200 = getelementptr inbounds i32, i32* %199, i64 0
  store i32 %196, i32* %200, align 4
  %201 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %202 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %201, i32 0, i32 3
  %203 = load i32, i32* %202, align 8
  %204 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %205 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %204, i32 0, i32 6
  %206 = load i32*, i32** %205, align 8
  %207 = getelementptr inbounds i32, i32* %206, i64 1
  store i32 %203, i32* %207, align 4
  %208 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %209 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 8
  store i32 %210, i32* %11, align 4
  %211 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %212 = load i32, i32* @g_v, align 4
  %213 = call i32 @out_grouping_U(%struct.SN_env* %211, i32 %212, i32 97, i32 121, i32 1)
  store i32 %213, i32* %12, align 4
  %214 = load i32, i32* %12, align 4
  %215 = icmp slt i32 %214, 0
  br i1 %215, label %216, label %217

216:                                              ; preds = %190
  br label %273

217:                                              ; preds = %190
  %218 = load i32, i32* %12, align 4
  %219 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %220 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 8
  %222 = add nsw i32 %221, %218
  store i32 %222, i32* %220, align 8
  %223 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %224 = load i32, i32* @g_v, align 4
  %225 = call i32 @in_grouping_U(%struct.SN_env* %223, i32 %224, i32 97, i32 121, i32 1)
  store i32 %225, i32* %13, align 4
  %226 = load i32, i32* %13, align 4
  %227 = icmp slt i32 %226, 0
  br i1 %227, label %228, label %229

228:                                              ; preds = %217
  br label %273

229:                                              ; preds = %217
  %230 = load i32, i32* %13, align 4
  %231 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %232 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %231, i32 0, i32 1
  %233 = load i32, i32* %232, align 8
  %234 = add nsw i32 %233, %230
  store i32 %234, i32* %232, align 8
  %235 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %236 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %235, i32 0, i32 1
  %237 = load i32, i32* %236, align 8
  %238 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %239 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %238, i32 0, i32 6
  %240 = load i32*, i32** %239, align 8
  %241 = getelementptr inbounds i32, i32* %240, i64 0
  store i32 %237, i32* %241, align 4
  %242 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %243 = load i32, i32* @g_v, align 4
  %244 = call i32 @out_grouping_U(%struct.SN_env* %242, i32 %243, i32 97, i32 121, i32 1)
  store i32 %244, i32* %14, align 4
  %245 = load i32, i32* %14, align 4
  %246 = icmp slt i32 %245, 0
  br i1 %246, label %247, label %248

247:                                              ; preds = %229
  br label %273

248:                                              ; preds = %229
  %249 = load i32, i32* %14, align 4
  %250 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %251 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %250, i32 0, i32 1
  %252 = load i32, i32* %251, align 8
  %253 = add nsw i32 %252, %249
  store i32 %253, i32* %251, align 8
  %254 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %255 = load i32, i32* @g_v, align 4
  %256 = call i32 @in_grouping_U(%struct.SN_env* %254, i32 %255, i32 97, i32 121, i32 1)
  store i32 %256, i32* %15, align 4
  %257 = load i32, i32* %15, align 4
  %258 = icmp slt i32 %257, 0
  br i1 %258, label %259, label %260

259:                                              ; preds = %248
  br label %273

260:                                              ; preds = %248
  %261 = load i32, i32* %15, align 4
  %262 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %263 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %262, i32 0, i32 1
  %264 = load i32, i32* %263, align 8
  %265 = add nsw i32 %264, %261
  store i32 %265, i32* %263, align 8
  %266 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %267 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %266, i32 0, i32 1
  %268 = load i32, i32* %267, align 8
  %269 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %270 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %269, i32 0, i32 6
  %271 = load i32*, i32** %270, align 8
  %272 = getelementptr inbounds i32, i32* %271, i64 1
  store i32 %268, i32* %272, align 4
  br label %273

273:                                              ; preds = %260, %259, %247, %228, %216
  %274 = load i32, i32* %11, align 4
  %275 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %276 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %275, i32 0, i32 1
  store i32 %274, i32* %276, align 8
  %277 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %278 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %277, i32 0, i32 1
  %279 = load i32, i32* %278, align 8
  %280 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %281 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %280, i32 0, i32 7
  store i32 %279, i32* %281, align 8
  %282 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %283 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %282, i32 0, i32 3
  %284 = load i32, i32* %283, align 8
  %285 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %286 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %285, i32 0, i32 1
  store i32 %284, i32* %286, align 8
  %287 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %288 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %287, i32 0, i32 3
  %289 = load i32, i32* %288, align 8
  %290 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %291 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %290, i32 0, i32 1
  %292 = load i32, i32* %291, align 8
  %293 = sub nsw i32 %289, %292
  store i32 %293, i32* %16, align 4
  %294 = load i32, i32* %16, align 4
  %295 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %296 = call i32 @r_Step_1a(%struct.SN_env* %295)
  store i32 %296, i32* %17, align 4
  %297 = load i32, i32* %17, align 4
  %298 = icmp eq i32 %297, 0
  br i1 %298, label %299, label %300

299:                                              ; preds = %273
  br label %306

300:                                              ; preds = %273
  %301 = load i32, i32* %17, align 4
  %302 = icmp slt i32 %301, 0
  br i1 %302, label %303, label %305

303:                                              ; preds = %300
  %304 = load i32, i32* %17, align 4
  store i32 %304, i32* %2, align 4
  br label %605

305:                                              ; preds = %300
  br label %306

306:                                              ; preds = %305, %299
  %307 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %308 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %307, i32 0, i32 3
  %309 = load i32, i32* %308, align 8
  %310 = load i32, i32* %16, align 4
  %311 = sub nsw i32 %309, %310
  %312 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %313 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %312, i32 0, i32 1
  store i32 %311, i32* %313, align 8
  %314 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %315 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %314, i32 0, i32 3
  %316 = load i32, i32* %315, align 8
  %317 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %318 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %317, i32 0, i32 1
  %319 = load i32, i32* %318, align 8
  %320 = sub nsw i32 %316, %319
  store i32 %320, i32* %18, align 4
  %321 = load i32, i32* %18, align 4
  %322 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %323 = call i32 @r_Step_1b(%struct.SN_env* %322)
  store i32 %323, i32* %19, align 4
  %324 = load i32, i32* %19, align 4
  %325 = icmp eq i32 %324, 0
  br i1 %325, label %326, label %327

326:                                              ; preds = %306
  br label %333

327:                                              ; preds = %306
  %328 = load i32, i32* %19, align 4
  %329 = icmp slt i32 %328, 0
  br i1 %329, label %330, label %332

330:                                              ; preds = %327
  %331 = load i32, i32* %19, align 4
  store i32 %331, i32* %2, align 4
  br label %605

332:                                              ; preds = %327
  br label %333

333:                                              ; preds = %332, %326
  %334 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %335 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %334, i32 0, i32 3
  %336 = load i32, i32* %335, align 8
  %337 = load i32, i32* %18, align 4
  %338 = sub nsw i32 %336, %337
  %339 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %340 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %339, i32 0, i32 1
  store i32 %338, i32* %340, align 8
  %341 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %342 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %341, i32 0, i32 3
  %343 = load i32, i32* %342, align 8
  %344 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %345 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %344, i32 0, i32 1
  %346 = load i32, i32* %345, align 8
  %347 = sub nsw i32 %343, %346
  store i32 %347, i32* %20, align 4
  %348 = load i32, i32* %20, align 4
  %349 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %350 = call i32 @r_Step_1c(%struct.SN_env* %349)
  store i32 %350, i32* %21, align 4
  %351 = load i32, i32* %21, align 4
  %352 = icmp eq i32 %351, 0
  br i1 %352, label %353, label %354

353:                                              ; preds = %333
  br label %360

354:                                              ; preds = %333
  %355 = load i32, i32* %21, align 4
  %356 = icmp slt i32 %355, 0
  br i1 %356, label %357, label %359

357:                                              ; preds = %354
  %358 = load i32, i32* %21, align 4
  store i32 %358, i32* %2, align 4
  br label %605

359:                                              ; preds = %354
  br label %360

360:                                              ; preds = %359, %353
  %361 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %362 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %361, i32 0, i32 3
  %363 = load i32, i32* %362, align 8
  %364 = load i32, i32* %20, align 4
  %365 = sub nsw i32 %363, %364
  %366 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %367 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %366, i32 0, i32 1
  store i32 %365, i32* %367, align 8
  %368 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %369 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %368, i32 0, i32 3
  %370 = load i32, i32* %369, align 8
  %371 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %372 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %371, i32 0, i32 1
  %373 = load i32, i32* %372, align 8
  %374 = sub nsw i32 %370, %373
  store i32 %374, i32* %22, align 4
  %375 = load i32, i32* %22, align 4
  %376 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %377 = call i32 @r_Step_2(%struct.SN_env* %376)
  store i32 %377, i32* %23, align 4
  %378 = load i32, i32* %23, align 4
  %379 = icmp eq i32 %378, 0
  br i1 %379, label %380, label %381

380:                                              ; preds = %360
  br label %387

381:                                              ; preds = %360
  %382 = load i32, i32* %23, align 4
  %383 = icmp slt i32 %382, 0
  br i1 %383, label %384, label %386

384:                                              ; preds = %381
  %385 = load i32, i32* %23, align 4
  store i32 %385, i32* %2, align 4
  br label %605

386:                                              ; preds = %381
  br label %387

387:                                              ; preds = %386, %380
  %388 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %389 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %388, i32 0, i32 3
  %390 = load i32, i32* %389, align 8
  %391 = load i32, i32* %22, align 4
  %392 = sub nsw i32 %390, %391
  %393 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %394 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %393, i32 0, i32 1
  store i32 %392, i32* %394, align 8
  %395 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %396 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %395, i32 0, i32 3
  %397 = load i32, i32* %396, align 8
  %398 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %399 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %398, i32 0, i32 1
  %400 = load i32, i32* %399, align 8
  %401 = sub nsw i32 %397, %400
  store i32 %401, i32* %24, align 4
  %402 = load i32, i32* %24, align 4
  %403 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %404 = call i32 @r_Step_3(%struct.SN_env* %403)
  store i32 %404, i32* %25, align 4
  %405 = load i32, i32* %25, align 4
  %406 = icmp eq i32 %405, 0
  br i1 %406, label %407, label %408

407:                                              ; preds = %387
  br label %414

408:                                              ; preds = %387
  %409 = load i32, i32* %25, align 4
  %410 = icmp slt i32 %409, 0
  br i1 %410, label %411, label %413

411:                                              ; preds = %408
  %412 = load i32, i32* %25, align 4
  store i32 %412, i32* %2, align 4
  br label %605

413:                                              ; preds = %408
  br label %414

414:                                              ; preds = %413, %407
  %415 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %416 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %415, i32 0, i32 3
  %417 = load i32, i32* %416, align 8
  %418 = load i32, i32* %24, align 4
  %419 = sub nsw i32 %417, %418
  %420 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %421 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %420, i32 0, i32 1
  store i32 %419, i32* %421, align 8
  %422 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %423 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %422, i32 0, i32 3
  %424 = load i32, i32* %423, align 8
  %425 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %426 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %425, i32 0, i32 1
  %427 = load i32, i32* %426, align 8
  %428 = sub nsw i32 %424, %427
  store i32 %428, i32* %26, align 4
  %429 = load i32, i32* %26, align 4
  %430 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %431 = call i32 @r_Step_4(%struct.SN_env* %430)
  store i32 %431, i32* %27, align 4
  %432 = load i32, i32* %27, align 4
  %433 = icmp eq i32 %432, 0
  br i1 %433, label %434, label %435

434:                                              ; preds = %414
  br label %441

435:                                              ; preds = %414
  %436 = load i32, i32* %27, align 4
  %437 = icmp slt i32 %436, 0
  br i1 %437, label %438, label %440

438:                                              ; preds = %435
  %439 = load i32, i32* %27, align 4
  store i32 %439, i32* %2, align 4
  br label %605

440:                                              ; preds = %435
  br label %441

441:                                              ; preds = %440, %434
  %442 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %443 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %442, i32 0, i32 3
  %444 = load i32, i32* %443, align 8
  %445 = load i32, i32* %26, align 4
  %446 = sub nsw i32 %444, %445
  %447 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %448 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %447, i32 0, i32 1
  store i32 %446, i32* %448, align 8
  %449 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %450 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %449, i32 0, i32 3
  %451 = load i32, i32* %450, align 8
  %452 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %453 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %452, i32 0, i32 1
  %454 = load i32, i32* %453, align 8
  %455 = sub nsw i32 %451, %454
  store i32 %455, i32* %28, align 4
  %456 = load i32, i32* %28, align 4
  %457 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %458 = call i32 @r_Step_5a(%struct.SN_env* %457)
  store i32 %458, i32* %29, align 4
  %459 = load i32, i32* %29, align 4
  %460 = icmp eq i32 %459, 0
  br i1 %460, label %461, label %462

461:                                              ; preds = %441
  br label %468

462:                                              ; preds = %441
  %463 = load i32, i32* %29, align 4
  %464 = icmp slt i32 %463, 0
  br i1 %464, label %465, label %467

465:                                              ; preds = %462
  %466 = load i32, i32* %29, align 4
  store i32 %466, i32* %2, align 4
  br label %605

467:                                              ; preds = %462
  br label %468

468:                                              ; preds = %467, %461
  %469 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %470 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %469, i32 0, i32 3
  %471 = load i32, i32* %470, align 8
  %472 = load i32, i32* %28, align 4
  %473 = sub nsw i32 %471, %472
  %474 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %475 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %474, i32 0, i32 1
  store i32 %473, i32* %475, align 8
  %476 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %477 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %476, i32 0, i32 3
  %478 = load i32, i32* %477, align 8
  %479 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %480 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %479, i32 0, i32 1
  %481 = load i32, i32* %480, align 8
  %482 = sub nsw i32 %478, %481
  store i32 %482, i32* %30, align 4
  %483 = load i32, i32* %30, align 4
  %484 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %485 = call i32 @r_Step_5b(%struct.SN_env* %484)
  store i32 %485, i32* %31, align 4
  %486 = load i32, i32* %31, align 4
  %487 = icmp eq i32 %486, 0
  br i1 %487, label %488, label %489

488:                                              ; preds = %468
  br label %495

489:                                              ; preds = %468
  %490 = load i32, i32* %31, align 4
  %491 = icmp slt i32 %490, 0
  br i1 %491, label %492, label %494

492:                                              ; preds = %489
  %493 = load i32, i32* %31, align 4
  store i32 %493, i32* %2, align 4
  br label %605

494:                                              ; preds = %489
  br label %495

495:                                              ; preds = %494, %488
  %496 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %497 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %496, i32 0, i32 3
  %498 = load i32, i32* %497, align 8
  %499 = load i32, i32* %30, align 4
  %500 = sub nsw i32 %498, %499
  %501 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %502 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %501, i32 0, i32 1
  store i32 %500, i32* %502, align 8
  %503 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %504 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %503, i32 0, i32 7
  %505 = load i32, i32* %504, align 8
  %506 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %507 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %506, i32 0, i32 1
  store i32 %505, i32* %507, align 8
  %508 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %509 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %508, i32 0, i32 1
  %510 = load i32, i32* %509, align 8
  store i32 %510, i32* %32, align 4
  %511 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %512 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %511, i32 0, i32 0
  %513 = load i32*, i32** %512, align 8
  %514 = getelementptr inbounds i32, i32* %513, i64 0
  %515 = load i32, i32* %514, align 4
  %516 = icmp ne i32 %515, 0
  br i1 %516, label %518, label %517

517:                                              ; preds = %495
  br label %601

518:                                              ; preds = %495
  br label %519

519:                                              ; preds = %518, %595
  %520 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %521 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %520, i32 0, i32 1
  %522 = load i32, i32* %521, align 8
  store i32 %522, i32* %33, align 4
  br label %523

523:                                              ; preds = %519, %583
  %524 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %525 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %524, i32 0, i32 1
  %526 = load i32, i32* %525, align 8
  store i32 %526, i32* %34, align 4
  %527 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %528 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %527, i32 0, i32 1
  %529 = load i32, i32* %528, align 8
  %530 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %531 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %530, i32 0, i32 2
  store i32 %529, i32* %531, align 4
  %532 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %533 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %532, i32 0, i32 1
  %534 = load i32, i32* %533, align 8
  %535 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %536 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %535, i32 0, i32 3
  %537 = load i32, i32* %536, align 8
  %538 = icmp eq i32 %534, %537
  br i1 %538, label %551, label %539

539:                                              ; preds = %523
  %540 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %541 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %540, i32 0, i32 4
  %542 = load i8*, i8** %541, align 8
  %543 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %544 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %543, i32 0, i32 1
  %545 = load i32, i32* %544, align 8
  %546 = sext i32 %545 to i64
  %547 = getelementptr inbounds i8, i8* %542, i64 %546
  %548 = load i8, i8* %547, align 1
  %549 = sext i8 %548 to i32
  %550 = icmp ne i32 %549, 89
  br i1 %550, label %551, label %552

551:                                              ; preds = %539, %523
  br label %566

552:                                              ; preds = %539
  %553 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %554 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %553, i32 0, i32 1
  %555 = load i32, i32* %554, align 8
  %556 = add nsw i32 %555, 1
  store i32 %556, i32* %554, align 8
  %557 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %558 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %557, i32 0, i32 1
  %559 = load i32, i32* %558, align 8
  %560 = sext i32 %559 to i64
  %561 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %562 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %561, i32 0, i32 5
  store i64 %560, i64* %562, align 8
  %563 = load i32, i32* %34, align 4
  %564 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %565 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %564, i32 0, i32 1
  store i32 %563, i32* %565, align 8
  br label %587

566:                                              ; preds = %551
  %567 = load i32, i32* %34, align 4
  %568 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %569 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %568, i32 0, i32 1
  store i32 %567, i32* %569, align 8
  %570 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %571 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %570, i32 0, i32 4
  %572 = load i8*, i8** %571, align 8
  %573 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %574 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %573, i32 0, i32 1
  %575 = load i32, i32* %574, align 8
  %576 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %577 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %576, i32 0, i32 3
  %578 = load i32, i32* %577, align 8
  %579 = call i32 @skip_utf8(i8* %572, i32 %575, i32 0, i32 %578, i32 1)
  store i32 %579, i32* %35, align 4
  %580 = load i32, i32* %35, align 4
  %581 = icmp slt i32 %580, 0
  br i1 %581, label %582, label %583

582:                                              ; preds = %566
  br label %596

583:                                              ; preds = %566
  %584 = load i32, i32* %35, align 4
  %585 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %586 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %585, i32 0, i32 1
  store i32 %584, i32* %586, align 8
  br label %523

587:                                              ; preds = %552
  %588 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %589 = load i32, i32* @s_23, align 4
  %590 = call i32 @slice_from_s(%struct.SN_env* %588, i32 1, i32 %589)
  store i32 %590, i32* %36, align 4
  %591 = load i32, i32* %36, align 4
  %592 = icmp slt i32 %591, 0
  br i1 %592, label %593, label %595

593:                                              ; preds = %587
  %594 = load i32, i32* %36, align 4
  store i32 %594, i32* %2, align 4
  br label %605

595:                                              ; preds = %587
  br label %519

596:                                              ; preds = %582
  %597 = load i32, i32* %33, align 4
  %598 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %599 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %598, i32 0, i32 1
  store i32 %597, i32* %599, align 8
  br label %600

600:                                              ; preds = %596
  br label %601

601:                                              ; preds = %600, %517
  %602 = load i32, i32* %32, align 4
  %603 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %604 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %603, i32 0, i32 1
  store i32 %602, i32* %604, align 8
  store i32 1, i32* %2, align 4
  br label %605

605:                                              ; preds = %601, %593, %492, %465, %438, %411, %384, %357, %330, %303, %179, %85
  %606 = load i32, i32* %2, align 4
  ret i32 %606
}

declare dso_local i32 @slice_from_s(%struct.SN_env*, i32, i32) #1

declare dso_local i32 @in_grouping_U(%struct.SN_env*, i32, i32, i32, i32) #1

declare dso_local i32 @skip_utf8(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @out_grouping_U(%struct.SN_env*, i32, i32, i32, i32) #1

declare dso_local i32 @r_Step_1a(%struct.SN_env*) #1

declare dso_local i32 @r_Step_1b(%struct.SN_env*) #1

declare dso_local i32 @r_Step_1c(%struct.SN_env*) #1

declare dso_local i32 @r_Step_2(%struct.SN_env*) #1

declare dso_local i32 @r_Step_3(%struct.SN_env*) #1

declare dso_local i32 @r_Step_4(%struct.SN_env*) #1

declare dso_local i32 @r_Step_5a(%struct.SN_env*) #1

declare dso_local i32 @r_Step_5b(%struct.SN_env*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
