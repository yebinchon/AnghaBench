; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_stem_UTF_8_greek.c_r_step5b.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_stem_UTF_8_greek.c_r_step5b.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SN_env = type { i32, i32, i32, i32, i32*, i64, i64*, i64* }

@a_43 = common dso_local global i32 0, align 4
@a_42 = common dso_local global i32 0, align 4
@s_76 = common dso_local global i32 0, align 4
@s_77 = common dso_local global i32 0, align 4
@g_v2 = common dso_local global i32 0, align 4
@s_78 = common dso_local global i32 0, align 4
@a_44 = common dso_local global i32 0, align 4
@s_79 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.SN_env*)* @r_step5b to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r_step5b(%struct.SN_env* %0) #0 {
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
  br label %187

51:                                               ; preds = %38
  %52 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %53 = load i32, i32* @a_43, align 4
  %54 = call i32 @find_among_b(%struct.SN_env* %52, i32 %53, i32 11)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %51
  br label %187

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
  br label %387

70:                                               ; preds = %57
  %71 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %72 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %71, i32 0, i32 7
  %73 = load i64*, i64** %72, align 8
  %74 = getelementptr inbounds i64, i64* %73, i64 0
  store i64 0, i64* %74, align 8
  %75 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %76 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %79 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %78, i32 0, i32 2
  store i32 %77, i32* %79, align 8
  %80 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %81 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = sub nsw i32 %82, 3
  %84 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %85 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = icmp sle i32 %83, %86
  br i1 %87, label %112, label %88

88:                                               ; preds = %70
  %89 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %90 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %89, i32 0, i32 4
  %91 = load i32*, i32** %90, align 8
  %92 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %93 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = sub nsw i32 %94, 1
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %91, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = icmp ne i32 %98, 129
  br i1 %99, label %100, label %113

100:                                              ; preds = %88
  %101 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %102 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %101, i32 0, i32 4
  %103 = load i32*, i32** %102, align 8
  %104 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %105 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = sub nsw i32 %106, 1
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %103, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = icmp ne i32 %110, 131
  br i1 %111, label %112, label %113

112:                                              ; preds = %100, %70
  br label %187

113:                                              ; preds = %100, %88
  %114 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %115 = load i32, i32* @a_42, align 4
  %116 = call i32 @find_among_b(%struct.SN_env* %114, i32 %115, i32 2)
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %119, label %118

118:                                              ; preds = %113
  br label %187

119:                                              ; preds = %113
  %120 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %121 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = sext i32 %122 to i64
  %124 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %125 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %124, i32 0, i32 5
  store i64 %123, i64* %125, align 8
  %126 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %127 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %130 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 4
  %132 = icmp sgt i32 %128, %131
  br i1 %132, label %133, label %134

133:                                              ; preds = %119
  br label %187

134:                                              ; preds = %119
  %135 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %136 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %137 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %136, i32 0, i32 6
  %138 = load i64*, i64** %137, align 8
  %139 = getelementptr inbounds i64, i64* %138, i64 0
  %140 = load i64, i64* %139, align 8
  %141 = call i8* @slice_to(%struct.SN_env* %135, i64 %140)
  %142 = ptrtoint i8* %141 to i64
  %143 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %144 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %143, i32 0, i32 6
  %145 = load i64*, i64** %144, align 8
  %146 = getelementptr inbounds i64, i64* %145, i64 0
  store i64 %142, i64* %146, align 8
  %147 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %148 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %147, i32 0, i32 6
  %149 = load i64*, i64** %148, align 8
  %150 = getelementptr inbounds i64, i64* %149, i64 0
  %151 = load i64, i64* %150, align 8
  %152 = icmp eq i64 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %134
  store i32 -1, i32* %2, align 4
  br label %387

154:                                              ; preds = %134
  %155 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %156 = load i32, i32* @s_76, align 4
  %157 = call i32 @slice_from_s(%struct.SN_env* %155, i32 8, i32 %156)
  store i32 %157, i32* %6, align 4
  %158 = load i32, i32* %6, align 4
  %159 = icmp slt i32 %158, 0
  br i1 %159, label %160, label %162

160:                                              ; preds = %154
  %161 = load i32, i32* %6, align 4
  store i32 %161, i32* %2, align 4
  br label %387

162:                                              ; preds = %154
  %163 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %164 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  store i32 %165, i32* %8, align 4
  %166 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %167 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %168 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %171 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %174 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %173, i32 0, i32 6
  %175 = load i64*, i64** %174, align 8
  %176 = getelementptr inbounds i64, i64* %175, i64 0
  %177 = load i64, i64* %176, align 8
  %178 = call i32 @insert_v(%struct.SN_env* %166, i32 %169, i32 %172, i64 %177)
  store i32 %178, i32* %7, align 4
  %179 = load i32, i32* %8, align 4
  %180 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %181 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %180, i32 0, i32 1
  store i32 %179, i32* %181, align 4
  %182 = load i32, i32* %7, align 4
  %183 = icmp slt i32 %182, 0
  br i1 %183, label %184, label %186

184:                                              ; preds = %162
  %185 = load i32, i32* %7, align 4
  store i32 %185, i32* %2, align 4
  br label %387

186:                                              ; preds = %162
  br label %187

187:                                              ; preds = %186, %133, %118, %112, %56, %50
  %188 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %189 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = load i32, i32* %4, align 4
  %192 = sub nsw i32 %190, %191
  %193 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %194 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %193, i32 0, i32 1
  store i32 %192, i32* %194, align 4
  %195 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %196 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %199 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %198, i32 0, i32 2
  store i32 %197, i32* %199, align 8
  %200 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %201 = load i32, i32* @s_77, align 4
  %202 = call i32 @eq_s_b(%struct.SN_env* %200, i32 6, i32 %201)
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %205, label %204

204:                                              ; preds = %187
  store i32 0, i32* %2, align 4
  br label %387

205:                                              ; preds = %187
  %206 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %207 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 4
  %209 = sext i32 %208 to i64
  %210 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %211 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %210, i32 0, i32 5
  store i64 %209, i64* %211, align 8
  %212 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %213 = call i32 @slice_del(%struct.SN_env* %212)
  store i32 %213, i32* %9, align 4
  %214 = load i32, i32* %9, align 4
  %215 = icmp slt i32 %214, 0
  br i1 %215, label %216, label %218

216:                                              ; preds = %205
  %217 = load i32, i32* %9, align 4
  store i32 %217, i32* %2, align 4
  br label %387

218:                                              ; preds = %205
  %219 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %220 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %219, i32 0, i32 7
  %221 = load i64*, i64** %220, align 8
  %222 = getelementptr inbounds i64, i64* %221, i64 0
  store i64 0, i64* %222, align 8
  %223 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %224 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %227 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %226, i32 0, i32 1
  %228 = load i32, i32* %227, align 4
  %229 = sub nsw i32 %225, %228
  store i32 %229, i32* %10, align 4
  %230 = load i32, i32* %10, align 4
  %231 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %232 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %231, i32 0, i32 1
  %233 = load i32, i32* %232, align 4
  %234 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %235 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %234, i32 0, i32 2
  store i32 %233, i32* %235, align 8
  %236 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %237 = load i32, i32* @g_v2, align 4
  %238 = call i64 @in_grouping_b_U(%struct.SN_env* %236, i32 %237, i32 945, i32 969, i32 0)
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %240, label %241

240:                                              ; preds = %218
  br label %300

241:                                              ; preds = %218
  %242 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %243 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %242, i32 0, i32 1
  %244 = load i32, i32* %243, align 4
  %245 = sext i32 %244 to i64
  %246 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %247 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %246, i32 0, i32 5
  store i64 %245, i64* %247, align 8
  %248 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %249 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %250 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %249, i32 0, i32 6
  %251 = load i64*, i64** %250, align 8
  %252 = getelementptr inbounds i64, i64* %251, i64 0
  %253 = load i64, i64* %252, align 8
  %254 = call i8* @slice_to(%struct.SN_env* %248, i64 %253)
  %255 = ptrtoint i8* %254 to i64
  %256 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %257 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %256, i32 0, i32 6
  %258 = load i64*, i64** %257, align 8
  %259 = getelementptr inbounds i64, i64* %258, i64 0
  store i64 %255, i64* %259, align 8
  %260 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %261 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %260, i32 0, i32 6
  %262 = load i64*, i64** %261, align 8
  %263 = getelementptr inbounds i64, i64* %262, i64 0
  %264 = load i64, i64* %263, align 8
  %265 = icmp eq i64 %264, 0
  br i1 %265, label %266, label %267

266:                                              ; preds = %241
  store i32 -1, i32* %2, align 4
  br label %387

267:                                              ; preds = %241
  %268 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %269 = load i32, i32* @s_78, align 4
  %270 = call i32 @slice_from_s(%struct.SN_env* %268, i32 4, i32 %269)
  store i32 %270, i32* %11, align 4
  %271 = load i32, i32* %11, align 4
  %272 = icmp slt i32 %271, 0
  br i1 %272, label %273, label %275

273:                                              ; preds = %267
  %274 = load i32, i32* %11, align 4
  store i32 %274, i32* %2, align 4
  br label %387

275:                                              ; preds = %267
  %276 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %277 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %276, i32 0, i32 1
  %278 = load i32, i32* %277, align 4
  store i32 %278, i32* %13, align 4
  %279 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %280 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %281 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %280, i32 0, i32 1
  %282 = load i32, i32* %281, align 4
  %283 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %284 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %283, i32 0, i32 1
  %285 = load i32, i32* %284, align 4
  %286 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %287 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %286, i32 0, i32 6
  %288 = load i64*, i64** %287, align 8
  %289 = getelementptr inbounds i64, i64* %288, i64 0
  %290 = load i64, i64* %289, align 8
  %291 = call i32 @insert_v(%struct.SN_env* %279, i32 %282, i32 %285, i64 %290)
  store i32 %291, i32* %12, align 4
  %292 = load i32, i32* %13, align 4
  %293 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %294 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %293, i32 0, i32 1
  store i32 %292, i32* %294, align 4
  %295 = load i32, i32* %12, align 4
  %296 = icmp slt i32 %295, 0
  br i1 %296, label %297, label %299

297:                                              ; preds = %275
  %298 = load i32, i32* %12, align 4
  store i32 %298, i32* %2, align 4
  br label %387

299:                                              ; preds = %275
  br label %313

300:                                              ; preds = %240
  %301 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %302 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %301, i32 0, i32 0
  %303 = load i32, i32* %302, align 8
  %304 = load i32, i32* %10, align 4
  %305 = sub nsw i32 %303, %304
  %306 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %307 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %306, i32 0, i32 1
  store i32 %305, i32* %307, align 4
  %308 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %309 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %308, i32 0, i32 1
  %310 = load i32, i32* %309, align 4
  %311 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %312 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %311, i32 0, i32 2
  store i32 %310, i32* %312, align 8
  br label %313

313:                                              ; preds = %300, %299
  %314 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %315 = load i32, i32* @a_44, align 4
  %316 = call i32 @find_among_b(%struct.SN_env* %314, i32 %315, i32 95)
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %319, label %318

318:                                              ; preds = %313
  store i32 0, i32* %2, align 4
  br label %387

319:                                              ; preds = %313
  %320 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %321 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %320, i32 0, i32 1
  %322 = load i32, i32* %321, align 4
  %323 = sext i32 %322 to i64
  %324 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %325 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %324, i32 0, i32 5
  store i64 %323, i64* %325, align 8
  %326 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %327 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %326, i32 0, i32 1
  %328 = load i32, i32* %327, align 4
  %329 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %330 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %329, i32 0, i32 3
  %331 = load i32, i32* %330, align 4
  %332 = icmp sgt i32 %328, %331
  br i1 %332, label %333, label %334

333:                                              ; preds = %319
  store i32 0, i32* %2, align 4
  br label %387

334:                                              ; preds = %319
  %335 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %336 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %337 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %336, i32 0, i32 6
  %338 = load i64*, i64** %337, align 8
  %339 = getelementptr inbounds i64, i64* %338, i64 0
  %340 = load i64, i64* %339, align 8
  %341 = call i8* @slice_to(%struct.SN_env* %335, i64 %340)
  %342 = ptrtoint i8* %341 to i64
  %343 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %344 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %343, i32 0, i32 6
  %345 = load i64*, i64** %344, align 8
  %346 = getelementptr inbounds i64, i64* %345, i64 0
  store i64 %342, i64* %346, align 8
  %347 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %348 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %347, i32 0, i32 6
  %349 = load i64*, i64** %348, align 8
  %350 = getelementptr inbounds i64, i64* %349, i64 0
  %351 = load i64, i64* %350, align 8
  %352 = icmp eq i64 %351, 0
  br i1 %352, label %353, label %354

353:                                              ; preds = %334
  store i32 -1, i32* %2, align 4
  br label %387

354:                                              ; preds = %334
  %355 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %356 = load i32, i32* @s_79, align 4
  %357 = call i32 @slice_from_s(%struct.SN_env* %355, i32 4, i32 %356)
  store i32 %357, i32* %14, align 4
  %358 = load i32, i32* %14, align 4
  %359 = icmp slt i32 %358, 0
  br i1 %359, label %360, label %362

360:                                              ; preds = %354
  %361 = load i32, i32* %14, align 4
  store i32 %361, i32* %2, align 4
  br label %387

362:                                              ; preds = %354
  %363 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %364 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %363, i32 0, i32 1
  %365 = load i32, i32* %364, align 4
  store i32 %365, i32* %16, align 4
  %366 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %367 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %368 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %367, i32 0, i32 1
  %369 = load i32, i32* %368, align 4
  %370 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %371 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %370, i32 0, i32 1
  %372 = load i32, i32* %371, align 4
  %373 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %374 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %373, i32 0, i32 6
  %375 = load i64*, i64** %374, align 8
  %376 = getelementptr inbounds i64, i64* %375, i64 0
  %377 = load i64, i64* %376, align 8
  %378 = call i32 @insert_v(%struct.SN_env* %366, i32 %369, i32 %372, i64 %377)
  store i32 %378, i32* %15, align 4
  %379 = load i32, i32* %16, align 4
  %380 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %381 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %380, i32 0, i32 1
  store i32 %379, i32* %381, align 4
  %382 = load i32, i32* %15, align 4
  %383 = icmp slt i32 %382, 0
  br i1 %383, label %384, label %386

384:                                              ; preds = %362
  %385 = load i32, i32* %15, align 4
  store i32 %385, i32* %2, align 4
  br label %387

386:                                              ; preds = %362
  store i32 1, i32* %2, align 4
  br label %387

387:                                              ; preds = %386, %384, %360, %353, %333, %318, %297, %273, %266, %216, %204, %184, %160, %153, %68
  %388 = load i32, i32* %2, align 4
  ret i32 %388
}

declare dso_local i32 @find_among_b(%struct.SN_env*, i32, i32) #1

declare dso_local i32 @slice_del(%struct.SN_env*) #1

declare dso_local i8* @slice_to(%struct.SN_env*, i64) #1

declare dso_local i32 @slice_from_s(%struct.SN_env*, i32, i32) #1

declare dso_local i32 @insert_v(%struct.SN_env*, i32, i32, i64) #1

declare dso_local i32 @eq_s_b(%struct.SN_env*, i32, i32) #1

declare dso_local i64 @in_grouping_b_U(%struct.SN_env*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
