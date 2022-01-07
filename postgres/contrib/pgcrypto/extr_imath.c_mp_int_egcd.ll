; ModuleID = '/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_imath.c_mp_int_egcd.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_imath.c_mp_int_egcd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_28__ = type { i8* }

@MP_OK = common dso_local global i32 0, align 4
@MP_UNDEF = common dso_local global i32 0, align 4
@MP_ZPOS = common dso_local global i8* null, align 8
@MP_MEMORY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mp_int_egcd(%struct.TYPE_28__* %0, %struct.TYPE_28__* %1, %struct.TYPE_28__* %2, %struct.TYPE_28__* %3, %struct.TYPE_28__* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_28__*, align 8
  %8 = alloca %struct.TYPE_28__*, align 8
  %9 = alloca %struct.TYPE_28__*, align 8
  %10 = alloca %struct.TYPE_28__*, align 8
  %11 = alloca %struct.TYPE_28__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_28__* %0, %struct.TYPE_28__** %7, align 8
  store %struct.TYPE_28__* %1, %struct.TYPE_28__** %8, align 8
  store %struct.TYPE_28__* %2, %struct.TYPE_28__** %9, align 8
  store %struct.TYPE_28__* %3, %struct.TYPE_28__** %10, align 8
  store %struct.TYPE_28__* %4, %struct.TYPE_28__** %11, align 8
  %18 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %19 = icmp ne %struct.TYPE_28__* %18, null
  br i1 %19, label %20, label %34

20:                                               ; preds = %5
  %21 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %22 = icmp ne %struct.TYPE_28__* %21, null
  br i1 %22, label %23, label %34

23:                                               ; preds = %20
  %24 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %25 = icmp ne %struct.TYPE_28__* %24, null
  br i1 %25, label %26, label %34

26:                                               ; preds = %23
  %27 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %28 = icmp ne %struct.TYPE_28__* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %26
  %30 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %31 = icmp ne %struct.TYPE_28__* %30, null
  br label %32

32:                                               ; preds = %29, %26
  %33 = phi i1 [ true, %26 ], [ %31, %29 ]
  br label %34

34:                                               ; preds = %32, %23, %20, %5
  %35 = phi i1 [ false, %23 ], [ false, %20 ], [ false, %5 ], [ %33, %32 ]
  %36 = zext i1 %35 to i32
  %37 = call i32 @assert(i32 %36)
  %38 = load i32, i32* @MP_OK, align 4
  store i32 %38, i32* %12, align 4
  %39 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %40 = call i32 @CMPZ(%struct.TYPE_28__* %39)
  store i32 %40, i32* %13, align 4
  %41 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %42 = call i32 @CMPZ(%struct.TYPE_28__* %41)
  store i32 %42, i32* %14, align 4
  %43 = load i32, i32* %13, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %34
  %46 = load i32, i32* %14, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %45
  %49 = load i32, i32* @MP_UNDEF, align 4
  store i32 %49, i32* %6, align 4
  br label %269

50:                                               ; preds = %45, %34
  %51 = load i32, i32* %13, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %67

53:                                               ; preds = %50
  %54 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %55 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %56 = call i32 @mp_int_abs(%struct.TYPE_28__* %54, %struct.TYPE_28__* %55)
  store i32 %56, i32* %12, align 4
  %57 = load i32, i32* @MP_OK, align 4
  %58 = icmp ne i32 %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %53
  %60 = load i32, i32* %12, align 4
  store i32 %60, i32* %6, align 4
  br label %269

61:                                               ; preds = %53
  %62 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %63 = call i32 @mp_int_zero(%struct.TYPE_28__* %62)
  %64 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %65 = call i32 @mp_int_set_value(%struct.TYPE_28__* %64, i32 1)
  %66 = load i32, i32* @MP_OK, align 4
  store i32 %66, i32* %6, align 4
  br label %269

67:                                               ; preds = %50
  %68 = load i32, i32* %14, align 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %84

70:                                               ; preds = %67
  %71 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %72 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %73 = call i32 @mp_int_abs(%struct.TYPE_28__* %71, %struct.TYPE_28__* %72)
  store i32 %73, i32* %12, align 4
  %74 = load i32, i32* @MP_OK, align 4
  %75 = icmp ne i32 %73, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %70
  %77 = load i32, i32* %12, align 4
  store i32 %77, i32* %6, align 4
  br label %269

78:                                               ; preds = %70
  %79 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %80 = call i32 @mp_int_set_value(%struct.TYPE_28__* %79, i32 1)
  %81 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %82 = call i32 @mp_int_zero(%struct.TYPE_28__* %81)
  %83 = load i32, i32* @MP_OK, align 4
  store i32 %83, i32* %6, align 4
  br label %269

84:                                               ; preds = %67
  br label %85

85:                                               ; preds = %84
  br label %86

86:                                               ; preds = %85
  %87 = call i32 @DECLARE_TEMP(i32 8)
  %88 = call %struct.TYPE_28__* @TEMP(i32 0)
  %89 = call i32 @mp_int_set_value(%struct.TYPE_28__* %88, i32 1)
  %90 = call i32 @REQUIRE(i32 %89)
  %91 = call %struct.TYPE_28__* @TEMP(i32 3)
  %92 = call i32 @mp_int_set_value(%struct.TYPE_28__* %91, i32 1)
  %93 = call i32 @REQUIRE(i32 %92)
  %94 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %95 = call %struct.TYPE_28__* @TEMP(i32 4)
  %96 = call i32 @mp_int_copy(%struct.TYPE_28__* %94, %struct.TYPE_28__* %95)
  %97 = call i32 @REQUIRE(i32 %96)
  %98 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %99 = call %struct.TYPE_28__* @TEMP(i32 5)
  %100 = call i32 @mp_int_copy(%struct.TYPE_28__* %98, %struct.TYPE_28__* %99)
  %101 = call i32 @REQUIRE(i32 %100)
  %102 = load i8*, i8** @MP_ZPOS, align 8
  %103 = call %struct.TYPE_28__* @TEMP(i32 4)
  %104 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %103, i32 0, i32 0
  store i8* %102, i8** %104, align 8
  %105 = load i8*, i8** @MP_ZPOS, align 8
  %106 = call %struct.TYPE_28__* @TEMP(i32 5)
  %107 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %106, i32 0, i32 0
  store i8* %105, i8** %107, align 8
  store i32 0, i32* %15, align 4
  %108 = call %struct.TYPE_28__* @TEMP(i32 4)
  %109 = call i32 @s_dp2k(%struct.TYPE_28__* %108)
  store i32 %109, i32* %16, align 4
  %110 = call %struct.TYPE_28__* @TEMP(i32 5)
  %111 = call i32 @s_dp2k(%struct.TYPE_28__* %110)
  store i32 %111, i32* %17, align 4
  %112 = load i32, i32* %16, align 4
  %113 = load i32, i32* %17, align 4
  %114 = call i32 @MIN(i32 %112, i32 %113)
  store i32 %114, i32* %15, align 4
  %115 = call %struct.TYPE_28__* @TEMP(i32 4)
  %116 = load i32, i32* %15, align 4
  %117 = call i32 @s_qdiv(%struct.TYPE_28__* %115, i32 %116)
  %118 = call %struct.TYPE_28__* @TEMP(i32 5)
  %119 = load i32, i32* %15, align 4
  %120 = call i32 @s_qdiv(%struct.TYPE_28__* %118, i32 %119)
  %121 = call %struct.TYPE_28__* @TEMP(i32 4)
  %122 = call %struct.TYPE_28__* @TEMP(i32 6)
  %123 = call i32 @mp_int_copy(%struct.TYPE_28__* %121, %struct.TYPE_28__* %122)
  %124 = call i32 @REQUIRE(i32 %123)
  %125 = call %struct.TYPE_28__* @TEMP(i32 5)
  %126 = call %struct.TYPE_28__* @TEMP(i32 7)
  %127 = call i32 @mp_int_copy(%struct.TYPE_28__* %125, %struct.TYPE_28__* %126)
  %128 = call i32 @REQUIRE(i32 %127)
  br label %129

129:                                              ; preds = %265, %86
  br label %130

130:                                              ; preds = %155, %129
  %131 = call %struct.TYPE_28__* @TEMP(i32 4)
  %132 = call i64 @mp_int_is_even(%struct.TYPE_28__* %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %160

134:                                              ; preds = %130
  %135 = call %struct.TYPE_28__* @TEMP(i32 4)
  %136 = call i32 @s_qdiv(%struct.TYPE_28__* %135, i32 1)
  %137 = call %struct.TYPE_28__* @TEMP(i32 0)
  %138 = call i64 @mp_int_is_odd(%struct.TYPE_28__* %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %144, label %140

140:                                              ; preds = %134
  %141 = call %struct.TYPE_28__* @TEMP(i32 1)
  %142 = call i64 @mp_int_is_odd(%struct.TYPE_28__* %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %155

144:                                              ; preds = %140, %134
  %145 = call %struct.TYPE_28__* @TEMP(i32 0)
  %146 = call %struct.TYPE_28__* @TEMP(i32 7)
  %147 = call %struct.TYPE_28__* @TEMP(i32 0)
  %148 = call i32 @mp_int_add(%struct.TYPE_28__* %145, %struct.TYPE_28__* %146, %struct.TYPE_28__* %147)
  %149 = call i32 @REQUIRE(i32 %148)
  %150 = call %struct.TYPE_28__* @TEMP(i32 1)
  %151 = call %struct.TYPE_28__* @TEMP(i32 6)
  %152 = call %struct.TYPE_28__* @TEMP(i32 1)
  %153 = call i32 @mp_int_sub(%struct.TYPE_28__* %150, %struct.TYPE_28__* %151, %struct.TYPE_28__* %152)
  %154 = call i32 @REQUIRE(i32 %153)
  br label %155

155:                                              ; preds = %144, %140
  %156 = call %struct.TYPE_28__* @TEMP(i32 0)
  %157 = call i32 @s_qdiv(%struct.TYPE_28__* %156, i32 1)
  %158 = call %struct.TYPE_28__* @TEMP(i32 1)
  %159 = call i32 @s_qdiv(%struct.TYPE_28__* %158, i32 1)
  br label %130

160:                                              ; preds = %130
  br label %161

161:                                              ; preds = %186, %160
  %162 = call %struct.TYPE_28__* @TEMP(i32 5)
  %163 = call i64 @mp_int_is_even(%struct.TYPE_28__* %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %191

165:                                              ; preds = %161
  %166 = call %struct.TYPE_28__* @TEMP(i32 5)
  %167 = call i32 @s_qdiv(%struct.TYPE_28__* %166, i32 1)
  %168 = call %struct.TYPE_28__* @TEMP(i32 2)
  %169 = call i64 @mp_int_is_odd(%struct.TYPE_28__* %168)
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %175, label %171

171:                                              ; preds = %165
  %172 = call %struct.TYPE_28__* @TEMP(i32 3)
  %173 = call i64 @mp_int_is_odd(%struct.TYPE_28__* %172)
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %186

175:                                              ; preds = %171, %165
  %176 = call %struct.TYPE_28__* @TEMP(i32 2)
  %177 = call %struct.TYPE_28__* @TEMP(i32 7)
  %178 = call %struct.TYPE_28__* @TEMP(i32 2)
  %179 = call i32 @mp_int_add(%struct.TYPE_28__* %176, %struct.TYPE_28__* %177, %struct.TYPE_28__* %178)
  %180 = call i32 @REQUIRE(i32 %179)
  %181 = call %struct.TYPE_28__* @TEMP(i32 3)
  %182 = call %struct.TYPE_28__* @TEMP(i32 6)
  %183 = call %struct.TYPE_28__* @TEMP(i32 3)
  %184 = call i32 @mp_int_sub(%struct.TYPE_28__* %181, %struct.TYPE_28__* %182, %struct.TYPE_28__* %183)
  %185 = call i32 @REQUIRE(i32 %184)
  br label %186

186:                                              ; preds = %175, %171
  %187 = call %struct.TYPE_28__* @TEMP(i32 2)
  %188 = call i32 @s_qdiv(%struct.TYPE_28__* %187, i32 1)
  %189 = call %struct.TYPE_28__* @TEMP(i32 3)
  %190 = call i32 @s_qdiv(%struct.TYPE_28__* %189, i32 1)
  br label %161

191:                                              ; preds = %161
  %192 = call %struct.TYPE_28__* @TEMP(i32 4)
  %193 = call %struct.TYPE_28__* @TEMP(i32 5)
  %194 = call i64 @mp_int_compare(%struct.TYPE_28__* %192, %struct.TYPE_28__* %193)
  %195 = icmp sge i64 %194, 0
  br i1 %195, label %196, label %212

196:                                              ; preds = %191
  %197 = call %struct.TYPE_28__* @TEMP(i32 4)
  %198 = call %struct.TYPE_28__* @TEMP(i32 5)
  %199 = call %struct.TYPE_28__* @TEMP(i32 4)
  %200 = call i32 @mp_int_sub(%struct.TYPE_28__* %197, %struct.TYPE_28__* %198, %struct.TYPE_28__* %199)
  %201 = call i32 @REQUIRE(i32 %200)
  %202 = call %struct.TYPE_28__* @TEMP(i32 0)
  %203 = call %struct.TYPE_28__* @TEMP(i32 2)
  %204 = call %struct.TYPE_28__* @TEMP(i32 0)
  %205 = call i32 @mp_int_sub(%struct.TYPE_28__* %202, %struct.TYPE_28__* %203, %struct.TYPE_28__* %204)
  %206 = call i32 @REQUIRE(i32 %205)
  %207 = call %struct.TYPE_28__* @TEMP(i32 1)
  %208 = call %struct.TYPE_28__* @TEMP(i32 3)
  %209 = call %struct.TYPE_28__* @TEMP(i32 1)
  %210 = call i32 @mp_int_sub(%struct.TYPE_28__* %207, %struct.TYPE_28__* %208, %struct.TYPE_28__* %209)
  %211 = call i32 @REQUIRE(i32 %210)
  br label %228

212:                                              ; preds = %191
  %213 = call %struct.TYPE_28__* @TEMP(i32 5)
  %214 = call %struct.TYPE_28__* @TEMP(i32 4)
  %215 = call %struct.TYPE_28__* @TEMP(i32 5)
  %216 = call i32 @mp_int_sub(%struct.TYPE_28__* %213, %struct.TYPE_28__* %214, %struct.TYPE_28__* %215)
  %217 = call i32 @REQUIRE(i32 %216)
  %218 = call %struct.TYPE_28__* @TEMP(i32 2)
  %219 = call %struct.TYPE_28__* @TEMP(i32 0)
  %220 = call %struct.TYPE_28__* @TEMP(i32 2)
  %221 = call i32 @mp_int_sub(%struct.TYPE_28__* %218, %struct.TYPE_28__* %219, %struct.TYPE_28__* %220)
  %222 = call i32 @REQUIRE(i32 %221)
  %223 = call %struct.TYPE_28__* @TEMP(i32 3)
  %224 = call %struct.TYPE_28__* @TEMP(i32 1)
  %225 = call %struct.TYPE_28__* @TEMP(i32 3)
  %226 = call i32 @mp_int_sub(%struct.TYPE_28__* %223, %struct.TYPE_28__* %224, %struct.TYPE_28__* %225)
  %227 = call i32 @REQUIRE(i32 %226)
  br label %228

228:                                              ; preds = %212, %196
  %229 = call %struct.TYPE_28__* @TEMP(i32 4)
  %230 = call i32 @CMPZ(%struct.TYPE_28__* %229)
  %231 = icmp eq i32 %230, 0
  br i1 %231, label %232, label %265

232:                                              ; preds = %228
  %233 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %234 = icmp ne %struct.TYPE_28__* %233, null
  br i1 %234, label %235, label %240

235:                                              ; preds = %232
  %236 = call %struct.TYPE_28__* @TEMP(i32 2)
  %237 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %238 = call i32 @mp_int_copy(%struct.TYPE_28__* %236, %struct.TYPE_28__* %237)
  %239 = call i32 @REQUIRE(i32 %238)
  br label %240

240:                                              ; preds = %235, %232
  %241 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %242 = icmp ne %struct.TYPE_28__* %241, null
  br i1 %242, label %243, label %248

243:                                              ; preds = %240
  %244 = call %struct.TYPE_28__* @TEMP(i32 3)
  %245 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %246 = call i32 @mp_int_copy(%struct.TYPE_28__* %244, %struct.TYPE_28__* %245)
  %247 = call i32 @REQUIRE(i32 %246)
  br label %248

248:                                              ; preds = %243, %240
  %249 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %250 = icmp ne %struct.TYPE_28__* %249, null
  br i1 %250, label %251, label %264

251:                                              ; preds = %248
  %252 = call %struct.TYPE_28__* @TEMP(i32 5)
  %253 = load i32, i32* %15, align 4
  %254 = call i32 @s_qmul(%struct.TYPE_28__* %252, i32 %253)
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %259, label %256

256:                                              ; preds = %251
  %257 = load i32, i32* @MP_MEMORY, align 4
  %258 = call i32 @REQUIRE(i32 %257)
  br label %259

259:                                              ; preds = %256, %251
  %260 = call %struct.TYPE_28__* @TEMP(i32 5)
  %261 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %262 = call i32 @mp_int_copy(%struct.TYPE_28__* %260, %struct.TYPE_28__* %261)
  %263 = call i32 @REQUIRE(i32 %262)
  br label %264

264:                                              ; preds = %259, %248
  br label %266

265:                                              ; preds = %228
  br label %129

266:                                              ; preds = %264
  %267 = call i32 (...) @CLEANUP_TEMP()
  %268 = load i32, i32* @MP_OK, align 4
  store i32 %268, i32* %6, align 4
  br label %269

269:                                              ; preds = %266, %78, %76, %61, %59, %48
  %270 = load i32, i32* %6, align 4
  ret i32 %270
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @CMPZ(%struct.TYPE_28__*) #1

declare dso_local i32 @mp_int_abs(%struct.TYPE_28__*, %struct.TYPE_28__*) #1

declare dso_local i32 @mp_int_zero(%struct.TYPE_28__*) #1

declare dso_local i32 @mp_int_set_value(%struct.TYPE_28__*, i32) #1

declare dso_local i32 @DECLARE_TEMP(i32) #1

declare dso_local i32 @REQUIRE(i32) #1

declare dso_local %struct.TYPE_28__* @TEMP(i32) #1

declare dso_local i32 @mp_int_copy(%struct.TYPE_28__*, %struct.TYPE_28__*) #1

declare dso_local i32 @s_dp2k(%struct.TYPE_28__*) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32 @s_qdiv(%struct.TYPE_28__*, i32) #1

declare dso_local i64 @mp_int_is_even(%struct.TYPE_28__*) #1

declare dso_local i64 @mp_int_is_odd(%struct.TYPE_28__*) #1

declare dso_local i32 @mp_int_add(%struct.TYPE_28__*, %struct.TYPE_28__*, %struct.TYPE_28__*) #1

declare dso_local i32 @mp_int_sub(%struct.TYPE_28__*, %struct.TYPE_28__*, %struct.TYPE_28__*) #1

declare dso_local i64 @mp_int_compare(%struct.TYPE_28__*, %struct.TYPE_28__*) #1

declare dso_local i32 @s_qmul(%struct.TYPE_28__*, i32) #1

declare dso_local i32 @CLEANUP_TEMP(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
