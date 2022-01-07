; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_arrayfuncs.c_array_contain_compare.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_arrayfuncs.c_array_contain_compare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32, i8* }
%struct.TYPE_21__ = type { %struct.TYPE_23__ }
%struct.TYPE_23__ = type { i8**, i32*, i32 }
%struct.TYPE_20__ = type { i64, i32, i32, i8, %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32 }

@locfcinfo = common dso_local global %struct.TYPE_22__* null, align 8
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_DATATYPE_MISMATCH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"cannot compare arrays of different element types\00", align 1
@TYPECACHE_EQ_OPR_FINFO = common dso_local global i32 0, align 4
@ERRCODE_UNDEFINED_FUNCTION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"could not identify an equality operator for type %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_21__*, %struct.TYPE_21__*, i64, i32, i8**)* @array_contain_compare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @array_contain_compare(%struct.TYPE_21__* %0, %struct.TYPE_21__* %1, i64 %2, i32 %3, i8** %4) #0 {
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca %struct.TYPE_21__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_20__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8**, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8, align 1
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i8*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i8*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %6, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i8** %4, i8*** %10, align 8
  %29 = load %struct.TYPE_22__*, %struct.TYPE_22__** @locfcinfo, align 8
  %30 = call i32 @LOCAL_FCINFO(%struct.TYPE_22__* %29, i32 2)
  %31 = load i32, i32* %9, align 4
  store i32 %31, i32* %11, align 4
  %32 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %33 = call i64 @AARR_ELEMTYPE(%struct.TYPE_21__* %32)
  store i64 %33, i64* %12, align 8
  %34 = load i64, i64* %12, align 8
  %35 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %36 = call i64 @AARR_ELEMTYPE(%struct.TYPE_21__* %35)
  %37 = icmp ne i64 %34, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %5
  %39 = load i32, i32* @ERROR, align 4
  %40 = load i32, i32* @ERRCODE_DATATYPE_MISMATCH, align 4
  %41 = call i32 @errcode(i32 %40)
  %42 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %43 = call i32 @ereport(i32 %39, i32 %42)
  br label %44

44:                                               ; preds = %38, %5
  %45 = load i8**, i8*** %10, align 8
  %46 = load i8*, i8** %45, align 8
  %47 = bitcast i8* %46 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %47, %struct.TYPE_20__** %13, align 8
  %48 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %49 = icmp eq %struct.TYPE_20__* %48, null
  br i1 %49, label %56, label %50

50:                                               ; preds = %44
  %51 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %52 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* %12, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %78

56:                                               ; preds = %50, %44
  %57 = load i64, i64* %12, align 8
  %58 = load i32, i32* @TYPECACHE_EQ_OPR_FINFO, align 4
  %59 = call %struct.TYPE_20__* @lookup_type_cache(i64 %57, i32 %58)
  store %struct.TYPE_20__* %59, %struct.TYPE_20__** %13, align 8
  %60 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %61 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %60, i32 0, i32 4
  %62 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @OidIsValid(i32 %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %74, label %66

66:                                               ; preds = %56
  %67 = load i32, i32* @ERROR, align 4
  %68 = load i32, i32* @ERRCODE_UNDEFINED_FUNCTION, align 4
  %69 = call i32 @errcode(i32 %68)
  %70 = load i64, i64* %12, align 8
  %71 = call i32 @format_type_be(i64 %70)
  %72 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 %71)
  %73 = call i32 @ereport(i32 %67, i32 %72)
  br label %74

74:                                               ; preds = %66, %56
  %75 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %76 = bitcast %struct.TYPE_20__* %75 to i8*
  %77 = load i8**, i8*** %10, align 8
  store i8* %76, i8** %77, align 8
  br label %78

78:                                               ; preds = %74, %50
  %79 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %80 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  store i32 %81, i32* %18, align 4
  %82 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %83 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  store i32 %84, i32* %19, align 4
  %85 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %86 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %85, i32 0, i32 3
  %87 = load i8, i8* %86, align 8
  store i8 %87, i8* %20, align 1
  %88 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %89 = call i64 @VARATT_IS_EXPANDED_HEADER(%struct.TYPE_21__* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %107

91:                                               ; preds = %78
  %92 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %92, i32 0, i32 0
  %94 = call i32 @deconstruct_expanded_array(%struct.TYPE_23__* %93)
  %95 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %96, i32 0, i32 0
  %98 = load i8**, i8*** %97, align 8
  store i8** %98, i8*** %15, align 8
  %99 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %100, i32 0, i32 1
  %102 = load i32*, i32** %101, align 8
  store i32* %102, i32** %16, align 8
  %103 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  store i32 %106, i32* %17, align 4
  br label %115

107:                                              ; preds = %78
  %108 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %109 = bitcast %struct.TYPE_21__* %108 to i32*
  %110 = load i64, i64* %12, align 8
  %111 = load i32, i32* %18, align 4
  %112 = load i32, i32* %19, align 4
  %113 = load i8, i8* %20, align 1
  %114 = call i32 @deconstruct_array(i32* %109, i64 %110, i32 %111, i32 %112, i8 signext %113, i8*** %15, i32** %16, i32* %17)
  br label %115

115:                                              ; preds = %107, %91
  %116 = load %struct.TYPE_22__*, %struct.TYPE_22__** @locfcinfo, align 8
  %117 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %118 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %117, i32 0, i32 4
  %119 = load i64, i64* %8, align 8
  %120 = bitcast %struct.TYPE_22__* %116 to { i32, %struct.TYPE_19__* }*
  %121 = getelementptr inbounds { i32, %struct.TYPE_19__* }, { i32, %struct.TYPE_19__* }* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = getelementptr inbounds { i32, %struct.TYPE_19__* }, { i32, %struct.TYPE_19__* }* %120, i32 0, i32 1
  %124 = load %struct.TYPE_19__*, %struct.TYPE_19__** %123, align 8
  %125 = call i32 @InitFunctionCallInfoData(i32 %122, %struct.TYPE_19__* %124, %struct.TYPE_18__* %118, i32 2, i64 %119, i32* null, i32* null)
  %126 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %127 = call i32 @AARR_NDIM(%struct.TYPE_21__* %126)
  %128 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %129 = call i32 @AARR_DIMS(%struct.TYPE_21__* %128)
  %130 = call i32 @ArrayGetNItems(i32 %127, i32 %129)
  store i32 %130, i32* %14, align 4
  %131 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %132 = call i32 @array_iter_setup(i32* %23, %struct.TYPE_21__* %131)
  store i32 0, i32* %21, align 4
  br label %133

133:                                              ; preds = %225, %115
  %134 = load i32, i32* %21, align 4
  %135 = load i32, i32* %14, align 4
  %136 = icmp slt i32 %134, %135
  br i1 %136, label %137, label %228

137:                                              ; preds = %133
  %138 = load i32, i32* %21, align 4
  %139 = load i32, i32* %18, align 4
  %140 = load i32, i32* %19, align 4
  %141 = load i8, i8* %20, align 1
  %142 = call i8* @array_iter_next(i32* %23, i32* %25, i32 %138, i32 %139, i32 %140, i8 signext %141)
  store i8* %142, i8** %24, align 8
  %143 = load i32, i32* %25, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %150

145:                                              ; preds = %137
  %146 = load i32, i32* %9, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %145
  store i32 0, i32* %11, align 4
  br label %228

149:                                              ; preds = %145
  br label %225

150:                                              ; preds = %137
  store i32 0, i32* %22, align 4
  br label %151

151:                                              ; preds = %207, %150
  %152 = load i32, i32* %22, align 4
  %153 = load i32, i32* %17, align 4
  %154 = icmp slt i32 %152, %153
  br i1 %154, label %155, label %210

155:                                              ; preds = %151
  %156 = load i8**, i8*** %15, align 8
  %157 = load i32, i32* %22, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i8*, i8** %156, i64 %158
  %160 = load i8*, i8** %159, align 8
  store i8* %160, i8** %26, align 8
  %161 = load i32*, i32** %16, align 8
  %162 = icmp ne i32* %161, null
  br i1 %162, label %163, label %169

163:                                              ; preds = %155
  %164 = load i32*, i32** %16, align 8
  %165 = load i32, i32* %22, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i32, i32* %164, i64 %166
  %168 = load i32, i32* %167, align 4
  br label %170

169:                                              ; preds = %155
  br label %170

170:                                              ; preds = %169, %163
  %171 = phi i32 [ %168, %163 ], [ 0, %169 ]
  store i32 %171, i32* %27, align 4
  %172 = load i32, i32* %27, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %175

174:                                              ; preds = %170
  br label %207

175:                                              ; preds = %170
  %176 = load i8*, i8** %24, align 8
  %177 = load %struct.TYPE_22__*, %struct.TYPE_22__** @locfcinfo, align 8
  %178 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %177, i32 0, i32 1
  %179 = load %struct.TYPE_19__*, %struct.TYPE_19__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %179, i64 0
  %181 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %180, i32 0, i32 1
  store i8* %176, i8** %181, align 8
  %182 = load %struct.TYPE_22__*, %struct.TYPE_22__** @locfcinfo, align 8
  %183 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %182, i32 0, i32 1
  %184 = load %struct.TYPE_19__*, %struct.TYPE_19__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %184, i64 0
  %186 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %185, i32 0, i32 0
  store i32 0, i32* %186, align 8
  %187 = load i8*, i8** %26, align 8
  %188 = load %struct.TYPE_22__*, %struct.TYPE_22__** @locfcinfo, align 8
  %189 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %188, i32 0, i32 1
  %190 = load %struct.TYPE_19__*, %struct.TYPE_19__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %190, i64 1
  %192 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %191, i32 0, i32 1
  store i8* %187, i8** %192, align 8
  %193 = load %struct.TYPE_22__*, %struct.TYPE_22__** @locfcinfo, align 8
  %194 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %193, i32 0, i32 1
  %195 = load %struct.TYPE_19__*, %struct.TYPE_19__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %195, i64 1
  %197 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %196, i32 0, i32 0
  store i32 0, i32* %197, align 8
  %198 = load %struct.TYPE_22__*, %struct.TYPE_22__** @locfcinfo, align 8
  %199 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %198, i32 0, i32 0
  store i32 0, i32* %199, align 8
  %200 = load %struct.TYPE_22__*, %struct.TYPE_22__** @locfcinfo, align 8
  %201 = call i32 @FunctionCallInvoke(%struct.TYPE_22__* %200)
  %202 = call i32 @DatumGetBool(i32 %201)
  store i32 %202, i32* %28, align 4
  %203 = load i32, i32* %28, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %206

205:                                              ; preds = %175
  br label %210

206:                                              ; preds = %175
  br label %207

207:                                              ; preds = %206, %174
  %208 = load i32, i32* %22, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %22, align 4
  br label %151

210:                                              ; preds = %205, %151
  %211 = load i32, i32* %22, align 4
  %212 = load i32, i32* %17, align 4
  %213 = icmp slt i32 %211, %212
  br i1 %213, label %214, label %219

214:                                              ; preds = %210
  %215 = load i32, i32* %9, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %218, label %217

217:                                              ; preds = %214
  store i32 1, i32* %11, align 4
  br label %228

218:                                              ; preds = %214
  br label %224

219:                                              ; preds = %210
  %220 = load i32, i32* %9, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %223

222:                                              ; preds = %219
  store i32 0, i32* %11, align 4
  br label %228

223:                                              ; preds = %219
  br label %224

224:                                              ; preds = %223, %218
  br label %225

225:                                              ; preds = %224, %149
  %226 = load i32, i32* %21, align 4
  %227 = add nsw i32 %226, 1
  store i32 %227, i32* %21, align 4
  br label %133

228:                                              ; preds = %222, %217, %148, %133
  %229 = load i32, i32* %11, align 4
  ret i32 %229
}

declare dso_local i32 @LOCAL_FCINFO(%struct.TYPE_22__*, i32) #1

declare dso_local i64 @AARR_ELEMTYPE(%struct.TYPE_21__*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, ...) #1

declare dso_local %struct.TYPE_20__* @lookup_type_cache(i64, i32) #1

declare dso_local i32 @OidIsValid(i32) #1

declare dso_local i32 @format_type_be(i64) #1

declare dso_local i64 @VARATT_IS_EXPANDED_HEADER(%struct.TYPE_21__*) #1

declare dso_local i32 @deconstruct_expanded_array(%struct.TYPE_23__*) #1

declare dso_local i32 @deconstruct_array(i32*, i64, i32, i32, i8 signext, i8***, i32**, i32*) #1

declare dso_local i32 @InitFunctionCallInfoData(i32, %struct.TYPE_19__*, %struct.TYPE_18__*, i32, i64, i32*, i32*) #1

declare dso_local i32 @ArrayGetNItems(i32, i32) #1

declare dso_local i32 @AARR_NDIM(%struct.TYPE_21__*) #1

declare dso_local i32 @AARR_DIMS(%struct.TYPE_21__*) #1

declare dso_local i32 @array_iter_setup(i32*, %struct.TYPE_21__*) #1

declare dso_local i8* @array_iter_next(i32*, i32*, i32, i32, i32, i8 signext) #1

declare dso_local i32 @DatumGetBool(i32) #1

declare dso_local i32 @FunctionCallInvoke(%struct.TYPE_22__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
