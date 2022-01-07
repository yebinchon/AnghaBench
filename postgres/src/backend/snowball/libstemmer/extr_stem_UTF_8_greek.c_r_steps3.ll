; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_stem_UTF_8_greek.c_r_steps3.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_stem_UTF_8_greek.c_r_steps3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SN_env = type { i32, i32, i32, i32, i32, i32*, i64*, i64* }

@a_9 = common dso_local global i32 0, align 4
@s_38 = common dso_local global i32 0, align 4
@s_39 = common dso_local global i32 0, align 4
@a_7 = common dso_local global i32 0, align 4
@s_40 = common dso_local global i32 0, align 4
@a_8 = common dso_local global i32 0, align 4
@s_41 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.SN_env*)* @r_steps3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r_steps3(%struct.SN_env* %0) #0 {
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
  %14 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %17 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 8
  %18 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %19 = load i32, i32* @a_9, align 4
  %20 = call i32 @find_among_b(%struct.SN_env* %18, i32 %19, i32 7)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %280

23:                                               ; preds = %1
  %24 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %25 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %28 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 8
  %29 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %30 = call i32 @slice_del(%struct.SN_env* %29)
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %4, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %23
  %34 = load i32, i32* %4, align 4
  store i32 %34, i32* %2, align 4
  br label %280

35:                                               ; preds = %23
  %36 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %37 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %36, i32 0, i32 7
  %38 = load i64*, i64** %37, align 8
  %39 = getelementptr inbounds i64, i64* %38, i64 0
  store i64 0, i64* %39, align 8
  %40 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %41 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %44 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = sub nsw i32 %42, %45
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* %5, align 4
  %48 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %49 = load i32, i32* @s_38, align 4
  %50 = call i32 @eq_s_b(%struct.SN_env* %48, i32 6, i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %35
  br label %71

53:                                               ; preds = %35
  %54 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %55 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %58 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 8
  %60 = icmp sgt i32 %56, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %53
  br label %71

62:                                               ; preds = %53
  %63 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %64 = load i32, i32* @s_39, align 4
  %65 = call i32 @slice_from_s(%struct.SN_env* %63, i32 4, i32 %64)
  store i32 %65, i32* %6, align 4
  %66 = load i32, i32* %6, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %62
  %69 = load i32, i32* %6, align 4
  store i32 %69, i32* %2, align 4
  br label %280

70:                                               ; preds = %62
  br label %279

71:                                               ; preds = %61, %52
  %72 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %73 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %5, align 4
  %76 = sub nsw i32 %74, %75
  %77 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %78 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %77, i32 0, i32 1
  store i32 %76, i32* %78, align 4
  %79 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %80 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %83 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 8
  %84 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %85 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = sub nsw i32 %86, 3
  %88 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %89 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %88, i32 0, i32 4
  %90 = load i32, i32* %89, align 8
  %91 = icmp sle i32 %87, %90
  br i1 %91, label %120, label %92

92:                                               ; preds = %71
  %93 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %94 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %93, i32 0, i32 5
  %95 = load i32*, i32** %94, align 8
  %96 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %97 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = sub nsw i32 %98, 1
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %95, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = ashr i32 %102, 5
  %104 = icmp ne i32 %103, 5
  br i1 %104, label %120, label %105

105:                                              ; preds = %92
  %106 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %107 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %106, i32 0, i32 5
  %108 = load i32*, i32** %107, align 8
  %109 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %110 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = sub nsw i32 %111, 1
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %108, i64 %113
  %115 = load i32, i32* %114, align 4
  %116 = and i32 %115, 31
  %117 = ashr i32 -2145255424, %116
  %118 = and i32 %117, 1
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %121, label %120

120:                                              ; preds = %105, %92, %71
  br label %194

121:                                              ; preds = %105
  %122 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %123 = load i32, i32* @a_7, align 4
  %124 = call i32 @find_among_b(%struct.SN_env* %122, i32 %123, i32 19)
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %127, label %126

126:                                              ; preds = %121
  br label %194

127:                                              ; preds = %121
  %128 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %129 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %132 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %131, i32 0, i32 2
  store i32 %130, i32* %132, align 8
  %133 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %134 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %137 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %136, i32 0, i32 4
  %138 = load i32, i32* %137, align 8
  %139 = icmp sgt i32 %135, %138
  br i1 %139, label %140, label %141

140:                                              ; preds = %127
  br label %194

141:                                              ; preds = %127
  %142 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %143 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %144 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %143, i32 0, i32 6
  %145 = load i64*, i64** %144, align 8
  %146 = getelementptr inbounds i64, i64* %145, i64 0
  %147 = load i64, i64* %146, align 8
  %148 = call i8* @slice_to(%struct.SN_env* %142, i64 %147)
  %149 = ptrtoint i8* %148 to i64
  %150 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %151 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %150, i32 0, i32 6
  %152 = load i64*, i64** %151, align 8
  %153 = getelementptr inbounds i64, i64* %152, i64 0
  store i64 %149, i64* %153, align 8
  %154 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %155 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %154, i32 0, i32 6
  %156 = load i64*, i64** %155, align 8
  %157 = getelementptr inbounds i64, i64* %156, i64 0
  %158 = load i64, i64* %157, align 8
  %159 = icmp eq i64 %158, 0
  br i1 %159, label %160, label %161

160:                                              ; preds = %141
  store i32 -1, i32* %2, align 4
  br label %280

161:                                              ; preds = %141
  %162 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %163 = load i32, i32* @s_40, align 4
  %164 = call i32 @slice_from_s(%struct.SN_env* %162, i32 2, i32 %163)
  store i32 %164, i32* %7, align 4
  %165 = load i32, i32* %7, align 4
  %166 = icmp slt i32 %165, 0
  br i1 %166, label %167, label %169

167:                                              ; preds = %161
  %168 = load i32, i32* %7, align 4
  store i32 %168, i32* %2, align 4
  br label %280

169:                                              ; preds = %161
  %170 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %171 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  store i32 %172, i32* %9, align 4
  %173 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %174 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %175 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %178 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %181 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %180, i32 0, i32 6
  %182 = load i64*, i64** %181, align 8
  %183 = getelementptr inbounds i64, i64* %182, i64 0
  %184 = load i64, i64* %183, align 8
  %185 = call i32 @insert_v(%struct.SN_env* %173, i32 %176, i32 %179, i64 %184)
  store i32 %185, i32* %8, align 4
  %186 = load i32, i32* %9, align 4
  %187 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %188 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %187, i32 0, i32 1
  store i32 %186, i32* %188, align 4
  %189 = load i32, i32* %8, align 4
  %190 = icmp slt i32 %189, 0
  br i1 %190, label %191, label %193

191:                                              ; preds = %169
  %192 = load i32, i32* %8, align 4
  store i32 %192, i32* %2, align 4
  br label %280

193:                                              ; preds = %169
  br label %279

194:                                              ; preds = %140, %126, %120
  %195 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %196 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %195, i32 0, i32 3
  %197 = load i32, i32* %196, align 4
  %198 = load i32, i32* %5, align 4
  %199 = sub nsw i32 %197, %198
  %200 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %201 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %200, i32 0, i32 1
  store i32 %199, i32* %201, align 4
  %202 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %203 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 4
  %205 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %206 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %205, i32 0, i32 0
  store i32 %204, i32* %206, align 8
  %207 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %208 = load i32, i32* @a_8, align 4
  %209 = call i32 @find_among_b(%struct.SN_env* %207, i32 %208, i32 13)
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %212, label %211

211:                                              ; preds = %194
  store i32 0, i32* %2, align 4
  br label %280

212:                                              ; preds = %194
  %213 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %214 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 4
  %216 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %217 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %216, i32 0, i32 2
  store i32 %215, i32* %217, align 8
  %218 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %219 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 4
  %221 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %222 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %221, i32 0, i32 4
  %223 = load i32, i32* %222, align 8
  %224 = icmp sgt i32 %220, %223
  br i1 %224, label %225, label %226

225:                                              ; preds = %212
  store i32 0, i32* %2, align 4
  br label %280

226:                                              ; preds = %212
  %227 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %228 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %229 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %228, i32 0, i32 6
  %230 = load i64*, i64** %229, align 8
  %231 = getelementptr inbounds i64, i64* %230, i64 0
  %232 = load i64, i64* %231, align 8
  %233 = call i8* @slice_to(%struct.SN_env* %227, i64 %232)
  %234 = ptrtoint i8* %233 to i64
  %235 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %236 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %235, i32 0, i32 6
  %237 = load i64*, i64** %236, align 8
  %238 = getelementptr inbounds i64, i64* %237, i64 0
  store i64 %234, i64* %238, align 8
  %239 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %240 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %239, i32 0, i32 6
  %241 = load i64*, i64** %240, align 8
  %242 = getelementptr inbounds i64, i64* %241, i64 0
  %243 = load i64, i64* %242, align 8
  %244 = icmp eq i64 %243, 0
  br i1 %244, label %245, label %246

245:                                              ; preds = %226
  store i32 -1, i32* %2, align 4
  br label %280

246:                                              ; preds = %226
  %247 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %248 = load i32, i32* @s_41, align 4
  %249 = call i32 @slice_from_s(%struct.SN_env* %247, i32 4, i32 %248)
  store i32 %249, i32* %10, align 4
  %250 = load i32, i32* %10, align 4
  %251 = icmp slt i32 %250, 0
  br i1 %251, label %252, label %254

252:                                              ; preds = %246
  %253 = load i32, i32* %10, align 4
  store i32 %253, i32* %2, align 4
  br label %280

254:                                              ; preds = %246
  %255 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %256 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %255, i32 0, i32 1
  %257 = load i32, i32* %256, align 4
  store i32 %257, i32* %12, align 4
  %258 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %259 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %260 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %259, i32 0, i32 1
  %261 = load i32, i32* %260, align 4
  %262 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %263 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %262, i32 0, i32 1
  %264 = load i32, i32* %263, align 4
  %265 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %266 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %265, i32 0, i32 6
  %267 = load i64*, i64** %266, align 8
  %268 = getelementptr inbounds i64, i64* %267, i64 0
  %269 = load i64, i64* %268, align 8
  %270 = call i32 @insert_v(%struct.SN_env* %258, i32 %261, i32 %264, i64 %269)
  store i32 %270, i32* %11, align 4
  %271 = load i32, i32* %12, align 4
  %272 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %273 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %272, i32 0, i32 1
  store i32 %271, i32* %273, align 4
  %274 = load i32, i32* %11, align 4
  %275 = icmp slt i32 %274, 0
  br i1 %275, label %276, label %278

276:                                              ; preds = %254
  %277 = load i32, i32* %11, align 4
  store i32 %277, i32* %2, align 4
  br label %280

278:                                              ; preds = %254
  br label %279

279:                                              ; preds = %278, %193, %70
  store i32 1, i32* %2, align 4
  br label %280

280:                                              ; preds = %279, %276, %252, %245, %225, %211, %191, %167, %160, %68, %33, %22
  %281 = load i32, i32* %2, align 4
  ret i32 %281
}

declare dso_local i32 @find_among_b(%struct.SN_env*, i32, i32) #1

declare dso_local i32 @slice_del(%struct.SN_env*) #1

declare dso_local i32 @eq_s_b(%struct.SN_env*, i32, i32) #1

declare dso_local i32 @slice_from_s(%struct.SN_env*, i32, i32) #1

declare dso_local i8* @slice_to(%struct.SN_env*, i64) #1

declare dso_local i32 @insert_v(%struct.SN_env*, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
