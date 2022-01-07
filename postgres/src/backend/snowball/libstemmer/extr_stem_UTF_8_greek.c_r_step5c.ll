; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_stem_UTF_8_greek.c_r_step5c.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_stem_UTF_8_greek.c_r_step5c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SN_env = type { i32, i32, i32, i32, i32*, i64, i64*, i64* }

@a_45 = common dso_local global i32 0, align 4
@s_80 = common dso_local global i32 0, align 4
@g_v2 = common dso_local global i32 0, align 4
@s_81 = common dso_local global i32 0, align 4
@a_46 = common dso_local global i32 0, align 4
@s_82 = common dso_local global i32 0, align 4
@a_47 = common dso_local global i32 0, align 4
@s_83 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.SN_env*)* @r_step5c to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r_step5c(%struct.SN_env* %0) #0 {
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
  %22 = load i32, i32* %21, align 4
  %23 = sub nsw i32 %19, %22
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %26 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %29 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 8
  %30 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %31 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = sub nsw i32 %32, 9
  %34 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %35 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = icmp sle i32 %33, %36
  br i1 %37, label %50, label %38

38:                                               ; preds = %1
  %39 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %40 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %39, i32 0, i32 4
  %41 = load i32*, i32** %40, align 8
  %42 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %43 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = sub nsw i32 %44, 1
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %41, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 181
  br i1 %49, label %50, label %51

50:                                               ; preds = %38, %1
  br label %75

51:                                               ; preds = %38
  %52 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %53 = load i32, i32* @a_45, align 4
  %54 = call i32 @find_among_b(%struct.SN_env* %52, i32 %53, i32 1)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %51
  br label %75

57:                                               ; preds = %51
  %58 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %59 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = sext i32 %60 to i64
  %62 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %63 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %62, i32 0, i32 5
  store i64 %61, i64* %63, align 8
  %64 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %65 = call i32 @slice_del(%struct.SN_env* %64)
  store i32 %65, i32* %5, align 4
  %66 = load i32, i32* %5, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %57
  %69 = load i32, i32* %5, align 4
  store i32 %69, i32* %2, align 4
  br label %352

70:                                               ; preds = %57
  %71 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %72 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %71, i32 0, i32 7
  %73 = load i64*, i64** %72, align 8
  %74 = getelementptr inbounds i64, i64* %73, i64 0
  store i64 0, i64* %74, align 8
  br label %75

75:                                               ; preds = %70, %56, %50
  %76 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %77 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* %4, align 4
  %80 = sub nsw i32 %78, %79
  %81 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %82 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %81, i32 0, i32 1
  store i32 %80, i32* %82, align 4
  %83 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %84 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %87 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %86, i32 0, i32 2
  store i32 %85, i32* %87, align 8
  %88 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %89 = load i32, i32* @s_80, align 4
  %90 = call i32 @eq_s_b(%struct.SN_env* %88, i32 6, i32 %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %93, label %92

92:                                               ; preds = %75
  store i32 0, i32* %2, align 4
  br label %352

93:                                               ; preds = %75
  %94 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %95 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = sext i32 %96 to i64
  %98 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %99 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %98, i32 0, i32 5
  store i64 %97, i64* %99, align 8
  %100 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %101 = call i32 @slice_del(%struct.SN_env* %100)
  store i32 %101, i32* %6, align 4
  %102 = load i32, i32* %6, align 4
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %93
  %105 = load i32, i32* %6, align 4
  store i32 %105, i32* %2, align 4
  br label %352

106:                                              ; preds = %93
  %107 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %108 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %107, i32 0, i32 7
  %109 = load i64*, i64** %108, align 8
  %110 = getelementptr inbounds i64, i64* %109, i64 0
  store i64 0, i64* %110, align 8
  %111 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %112 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %115 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = sub nsw i32 %113, %116
  store i32 %117, i32* %7, align 4
  %118 = load i32, i32* %7, align 4
  %119 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %120 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %123 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %122, i32 0, i32 2
  store i32 %121, i32* %123, align 8
  %124 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %125 = load i32, i32* @g_v2, align 4
  %126 = call i64 @in_grouping_b_U(%struct.SN_env* %124, i32 %125, i32 945, i32 969, i32 0)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %106
  br label %188

129:                                              ; preds = %106
  %130 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %131 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = sext i32 %132 to i64
  %134 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %135 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %134, i32 0, i32 5
  store i64 %133, i64* %135, align 8
  %136 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %137 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %138 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %137, i32 0, i32 6
  %139 = load i64*, i64** %138, align 8
  %140 = getelementptr inbounds i64, i64* %139, i64 0
  %141 = load i64, i64* %140, align 8
  %142 = call i8* @slice_to(%struct.SN_env* %136, i64 %141)
  %143 = ptrtoint i8* %142 to i64
  %144 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %145 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %144, i32 0, i32 6
  %146 = load i64*, i64** %145, align 8
  %147 = getelementptr inbounds i64, i64* %146, i64 0
  store i64 %143, i64* %147, align 8
  %148 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %149 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %148, i32 0, i32 6
  %150 = load i64*, i64** %149, align 8
  %151 = getelementptr inbounds i64, i64* %150, i64 0
  %152 = load i64, i64* %151, align 8
  %153 = icmp eq i64 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %129
  store i32 -1, i32* %2, align 4
  br label %352

155:                                              ; preds = %129
  %156 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %157 = load i32, i32* @s_81, align 4
  %158 = call i32 @slice_from_s(%struct.SN_env* %156, i32 4, i32 %157)
  store i32 %158, i32* %8, align 4
  %159 = load i32, i32* %8, align 4
  %160 = icmp slt i32 %159, 0
  br i1 %160, label %161, label %163

161:                                              ; preds = %155
  %162 = load i32, i32* %8, align 4
  store i32 %162, i32* %2, align 4
  br label %352

163:                                              ; preds = %155
  %164 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %165 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  store i32 %166, i32* %10, align 4
  %167 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %168 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %169 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %172 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %175 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %174, i32 0, i32 6
  %176 = load i64*, i64** %175, align 8
  %177 = getelementptr inbounds i64, i64* %176, i64 0
  %178 = load i64, i64* %177, align 8
  %179 = call i32 @insert_v(%struct.SN_env* %167, i32 %170, i32 %173, i64 %178)
  store i32 %179, i32* %9, align 4
  %180 = load i32, i32* %10, align 4
  %181 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %182 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %181, i32 0, i32 1
  store i32 %180, i32* %182, align 4
  %183 = load i32, i32* %9, align 4
  %184 = icmp slt i32 %183, 0
  br i1 %184, label %185, label %187

185:                                              ; preds = %163
  %186 = load i32, i32* %9, align 4
  store i32 %186, i32* %2, align 4
  br label %352

187:                                              ; preds = %163
  br label %278

188:                                              ; preds = %128
  %189 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %190 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = load i32, i32* %7, align 4
  %193 = sub nsw i32 %191, %192
  %194 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %195 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %194, i32 0, i32 1
  store i32 %193, i32* %195, align 4
  %196 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %197 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  %199 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %200 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %199, i32 0, i32 2
  store i32 %198, i32* %200, align 8
  %201 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %202 = load i32, i32* @a_46, align 4
  %203 = call i32 @find_among_b(%struct.SN_env* %201, i32 %202, i32 31)
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %206, label %205

205:                                              ; preds = %188
  br label %265

206:                                              ; preds = %188
  %207 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %208 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 4
  %210 = sext i32 %209 to i64
  %211 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %212 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %211, i32 0, i32 5
  store i64 %210, i64* %212, align 8
  %213 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %214 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %215 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %214, i32 0, i32 6
  %216 = load i64*, i64** %215, align 8
  %217 = getelementptr inbounds i64, i64* %216, i64 0
  %218 = load i64, i64* %217, align 8
  %219 = call i8* @slice_to(%struct.SN_env* %213, i64 %218)
  %220 = ptrtoint i8* %219 to i64
  %221 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %222 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %221, i32 0, i32 6
  %223 = load i64*, i64** %222, align 8
  %224 = getelementptr inbounds i64, i64* %223, i64 0
  store i64 %220, i64* %224, align 8
  %225 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %226 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %225, i32 0, i32 6
  %227 = load i64*, i64** %226, align 8
  %228 = getelementptr inbounds i64, i64* %227, i64 0
  %229 = load i64, i64* %228, align 8
  %230 = icmp eq i64 %229, 0
  br i1 %230, label %231, label %232

231:                                              ; preds = %206
  store i32 -1, i32* %2, align 4
  br label %352

232:                                              ; preds = %206
  %233 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %234 = load i32, i32* @s_82, align 4
  %235 = call i32 @slice_from_s(%struct.SN_env* %233, i32 4, i32 %234)
  store i32 %235, i32* %11, align 4
  %236 = load i32, i32* %11, align 4
  %237 = icmp slt i32 %236, 0
  br i1 %237, label %238, label %240

238:                                              ; preds = %232
  %239 = load i32, i32* %11, align 4
  store i32 %239, i32* %2, align 4
  br label %352

240:                                              ; preds = %232
  %241 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %242 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %241, i32 0, i32 1
  %243 = load i32, i32* %242, align 4
  store i32 %243, i32* %13, align 4
  %244 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %245 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %246 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %245, i32 0, i32 1
  %247 = load i32, i32* %246, align 4
  %248 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %249 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %248, i32 0, i32 1
  %250 = load i32, i32* %249, align 4
  %251 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %252 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %251, i32 0, i32 6
  %253 = load i64*, i64** %252, align 8
  %254 = getelementptr inbounds i64, i64* %253, i64 0
  %255 = load i64, i64* %254, align 8
  %256 = call i32 @insert_v(%struct.SN_env* %244, i32 %247, i32 %250, i64 %255)
  store i32 %256, i32* %12, align 4
  %257 = load i32, i32* %13, align 4
  %258 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %259 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %258, i32 0, i32 1
  store i32 %257, i32* %259, align 4
  %260 = load i32, i32* %12, align 4
  %261 = icmp slt i32 %260, 0
  br i1 %261, label %262, label %264

262:                                              ; preds = %240
  %263 = load i32, i32* %12, align 4
  store i32 %263, i32* %2, align 4
  br label %352

264:                                              ; preds = %240
  br label %278

265:                                              ; preds = %205
  %266 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %267 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %266, i32 0, i32 0
  %268 = load i32, i32* %267, align 8
  %269 = load i32, i32* %7, align 4
  %270 = sub nsw i32 %268, %269
  %271 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %272 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %271, i32 0, i32 1
  store i32 %270, i32* %272, align 4
  %273 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %274 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %273, i32 0, i32 1
  %275 = load i32, i32* %274, align 4
  %276 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %277 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %276, i32 0, i32 2
  store i32 %275, i32* %277, align 8
  br label %278

278:                                              ; preds = %265, %264, %187
  %279 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %280 = load i32, i32* @a_47, align 4
  %281 = call i32 @find_among_b(%struct.SN_env* %279, i32 %280, i32 25)
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %284, label %283

283:                                              ; preds = %278
  store i32 0, i32* %2, align 4
  br label %352

284:                                              ; preds = %278
  %285 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %286 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %285, i32 0, i32 1
  %287 = load i32, i32* %286, align 4
  %288 = sext i32 %287 to i64
  %289 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %290 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %289, i32 0, i32 5
  store i64 %288, i64* %290, align 8
  %291 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %292 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %291, i32 0, i32 1
  %293 = load i32, i32* %292, align 4
  %294 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %295 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %294, i32 0, i32 3
  %296 = load i32, i32* %295, align 4
  %297 = icmp sgt i32 %293, %296
  br i1 %297, label %298, label %299

298:                                              ; preds = %284
  store i32 0, i32* %2, align 4
  br label %352

299:                                              ; preds = %284
  %300 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %301 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %302 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %301, i32 0, i32 6
  %303 = load i64*, i64** %302, align 8
  %304 = getelementptr inbounds i64, i64* %303, i64 0
  %305 = load i64, i64* %304, align 8
  %306 = call i8* @slice_to(%struct.SN_env* %300, i64 %305)
  %307 = ptrtoint i8* %306 to i64
  %308 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %309 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %308, i32 0, i32 6
  %310 = load i64*, i64** %309, align 8
  %311 = getelementptr inbounds i64, i64* %310, i64 0
  store i64 %307, i64* %311, align 8
  %312 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %313 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %312, i32 0, i32 6
  %314 = load i64*, i64** %313, align 8
  %315 = getelementptr inbounds i64, i64* %314, i64 0
  %316 = load i64, i64* %315, align 8
  %317 = icmp eq i64 %316, 0
  br i1 %317, label %318, label %319

318:                                              ; preds = %299
  store i32 -1, i32* %2, align 4
  br label %352

319:                                              ; preds = %299
  %320 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %321 = load i32, i32* @s_83, align 4
  %322 = call i32 @slice_from_s(%struct.SN_env* %320, i32 4, i32 %321)
  store i32 %322, i32* %14, align 4
  %323 = load i32, i32* %14, align 4
  %324 = icmp slt i32 %323, 0
  br i1 %324, label %325, label %327

325:                                              ; preds = %319
  %326 = load i32, i32* %14, align 4
  store i32 %326, i32* %2, align 4
  br label %352

327:                                              ; preds = %319
  %328 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %329 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %328, i32 0, i32 1
  %330 = load i32, i32* %329, align 4
  store i32 %330, i32* %16, align 4
  %331 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %332 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %333 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %332, i32 0, i32 1
  %334 = load i32, i32* %333, align 4
  %335 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %336 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %335, i32 0, i32 1
  %337 = load i32, i32* %336, align 4
  %338 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %339 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %338, i32 0, i32 6
  %340 = load i64*, i64** %339, align 8
  %341 = getelementptr inbounds i64, i64* %340, i64 0
  %342 = load i64, i64* %341, align 8
  %343 = call i32 @insert_v(%struct.SN_env* %331, i32 %334, i32 %337, i64 %342)
  store i32 %343, i32* %15, align 4
  %344 = load i32, i32* %16, align 4
  %345 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %346 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %345, i32 0, i32 1
  store i32 %344, i32* %346, align 4
  %347 = load i32, i32* %15, align 4
  %348 = icmp slt i32 %347, 0
  br i1 %348, label %349, label %351

349:                                              ; preds = %327
  %350 = load i32, i32* %15, align 4
  store i32 %350, i32* %2, align 4
  br label %352

351:                                              ; preds = %327
  store i32 1, i32* %2, align 4
  br label %352

352:                                              ; preds = %351, %349, %325, %318, %298, %283, %262, %238, %231, %185, %161, %154, %104, %92, %68
  %353 = load i32, i32* %2, align 4
  ret i32 %353
}

declare dso_local i32 @find_among_b(%struct.SN_env*, i32, i32) #1

declare dso_local i32 @slice_del(%struct.SN_env*) #1

declare dso_local i32 @eq_s_b(%struct.SN_env*, i32, i32) #1

declare dso_local i64 @in_grouping_b_U(%struct.SN_env*, i32, i32, i32, i32) #1

declare dso_local i8* @slice_to(%struct.SN_env*, i64) #1

declare dso_local i32 @slice_from_s(%struct.SN_env*, i32, i32) #1

declare dso_local i32 @insert_v(%struct.SN_env*, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
