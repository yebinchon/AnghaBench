; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/regex/extr_regc_pg_locale.c_pg_ctype_get_cache.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/regex/extr_regc_pg_locale.c_pg_ctype_get_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, %struct.cvec, %struct.TYPE_7__*, i64 (i64)* }
%struct.cvec = type { i32, i32, i32, i32, i32, %struct.TYPE_7__*, %struct.TYPE_7__* }

@pg_ctype_cache_list = common dso_local global %struct.TYPE_7__* null, align 8
@pg_regex_collation = common dso_local global i64 0, align 8
@pg_regex_strategy = common dso_local global i32 0, align 4
@MAX_SIMPLE_CHR = common dso_local global i32 0, align 4
@UCHAR_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cvec* (i64 (i64)*, i32)* @pg_ctype_get_cache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cvec* @pg_ctype_get_cache(i64 (i64)* %0, i32 %1) #0 {
  %3 = alloca %struct.cvec*, align 8
  %4 = alloca i64 (i64)*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_7__*, align 8
  store i64 (i64)* %0, i64 (i64)** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** @pg_ctype_cache_list, align 8
  store %struct.TYPE_7__* %11, %struct.TYPE_7__** %6, align 8
  br label %12

12:                                               ; preds = %31, %2
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %14 = icmp ne %struct.TYPE_7__* %13, null
  br i1 %14, label %15, label %35

15:                                               ; preds = %12
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 3
  %18 = load i64 (i64)*, i64 (i64)** %17, align 8
  %19 = load i64 (i64)*, i64 (i64)** %4, align 8
  %20 = icmp eq i64 (i64)* %18, %19
  br i1 %20, label %21, label %30

21:                                               ; preds = %15
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @pg_regex_collation, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 1
  store %struct.cvec* %29, %struct.cvec** %3, align 8
  br label %316

30:                                               ; preds = %21, %15
  br label %31

31:                                               ; preds = %30
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 2
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  store %struct.TYPE_7__* %34, %struct.TYPE_7__** %6, align 8
  br label %12

35:                                               ; preds = %12
  %36 = call i64 @malloc(i32 64)
  %37 = inttoptr i64 %36 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %37, %struct.TYPE_7__** %6, align 8
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %39 = icmp eq %struct.TYPE_7__* %38, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  store %struct.cvec* null, %struct.cvec** %3, align 8
  br label %316

41:                                               ; preds = %35
  %42 = load i64 (i64)*, i64 (i64)** %4, align 8
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 3
  store i64 (i64)* %42, i64 (i64)** %44, align 8
  %45 = load i64, i64* @pg_regex_collation, align 8
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  store i64 %45, i64* %47, align 8
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.cvec, %struct.cvec* %49, i32 0, i32 0
  store i32 0, i32* %50, align 8
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.cvec, %struct.cvec* %52, i32 0, i32 1
  store i32 128, i32* %53, align 4
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.cvec, %struct.cvec* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = sext i32 %57 to i64
  %59 = mul i64 %58, 64
  %60 = trunc i64 %59 to i32
  %61 = call i64 @malloc(i32 %60)
  %62 = inttoptr i64 %61 to %struct.TYPE_7__*
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.cvec, %struct.cvec* %64, i32 0, i32 6
  store %struct.TYPE_7__* %62, %struct.TYPE_7__** %65, align 8
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.cvec, %struct.cvec* %67, i32 0, i32 2
  store i32 0, i32* %68, align 8
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.cvec, %struct.cvec* %70, i32 0, i32 3
  store i32 64, i32* %71, align 4
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.cvec, %struct.cvec* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = sext i32 %75 to i64
  %77 = mul i64 %76, 64
  %78 = mul i64 %77, 2
  %79 = trunc i64 %78 to i32
  %80 = call i64 @malloc(i32 %79)
  %81 = inttoptr i64 %80 to %struct.TYPE_7__*
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.cvec, %struct.cvec* %83, i32 0, i32 5
  store %struct.TYPE_7__* %81, %struct.TYPE_7__** %84, align 8
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.cvec, %struct.cvec* %86, i32 0, i32 6
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %87, align 8
  %89 = icmp eq %struct.TYPE_7__* %88, null
  br i1 %89, label %96, label %90

90:                                               ; preds = %41
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.cvec, %struct.cvec* %92, i32 0, i32 5
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %93, align 8
  %95 = icmp eq %struct.TYPE_7__* %94, null
  br i1 %95, label %96, label %97

96:                                               ; preds = %90, %41
  br label %289

97:                                               ; preds = %90
  %98 = load i32, i32* %5, align 4
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.cvec, %struct.cvec* %100, i32 0, i32 4
  store i32 %98, i32* %101, align 8
  %102 = load i32, i32* @pg_regex_strategy, align 4
  switch i32 %102, label %118 [
    i32 131, label %103
    i32 129, label %106
    i32 128, label %106
    i32 133, label %109
    i32 132, label %109
    i32 130, label %115
  ]

103:                                              ; preds = %97
  %104 = load i32, i32* @MAX_SIMPLE_CHR, align 4
  %105 = sext i32 %104 to i64
  store i64 %105, i64* %7, align 8
  br label %119

106:                                              ; preds = %97, %97
  %107 = load i32, i32* @MAX_SIMPLE_CHR, align 4
  %108 = sext i32 %107 to i64
  store i64 %108, i64* %7, align 8
  br label %119

109:                                              ; preds = %97, %97
  %110 = load i32, i32* @UCHAR_MAX, align 4
  %111 = sext i32 %110 to i64
  store i64 %111, i64* %7, align 8
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.cvec, %struct.cvec* %113, i32 0, i32 4
  store i32 -1, i32* %114, align 8
  br label %119

115:                                              ; preds = %97
  %116 = load i32, i32* @MAX_SIMPLE_CHR, align 4
  %117 = sext i32 %116 to i64
  store i64 %117, i64* %7, align 8
  br label %119

118:                                              ; preds = %97
  store i64 0, i64* %7, align 8
  br label %119

119:                                              ; preds = %118, %115, %109, %106, %103
  store i32 0, i32* %9, align 4
  store i64 0, i64* %8, align 8
  br label %120

120:                                              ; preds = %148, %119
  %121 = load i64, i64* %8, align 8
  %122 = load i64, i64* %7, align 8
  %123 = icmp sle i64 %121, %122
  br i1 %123, label %124, label %151

124:                                              ; preds = %120
  %125 = load i64 (i64)*, i64 (i64)** %4, align 8
  %126 = load i64, i64* %8, align 8
  %127 = call i64 %125(i64 %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %132

129:                                              ; preds = %124
  %130 = load i32, i32* %9, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %9, align 4
  br label %147

132:                                              ; preds = %124
  %133 = load i32, i32* %9, align 4
  %134 = icmp sgt i32 %133, 0
  br i1 %134, label %135, label %146

135:                                              ; preds = %132
  %136 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %137 = load i64, i64* %8, align 8
  %138 = load i32, i32* %9, align 4
  %139 = sext i32 %138 to i64
  %140 = sub nsw i64 %137, %139
  %141 = load i32, i32* %9, align 4
  %142 = call i32 @store_match(%struct.TYPE_7__* %136, i64 %140, i32 %141)
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %145, label %144

144:                                              ; preds = %135
  br label %289

145:                                              ; preds = %135
  store i32 0, i32* %9, align 4
  br label %146

146:                                              ; preds = %145, %132
  br label %147

147:                                              ; preds = %146, %129
  br label %148

148:                                              ; preds = %147
  %149 = load i64, i64* %8, align 8
  %150 = add nsw i64 %149, 1
  store i64 %150, i64* %8, align 8
  br label %120

151:                                              ; preds = %120
  %152 = load i32, i32* %9, align 4
  %153 = icmp sgt i32 %152, 0
  br i1 %153, label %154, label %165

154:                                              ; preds = %151
  %155 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %156 = load i64, i64* %8, align 8
  %157 = load i32, i32* %9, align 4
  %158 = sext i32 %157 to i64
  %159 = sub nsw i64 %156, %158
  %160 = load i32, i32* %9, align 4
  %161 = call i32 @store_match(%struct.TYPE_7__* %155, i64 %159, i32 %160)
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %164, label %163

163:                                              ; preds = %154
  br label %289

164:                                              ; preds = %154
  br label %165

165:                                              ; preds = %164, %151
  %166 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %167 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.cvec, %struct.cvec* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %171, label %183

171:                                              ; preds = %165
  %172 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %173 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %172, i32 0, i32 1
  %174 = getelementptr inbounds %struct.cvec, %struct.cvec* %173, i32 0, i32 6
  %175 = load %struct.TYPE_7__*, %struct.TYPE_7__** %174, align 8
  %176 = call i32 @free(%struct.TYPE_7__* %175)
  %177 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %178 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %177, i32 0, i32 1
  %179 = getelementptr inbounds %struct.cvec, %struct.cvec* %178, i32 0, i32 6
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %179, align 8
  %180 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %181 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %180, i32 0, i32 1
  %182 = getelementptr inbounds %struct.cvec, %struct.cvec* %181, i32 0, i32 1
  store i32 0, i32* %182, align 4
  br label %223

183:                                              ; preds = %165
  %184 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %185 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %184, i32 0, i32 1
  %186 = getelementptr inbounds %struct.cvec, %struct.cvec* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %189 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %188, i32 0, i32 1
  %190 = getelementptr inbounds %struct.cvec, %struct.cvec* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = icmp slt i32 %187, %191
  br i1 %192, label %193, label %222

193:                                              ; preds = %183
  %194 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %195 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %194, i32 0, i32 1
  %196 = getelementptr inbounds %struct.cvec, %struct.cvec* %195, i32 0, i32 6
  %197 = load %struct.TYPE_7__*, %struct.TYPE_7__** %196, align 8
  %198 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %199 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %198, i32 0, i32 1
  %200 = getelementptr inbounds %struct.cvec, %struct.cvec* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = sext i32 %201 to i64
  %203 = mul i64 %202, 64
  %204 = trunc i64 %203 to i32
  %205 = call i64 @realloc(%struct.TYPE_7__* %197, i32 %204)
  %206 = inttoptr i64 %205 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %206, %struct.TYPE_7__** %10, align 8
  %207 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %208 = icmp eq %struct.TYPE_7__* %207, null
  br i1 %208, label %209, label %210

209:                                              ; preds = %193
  br label %289

210:                                              ; preds = %193
  %211 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %212 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %213 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %212, i32 0, i32 1
  %214 = getelementptr inbounds %struct.cvec, %struct.cvec* %213, i32 0, i32 6
  store %struct.TYPE_7__* %211, %struct.TYPE_7__** %214, align 8
  %215 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %216 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %215, i32 0, i32 1
  %217 = getelementptr inbounds %struct.cvec, %struct.cvec* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  %219 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %220 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %219, i32 0, i32 1
  %221 = getelementptr inbounds %struct.cvec, %struct.cvec* %220, i32 0, i32 1
  store i32 %218, i32* %221, align 4
  br label %222

222:                                              ; preds = %210, %183
  br label %223

223:                                              ; preds = %222, %171
  %224 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %225 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %224, i32 0, i32 1
  %226 = getelementptr inbounds %struct.cvec, %struct.cvec* %225, i32 0, i32 2
  %227 = load i32, i32* %226, align 8
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %229, label %241

229:                                              ; preds = %223
  %230 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %231 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %230, i32 0, i32 1
  %232 = getelementptr inbounds %struct.cvec, %struct.cvec* %231, i32 0, i32 5
  %233 = load %struct.TYPE_7__*, %struct.TYPE_7__** %232, align 8
  %234 = call i32 @free(%struct.TYPE_7__* %233)
  %235 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %236 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %235, i32 0, i32 1
  %237 = getelementptr inbounds %struct.cvec, %struct.cvec* %236, i32 0, i32 5
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %237, align 8
  %238 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %239 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %238, i32 0, i32 1
  %240 = getelementptr inbounds %struct.cvec, %struct.cvec* %239, i32 0, i32 3
  store i32 0, i32* %240, align 4
  br label %282

241:                                              ; preds = %223
  %242 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %243 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %242, i32 0, i32 1
  %244 = getelementptr inbounds %struct.cvec, %struct.cvec* %243, i32 0, i32 2
  %245 = load i32, i32* %244, align 8
  %246 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %247 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %246, i32 0, i32 1
  %248 = getelementptr inbounds %struct.cvec, %struct.cvec* %247, i32 0, i32 3
  %249 = load i32, i32* %248, align 4
  %250 = icmp slt i32 %245, %249
  br i1 %250, label %251, label %281

251:                                              ; preds = %241
  %252 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %253 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %252, i32 0, i32 1
  %254 = getelementptr inbounds %struct.cvec, %struct.cvec* %253, i32 0, i32 5
  %255 = load %struct.TYPE_7__*, %struct.TYPE_7__** %254, align 8
  %256 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %257 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %256, i32 0, i32 1
  %258 = getelementptr inbounds %struct.cvec, %struct.cvec* %257, i32 0, i32 2
  %259 = load i32, i32* %258, align 8
  %260 = sext i32 %259 to i64
  %261 = mul i64 %260, 64
  %262 = mul i64 %261, 2
  %263 = trunc i64 %262 to i32
  %264 = call i64 @realloc(%struct.TYPE_7__* %255, i32 %263)
  %265 = inttoptr i64 %264 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %265, %struct.TYPE_7__** %10, align 8
  %266 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %267 = icmp eq %struct.TYPE_7__* %266, null
  br i1 %267, label %268, label %269

268:                                              ; preds = %251
  br label %289

269:                                              ; preds = %251
  %270 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %271 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %272 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %271, i32 0, i32 1
  %273 = getelementptr inbounds %struct.cvec, %struct.cvec* %272, i32 0, i32 5
  store %struct.TYPE_7__* %270, %struct.TYPE_7__** %273, align 8
  %274 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %275 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %274, i32 0, i32 1
  %276 = getelementptr inbounds %struct.cvec, %struct.cvec* %275, i32 0, i32 2
  %277 = load i32, i32* %276, align 8
  %278 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %279 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %278, i32 0, i32 1
  %280 = getelementptr inbounds %struct.cvec, %struct.cvec* %279, i32 0, i32 3
  store i32 %277, i32* %280, align 4
  br label %281

281:                                              ; preds = %269, %241
  br label %282

282:                                              ; preds = %281, %229
  %283 = load %struct.TYPE_7__*, %struct.TYPE_7__** @pg_ctype_cache_list, align 8
  %284 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %285 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %284, i32 0, i32 2
  store %struct.TYPE_7__* %283, %struct.TYPE_7__** %285, align 8
  %286 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  store %struct.TYPE_7__* %286, %struct.TYPE_7__** @pg_ctype_cache_list, align 8
  %287 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %288 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %287, i32 0, i32 1
  store %struct.cvec* %288, %struct.cvec** %3, align 8
  br label %316

289:                                              ; preds = %268, %209, %163, %144, %96
  %290 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %291 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %290, i32 0, i32 1
  %292 = getelementptr inbounds %struct.cvec, %struct.cvec* %291, i32 0, i32 6
  %293 = load %struct.TYPE_7__*, %struct.TYPE_7__** %292, align 8
  %294 = icmp ne %struct.TYPE_7__* %293, null
  br i1 %294, label %295, label %301

295:                                              ; preds = %289
  %296 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %297 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %296, i32 0, i32 1
  %298 = getelementptr inbounds %struct.cvec, %struct.cvec* %297, i32 0, i32 6
  %299 = load %struct.TYPE_7__*, %struct.TYPE_7__** %298, align 8
  %300 = call i32 @free(%struct.TYPE_7__* %299)
  br label %301

301:                                              ; preds = %295, %289
  %302 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %303 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %302, i32 0, i32 1
  %304 = getelementptr inbounds %struct.cvec, %struct.cvec* %303, i32 0, i32 5
  %305 = load %struct.TYPE_7__*, %struct.TYPE_7__** %304, align 8
  %306 = icmp ne %struct.TYPE_7__* %305, null
  br i1 %306, label %307, label %313

307:                                              ; preds = %301
  %308 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %309 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %308, i32 0, i32 1
  %310 = getelementptr inbounds %struct.cvec, %struct.cvec* %309, i32 0, i32 5
  %311 = load %struct.TYPE_7__*, %struct.TYPE_7__** %310, align 8
  %312 = call i32 @free(%struct.TYPE_7__* %311)
  br label %313

313:                                              ; preds = %307, %301
  %314 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %315 = call i32 @free(%struct.TYPE_7__* %314)
  store %struct.cvec* null, %struct.cvec** %3, align 8
  br label %316

316:                                              ; preds = %313, %282, %40, %27
  %317 = load %struct.cvec*, %struct.cvec** %3, align 8
  ret %struct.cvec* %317
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @store_match(%struct.TYPE_7__*, i64, i32) #1

declare dso_local i32 @free(%struct.TYPE_7__*) #1

declare dso_local i64 @realloc(%struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
