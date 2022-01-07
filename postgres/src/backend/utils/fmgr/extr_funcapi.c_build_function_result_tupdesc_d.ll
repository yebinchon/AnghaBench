; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/fmgr/extr_funcapi.c_build_function_result_tupdesc_d.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/fmgr/extr_funcapi.c_build_function_result_tupdesc_d.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OIDOID = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"proallargtypes is not a 1-D Oid array\00", align 1
@CHAROID = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c"proargmodes is not a 1-D char array\00", align 1
@TEXTOID = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [36 x i8] c"proargnames is not a 1-D text array\00", align 1
@PROARGMODE_IN = common dso_local global i8 0, align 1
@PROARGMODE_VARIADIC = common dso_local global i8 0, align 1
@PROARGMODE_OUT = common dso_local global i8 0, align 1
@PROARGMODE_INOUT = common dso_local global i8 0, align 1
@PROARGMODE_TABLE = common dso_local global i8 0, align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"column%d\00", align 1
@PROKIND_PROCEDURE = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @build_function_result_tupdesc_d(i8 signext %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i8**, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  store i8 %0, i8* %6, align 1
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i64* null, i64** %15, align 8
  %22 = load i64, i64* %7, align 8
  %23 = call i64 @PointerGetDatum(i32* null)
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %29, label %25

25:                                               ; preds = %4
  %26 = load i64, i64* %8, align 8
  %27 = call i64 @PointerGetDatum(i32* null)
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %25, %4
  store i32* null, i32** %5, align 8
  br label %280

30:                                               ; preds = %25
  %31 = load i64, i64* %7, align 8
  %32 = call i32* @DatumGetArrayTypeP(i64 %31)
  store i32* %32, i32** %11, align 8
  %33 = load i32*, i32** %11, align 8
  %34 = call i32* @ARR_DIMS(i32* %33)
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %12, align 4
  %37 = load i32*, i32** %11, align 8
  %38 = call i32 @ARR_NDIM(i32* %37)
  %39 = icmp ne i32 %38, 1
  br i1 %39, label %52, label %40

40:                                               ; preds = %30
  %41 = load i32, i32* %12, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %52, label %43

43:                                               ; preds = %40
  %44 = load i32*, i32** %11, align 8
  %45 = call i64 @ARR_HASNULL(i32* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %52, label %47

47:                                               ; preds = %43
  %48 = load i32*, i32** %11, align 8
  %49 = call i64 @ARR_ELEMTYPE(i32* %48)
  %50 = load i64, i64* @OIDOID, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %47, %43, %40, %30
  %53 = load i32, i32* @ERROR, align 4
  %54 = call i32 @elog(i32 %53, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %55

55:                                               ; preds = %52, %47
  %56 = load i32*, i32** %11, align 8
  %57 = call i64 @ARR_DATA_PTR(i32* %56)
  %58 = inttoptr i64 %57 to i32*
  store i32* %58, i32** %13, align 8
  %59 = load i64, i64* %8, align 8
  %60 = call i32* @DatumGetArrayTypeP(i64 %59)
  store i32* %60, i32** %11, align 8
  %61 = load i32*, i32** %11, align 8
  %62 = call i32 @ARR_NDIM(i32* %61)
  %63 = icmp ne i32 %62, 1
  br i1 %63, label %80, label %64

64:                                               ; preds = %55
  %65 = load i32*, i32** %11, align 8
  %66 = call i32* @ARR_DIMS(i32* %65)
  %67 = getelementptr inbounds i32, i32* %66, i64 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %12, align 4
  %70 = icmp ne i32 %68, %69
  br i1 %70, label %80, label %71

71:                                               ; preds = %64
  %72 = load i32*, i32** %11, align 8
  %73 = call i64 @ARR_HASNULL(i32* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %80, label %75

75:                                               ; preds = %71
  %76 = load i32*, i32** %11, align 8
  %77 = call i64 @ARR_ELEMTYPE(i32* %76)
  %78 = load i64, i64* @CHAROID, align 8
  %79 = icmp ne i64 %77, %78
  br i1 %79, label %80, label %83

80:                                               ; preds = %75, %71, %64, %55
  %81 = load i32, i32* @ERROR, align 4
  %82 = call i32 @elog(i32 %81, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %83

83:                                               ; preds = %80, %75
  %84 = load i32*, i32** %11, align 8
  %85 = call i64 @ARR_DATA_PTR(i32* %84)
  %86 = inttoptr i64 %85 to i8*
  store i8* %86, i8** %14, align 8
  %87 = load i64, i64* %9, align 8
  %88 = call i64 @PointerGetDatum(i32* null)
  %89 = icmp ne i64 %87, %88
  br i1 %89, label %90, label %124

90:                                               ; preds = %83
  %91 = load i64, i64* %9, align 8
  %92 = call i32* @DatumGetArrayTypeP(i64 %91)
  store i32* %92, i32** %11, align 8
  %93 = load i32*, i32** %11, align 8
  %94 = call i32 @ARR_NDIM(i32* %93)
  %95 = icmp ne i32 %94, 1
  br i1 %95, label %112, label %96

96:                                               ; preds = %90
  %97 = load i32*, i32** %11, align 8
  %98 = call i32* @ARR_DIMS(i32* %97)
  %99 = getelementptr inbounds i32, i32* %98, i64 0
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* %12, align 4
  %102 = icmp ne i32 %100, %101
  br i1 %102, label %112, label %103

103:                                              ; preds = %96
  %104 = load i32*, i32** %11, align 8
  %105 = call i64 @ARR_HASNULL(i32* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %112, label %107

107:                                              ; preds = %103
  %108 = load i32*, i32** %11, align 8
  %109 = call i64 @ARR_ELEMTYPE(i32* %108)
  %110 = load i64, i64* @TEXTOID, align 8
  %111 = icmp ne i64 %109, %110
  br i1 %111, label %112, label %115

112:                                              ; preds = %107, %103, %96, %90
  %113 = load i32, i32* @ERROR, align 4
  %114 = call i32 @elog(i32 %113, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  br label %115

115:                                              ; preds = %112, %107
  %116 = load i32*, i32** %11, align 8
  %117 = load i64, i64* @TEXTOID, align 8
  %118 = call i32 @deconstruct_array(i32* %116, i64 %117, i32 -1, i32 0, i8 signext 105, i64** %15, i32* null, i32* %19)
  %119 = load i32, i32* %19, align 4
  %120 = load i32, i32* %12, align 4
  %121 = icmp eq i32 %119, %120
  %122 = zext i1 %121 to i32
  %123 = call i32 @Assert(i32 %122)
  br label %124

124:                                              ; preds = %115, %83
  %125 = load i32, i32* %12, align 4
  %126 = icmp sle i32 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %124
  store i32* null, i32** %5, align 8
  br label %280

128:                                              ; preds = %124
  %129 = load i32, i32* %12, align 4
  %130 = sext i32 %129 to i64
  %131 = mul i64 %130, 4
  %132 = trunc i64 %131 to i32
  %133 = call i64 @palloc(i32 %132)
  %134 = inttoptr i64 %133 to i32*
  store i32* %134, i32** %16, align 8
  %135 = load i32, i32* %12, align 4
  %136 = sext i32 %135 to i64
  %137 = mul i64 %136, 8
  %138 = trunc i64 %137 to i32
  %139 = call i64 @palloc(i32 %138)
  %140 = inttoptr i64 %139 to i8**
  store i8** %140, i8*** %17, align 8
  store i32 0, i32* %18, align 4
  store i32 0, i32* %20, align 4
  br label %141

141:                                              ; preds = %240, %128
  %142 = load i32, i32* %20, align 4
  %143 = load i32, i32* %12, align 4
  %144 = icmp slt i32 %142, %143
  br i1 %144, label %145, label %243

145:                                              ; preds = %141
  %146 = load i8*, i8** %14, align 8
  %147 = load i32, i32* %20, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i8, i8* %146, i64 %148
  %150 = load i8, i8* %149, align 1
  %151 = sext i8 %150 to i32
  %152 = load i8, i8* @PROARGMODE_IN, align 1
  %153 = sext i8 %152 to i32
  %154 = icmp eq i32 %151, %153
  br i1 %154, label %165, label %155

155:                                              ; preds = %145
  %156 = load i8*, i8** %14, align 8
  %157 = load i32, i32* %20, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i8, i8* %156, i64 %158
  %160 = load i8, i8* %159, align 1
  %161 = sext i8 %160 to i32
  %162 = load i8, i8* @PROARGMODE_VARIADIC, align 1
  %163 = sext i8 %162 to i32
  %164 = icmp eq i32 %161, %163
  br i1 %164, label %165, label %166

165:                                              ; preds = %155, %145
  br label %240

166:                                              ; preds = %155
  %167 = load i8*, i8** %14, align 8
  %168 = load i32, i32* %20, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i8, i8* %167, i64 %169
  %171 = load i8, i8* %170, align 1
  %172 = sext i8 %171 to i32
  %173 = load i8, i8* @PROARGMODE_OUT, align 1
  %174 = sext i8 %173 to i32
  %175 = icmp eq i32 %172, %174
  br i1 %175, label %196, label %176

176:                                              ; preds = %166
  %177 = load i8*, i8** %14, align 8
  %178 = load i32, i32* %20, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i8, i8* %177, i64 %179
  %181 = load i8, i8* %180, align 1
  %182 = sext i8 %181 to i32
  %183 = load i8, i8* @PROARGMODE_INOUT, align 1
  %184 = sext i8 %183 to i32
  %185 = icmp eq i32 %182, %184
  br i1 %185, label %196, label %186

186:                                              ; preds = %176
  %187 = load i8*, i8** %14, align 8
  %188 = load i32, i32* %20, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i8, i8* %187, i64 %189
  %191 = load i8, i8* %190, align 1
  %192 = sext i8 %191 to i32
  %193 = load i8, i8* @PROARGMODE_TABLE, align 1
  %194 = sext i8 %193 to i32
  %195 = icmp eq i32 %192, %194
  br label %196

196:                                              ; preds = %186, %176, %166
  %197 = phi i1 [ true, %176 ], [ true, %166 ], [ %195, %186 ]
  %198 = zext i1 %197 to i32
  %199 = call i32 @Assert(i32 %198)
  %200 = load i32*, i32** %13, align 8
  %201 = load i32, i32* %20, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i32, i32* %200, i64 %202
  %204 = load i32, i32* %203, align 4
  %205 = load i32*, i32** %16, align 8
  %206 = load i32, i32* %18, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i32, i32* %205, i64 %207
  store i32 %204, i32* %208, align 4
  %209 = load i64*, i64** %15, align 8
  %210 = icmp ne i64* %209, null
  br i1 %210, label %211, label %218

211:                                              ; preds = %196
  %212 = load i64*, i64** %15, align 8
  %213 = load i32, i32* %20, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds i64, i64* %212, i64 %214
  %216 = load i64, i64* %215, align 8
  %217 = call i8* @TextDatumGetCString(i64 %216)
  store i8* %217, i8** %21, align 8
  br label %219

218:                                              ; preds = %196
  store i8* null, i8** %21, align 8
  br label %219

219:                                              ; preds = %218, %211
  %220 = load i8*, i8** %21, align 8
  %221 = icmp eq i8* %220, null
  br i1 %221, label %228, label %222

222:                                              ; preds = %219
  %223 = load i8*, i8** %21, align 8
  %224 = getelementptr inbounds i8, i8* %223, i64 0
  %225 = load i8, i8* %224, align 1
  %226 = sext i8 %225 to i32
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %228, label %232

228:                                              ; preds = %222, %219
  %229 = load i32, i32* %18, align 4
  %230 = add nsw i32 %229, 1
  %231 = call i8* @psprintf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 %230)
  store i8* %231, i8** %21, align 8
  br label %232

232:                                              ; preds = %228, %222
  %233 = load i8*, i8** %21, align 8
  %234 = load i8**, i8*** %17, align 8
  %235 = load i32, i32* %18, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds i8*, i8** %234, i64 %236
  store i8* %233, i8** %237, align 8
  %238 = load i32, i32* %18, align 4
  %239 = add nsw i32 %238, 1
  store i32 %239, i32* %18, align 4
  br label %240

240:                                              ; preds = %232, %165
  %241 = load i32, i32* %20, align 4
  %242 = add nsw i32 %241, 1
  store i32 %242, i32* %20, align 4
  br label %141

243:                                              ; preds = %141
  %244 = load i32, i32* %18, align 4
  %245 = icmp slt i32 %244, 2
  br i1 %245, label %246, label %253

246:                                              ; preds = %243
  %247 = load i8, i8* %6, align 1
  %248 = sext i8 %247 to i32
  %249 = load i8, i8* @PROKIND_PROCEDURE, align 1
  %250 = sext i8 %249 to i32
  %251 = icmp ne i32 %248, %250
  br i1 %251, label %252, label %253

252:                                              ; preds = %246
  store i32* null, i32** %5, align 8
  br label %280

253:                                              ; preds = %246, %243
  %254 = load i32, i32* %18, align 4
  %255 = call i32* @CreateTemplateTupleDesc(i32 %254)
  store i32* %255, i32** %10, align 8
  store i32 0, i32* %20, align 4
  br label %256

256:                                              ; preds = %275, %253
  %257 = load i32, i32* %20, align 4
  %258 = load i32, i32* %18, align 4
  %259 = icmp slt i32 %257, %258
  br i1 %259, label %260, label %278

260:                                              ; preds = %256
  %261 = load i32*, i32** %10, align 8
  %262 = load i32, i32* %20, align 4
  %263 = add nsw i32 %262, 1
  %264 = load i8**, i8*** %17, align 8
  %265 = load i32, i32* %20, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds i8*, i8** %264, i64 %266
  %268 = load i8*, i8** %267, align 8
  %269 = load i32*, i32** %16, align 8
  %270 = load i32, i32* %20, align 4
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds i32, i32* %269, i64 %271
  %273 = load i32, i32* %272, align 4
  %274 = call i32 @TupleDescInitEntry(i32* %261, i32 %263, i8* %268, i32 %273, i32 -1, i32 0)
  br label %275

275:                                              ; preds = %260
  %276 = load i32, i32* %20, align 4
  %277 = add nsw i32 %276, 1
  store i32 %277, i32* %20, align 4
  br label %256

278:                                              ; preds = %256
  %279 = load i32*, i32** %10, align 8
  store i32* %279, i32** %5, align 8
  br label %280

280:                                              ; preds = %278, %252, %127, %29
  %281 = load i32*, i32** %5, align 8
  ret i32* %281
}

declare dso_local i64 @PointerGetDatum(i32*) #1

declare dso_local i32* @DatumGetArrayTypeP(i64) #1

declare dso_local i32* @ARR_DIMS(i32*) #1

declare dso_local i32 @ARR_NDIM(i32*) #1

declare dso_local i64 @ARR_HASNULL(i32*) #1

declare dso_local i64 @ARR_ELEMTYPE(i32*) #1

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i64 @ARR_DATA_PTR(i32*) #1

declare dso_local i32 @deconstruct_array(i32*, i64, i32, i32, i8 signext, i64**, i32*, i32*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i64 @palloc(i32) #1

declare dso_local i8* @TextDatumGetCString(i64) #1

declare dso_local i8* @psprintf(i8*, i32) #1

declare dso_local i32* @CreateTemplateTupleDesc(i32) #1

declare dso_local i32 @TupleDescInitEntry(i32*, i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
