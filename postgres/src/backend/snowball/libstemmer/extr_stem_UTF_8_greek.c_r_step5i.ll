; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_stem_UTF_8_greek.c_r_step5i.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_stem_UTF_8_greek.c_r_step5i.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SN_env = type { i32, i32, i32, i32, i64*, i32, i32*, i64* }

@a_62 = common dso_local global i32 0, align 4
@s_98 = common dso_local global i32 0, align 4
@s_99 = common dso_local global i32 0, align 4
@a_59 = common dso_local global i32 0, align 4
@a_60 = common dso_local global i32 0, align 4
@s_100 = common dso_local global i32 0, align 4
@a_61 = common dso_local global i32 0, align 4
@s_101 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.SN_env*)* @r_step5i to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r_step5i(%struct.SN_env* %0) #0 {
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
  %18 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %21 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  %22 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %23 = load i32, i32* @a_62, align 4
  %24 = call i32 @find_among_b(%struct.SN_env* %22, i32 %23, i32 3)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %357

27:                                               ; preds = %1
  %28 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %29 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %32 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 8
  %33 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %34 = call i32 @slice_del(%struct.SN_env* %33)
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* %4, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %27
  %38 = load i32, i32* %4, align 4
  store i32 %38, i32* %2, align 4
  br label %357

39:                                               ; preds = %27
  %40 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %41 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %40, i32 0, i32 7
  %42 = load i64*, i64** %41, align 8
  %43 = getelementptr inbounds i64, i64* %42, i64 0
  store i64 0, i64* %43, align 8
  %44 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %45 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %48 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = sub nsw i32 %46, %49
  store i32 %50, i32* %5, align 4
  %51 = load i32, i32* %5, align 4
  %52 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %53 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %56 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  %57 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %58 = load i32, i32* @s_98, align 4
  %59 = call i32 @eq_s_b(%struct.SN_env* %57, i32 8, i32 %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %39
  br label %120

62:                                               ; preds = %39
  %63 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %64 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %67 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %66, i32 0, i32 2
  store i32 %65, i32* %67, align 8
  %68 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %69 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %70 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %69, i32 0, i32 4
  %71 = load i64*, i64** %70, align 8
  %72 = getelementptr inbounds i64, i64* %71, i64 0
  %73 = load i64, i64* %72, align 8
  %74 = call i8* @slice_to(%struct.SN_env* %68, i64 %73)
  %75 = ptrtoint i8* %74 to i64
  %76 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %77 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %76, i32 0, i32 4
  %78 = load i64*, i64** %77, align 8
  %79 = getelementptr inbounds i64, i64* %78, i64 0
  store i64 %75, i64* %79, align 8
  %80 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %81 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %80, i32 0, i32 4
  %82 = load i64*, i64** %81, align 8
  %83 = getelementptr inbounds i64, i64* %82, i64 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %62
  store i32 -1, i32* %2, align 4
  br label %357

87:                                               ; preds = %62
  %88 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %89 = load i32, i32* @s_99, align 4
  %90 = call i32 @slice_from_s(%struct.SN_env* %88, i32 4, i32 %89)
  store i32 %90, i32* %6, align 4
  %91 = load i32, i32* %6, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %87
  %94 = load i32, i32* %6, align 4
  store i32 %94, i32* %2, align 4
  br label %357

95:                                               ; preds = %87
  %96 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %97 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  store i32 %98, i32* %8, align 4
  %99 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %100 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %101 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %104 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %107 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %106, i32 0, i32 4
  %108 = load i64*, i64** %107, align 8
  %109 = getelementptr inbounds i64, i64* %108, i64 0
  %110 = load i64, i64* %109, align 8
  %111 = call i32 @insert_v(%struct.SN_env* %99, i32 %102, i32 %105, i64 %110)
  store i32 %111, i32* %7, align 4
  %112 = load i32, i32* %8, align 4
  %113 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %114 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %113, i32 0, i32 1
  store i32 %112, i32* %114, align 4
  %115 = load i32, i32* %7, align 4
  %116 = icmp slt i32 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %95
  %118 = load i32, i32* %7, align 4
  store i32 %118, i32* %2, align 4
  br label %357

119:                                              ; preds = %95
  br label %356

120:                                              ; preds = %61
  %121 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %122 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* %5, align 4
  %125 = sub nsw i32 %123, %124
  %126 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %127 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %126, i32 0, i32 1
  store i32 %125, i32* %127, align 4
  %128 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %129 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %132 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = sub nsw i32 %130, %133
  store i32 %134, i32* %9, align 4
  %135 = load i32, i32* %9, align 4
  %136 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %137 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %140 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %139, i32 0, i32 0
  store i32 %138, i32* %140, align 8
  %141 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %142 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = sub nsw i32 %143, 5
  %145 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %146 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %145, i32 0, i32 5
  %147 = load i32, i32* %146, align 8
  %148 = icmp sle i32 %144, %147
  br i1 %148, label %173, label %149

149:                                              ; preds = %120
  %150 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %151 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %150, i32 0, i32 6
  %152 = load i32*, i32** %151, align 8
  %153 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %154 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = sub nsw i32 %155, 1
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32, i32* %152, i64 %157
  %159 = load i32, i32* %158, align 4
  %160 = icmp ne i32 %159, 134
  br i1 %160, label %161, label %174

161:                                              ; preds = %149
  %162 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %163 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %162, i32 0, i32 6
  %164 = load i32*, i32** %163, align 8
  %165 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %166 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = sub nsw i32 %167, 1
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i32, i32* %164, i64 %169
  %171 = load i32, i32* %170, align 4
  %172 = icmp ne i32 %171, 135
  br i1 %172, label %173, label %174

173:                                              ; preds = %161, %120
  br label %186

174:                                              ; preds = %161, %149
  %175 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %176 = load i32, i32* @a_59, align 4
  %177 = call i32 @find_among_b(%struct.SN_env* %175, i32 %176, i32 2)
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %180, label %179

179:                                              ; preds = %174
  br label %186

180:                                              ; preds = %174
  %181 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %182 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %185 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %184, i32 0, i32 2
  store i32 %183, i32* %185, align 8
  store i32 0, i32* %2, align 4
  br label %357

186:                                              ; preds = %179, %173
  %187 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %188 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %187, i32 0, i32 3
  %189 = load i32, i32* %188, align 4
  %190 = load i32, i32* %9, align 4
  %191 = sub nsw i32 %189, %190
  %192 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %193 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %192, i32 0, i32 1
  store i32 %191, i32* %193, align 4
  %194 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %195 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %194, i32 0, i32 3
  %196 = load i32, i32* %195, align 4
  %197 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %198 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 4
  %200 = sub nsw i32 %196, %199
  store i32 %200, i32* %10, align 4
  %201 = load i32, i32* %10, align 4
  %202 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %203 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 4
  %205 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %206 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %205, i32 0, i32 0
  store i32 %204, i32* %206, align 8
  %207 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %208 = load i32, i32* @a_60, align 4
  %209 = call i32 @find_among_b(%struct.SN_env* %207, i32 %208, i32 10)
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %212, label %211

211:                                              ; preds = %186
  br label %270

212:                                              ; preds = %186
  %213 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %214 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 4
  %216 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %217 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %216, i32 0, i32 2
  store i32 %215, i32* %217, align 8
  %218 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %219 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %220 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %219, i32 0, i32 4
  %221 = load i64*, i64** %220, align 8
  %222 = getelementptr inbounds i64, i64* %221, i64 0
  %223 = load i64, i64* %222, align 8
  %224 = call i8* @slice_to(%struct.SN_env* %218, i64 %223)
  %225 = ptrtoint i8* %224 to i64
  %226 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %227 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %226, i32 0, i32 4
  %228 = load i64*, i64** %227, align 8
  %229 = getelementptr inbounds i64, i64* %228, i64 0
  store i64 %225, i64* %229, align 8
  %230 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %231 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %230, i32 0, i32 4
  %232 = load i64*, i64** %231, align 8
  %233 = getelementptr inbounds i64, i64* %232, i64 0
  %234 = load i64, i64* %233, align 8
  %235 = icmp eq i64 %234, 0
  br i1 %235, label %236, label %237

236:                                              ; preds = %212
  store i32 -1, i32* %2, align 4
  br label %357

237:                                              ; preds = %212
  %238 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %239 = load i32, i32* @s_100, align 4
  %240 = call i32 @slice_from_s(%struct.SN_env* %238, i32 4, i32 %239)
  store i32 %240, i32* %11, align 4
  %241 = load i32, i32* %11, align 4
  %242 = icmp slt i32 %241, 0
  br i1 %242, label %243, label %245

243:                                              ; preds = %237
  %244 = load i32, i32* %11, align 4
  store i32 %244, i32* %2, align 4
  br label %357

245:                                              ; preds = %237
  %246 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %247 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %246, i32 0, i32 1
  %248 = load i32, i32* %247, align 4
  store i32 %248, i32* %13, align 4
  %249 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %250 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %251 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %250, i32 0, i32 1
  %252 = load i32, i32* %251, align 4
  %253 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %254 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %253, i32 0, i32 1
  %255 = load i32, i32* %254, align 4
  %256 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %257 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %256, i32 0, i32 4
  %258 = load i64*, i64** %257, align 8
  %259 = getelementptr inbounds i64, i64* %258, i64 0
  %260 = load i64, i64* %259, align 8
  %261 = call i32 @insert_v(%struct.SN_env* %249, i32 %252, i32 %255, i64 %260)
  store i32 %261, i32* %12, align 4
  %262 = load i32, i32* %13, align 4
  %263 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %264 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %263, i32 0, i32 1
  store i32 %262, i32* %264, align 4
  %265 = load i32, i32* %12, align 4
  %266 = icmp slt i32 %265, 0
  br i1 %266, label %267, label %269

267:                                              ; preds = %245
  %268 = load i32, i32* %12, align 4
  store i32 %268, i32* %2, align 4
  br label %357

269:                                              ; preds = %245
  br label %355

270:                                              ; preds = %211
  %271 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %272 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %271, i32 0, i32 3
  %273 = load i32, i32* %272, align 4
  %274 = load i32, i32* %10, align 4
  %275 = sub nsw i32 %273, %274
  %276 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %277 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %276, i32 0, i32 1
  store i32 %275, i32* %277, align 4
  %278 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %279 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %278, i32 0, i32 1
  %280 = load i32, i32* %279, align 4
  %281 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %282 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %281, i32 0, i32 0
  store i32 %280, i32* %282, align 8
  %283 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %284 = load i32, i32* @a_61, align 4
  %285 = call i32 @find_among_b(%struct.SN_env* %283, i32 %284, i32 44)
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %288, label %287

287:                                              ; preds = %270
  store i32 0, i32* %2, align 4
  br label %357

288:                                              ; preds = %270
  %289 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %290 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %289, i32 0, i32 1
  %291 = load i32, i32* %290, align 4
  %292 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %293 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %292, i32 0, i32 2
  store i32 %291, i32* %293, align 8
  %294 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %295 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %294, i32 0, i32 1
  %296 = load i32, i32* %295, align 4
  %297 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %298 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %297, i32 0, i32 5
  %299 = load i32, i32* %298, align 8
  %300 = icmp sgt i32 %296, %299
  br i1 %300, label %301, label %302

301:                                              ; preds = %288
  store i32 0, i32* %2, align 4
  br label %357

302:                                              ; preds = %288
  %303 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %304 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %305 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %304, i32 0, i32 4
  %306 = load i64*, i64** %305, align 8
  %307 = getelementptr inbounds i64, i64* %306, i64 0
  %308 = load i64, i64* %307, align 8
  %309 = call i8* @slice_to(%struct.SN_env* %303, i64 %308)
  %310 = ptrtoint i8* %309 to i64
  %311 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %312 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %311, i32 0, i32 4
  %313 = load i64*, i64** %312, align 8
  %314 = getelementptr inbounds i64, i64* %313, i64 0
  store i64 %310, i64* %314, align 8
  %315 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %316 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %315, i32 0, i32 4
  %317 = load i64*, i64** %316, align 8
  %318 = getelementptr inbounds i64, i64* %317, i64 0
  %319 = load i64, i64* %318, align 8
  %320 = icmp eq i64 %319, 0
  br i1 %320, label %321, label %322

321:                                              ; preds = %302
  store i32 -1, i32* %2, align 4
  br label %357

322:                                              ; preds = %302
  %323 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %324 = load i32, i32* @s_101, align 4
  %325 = call i32 @slice_from_s(%struct.SN_env* %323, i32 4, i32 %324)
  store i32 %325, i32* %14, align 4
  %326 = load i32, i32* %14, align 4
  %327 = icmp slt i32 %326, 0
  br i1 %327, label %328, label %330

328:                                              ; preds = %322
  %329 = load i32, i32* %14, align 4
  store i32 %329, i32* %2, align 4
  br label %357

330:                                              ; preds = %322
  %331 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %332 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %331, i32 0, i32 1
  %333 = load i32, i32* %332, align 4
  store i32 %333, i32* %16, align 4
  %334 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %335 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %336 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %335, i32 0, i32 1
  %337 = load i32, i32* %336, align 4
  %338 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %339 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %338, i32 0, i32 1
  %340 = load i32, i32* %339, align 4
  %341 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %342 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %341, i32 0, i32 4
  %343 = load i64*, i64** %342, align 8
  %344 = getelementptr inbounds i64, i64* %343, i64 0
  %345 = load i64, i64* %344, align 8
  %346 = call i32 @insert_v(%struct.SN_env* %334, i32 %337, i32 %340, i64 %345)
  store i32 %346, i32* %15, align 4
  %347 = load i32, i32* %16, align 4
  %348 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %349 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %348, i32 0, i32 1
  store i32 %347, i32* %349, align 4
  %350 = load i32, i32* %15, align 4
  %351 = icmp slt i32 %350, 0
  br i1 %351, label %352, label %354

352:                                              ; preds = %330
  %353 = load i32, i32* %15, align 4
  store i32 %353, i32* %2, align 4
  br label %357

354:                                              ; preds = %330
  br label %355

355:                                              ; preds = %354, %269
  br label %356

356:                                              ; preds = %355, %119
  store i32 1, i32* %2, align 4
  br label %357

357:                                              ; preds = %356, %352, %328, %321, %301, %287, %267, %243, %236, %180, %117, %93, %86, %37, %26
  %358 = load i32, i32* %2, align 4
  ret i32 %358
}

declare dso_local i32 @find_among_b(%struct.SN_env*, i32, i32) #1

declare dso_local i32 @slice_del(%struct.SN_env*) #1

declare dso_local i32 @eq_s_b(%struct.SN_env*, i32, i32) #1

declare dso_local i8* @slice_to(%struct.SN_env*, i64) #1

declare dso_local i32 @slice_from_s(%struct.SN_env*, i32, i32) #1

declare dso_local i32 @insert_v(%struct.SN_env*, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
