; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_stem_ISO_8859_1_porter.c_porter_ISO_8859_1_stem.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_stem_ISO_8859_1_porter.c_porter_ISO_8859_1_stem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SN_env = type { i32*, i32, i32, i32, i8*, i64, i32*, i32 }

@s_21 = common dso_local global i32 0, align 4
@g_v = common dso_local global i32 0, align 4
@s_22 = common dso_local global i32 0, align 4
@s_23 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @porter_ISO_8859_1_stem(%struct.SN_env* %0) #0 {
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
  store %struct.SN_env* %0, %struct.SN_env** %3, align 8
  %35 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %36 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  store i32 0, i32* %38, align 4
  %39 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %40 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  store i32 %41, i32* %4, align 4
  %42 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %43 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %46 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 4
  %47 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %48 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %51 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 8
  %53 = icmp eq i32 %49, %52
  br i1 %53, label %66, label %54

54:                                               ; preds = %1
  %55 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %56 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %55, i32 0, i32 4
  %57 = load i8*, i8** %56, align 8
  %58 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %59 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8, i8* %57, i64 %61
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp ne i32 %64, 121
  br i1 %65, label %66, label %67

66:                                               ; preds = %54, %1
  br label %90

67:                                               ; preds = %54
  %68 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %69 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %69, align 8
  %72 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %73 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = sext i32 %74 to i64
  %76 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %77 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %76, i32 0, i32 5
  store i64 %75, i64* %77, align 8
  %78 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %79 = load i32, i32* @s_21, align 4
  %80 = call i32 @slice_from_s(%struct.SN_env* %78, i32 1, i32 %79)
  store i32 %80, i32* %5, align 4
  %81 = load i32, i32* %5, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %67
  %84 = load i32, i32* %5, align 4
  store i32 %84, i32* %2, align 4
  br label %595

85:                                               ; preds = %67
  %86 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %87 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 0
  store i32 1, i32* %89, align 4
  br label %90

90:                                               ; preds = %85, %66
  %91 = load i32, i32* %4, align 4
  %92 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %93 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %92, i32 0, i32 1
  store i32 %91, i32* %93, align 8
  %94 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %95 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  store i32 %96, i32* %6, align 4
  br label %97

97:                                               ; preds = %90, %175
  %98 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %99 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  store i32 %100, i32* %7, align 4
  br label %101

101:                                              ; preds = %97, %162
  %102 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %103 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  store i32 %104, i32* %8, align 4
  %105 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %106 = load i32, i32* @g_v, align 4
  %107 = call i32 @in_grouping(%struct.SN_env* %105, i32 %106, i32 97, i32 121, i32 0)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %101
  br label %150

110:                                              ; preds = %101
  %111 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %112 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %115 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %114, i32 0, i32 2
  store i32 %113, i32* %115, align 4
  %116 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %117 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %120 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %119, i32 0, i32 3
  %121 = load i32, i32* %120, align 8
  %122 = icmp eq i32 %118, %121
  br i1 %122, label %135, label %123

123:                                              ; preds = %110
  %124 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %125 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %124, i32 0, i32 4
  %126 = load i8*, i8** %125, align 8
  %127 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %128 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i8, i8* %126, i64 %130
  %132 = load i8, i8* %131, align 1
  %133 = sext i8 %132 to i32
  %134 = icmp ne i32 %133, 121
  br i1 %134, label %135, label %136

135:                                              ; preds = %123, %110
  br label %150

136:                                              ; preds = %123
  %137 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %138 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 8
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %138, align 8
  %141 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %142 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 8
  %144 = sext i32 %143 to i64
  %145 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %146 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %145, i32 0, i32 5
  store i64 %144, i64* %146, align 8
  %147 = load i32, i32* %8, align 4
  %148 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %149 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %148, i32 0, i32 1
  store i32 %147, i32* %149, align 8
  br label %167

150:                                              ; preds = %135, %109
  %151 = load i32, i32* %8, align 4
  %152 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %153 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %152, i32 0, i32 1
  store i32 %151, i32* %153, align 8
  %154 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %155 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 8
  %157 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %158 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %157, i32 0, i32 3
  %159 = load i32, i32* %158, align 8
  %160 = icmp sge i32 %156, %159
  br i1 %160, label %161, label %162

161:                                              ; preds = %150
  br label %180

162:                                              ; preds = %150
  %163 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %164 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 8
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %164, align 8
  br label %101

167:                                              ; preds = %136
  %168 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %169 = load i32, i32* @s_22, align 4
  %170 = call i32 @slice_from_s(%struct.SN_env* %168, i32 1, i32 %169)
  store i32 %170, i32* %9, align 4
  %171 = load i32, i32* %9, align 4
  %172 = icmp slt i32 %171, 0
  br i1 %172, label %173, label %175

173:                                              ; preds = %167
  %174 = load i32, i32* %9, align 4
  store i32 %174, i32* %2, align 4
  br label %595

175:                                              ; preds = %167
  %176 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %177 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %176, i32 0, i32 0
  %178 = load i32*, i32** %177, align 8
  %179 = getelementptr inbounds i32, i32* %178, i64 0
  store i32 1, i32* %179, align 4
  br label %97

180:                                              ; preds = %161
  %181 = load i32, i32* %7, align 4
  %182 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %183 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %182, i32 0, i32 1
  store i32 %181, i32* %183, align 8
  br label %184

184:                                              ; preds = %180
  %185 = load i32, i32* %6, align 4
  %186 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %187 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %186, i32 0, i32 1
  store i32 %185, i32* %187, align 8
  %188 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %189 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %188, i32 0, i32 3
  %190 = load i32, i32* %189, align 8
  %191 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %192 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %191, i32 0, i32 6
  %193 = load i32*, i32** %192, align 8
  %194 = getelementptr inbounds i32, i32* %193, i64 0
  store i32 %190, i32* %194, align 4
  %195 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %196 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %195, i32 0, i32 3
  %197 = load i32, i32* %196, align 8
  %198 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %199 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %198, i32 0, i32 6
  %200 = load i32*, i32** %199, align 8
  %201 = getelementptr inbounds i32, i32* %200, i64 1
  store i32 %197, i32* %201, align 4
  %202 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %203 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 8
  store i32 %204, i32* %10, align 4
  %205 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %206 = load i32, i32* @g_v, align 4
  %207 = call i32 @out_grouping(%struct.SN_env* %205, i32 %206, i32 97, i32 121, i32 1)
  store i32 %207, i32* %11, align 4
  %208 = load i32, i32* %11, align 4
  %209 = icmp slt i32 %208, 0
  br i1 %209, label %210, label %211

210:                                              ; preds = %184
  br label %267

211:                                              ; preds = %184
  %212 = load i32, i32* %11, align 4
  %213 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %214 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 8
  %216 = add nsw i32 %215, %212
  store i32 %216, i32* %214, align 8
  %217 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %218 = load i32, i32* @g_v, align 4
  %219 = call i32 @in_grouping(%struct.SN_env* %217, i32 %218, i32 97, i32 121, i32 1)
  store i32 %219, i32* %12, align 4
  %220 = load i32, i32* %12, align 4
  %221 = icmp slt i32 %220, 0
  br i1 %221, label %222, label %223

222:                                              ; preds = %211
  br label %267

223:                                              ; preds = %211
  %224 = load i32, i32* %12, align 4
  %225 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %226 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 8
  %228 = add nsw i32 %227, %224
  store i32 %228, i32* %226, align 8
  %229 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %230 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %229, i32 0, i32 1
  %231 = load i32, i32* %230, align 8
  %232 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %233 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %232, i32 0, i32 6
  %234 = load i32*, i32** %233, align 8
  %235 = getelementptr inbounds i32, i32* %234, i64 0
  store i32 %231, i32* %235, align 4
  %236 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %237 = load i32, i32* @g_v, align 4
  %238 = call i32 @out_grouping(%struct.SN_env* %236, i32 %237, i32 97, i32 121, i32 1)
  store i32 %238, i32* %13, align 4
  %239 = load i32, i32* %13, align 4
  %240 = icmp slt i32 %239, 0
  br i1 %240, label %241, label %242

241:                                              ; preds = %223
  br label %267

242:                                              ; preds = %223
  %243 = load i32, i32* %13, align 4
  %244 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %245 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %244, i32 0, i32 1
  %246 = load i32, i32* %245, align 8
  %247 = add nsw i32 %246, %243
  store i32 %247, i32* %245, align 8
  %248 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %249 = load i32, i32* @g_v, align 4
  %250 = call i32 @in_grouping(%struct.SN_env* %248, i32 %249, i32 97, i32 121, i32 1)
  store i32 %250, i32* %14, align 4
  %251 = load i32, i32* %14, align 4
  %252 = icmp slt i32 %251, 0
  br i1 %252, label %253, label %254

253:                                              ; preds = %242
  br label %267

254:                                              ; preds = %242
  %255 = load i32, i32* %14, align 4
  %256 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %257 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %256, i32 0, i32 1
  %258 = load i32, i32* %257, align 8
  %259 = add nsw i32 %258, %255
  store i32 %259, i32* %257, align 8
  %260 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %261 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %260, i32 0, i32 1
  %262 = load i32, i32* %261, align 8
  %263 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %264 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %263, i32 0, i32 6
  %265 = load i32*, i32** %264, align 8
  %266 = getelementptr inbounds i32, i32* %265, i64 1
  store i32 %262, i32* %266, align 4
  br label %267

267:                                              ; preds = %254, %253, %241, %222, %210
  %268 = load i32, i32* %10, align 4
  %269 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %270 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %269, i32 0, i32 1
  store i32 %268, i32* %270, align 8
  %271 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %272 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %271, i32 0, i32 1
  %273 = load i32, i32* %272, align 8
  %274 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %275 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %274, i32 0, i32 7
  store i32 %273, i32* %275, align 8
  %276 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %277 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %276, i32 0, i32 3
  %278 = load i32, i32* %277, align 8
  %279 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %280 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %279, i32 0, i32 1
  store i32 %278, i32* %280, align 8
  %281 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %282 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %281, i32 0, i32 3
  %283 = load i32, i32* %282, align 8
  %284 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %285 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %284, i32 0, i32 1
  %286 = load i32, i32* %285, align 8
  %287 = sub nsw i32 %283, %286
  store i32 %287, i32* %15, align 4
  %288 = load i32, i32* %15, align 4
  %289 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %290 = call i32 @r_Step_1a(%struct.SN_env* %289)
  store i32 %290, i32* %16, align 4
  %291 = load i32, i32* %16, align 4
  %292 = icmp eq i32 %291, 0
  br i1 %292, label %293, label %294

293:                                              ; preds = %267
  br label %300

294:                                              ; preds = %267
  %295 = load i32, i32* %16, align 4
  %296 = icmp slt i32 %295, 0
  br i1 %296, label %297, label %299

297:                                              ; preds = %294
  %298 = load i32, i32* %16, align 4
  store i32 %298, i32* %2, align 4
  br label %595

299:                                              ; preds = %294
  br label %300

300:                                              ; preds = %299, %293
  %301 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %302 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %301, i32 0, i32 3
  %303 = load i32, i32* %302, align 8
  %304 = load i32, i32* %15, align 4
  %305 = sub nsw i32 %303, %304
  %306 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %307 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %306, i32 0, i32 1
  store i32 %305, i32* %307, align 8
  %308 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %309 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %308, i32 0, i32 3
  %310 = load i32, i32* %309, align 8
  %311 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %312 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %311, i32 0, i32 1
  %313 = load i32, i32* %312, align 8
  %314 = sub nsw i32 %310, %313
  store i32 %314, i32* %17, align 4
  %315 = load i32, i32* %17, align 4
  %316 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %317 = call i32 @r_Step_1b(%struct.SN_env* %316)
  store i32 %317, i32* %18, align 4
  %318 = load i32, i32* %18, align 4
  %319 = icmp eq i32 %318, 0
  br i1 %319, label %320, label %321

320:                                              ; preds = %300
  br label %327

321:                                              ; preds = %300
  %322 = load i32, i32* %18, align 4
  %323 = icmp slt i32 %322, 0
  br i1 %323, label %324, label %326

324:                                              ; preds = %321
  %325 = load i32, i32* %18, align 4
  store i32 %325, i32* %2, align 4
  br label %595

326:                                              ; preds = %321
  br label %327

327:                                              ; preds = %326, %320
  %328 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %329 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %328, i32 0, i32 3
  %330 = load i32, i32* %329, align 8
  %331 = load i32, i32* %17, align 4
  %332 = sub nsw i32 %330, %331
  %333 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %334 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %333, i32 0, i32 1
  store i32 %332, i32* %334, align 8
  %335 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %336 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %335, i32 0, i32 3
  %337 = load i32, i32* %336, align 8
  %338 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %339 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %338, i32 0, i32 1
  %340 = load i32, i32* %339, align 8
  %341 = sub nsw i32 %337, %340
  store i32 %341, i32* %19, align 4
  %342 = load i32, i32* %19, align 4
  %343 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %344 = call i32 @r_Step_1c(%struct.SN_env* %343)
  store i32 %344, i32* %20, align 4
  %345 = load i32, i32* %20, align 4
  %346 = icmp eq i32 %345, 0
  br i1 %346, label %347, label %348

347:                                              ; preds = %327
  br label %354

348:                                              ; preds = %327
  %349 = load i32, i32* %20, align 4
  %350 = icmp slt i32 %349, 0
  br i1 %350, label %351, label %353

351:                                              ; preds = %348
  %352 = load i32, i32* %20, align 4
  store i32 %352, i32* %2, align 4
  br label %595

353:                                              ; preds = %348
  br label %354

354:                                              ; preds = %353, %347
  %355 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %356 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %355, i32 0, i32 3
  %357 = load i32, i32* %356, align 8
  %358 = load i32, i32* %19, align 4
  %359 = sub nsw i32 %357, %358
  %360 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %361 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %360, i32 0, i32 1
  store i32 %359, i32* %361, align 8
  %362 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %363 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %362, i32 0, i32 3
  %364 = load i32, i32* %363, align 8
  %365 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %366 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %365, i32 0, i32 1
  %367 = load i32, i32* %366, align 8
  %368 = sub nsw i32 %364, %367
  store i32 %368, i32* %21, align 4
  %369 = load i32, i32* %21, align 4
  %370 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %371 = call i32 @r_Step_2(%struct.SN_env* %370)
  store i32 %371, i32* %22, align 4
  %372 = load i32, i32* %22, align 4
  %373 = icmp eq i32 %372, 0
  br i1 %373, label %374, label %375

374:                                              ; preds = %354
  br label %381

375:                                              ; preds = %354
  %376 = load i32, i32* %22, align 4
  %377 = icmp slt i32 %376, 0
  br i1 %377, label %378, label %380

378:                                              ; preds = %375
  %379 = load i32, i32* %22, align 4
  store i32 %379, i32* %2, align 4
  br label %595

380:                                              ; preds = %375
  br label %381

381:                                              ; preds = %380, %374
  %382 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %383 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %382, i32 0, i32 3
  %384 = load i32, i32* %383, align 8
  %385 = load i32, i32* %21, align 4
  %386 = sub nsw i32 %384, %385
  %387 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %388 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %387, i32 0, i32 1
  store i32 %386, i32* %388, align 8
  %389 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %390 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %389, i32 0, i32 3
  %391 = load i32, i32* %390, align 8
  %392 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %393 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %392, i32 0, i32 1
  %394 = load i32, i32* %393, align 8
  %395 = sub nsw i32 %391, %394
  store i32 %395, i32* %23, align 4
  %396 = load i32, i32* %23, align 4
  %397 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %398 = call i32 @r_Step_3(%struct.SN_env* %397)
  store i32 %398, i32* %24, align 4
  %399 = load i32, i32* %24, align 4
  %400 = icmp eq i32 %399, 0
  br i1 %400, label %401, label %402

401:                                              ; preds = %381
  br label %408

402:                                              ; preds = %381
  %403 = load i32, i32* %24, align 4
  %404 = icmp slt i32 %403, 0
  br i1 %404, label %405, label %407

405:                                              ; preds = %402
  %406 = load i32, i32* %24, align 4
  store i32 %406, i32* %2, align 4
  br label %595

407:                                              ; preds = %402
  br label %408

408:                                              ; preds = %407, %401
  %409 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %410 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %409, i32 0, i32 3
  %411 = load i32, i32* %410, align 8
  %412 = load i32, i32* %23, align 4
  %413 = sub nsw i32 %411, %412
  %414 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %415 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %414, i32 0, i32 1
  store i32 %413, i32* %415, align 8
  %416 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %417 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %416, i32 0, i32 3
  %418 = load i32, i32* %417, align 8
  %419 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %420 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %419, i32 0, i32 1
  %421 = load i32, i32* %420, align 8
  %422 = sub nsw i32 %418, %421
  store i32 %422, i32* %25, align 4
  %423 = load i32, i32* %25, align 4
  %424 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %425 = call i32 @r_Step_4(%struct.SN_env* %424)
  store i32 %425, i32* %26, align 4
  %426 = load i32, i32* %26, align 4
  %427 = icmp eq i32 %426, 0
  br i1 %427, label %428, label %429

428:                                              ; preds = %408
  br label %435

429:                                              ; preds = %408
  %430 = load i32, i32* %26, align 4
  %431 = icmp slt i32 %430, 0
  br i1 %431, label %432, label %434

432:                                              ; preds = %429
  %433 = load i32, i32* %26, align 4
  store i32 %433, i32* %2, align 4
  br label %595

434:                                              ; preds = %429
  br label %435

435:                                              ; preds = %434, %428
  %436 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %437 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %436, i32 0, i32 3
  %438 = load i32, i32* %437, align 8
  %439 = load i32, i32* %25, align 4
  %440 = sub nsw i32 %438, %439
  %441 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %442 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %441, i32 0, i32 1
  store i32 %440, i32* %442, align 8
  %443 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %444 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %443, i32 0, i32 3
  %445 = load i32, i32* %444, align 8
  %446 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %447 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %446, i32 0, i32 1
  %448 = load i32, i32* %447, align 8
  %449 = sub nsw i32 %445, %448
  store i32 %449, i32* %27, align 4
  %450 = load i32, i32* %27, align 4
  %451 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %452 = call i32 @r_Step_5a(%struct.SN_env* %451)
  store i32 %452, i32* %28, align 4
  %453 = load i32, i32* %28, align 4
  %454 = icmp eq i32 %453, 0
  br i1 %454, label %455, label %456

455:                                              ; preds = %435
  br label %462

456:                                              ; preds = %435
  %457 = load i32, i32* %28, align 4
  %458 = icmp slt i32 %457, 0
  br i1 %458, label %459, label %461

459:                                              ; preds = %456
  %460 = load i32, i32* %28, align 4
  store i32 %460, i32* %2, align 4
  br label %595

461:                                              ; preds = %456
  br label %462

462:                                              ; preds = %461, %455
  %463 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %464 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %463, i32 0, i32 3
  %465 = load i32, i32* %464, align 8
  %466 = load i32, i32* %27, align 4
  %467 = sub nsw i32 %465, %466
  %468 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %469 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %468, i32 0, i32 1
  store i32 %467, i32* %469, align 8
  %470 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %471 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %470, i32 0, i32 3
  %472 = load i32, i32* %471, align 8
  %473 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %474 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %473, i32 0, i32 1
  %475 = load i32, i32* %474, align 8
  %476 = sub nsw i32 %472, %475
  store i32 %476, i32* %29, align 4
  %477 = load i32, i32* %29, align 4
  %478 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %479 = call i32 @r_Step_5b(%struct.SN_env* %478)
  store i32 %479, i32* %30, align 4
  %480 = load i32, i32* %30, align 4
  %481 = icmp eq i32 %480, 0
  br i1 %481, label %482, label %483

482:                                              ; preds = %462
  br label %489

483:                                              ; preds = %462
  %484 = load i32, i32* %30, align 4
  %485 = icmp slt i32 %484, 0
  br i1 %485, label %486, label %488

486:                                              ; preds = %483
  %487 = load i32, i32* %30, align 4
  store i32 %487, i32* %2, align 4
  br label %595

488:                                              ; preds = %483
  br label %489

489:                                              ; preds = %488, %482
  %490 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %491 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %490, i32 0, i32 3
  %492 = load i32, i32* %491, align 8
  %493 = load i32, i32* %29, align 4
  %494 = sub nsw i32 %492, %493
  %495 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %496 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %495, i32 0, i32 1
  store i32 %494, i32* %496, align 8
  %497 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %498 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %497, i32 0, i32 7
  %499 = load i32, i32* %498, align 8
  %500 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %501 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %500, i32 0, i32 1
  store i32 %499, i32* %501, align 8
  %502 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %503 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %502, i32 0, i32 1
  %504 = load i32, i32* %503, align 8
  store i32 %504, i32* %31, align 4
  %505 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %506 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %505, i32 0, i32 0
  %507 = load i32*, i32** %506, align 8
  %508 = getelementptr inbounds i32, i32* %507, i64 0
  %509 = load i32, i32* %508, align 4
  %510 = icmp ne i32 %509, 0
  br i1 %510, label %512, label %511

511:                                              ; preds = %489
  br label %591

512:                                              ; preds = %489
  br label %513

513:                                              ; preds = %512, %585
  %514 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %515 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %514, i32 0, i32 1
  %516 = load i32, i32* %515, align 8
  store i32 %516, i32* %32, align 4
  br label %517

517:                                              ; preds = %513, %572
  %518 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %519 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %518, i32 0, i32 1
  %520 = load i32, i32* %519, align 8
  store i32 %520, i32* %33, align 4
  %521 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %522 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %521, i32 0, i32 1
  %523 = load i32, i32* %522, align 8
  %524 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %525 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %524, i32 0, i32 2
  store i32 %523, i32* %525, align 4
  %526 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %527 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %526, i32 0, i32 1
  %528 = load i32, i32* %527, align 8
  %529 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %530 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %529, i32 0, i32 3
  %531 = load i32, i32* %530, align 8
  %532 = icmp eq i32 %528, %531
  br i1 %532, label %545, label %533

533:                                              ; preds = %517
  %534 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %535 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %534, i32 0, i32 4
  %536 = load i8*, i8** %535, align 8
  %537 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %538 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %537, i32 0, i32 1
  %539 = load i32, i32* %538, align 8
  %540 = sext i32 %539 to i64
  %541 = getelementptr inbounds i8, i8* %536, i64 %540
  %542 = load i8, i8* %541, align 1
  %543 = sext i8 %542 to i32
  %544 = icmp ne i32 %543, 89
  br i1 %544, label %545, label %546

545:                                              ; preds = %533, %517
  br label %560

546:                                              ; preds = %533
  %547 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %548 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %547, i32 0, i32 1
  %549 = load i32, i32* %548, align 8
  %550 = add nsw i32 %549, 1
  store i32 %550, i32* %548, align 8
  %551 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %552 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %551, i32 0, i32 1
  %553 = load i32, i32* %552, align 8
  %554 = sext i32 %553 to i64
  %555 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %556 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %555, i32 0, i32 5
  store i64 %554, i64* %556, align 8
  %557 = load i32, i32* %33, align 4
  %558 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %559 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %558, i32 0, i32 1
  store i32 %557, i32* %559, align 8
  br label %577

560:                                              ; preds = %545
  %561 = load i32, i32* %33, align 4
  %562 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %563 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %562, i32 0, i32 1
  store i32 %561, i32* %563, align 8
  %564 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %565 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %564, i32 0, i32 1
  %566 = load i32, i32* %565, align 8
  %567 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %568 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %567, i32 0, i32 3
  %569 = load i32, i32* %568, align 8
  %570 = icmp sge i32 %566, %569
  br i1 %570, label %571, label %572

571:                                              ; preds = %560
  br label %586

572:                                              ; preds = %560
  %573 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %574 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %573, i32 0, i32 1
  %575 = load i32, i32* %574, align 8
  %576 = add nsw i32 %575, 1
  store i32 %576, i32* %574, align 8
  br label %517

577:                                              ; preds = %546
  %578 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %579 = load i32, i32* @s_23, align 4
  %580 = call i32 @slice_from_s(%struct.SN_env* %578, i32 1, i32 %579)
  store i32 %580, i32* %34, align 4
  %581 = load i32, i32* %34, align 4
  %582 = icmp slt i32 %581, 0
  br i1 %582, label %583, label %585

583:                                              ; preds = %577
  %584 = load i32, i32* %34, align 4
  store i32 %584, i32* %2, align 4
  br label %595

585:                                              ; preds = %577
  br label %513

586:                                              ; preds = %571
  %587 = load i32, i32* %32, align 4
  %588 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %589 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %588, i32 0, i32 1
  store i32 %587, i32* %589, align 8
  br label %590

590:                                              ; preds = %586
  br label %591

591:                                              ; preds = %590, %511
  %592 = load i32, i32* %31, align 4
  %593 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %594 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %593, i32 0, i32 1
  store i32 %592, i32* %594, align 8
  store i32 1, i32* %2, align 4
  br label %595

595:                                              ; preds = %591, %583, %486, %459, %432, %405, %378, %351, %324, %297, %173, %83
  %596 = load i32, i32* %2, align 4
  ret i32 %596
}

declare dso_local i32 @slice_from_s(%struct.SN_env*, i32, i32) #1

declare dso_local i32 @in_grouping(%struct.SN_env*, i32, i32, i32, i32) #1

declare dso_local i32 @out_grouping(%struct.SN_env*, i32, i32, i32, i32) #1

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
