; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_stem_UTF_8_greek.c_r_step5g.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_stem_UTF_8_greek.c_r_step5g.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SN_env = type { i32, i32, i32, i32, i64*, i32, i32*, i64* }

@a_52 = common dso_local global i32 0, align 4
@a_55 = common dso_local global i32 0, align 4
@a_53 = common dso_local global i32 0, align 4
@s_94 = common dso_local global i32 0, align 4
@a_54 = common dso_local global i32 0, align 4
@s_95 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.SN_env*)* @r_step5g to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r_step5g(%struct.SN_env* %0) #0 {
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
  store %struct.SN_env* %0, %struct.SN_env** %3, align 8
  %14 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %15 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %18 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = sub nsw i32 %16, %19
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %23 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %26 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 8
  %27 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %28 = load i32, i32* @a_52, align 4
  %29 = call i32 @find_among_b(%struct.SN_env* %27, i32 %28, i32 3)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %1
  br label %49

32:                                               ; preds = %1
  %33 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %34 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %37 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %36, i32 0, i32 3
  store i32 %35, i32* %37, align 4
  %38 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %39 = call i32 @slice_del(%struct.SN_env* %38)
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %5, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %32
  %43 = load i32, i32* %5, align 4
  store i32 %43, i32* %2, align 4
  br label %268

44:                                               ; preds = %32
  %45 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %46 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %45, i32 0, i32 7
  %47 = load i64*, i64** %46, align 8
  %48 = getelementptr inbounds i64, i64* %47, i64 0
  store i64 0, i64* %48, align 8
  br label %49

49:                                               ; preds = %44, %31
  %50 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %51 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* %4, align 4
  %54 = sub nsw i32 %52, %53
  %55 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %56 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  %57 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %58 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %61 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %60, i32 0, i32 2
  store i32 %59, i32* %61, align 8
  %62 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %63 = load i32, i32* @a_55, align 4
  %64 = call i32 @find_among_b(%struct.SN_env* %62, i32 %63, i32 3)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %49
  store i32 0, i32* %2, align 4
  br label %268

67:                                               ; preds = %49
  %68 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %69 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %72 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %71, i32 0, i32 3
  store i32 %70, i32* %72, align 4
  %73 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %74 = call i32 @slice_del(%struct.SN_env* %73)
  store i32 %74, i32* %6, align 4
  %75 = load i32, i32* %6, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %67
  %78 = load i32, i32* %6, align 4
  store i32 %78, i32* %2, align 4
  br label %268

79:                                               ; preds = %67
  %80 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %81 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %80, i32 0, i32 7
  %82 = load i64*, i64** %81, align 8
  %83 = getelementptr inbounds i64, i64* %82, i64 0
  store i64 0, i64* %83, align 8
  %84 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %85 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %88 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = sub nsw i32 %86, %89
  store i32 %90, i32* %7, align 4
  %91 = load i32, i32* %7, align 4
  %92 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %93 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %96 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %95, i32 0, i32 2
  store i32 %94, i32* %96, align 8
  %97 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %98 = load i32, i32* @a_53, align 4
  %99 = call i32 @find_among_b(%struct.SN_env* %97, i32 %98, i32 6)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %102, label %101

101:                                              ; preds = %79
  br label %160

102:                                              ; preds = %79
  %103 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %104 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %107 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %106, i32 0, i32 3
  store i32 %105, i32* %107, align 4
  %108 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %109 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %110 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %109, i32 0, i32 4
  %111 = load i64*, i64** %110, align 8
  %112 = getelementptr inbounds i64, i64* %111, i64 0
  %113 = load i64, i64* %112, align 8
  %114 = call i8* @slice_to(%struct.SN_env* %108, i64 %113)
  %115 = ptrtoint i8* %114 to i64
  %116 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %117 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %116, i32 0, i32 4
  %118 = load i64*, i64** %117, align 8
  %119 = getelementptr inbounds i64, i64* %118, i64 0
  store i64 %115, i64* %119, align 8
  %120 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %121 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %120, i32 0, i32 4
  %122 = load i64*, i64** %121, align 8
  %123 = getelementptr inbounds i64, i64* %122, i64 0
  %124 = load i64, i64* %123, align 8
  %125 = icmp eq i64 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %102
  store i32 -1, i32* %2, align 4
  br label %268

127:                                              ; preds = %102
  %128 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %129 = load i32, i32* @s_94, align 4
  %130 = call i32 @slice_from_s(%struct.SN_env* %128, i32 4, i32 %129)
  store i32 %130, i32* %8, align 4
  %131 = load i32, i32* %8, align 4
  %132 = icmp slt i32 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %127
  %134 = load i32, i32* %8, align 4
  store i32 %134, i32* %2, align 4
  br label %268

135:                                              ; preds = %127
  %136 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %137 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  store i32 %138, i32* %10, align 4
  %139 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %140 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %141 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %144 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %147 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %146, i32 0, i32 4
  %148 = load i64*, i64** %147, align 8
  %149 = getelementptr inbounds i64, i64* %148, i64 0
  %150 = load i64, i64* %149, align 8
  %151 = call i32 @insert_v(%struct.SN_env* %139, i32 %142, i32 %145, i64 %150)
  store i32 %151, i32* %9, align 4
  %152 = load i32, i32* %10, align 4
  %153 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %154 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %153, i32 0, i32 1
  store i32 %152, i32* %154, align 4
  %155 = load i32, i32* %9, align 4
  %156 = icmp slt i32 %155, 0
  br i1 %156, label %157, label %159

157:                                              ; preds = %135
  %158 = load i32, i32* %9, align 4
  store i32 %158, i32* %2, align 4
  br label %268

159:                                              ; preds = %135
  br label %267

160:                                              ; preds = %101
  %161 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %162 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = load i32, i32* %7, align 4
  %165 = sub nsw i32 %163, %164
  %166 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %167 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %166, i32 0, i32 1
  store i32 %165, i32* %167, align 4
  %168 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %169 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %172 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %171, i32 0, i32 2
  store i32 %170, i32* %172, align 8
  %173 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %174 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = sub nsw i32 %175, 1
  %177 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %178 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %177, i32 0, i32 5
  %179 = load i32, i32* %178, align 8
  %180 = icmp sle i32 %176, %179
  br i1 %180, label %193, label %181

181:                                              ; preds = %160
  %182 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %183 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %182, i32 0, i32 6
  %184 = load i32*, i32** %183, align 8
  %185 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %186 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  %188 = sub nsw i32 %187, 1
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i32, i32* %184, i64 %189
  %191 = load i32, i32* %190, align 4
  %192 = icmp ne i32 %191, 184
  br i1 %192, label %193, label %194

193:                                              ; preds = %181, %160
  store i32 0, i32* %2, align 4
  br label %268

194:                                              ; preds = %181
  %195 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %196 = load i32, i32* @a_54, align 4
  %197 = call i32 @find_among_b(%struct.SN_env* %195, i32 %196, i32 5)
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %200, label %199

199:                                              ; preds = %194
  store i32 0, i32* %2, align 4
  br label %268

200:                                              ; preds = %194
  %201 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %202 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 4
  %204 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %205 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %204, i32 0, i32 3
  store i32 %203, i32* %205, align 4
  %206 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %207 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 4
  %209 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %210 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %209, i32 0, i32 5
  %211 = load i32, i32* %210, align 8
  %212 = icmp sgt i32 %208, %211
  br i1 %212, label %213, label %214

213:                                              ; preds = %200
  store i32 0, i32* %2, align 4
  br label %268

214:                                              ; preds = %200
  %215 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %216 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %217 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %216, i32 0, i32 4
  %218 = load i64*, i64** %217, align 8
  %219 = getelementptr inbounds i64, i64* %218, i64 0
  %220 = load i64, i64* %219, align 8
  %221 = call i8* @slice_to(%struct.SN_env* %215, i64 %220)
  %222 = ptrtoint i8* %221 to i64
  %223 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %224 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %223, i32 0, i32 4
  %225 = load i64*, i64** %224, align 8
  %226 = getelementptr inbounds i64, i64* %225, i64 0
  store i64 %222, i64* %226, align 8
  %227 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %228 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %227, i32 0, i32 4
  %229 = load i64*, i64** %228, align 8
  %230 = getelementptr inbounds i64, i64* %229, i64 0
  %231 = load i64, i64* %230, align 8
  %232 = icmp eq i64 %231, 0
  br i1 %232, label %233, label %234

233:                                              ; preds = %214
  store i32 -1, i32* %2, align 4
  br label %268

234:                                              ; preds = %214
  %235 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %236 = load i32, i32* @s_95, align 4
  %237 = call i32 @slice_from_s(%struct.SN_env* %235, i32 4, i32 %236)
  store i32 %237, i32* %11, align 4
  %238 = load i32, i32* %11, align 4
  %239 = icmp slt i32 %238, 0
  br i1 %239, label %240, label %242

240:                                              ; preds = %234
  %241 = load i32, i32* %11, align 4
  store i32 %241, i32* %2, align 4
  br label %268

242:                                              ; preds = %234
  %243 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %244 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %243, i32 0, i32 1
  %245 = load i32, i32* %244, align 4
  store i32 %245, i32* %13, align 4
  %246 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %247 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %248 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %247, i32 0, i32 1
  %249 = load i32, i32* %248, align 4
  %250 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %251 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %250, i32 0, i32 1
  %252 = load i32, i32* %251, align 4
  %253 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %254 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %253, i32 0, i32 4
  %255 = load i64*, i64** %254, align 8
  %256 = getelementptr inbounds i64, i64* %255, i64 0
  %257 = load i64, i64* %256, align 8
  %258 = call i32 @insert_v(%struct.SN_env* %246, i32 %249, i32 %252, i64 %257)
  store i32 %258, i32* %12, align 4
  %259 = load i32, i32* %13, align 4
  %260 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %261 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %260, i32 0, i32 1
  store i32 %259, i32* %261, align 4
  %262 = load i32, i32* %12, align 4
  %263 = icmp slt i32 %262, 0
  br i1 %263, label %264, label %266

264:                                              ; preds = %242
  %265 = load i32, i32* %12, align 4
  store i32 %265, i32* %2, align 4
  br label %268

266:                                              ; preds = %242
  br label %267

267:                                              ; preds = %266, %159
  store i32 1, i32* %2, align 4
  br label %268

268:                                              ; preds = %267, %264, %240, %233, %213, %199, %193, %157, %133, %126, %77, %66, %42
  %269 = load i32, i32* %2, align 4
  ret i32 %269
}

declare dso_local i32 @find_among_b(%struct.SN_env*, i32, i32) #1

declare dso_local i32 @slice_del(%struct.SN_env*) #1

declare dso_local i8* @slice_to(%struct.SN_env*, i64) #1

declare dso_local i32 @slice_from_s(%struct.SN_env*, i32, i32) #1

declare dso_local i32 @insert_v(%struct.SN_env*, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
