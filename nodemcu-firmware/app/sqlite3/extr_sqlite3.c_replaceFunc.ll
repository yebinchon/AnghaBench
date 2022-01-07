; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/sqlite3/extr_sqlite3.c_replaceFunc.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/sqlite3/extr_sqlite3.c_replaceFunc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i64 }

@SQLITE_NULL = common dso_local global i64 0, align 8
@SQLITE_MAX_LENGTH = common dso_local global i32 0, align 4
@SQLITE_LIMIT_LENGTH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32**)* @replaceFunc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @replaceFunc(i32* %0, i32 %1, i32** %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca %struct.TYPE_3__*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32** %2, i32*** %6, align 8
  %20 = load i32, i32* %5, align 4
  %21 = icmp eq i32 %20, 3
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert(i32 %22)
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @UNUSED_PARAMETER(i32 %24)
  %26 = load i32**, i32*** %6, align 8
  %27 = getelementptr inbounds i32*, i32** %26, i64 0
  %28 = load i32*, i32** %27, align 8
  %29 = call i8* @sqlite3_value_text(i32* %28)
  store i8* %29, i8** %7, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = icmp eq i8* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %3
  br label %291

33:                                               ; preds = %3
  %34 = load i32**, i32*** %6, align 8
  %35 = getelementptr inbounds i32*, i32** %34, i64 0
  %36 = load i32*, i32** %35, align 8
  %37 = call i32 @sqlite3_value_bytes(i32* %36)
  store i32 %37, i32* %11, align 4
  %38 = load i8*, i8** %7, align 8
  %39 = load i32**, i32*** %6, align 8
  %40 = getelementptr inbounds i32*, i32** %39, i64 0
  %41 = load i32*, i32** %40, align 8
  %42 = call i8* @sqlite3_value_text(i32* %41)
  %43 = icmp eq i8* %38, %42
  %44 = zext i1 %43 to i32
  %45 = call i32 @assert(i32 %44)
  %46 = load i32**, i32*** %6, align 8
  %47 = getelementptr inbounds i32*, i32** %46, i64 1
  %48 = load i32*, i32** %47, align 8
  %49 = call i8* @sqlite3_value_text(i32* %48)
  store i8* %49, i8** %8, align 8
  %50 = load i8*, i8** %8, align 8
  %51 = icmp eq i8* %50, null
  br i1 %51, label %52, label %69

52:                                               ; preds = %33
  %53 = load i32**, i32*** %6, align 8
  %54 = getelementptr inbounds i32*, i32** %53, i64 1
  %55 = load i32*, i32** %54, align 8
  %56 = call i64 @sqlite3_value_type(i32* %55)
  %57 = load i64, i64* @SQLITE_NULL, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %65, label %59

59:                                               ; preds = %52
  %60 = load i32*, i32** %4, align 8
  %61 = call %struct.TYPE_3__* @sqlite3_context_db_handle(i32* %60)
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br label %65

65:                                               ; preds = %59, %52
  %66 = phi i1 [ true, %52 ], [ %64, %59 ]
  %67 = zext i1 %66 to i32
  %68 = call i32 @assert(i32 %67)
  br label %291

69:                                               ; preds = %33
  %70 = load i8*, i8** %8, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 0
  %72 = load i8, i8* %71, align 1
  %73 = zext i8 %72 to i32
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %89

75:                                               ; preds = %69
  %76 = load i32**, i32*** %6, align 8
  %77 = getelementptr inbounds i32*, i32** %76, i64 1
  %78 = load i32*, i32** %77, align 8
  %79 = call i64 @sqlite3_value_type(i32* %78)
  %80 = load i64, i64* @SQLITE_NULL, align 8
  %81 = icmp ne i64 %79, %80
  %82 = zext i1 %81 to i32
  %83 = call i32 @assert(i32 %82)
  %84 = load i32*, i32** %4, align 8
  %85 = load i32**, i32*** %6, align 8
  %86 = getelementptr inbounds i32*, i32** %85, i64 0
  %87 = load i32*, i32** %86, align 8
  %88 = call i32 @sqlite3_result_value(i32* %84, i32* %87)
  br label %291

89:                                               ; preds = %69
  %90 = load i32**, i32*** %6, align 8
  %91 = getelementptr inbounds i32*, i32** %90, i64 1
  %92 = load i32*, i32** %91, align 8
  %93 = call i32 @sqlite3_value_bytes(i32* %92)
  store i32 %93, i32* %12, align 4
  %94 = load i8*, i8** %8, align 8
  %95 = load i32**, i32*** %6, align 8
  %96 = getelementptr inbounds i32*, i32** %95, i64 1
  %97 = load i32*, i32** %96, align 8
  %98 = call i8* @sqlite3_value_text(i32* %97)
  %99 = icmp eq i8* %94, %98
  %100 = zext i1 %99 to i32
  %101 = call i32 @assert(i32 %100)
  %102 = load i32**, i32*** %6, align 8
  %103 = getelementptr inbounds i32*, i32** %102, i64 2
  %104 = load i32*, i32** %103, align 8
  %105 = call i8* @sqlite3_value_text(i32* %104)
  store i8* %105, i8** %9, align 8
  %106 = load i8*, i8** %9, align 8
  %107 = icmp eq i8* %106, null
  br i1 %107, label %108, label %109

108:                                              ; preds = %89
  br label %291

109:                                              ; preds = %89
  %110 = load i32**, i32*** %6, align 8
  %111 = getelementptr inbounds i32*, i32** %110, i64 2
  %112 = load i32*, i32** %111, align 8
  %113 = call i32 @sqlite3_value_bytes(i32* %112)
  store i32 %113, i32* %13, align 4
  %114 = load i8*, i8** %9, align 8
  %115 = load i32**, i32*** %6, align 8
  %116 = getelementptr inbounds i32*, i32** %115, i64 2
  %117 = load i32*, i32** %116, align 8
  %118 = call i8* @sqlite3_value_text(i32* %117)
  %119 = icmp eq i8* %114, %118
  %120 = zext i1 %119 to i32
  %121 = call i32 @assert(i32 %120)
  %122 = load i32, i32* %11, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %14, align 4
  %124 = load i32, i32* %14, align 4
  %125 = load i32, i32* @SQLITE_MAX_LENGTH, align 4
  %126 = icmp slt i32 %124, %125
  %127 = zext i1 %126 to i32
  %128 = call i32 @assert(i32 %127)
  %129 = load i32*, i32** %4, align 8
  %130 = load i32, i32* %14, align 4
  %131 = call i8* @contextMalloc(i32* %129, i32 %130)
  store i8* %131, i8** %10, align 8
  %132 = load i8*, i8** %10, align 8
  %133 = icmp eq i8* %132, null
  br i1 %133, label %134, label %135

134:                                              ; preds = %109
  br label %291

135:                                              ; preds = %109
  %136 = load i32, i32* %11, align 4
  %137 = load i32, i32* %12, align 4
  %138 = sub nsw i32 %136, %137
  store i32 %138, i32* %15, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %16, align 4
  br label %139

139:                                              ; preds = %247, %135
  %140 = load i32, i32* %16, align 4
  %141 = load i32, i32* %15, align 4
  %142 = icmp sle i32 %140, %141
  br i1 %142, label %143, label %250

143:                                              ; preds = %139
  %144 = load i8*, i8** %7, align 8
  %145 = load i32, i32* %16, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i8, i8* %144, i64 %146
  %148 = load i8, i8* %147, align 1
  %149 = zext i8 %148 to i32
  %150 = load i8*, i8** %8, align 8
  %151 = getelementptr inbounds i8, i8* %150, i64 0
  %152 = load i8, i8* %151, align 1
  %153 = zext i8 %152 to i32
  %154 = icmp ne i32 %149, %153
  br i1 %154, label %164, label %155

155:                                              ; preds = %143
  %156 = load i8*, i8** %7, align 8
  %157 = load i32, i32* %16, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i8, i8* %156, i64 %158
  %160 = load i8*, i8** %8, align 8
  %161 = load i32, i32* %12, align 4
  %162 = call i64 @memcmp(i8* %159, i8* %160, i32 %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %175

164:                                              ; preds = %155, %143
  %165 = load i8*, i8** %7, align 8
  %166 = load i32, i32* %16, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i8, i8* %165, i64 %167
  %169 = load i8, i8* %168, align 1
  %170 = load i8*, i8** %10, align 8
  %171 = load i32, i32* %17, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %17, align 4
  %173 = sext i32 %171 to i64
  %174 = getelementptr inbounds i8, i8* %170, i64 %173
  store i8 %169, i8* %174, align 1
  br label %246

175:                                              ; preds = %155
  %176 = load i32*, i32** %4, align 8
  %177 = call %struct.TYPE_3__* @sqlite3_context_db_handle(i32* %176)
  store %struct.TYPE_3__* %177, %struct.TYPE_3__** %19, align 8
  %178 = load i32, i32* %13, align 4
  %179 = load i32, i32* %12, align 4
  %180 = sub nsw i32 %178, %179
  %181 = load i32, i32* %14, align 4
  %182 = add nsw i32 %181, %180
  store i32 %182, i32* %14, align 4
  %183 = load i32, i32* %14, align 4
  %184 = sub nsw i32 %183, 1
  %185 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %186 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %185, i32 0, i32 0
  %187 = load i32*, i32** %186, align 8
  %188 = load i64, i64* @SQLITE_LIMIT_LENGTH, align 8
  %189 = getelementptr inbounds i32, i32* %187, i64 %188
  %190 = load i32, i32* %189, align 4
  %191 = icmp eq i32 %184, %190
  %192 = zext i1 %191 to i32
  %193 = call i32 @testcase(i32 %192)
  %194 = load i32, i32* %14, align 4
  %195 = sub nsw i32 %194, 2
  %196 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %197 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %196, i32 0, i32 0
  %198 = load i32*, i32** %197, align 8
  %199 = load i64, i64* @SQLITE_LIMIT_LENGTH, align 8
  %200 = getelementptr inbounds i32, i32* %198, i64 %199
  %201 = load i32, i32* %200, align 4
  %202 = icmp eq i32 %195, %201
  %203 = zext i1 %202 to i32
  %204 = call i32 @testcase(i32 %203)
  %205 = load i32, i32* %14, align 4
  %206 = sub nsw i32 %205, 1
  %207 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %208 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %207, i32 0, i32 0
  %209 = load i32*, i32** %208, align 8
  %210 = load i64, i64* @SQLITE_LIMIT_LENGTH, align 8
  %211 = getelementptr inbounds i32, i32* %209, i64 %210
  %212 = load i32, i32* %211, align 4
  %213 = icmp sgt i32 %206, %212
  br i1 %213, label %214, label %219

214:                                              ; preds = %175
  %215 = load i32*, i32** %4, align 8
  %216 = call i32 @sqlite3_result_error_toobig(i32* %215)
  %217 = load i8*, i8** %10, align 8
  %218 = call i32 @sqlite3_free(i8* %217)
  br label %291

219:                                              ; preds = %175
  %220 = load i8*, i8** %10, align 8
  store i8* %220, i8** %18, align 8
  %221 = load i8*, i8** %10, align 8
  %222 = load i32, i32* %14, align 4
  %223 = call i8* @sqlite3_realloc64(i8* %221, i32 %222)
  store i8* %223, i8** %10, align 8
  %224 = load i8*, i8** %10, align 8
  %225 = icmp eq i8* %224, null
  br i1 %225, label %226, label %231

226:                                              ; preds = %219
  %227 = load i32*, i32** %4, align 8
  %228 = call i32 @sqlite3_result_error_nomem(i32* %227)
  %229 = load i8*, i8** %18, align 8
  %230 = call i32 @sqlite3_free(i8* %229)
  br label %291

231:                                              ; preds = %219
  %232 = load i8*, i8** %10, align 8
  %233 = load i32, i32* %17, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds i8, i8* %232, i64 %234
  %236 = load i8*, i8** %9, align 8
  %237 = load i32, i32* %13, align 4
  %238 = call i32 @memcpy(i8* %235, i8* %236, i32 %237)
  %239 = load i32, i32* %13, align 4
  %240 = load i32, i32* %17, align 4
  %241 = add nsw i32 %240, %239
  store i32 %241, i32* %17, align 4
  %242 = load i32, i32* %12, align 4
  %243 = sub nsw i32 %242, 1
  %244 = load i32, i32* %16, align 4
  %245 = add nsw i32 %244, %243
  store i32 %245, i32* %16, align 4
  br label %246

246:                                              ; preds = %231, %164
  br label %247

247:                                              ; preds = %246
  %248 = load i32, i32* %16, align 4
  %249 = add nsw i32 %248, 1
  store i32 %249, i32* %16, align 4
  br label %139

250:                                              ; preds = %139
  %251 = load i32, i32* %17, align 4
  %252 = load i32, i32* %11, align 4
  %253 = add nsw i32 %251, %252
  %254 = load i32, i32* %16, align 4
  %255 = sub nsw i32 %253, %254
  %256 = add nsw i32 %255, 1
  %257 = load i32, i32* %14, align 4
  %258 = icmp eq i32 %256, %257
  %259 = zext i1 %258 to i32
  %260 = call i32 @assert(i32 %259)
  %261 = load i8*, i8** %10, align 8
  %262 = load i32, i32* %17, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds i8, i8* %261, i64 %263
  %265 = load i8*, i8** %7, align 8
  %266 = load i32, i32* %16, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds i8, i8* %265, i64 %267
  %269 = load i32, i32* %11, align 4
  %270 = load i32, i32* %16, align 4
  %271 = sub nsw i32 %269, %270
  %272 = call i32 @memcpy(i8* %264, i8* %268, i32 %271)
  %273 = load i32, i32* %11, align 4
  %274 = load i32, i32* %16, align 4
  %275 = sub nsw i32 %273, %274
  %276 = load i32, i32* %17, align 4
  %277 = add nsw i32 %276, %275
  store i32 %277, i32* %17, align 4
  %278 = load i32, i32* %17, align 4
  %279 = load i32, i32* %14, align 4
  %280 = icmp sle i32 %278, %279
  %281 = zext i1 %280 to i32
  %282 = call i32 @assert(i32 %281)
  %283 = load i8*, i8** %10, align 8
  %284 = load i32, i32* %17, align 4
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds i8, i8* %283, i64 %285
  store i8 0, i8* %286, align 1
  %287 = load i32*, i32** %4, align 8
  %288 = load i8*, i8** %10, align 8
  %289 = load i32, i32* %17, align 4
  %290 = call i32 @sqlite3_result_text(i32* %287, i8* %288, i32 %289, i32 (i8*)* @sqlite3_free)
  br label %291

291:                                              ; preds = %250, %226, %214, %134, %108, %75, %65, %32
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @UNUSED_PARAMETER(i32) #1

declare dso_local i8* @sqlite3_value_text(i32*) #1

declare dso_local i32 @sqlite3_value_bytes(i32*) #1

declare dso_local i64 @sqlite3_value_type(i32*) #1

declare dso_local %struct.TYPE_3__* @sqlite3_context_db_handle(i32*) #1

declare dso_local i32 @sqlite3_result_value(i32*, i32*) #1

declare dso_local i8* @contextMalloc(i32*, i32) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @testcase(i32) #1

declare dso_local i32 @sqlite3_result_error_toobig(i32*) #1

declare dso_local i32 @sqlite3_free(i8*) #1

declare dso_local i8* @sqlite3_realloc64(i8*, i32) #1

declare dso_local i32 @sqlite3_result_error_nomem(i32*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @sqlite3_result_text(i32*, i8*, i32, i32 (i8*)*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
