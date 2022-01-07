; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_stem_ISO_8859_1_finnish.c_r_possessive.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_stem_ISO_8859_1_finnish.c_r_possessive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SN_env = type { i64, i64*, i32, i64, i64, i32, i8* }

@a_4 = common dso_local global i32 0, align 4
@s_0 = common dso_local global i32 0, align 4
@s_1 = common dso_local global i32 0, align 4
@a_1 = common dso_local global i32 0, align 4
@a_2 = common dso_local global i32 0, align 4
@a_3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.SN_env*)* @r_possessive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r_possessive(%struct.SN_env* %0) #0 {
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
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %18 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %17, i32 0, i32 1
  %19 = load i64*, i64** %18, align 8
  %20 = getelementptr inbounds i64, i64* %19, i64 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp slt i64 %16, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %265

24:                                               ; preds = %1
  %25 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %26 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %5, align 4
  %28 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %29 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %28, i32 0, i32 1
  %30 = load i64*, i64** %29, align 8
  %31 = getelementptr inbounds i64, i64* %30, i64 0
  %32 = load i64, i64* %31, align 8
  %33 = trunc i64 %32 to i32
  %34 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %35 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 8
  %36 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %37 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %40 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %39, i32 0, i32 3
  store i64 %38, i64* %40, align 8
  %41 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %42 = load i32, i32* @a_4, align 4
  %43 = call i32 @find_among_b(%struct.SN_env* %41, i32 %42, i32 9)
  store i32 %43, i32* %4, align 4
  %44 = load i32, i32* %4, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %24
  %47 = load i32, i32* %5, align 4
  %48 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %49 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 8
  store i32 0, i32* %2, align 4
  br label %265

50:                                               ; preds = %24
  %51 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %52 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %55 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %54, i32 0, i32 4
  store i64 %53, i64* %55, align 8
  %56 = load i32, i32* %5, align 4
  %57 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %58 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %57, i32 0, i32 2
  store i32 %56, i32* %58, align 8
  %59 = load i32, i32* %4, align 4
  switch i32 %59, label %264 [
    i32 1, label %60
    i32 2, label %113
    i32 3, label %145
    i32 4, label %153
    i32 5, label %190
    i32 6, label %227
  ]

60:                                               ; preds = %50
  %61 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %62 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %61, i32 0, i32 5
  %63 = load i32, i32* %62, align 8
  %64 = sext i32 %63 to i64
  %65 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %66 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = sub nsw i64 %64, %67
  %69 = trunc i64 %68 to i32
  store i32 %69, i32* %6, align 4
  %70 = load i32, i32* %6, align 4
  %71 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %72 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %75 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = sext i32 %76 to i64
  %78 = icmp sle i64 %73, %77
  br i1 %78, label %91, label %79

79:                                               ; preds = %60
  %80 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %81 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %80, i32 0, i32 6
  %82 = load i8*, i8** %81, align 8
  %83 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %84 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = sub nsw i64 %85, 1
  %87 = getelementptr inbounds i8, i8* %82, i64 %86
  %88 = load i8, i8* %87, align 1
  %89 = sext i8 %88 to i32
  %90 = icmp ne i32 %89, 107
  br i1 %90, label %91, label %92

91:                                               ; preds = %79, %60
  br label %97

92:                                               ; preds = %79
  %93 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %94 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = add nsw i64 %95, -1
  store i64 %96, i64* %94, align 8
  store i32 0, i32* %2, align 4
  br label %265

97:                                               ; preds = %91
  %98 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %99 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %98, i32 0, i32 5
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* %6, align 4
  %102 = sub nsw i32 %100, %101
  %103 = sext i32 %102 to i64
  %104 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %105 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %104, i32 0, i32 0
  store i64 %103, i64* %105, align 8
  %106 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %107 = call i32 @slice_del(%struct.SN_env* %106)
  store i32 %107, i32* %7, align 4
  %108 = load i32, i32* %7, align 4
  %109 = icmp slt i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %97
  %111 = load i32, i32* %7, align 4
  store i32 %111, i32* %2, align 4
  br label %265

112:                                              ; preds = %97
  br label %264

113:                                              ; preds = %50
  %114 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %115 = call i32 @slice_del(%struct.SN_env* %114)
  store i32 %115, i32* %8, align 4
  %116 = load i32, i32* %8, align 4
  %117 = icmp slt i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %113
  %119 = load i32, i32* %8, align 4
  store i32 %119, i32* %2, align 4
  br label %265

120:                                              ; preds = %113
  %121 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %122 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %125 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %124, i32 0, i32 3
  store i64 %123, i64* %125, align 8
  %126 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %127 = load i32, i32* @s_0, align 4
  %128 = call i32 @eq_s_b(%struct.SN_env* %126, i32 3, i32 %127)
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %131, label %130

130:                                              ; preds = %120
  store i32 0, i32* %2, align 4
  br label %265

131:                                              ; preds = %120
  %132 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %133 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %136 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %135, i32 0, i32 4
  store i64 %134, i64* %136, align 8
  %137 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %138 = load i32, i32* @s_1, align 4
  %139 = call i32 @slice_from_s(%struct.SN_env* %137, i32 3, i32 %138)
  store i32 %139, i32* %9, align 4
  %140 = load i32, i32* %9, align 4
  %141 = icmp slt i32 %140, 0
  br i1 %141, label %142, label %144

142:                                              ; preds = %131
  %143 = load i32, i32* %9, align 4
  store i32 %143, i32* %2, align 4
  br label %265

144:                                              ; preds = %131
  br label %264

145:                                              ; preds = %50
  %146 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %147 = call i32 @slice_del(%struct.SN_env* %146)
  store i32 %147, i32* %10, align 4
  %148 = load i32, i32* %10, align 4
  %149 = icmp slt i32 %148, 0
  br i1 %149, label %150, label %152

150:                                              ; preds = %145
  %151 = load i32, i32* %10, align 4
  store i32 %151, i32* %2, align 4
  br label %265

152:                                              ; preds = %145
  br label %264

153:                                              ; preds = %50
  %154 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %155 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = sub nsw i64 %156, 1
  %158 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %159 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 8
  %161 = sext i32 %160 to i64
  %162 = icmp sle i64 %157, %161
  br i1 %162, label %175, label %163

163:                                              ; preds = %153
  %164 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %165 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %164, i32 0, i32 6
  %166 = load i8*, i8** %165, align 8
  %167 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %168 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = sub nsw i64 %169, 1
  %171 = getelementptr inbounds i8, i8* %166, i64 %170
  %172 = load i8, i8* %171, align 1
  %173 = sext i8 %172 to i32
  %174 = icmp ne i32 %173, 97
  br i1 %174, label %175, label %176

175:                                              ; preds = %163, %153
  store i32 0, i32* %2, align 4
  br label %265

176:                                              ; preds = %163
  %177 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %178 = load i32, i32* @a_1, align 4
  %179 = call i32 @find_among_b(%struct.SN_env* %177, i32 %178, i32 6)
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %182, label %181

181:                                              ; preds = %176
  store i32 0, i32* %2, align 4
  br label %265

182:                                              ; preds = %176
  %183 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %184 = call i32 @slice_del(%struct.SN_env* %183)
  store i32 %184, i32* %11, align 4
  %185 = load i32, i32* %11, align 4
  %186 = icmp slt i32 %185, 0
  br i1 %186, label %187, label %189

187:                                              ; preds = %182
  %188 = load i32, i32* %11, align 4
  store i32 %188, i32* %2, align 4
  br label %265

189:                                              ; preds = %182
  br label %264

190:                                              ; preds = %50
  %191 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %192 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %191, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  %194 = sub nsw i64 %193, 1
  %195 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %196 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %195, i32 0, i32 2
  %197 = load i32, i32* %196, align 8
  %198 = sext i32 %197 to i64
  %199 = icmp sle i64 %194, %198
  br i1 %199, label %212, label %200

200:                                              ; preds = %190
  %201 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %202 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %201, i32 0, i32 6
  %203 = load i8*, i8** %202, align 8
  %204 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %205 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %204, i32 0, i32 0
  %206 = load i64, i64* %205, align 8
  %207 = sub nsw i64 %206, 1
  %208 = getelementptr inbounds i8, i8* %203, i64 %207
  %209 = load i8, i8* %208, align 1
  %210 = sext i8 %209 to i32
  %211 = icmp ne i32 %210, 228
  br i1 %211, label %212, label %213

212:                                              ; preds = %200, %190
  store i32 0, i32* %2, align 4
  br label %265

213:                                              ; preds = %200
  %214 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %215 = load i32, i32* @a_2, align 4
  %216 = call i32 @find_among_b(%struct.SN_env* %214, i32 %215, i32 6)
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %219, label %218

218:                                              ; preds = %213
  store i32 0, i32* %2, align 4
  br label %265

219:                                              ; preds = %213
  %220 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %221 = call i32 @slice_del(%struct.SN_env* %220)
  store i32 %221, i32* %12, align 4
  %222 = load i32, i32* %12, align 4
  %223 = icmp slt i32 %222, 0
  br i1 %223, label %224, label %226

224:                                              ; preds = %219
  %225 = load i32, i32* %12, align 4
  store i32 %225, i32* %2, align 4
  br label %265

226:                                              ; preds = %219
  br label %264

227:                                              ; preds = %50
  %228 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %229 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %228, i32 0, i32 0
  %230 = load i64, i64* %229, align 8
  %231 = sub nsw i64 %230, 2
  %232 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %233 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %232, i32 0, i32 2
  %234 = load i32, i32* %233, align 8
  %235 = sext i32 %234 to i64
  %236 = icmp sle i64 %231, %235
  br i1 %236, label %249, label %237

237:                                              ; preds = %227
  %238 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %239 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %238, i32 0, i32 6
  %240 = load i8*, i8** %239, align 8
  %241 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %242 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %241, i32 0, i32 0
  %243 = load i64, i64* %242, align 8
  %244 = sub nsw i64 %243, 1
  %245 = getelementptr inbounds i8, i8* %240, i64 %244
  %246 = load i8, i8* %245, align 1
  %247 = sext i8 %246 to i32
  %248 = icmp ne i32 %247, 101
  br i1 %248, label %249, label %250

249:                                              ; preds = %237, %227
  store i32 0, i32* %2, align 4
  br label %265

250:                                              ; preds = %237
  %251 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %252 = load i32, i32* @a_3, align 4
  %253 = call i32 @find_among_b(%struct.SN_env* %251, i32 %252, i32 2)
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %256, label %255

255:                                              ; preds = %250
  store i32 0, i32* %2, align 4
  br label %265

256:                                              ; preds = %250
  %257 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %258 = call i32 @slice_del(%struct.SN_env* %257)
  store i32 %258, i32* %13, align 4
  %259 = load i32, i32* %13, align 4
  %260 = icmp slt i32 %259, 0
  br i1 %260, label %261, label %263

261:                                              ; preds = %256
  %262 = load i32, i32* %13, align 4
  store i32 %262, i32* %2, align 4
  br label %265

263:                                              ; preds = %256
  br label %264

264:                                              ; preds = %50, %263, %226, %189, %152, %144, %112
  store i32 1, i32* %2, align 4
  br label %265

265:                                              ; preds = %264, %261, %255, %249, %224, %218, %212, %187, %181, %175, %150, %142, %130, %118, %110, %92, %46, %23
  %266 = load i32, i32* %2, align 4
  ret i32 %266
}

declare dso_local i32 @find_among_b(%struct.SN_env*, i32, i32) #1

declare dso_local i32 @slice_del(%struct.SN_env*) #1

declare dso_local i32 @eq_s_b(%struct.SN_env*, i32, i32) #1

declare dso_local i32 @slice_from_s(%struct.SN_env*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
