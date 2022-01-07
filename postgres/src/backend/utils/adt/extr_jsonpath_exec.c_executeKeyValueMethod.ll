; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_jsonpath_exec.c_executeKeyValueMethod.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_jsonpath_exec.c_executeKeyValueMethod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_31__ = type { %struct.TYPE_32__, i32 }
%struct.TYPE_32__ = type { i64, i64 }
%struct.TYPE_30__ = type { i32 }
%struct.TYPE_29__ = type { i64, %struct.TYPE_28__ }
%struct.TYPE_28__ = type { i32, %struct.TYPE_27__, %struct.TYPE_26__ }
%struct.TYPE_27__ = type { i8*, i32 }
%struct.TYPE_26__ = type { i32* }

@jperNotFound = common dso_local global i32 0, align 4
@jbvObject = common dso_local global i64 0, align 8
@jbvBinary = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_SQL_JSON_OBJECT_NOT_FOUND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"jsonpath item method .%s() can only be applied to an object\00", align 1
@jbvString = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"key\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"value\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@jbvNumeric = common dso_local global i64 0, align 8
@int8_numeric = common dso_local global i32 0, align 4
@WJB_DONE = common dso_local global i64 0, align 8
@WJB_KEY = common dso_local global i64 0, align 8
@jperOk = common dso_local global i32 0, align 4
@WJB_VALUE = common dso_local global i64 0, align 8
@WJB_BEGIN_OBJECT = common dso_local global i64 0, align 8
@WJB_END_OBJECT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_31__*, %struct.TYPE_30__*, %struct.TYPE_29__*, i32*)* @executeKeyValueMethod to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @executeKeyValueMethod(%struct.TYPE_31__* %0, %struct.TYPE_30__* %1, %struct.TYPE_29__* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_31__*, align 8
  %7 = alloca %struct.TYPE_30__*, align 8
  %8 = alloca %struct.TYPE_29__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_30__, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_29__, align 8
  %14 = alloca %struct.TYPE_29__, align 8
  %15 = alloca %struct.TYPE_29__, align 8
  %16 = alloca %struct.TYPE_29__, align 8
  %17 = alloca %struct.TYPE_29__, align 8
  %18 = alloca %struct.TYPE_29__, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.TYPE_32__, align 8
  %24 = alloca %struct.TYPE_29__, align 8
  %25 = alloca i32*, align 8
  %26 = alloca %struct.TYPE_29__*, align 8
  %27 = alloca i32*, align 8
  %28 = alloca %struct.TYPE_32__, align 8
  store %struct.TYPE_31__* %0, %struct.TYPE_31__** %6, align 8
  store %struct.TYPE_30__* %1, %struct.TYPE_30__** %7, align 8
  store %struct.TYPE_29__* %2, %struct.TYPE_29__** %8, align 8
  store i32* %3, i32** %9, align 8
  %29 = load i32, i32* @jperNotFound, align 4
  store i32 %29, i32* %10, align 4
  %30 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %31 = call i64 @JsonbType(%struct.TYPE_29__* %30)
  %32 = load i64, i64* @jbvObject, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %40, label %34

34:                                               ; preds = %4
  %35 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @jbvBinary, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %51

40:                                               ; preds = %34, %4
  %41 = load i32, i32* @ERROR, align 4
  %42 = load i32, i32* @ERRCODE_SQL_JSON_OBJECT_NOT_FOUND, align 4
  %43 = call i32 @errcode(i32 %42)
  %44 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @jspOperationName(i32 %46)
  %48 = call i32 @errmsg(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i32 %47)
  %49 = call i32 @ereport(i32 %41, i32 %48)
  %50 = call i32 @RETURN_ERROR(i32 %49)
  br label %51

51:                                               ; preds = %40, %34
  %52 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  store i32* %56, i32** %12, align 8
  %57 = load i32*, i32** %12, align 8
  %58 = call i32 @JsonContainerSize(i32* %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %62, label %60

60:                                               ; preds = %51
  %61 = load i32, i32* @jperNotFound, align 4
  store i32 %61, i32* %5, align 4
  br label %213

62:                                               ; preds = %51
  %63 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %64 = call i32 @jspGetNext(%struct.TYPE_30__* %63, %struct.TYPE_30__* %11)
  store i32 %64, i32* %22, align 4
  %65 = load i8*, i8** @jbvString, align 8
  %66 = ptrtoint i8* %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %16, i32 0, i32 0
  store i64 %66, i64* %67, align 8
  %68 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %16, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %69, i32 0, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %70, align 8
  %71 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %16, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %72, i32 0, i32 1
  store i32 3, i32* %73, align 8
  %74 = load i8*, i8** @jbvString, align 8
  %75 = ptrtoint i8* %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %17, i32 0, i32 0
  store i64 %75, i64* %76, align 8
  %77 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %17, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %78, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8** %79, align 8
  %80 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %17, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %81, i32 0, i32 1
  store i32 5, i32* %82, align 8
  %83 = load i8*, i8** @jbvString, align 8
  %84 = ptrtoint i8* %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %18, i32 0, i32 0
  store i64 %84, i64* %85, align 8
  %86 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %18, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %87, i32 0, i32 0
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8** %88, align 8
  %89 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %18, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %90, i32 0, i32 1
  store i32 2, i32* %91, align 8
  %92 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @jbvBinary, align 8
  %96 = icmp ne i64 %94, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %62
  br label %110

98:                                               ; preds = %62
  %99 = load i32*, i32** %12, align 8
  %100 = bitcast i32* %99 to i8*
  %101 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = inttoptr i64 %104 to i8*
  %106 = ptrtoint i8* %100 to i64
  %107 = ptrtoint i8* %105 to i64
  %108 = sub i64 %106, %107
  %109 = trunc i64 %108 to i32
  br label %110

110:                                              ; preds = %98, %97
  %111 = phi i32 [ 0, %97 ], [ %109, %98 ]
  store i32 %111, i32* %21, align 4
  %112 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = trunc i64 %115 to i32
  %117 = call i32 @INT64CONST(i32 1410065408)
  %118 = mul nsw i32 %116, %117
  %119 = load i32, i32* %21, align 4
  %120 = add nsw i32 %119, %118
  store i32 %120, i32* %21, align 4
  %121 = load i64, i64* @jbvNumeric, align 8
  %122 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %15, i32 0, i32 0
  store i64 %121, i64* %122, align 8
  %123 = load i32, i32* @int8_numeric, align 4
  %124 = load i32, i32* %21, align 4
  %125 = call i32 @Int64GetDatum(i32 %124)
  %126 = call i32 @DirectFunctionCall1(i32 %123, i32 %125)
  %127 = call i32 @DatumGetNumeric(i32 %126)
  %128 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %15, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %128, i32 0, i32 0
  store i32 %127, i32* %129, align 8
  %130 = load i32*, i32** %12, align 8
  %131 = call i32* @JsonbIteratorInit(i32* %130)
  store i32* %131, i32** %19, align 8
  br label %132

132:                                              ; preds = %210, %140, %110
  %133 = call i64 @JsonbIteratorNext(i32** %19, %struct.TYPE_29__* %13, i32 1)
  store i64 %133, i64* %20, align 8
  %134 = load i64, i64* @WJB_DONE, align 8
  %135 = icmp ne i64 %133, %134
  br i1 %135, label %136, label %211

136:                                              ; preds = %132
  %137 = load i64, i64* %20, align 8
  %138 = load i64, i64* @WJB_KEY, align 8
  %139 = icmp ne i64 %137, %138
  br i1 %139, label %140, label %141

140:                                              ; preds = %136
  br label %132

141:                                              ; preds = %136
  %142 = load i32, i32* @jperOk, align 4
  store i32 %142, i32* %10, align 4
  %143 = load i32, i32* %22, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %149, label %145

145:                                              ; preds = %141
  %146 = load i32*, i32** %9, align 8
  %147 = icmp ne i32* %146, null
  br i1 %147, label %149, label %148

148:                                              ; preds = %145
  br label %211

149:                                              ; preds = %145, %141
  %150 = call i64 @JsonbIteratorNext(i32** %19, %struct.TYPE_29__* %14, i32 1)
  store i64 %150, i64* %20, align 8
  %151 = load i64, i64* %20, align 8
  %152 = load i64, i64* @WJB_VALUE, align 8
  %153 = icmp eq i64 %151, %152
  %154 = zext i1 %153 to i32
  %155 = call i32 @Assert(i32 %154)
  store i32* null, i32** %25, align 8
  %156 = load i64, i64* @WJB_BEGIN_OBJECT, align 8
  %157 = call %struct.TYPE_29__* @pushJsonbValue(i32** %25, i64 %156, %struct.TYPE_29__* null)
  %158 = load i64, i64* @WJB_KEY, align 8
  %159 = call %struct.TYPE_29__* @pushJsonbValue(i32** %25, i64 %158, %struct.TYPE_29__* %16)
  %160 = load i64, i64* @WJB_VALUE, align 8
  %161 = call %struct.TYPE_29__* @pushJsonbValue(i32** %25, i64 %160, %struct.TYPE_29__* %13)
  %162 = load i64, i64* @WJB_KEY, align 8
  %163 = call %struct.TYPE_29__* @pushJsonbValue(i32** %25, i64 %162, %struct.TYPE_29__* %17)
  %164 = load i64, i64* @WJB_VALUE, align 8
  %165 = call %struct.TYPE_29__* @pushJsonbValue(i32** %25, i64 %164, %struct.TYPE_29__* %14)
  %166 = load i64, i64* @WJB_KEY, align 8
  %167 = call %struct.TYPE_29__* @pushJsonbValue(i32** %25, i64 %166, %struct.TYPE_29__* %18)
  %168 = load i64, i64* @WJB_VALUE, align 8
  %169 = call %struct.TYPE_29__* @pushJsonbValue(i32** %25, i64 %168, %struct.TYPE_29__* %15)
  %170 = load i64, i64* @WJB_END_OBJECT, align 8
  %171 = call %struct.TYPE_29__* @pushJsonbValue(i32** %25, i64 %170, %struct.TYPE_29__* null)
  store %struct.TYPE_29__* %171, %struct.TYPE_29__** %26, align 8
  %172 = load %struct.TYPE_29__*, %struct.TYPE_29__** %26, align 8
  %173 = call i32* @JsonbValueToJsonb(%struct.TYPE_29__* %172)
  store i32* %173, i32** %27, align 8
  %174 = load i32*, i32** %27, align 8
  %175 = call i32 @JsonbInitBinary(%struct.TYPE_29__* %24, i32* %174)
  %176 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %177 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %178 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 8
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %178, align 8
  %181 = call { i64, i64 } @setBaseObject(%struct.TYPE_31__* %176, %struct.TYPE_29__* %24, i32 %179)
  %182 = bitcast %struct.TYPE_32__* %28 to { i64, i64 }*
  %183 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %182, i32 0, i32 0
  %184 = extractvalue { i64, i64 } %181, 0
  store i64 %184, i64* %183, align 8
  %185 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %182, i32 0, i32 1
  %186 = extractvalue { i64, i64 } %181, 1
  store i64 %186, i64* %185, align 8
  %187 = bitcast %struct.TYPE_32__* %23 to i8*
  %188 = bitcast %struct.TYPE_32__* %28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %187, i8* align 8 %188, i64 16, i1 false)
  %189 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %190 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %191 = load i32*, i32** %9, align 8
  %192 = call i32 @executeNextItem(%struct.TYPE_31__* %189, %struct.TYPE_30__* %190, %struct.TYPE_30__* %11, %struct.TYPE_29__* %24, i32* %191, i32 1)
  store i32 %192, i32* %10, align 4
  %193 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %194 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %193, i32 0, i32 0
  %195 = bitcast %struct.TYPE_32__* %194 to i8*
  %196 = bitcast %struct.TYPE_32__* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %195, i8* align 8 %196, i64 16, i1 false)
  %197 = load i32, i32* %10, align 4
  %198 = call i64 @jperIsError(i32 %197)
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %202

200:                                              ; preds = %149
  %201 = load i32, i32* %10, align 4
  store i32 %201, i32* %5, align 4
  br label %213

202:                                              ; preds = %149
  %203 = load i32, i32* %10, align 4
  %204 = load i32, i32* @jperOk, align 4
  %205 = icmp eq i32 %203, %204
  br i1 %205, label %206, label %210

206:                                              ; preds = %202
  %207 = load i32*, i32** %9, align 8
  %208 = icmp ne i32* %207, null
  br i1 %208, label %210, label %209

209:                                              ; preds = %206
  br label %211

210:                                              ; preds = %206, %202
  br label %132

211:                                              ; preds = %209, %148, %132
  %212 = load i32, i32* %10, align 4
  store i32 %212, i32* %5, align 4
  br label %213

213:                                              ; preds = %211, %200, %60
  %214 = load i32, i32* %5, align 4
  ret i32 %214
}

declare dso_local i64 @JsonbType(%struct.TYPE_29__*) #1

declare dso_local i32 @RETURN_ERROR(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i32) #1

declare dso_local i32 @jspOperationName(i32) #1

declare dso_local i32 @JsonContainerSize(i32*) #1

declare dso_local i32 @jspGetNext(%struct.TYPE_30__*, %struct.TYPE_30__*) #1

declare dso_local i32 @INT64CONST(i32) #1

declare dso_local i32 @DatumGetNumeric(i32) #1

declare dso_local i32 @DirectFunctionCall1(i32, i32) #1

declare dso_local i32 @Int64GetDatum(i32) #1

declare dso_local i32* @JsonbIteratorInit(i32*) #1

declare dso_local i64 @JsonbIteratorNext(i32**, %struct.TYPE_29__*, i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local %struct.TYPE_29__* @pushJsonbValue(i32**, i64, %struct.TYPE_29__*) #1

declare dso_local i32* @JsonbValueToJsonb(%struct.TYPE_29__*) #1

declare dso_local i32 @JsonbInitBinary(%struct.TYPE_29__*, i32*) #1

declare dso_local { i64, i64 } @setBaseObject(%struct.TYPE_31__*, %struct.TYPE_29__*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @executeNextItem(%struct.TYPE_31__*, %struct.TYPE_30__*, %struct.TYPE_30__*, %struct.TYPE_29__*, i32*, i32) #1

declare dso_local i64 @jperIsError(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
