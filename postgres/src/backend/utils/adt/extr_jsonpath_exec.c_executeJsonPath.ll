; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_jsonpath_exec.c_executeJsonPath.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_jsonpath_exec.c_executeJsonPath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_19__ = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_16__, i32*, i32*, %struct.TYPE_17__* }
%struct.TYPE_16__ = type { i64, i32* }

@ERROR = common dso_local global i32 0, align 4
@ERRCODE_INVALID_PARAMETER_VALUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"\22vars\22 argument is not an object\00", align 1
@.str.1 = private unnamed_addr constant [75 x i8] c"Jsonpath parameters should be encoded as key-value pairs of \22vars\22 object.\00", align 1
@JSONPATH_LAX = common dso_local global i32 0, align 4
@jperNotFound = common dso_local global i32 0, align 4
@jperOk = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_20__*, %struct.TYPE_17__*, %struct.TYPE_17__*, i32, %struct.TYPE_18__*, i32)* @executeJsonPath to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @executeJsonPath(%struct.TYPE_20__* %0, %struct.TYPE_17__* %1, %struct.TYPE_17__* %2, i32 %3, %struct.TYPE_18__* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_20__*, align 8
  %9 = alloca %struct.TYPE_17__*, align 8
  %10 = alloca %struct.TYPE_17__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_18__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_19__, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_18__, align 4
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %8, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %9, align 8
  store %struct.TYPE_17__* %2, %struct.TYPE_17__** %10, align 8
  store i32 %3, i32* %11, align 4
  store %struct.TYPE_18__* %4, %struct.TYPE_18__** %12, align 8
  store i32 %5, i32* %13, align 4
  %19 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %20 = call i32 @jspInit(i32* %16, %struct.TYPE_20__* %19)
  %21 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %22 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %21, i32 0, i32 0
  %23 = call i32 @JsonbExtractScalar(i32* %22, i32* %17)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %6
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %27 = call i32 @JsonbInitBinary(i32* %17, %struct.TYPE_17__* %26)
  br label %28

28:                                               ; preds = %25, %6
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %30 = icmp ne %struct.TYPE_17__* %29, null
  br i1 %30, label %31, label %43

31:                                               ; preds = %28
  %32 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %32, i32 0, i32 0
  %34 = call i32 @JsonContainerIsObject(i32* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %31
  %37 = load i32, i32* @ERROR, align 4
  %38 = load i32, i32* @ERRCODE_INVALID_PARAMETER_VALUE, align 4
  %39 = call i32 @errcode(i32 %38)
  %40 = call i32 @errmsg(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %41 = call i32 @errdetail(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.1, i64 0, i64 0))
  %42 = call i32 @ereport(i32 %37, i32 %41)
  br label %43

43:                                               ; preds = %36, %31, %28
  %44 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %14, i32 0, i32 9
  store %struct.TYPE_17__* %44, %struct.TYPE_17__** %45, align 8
  %46 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @JSONPATH_LAX, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  %52 = zext i1 %51 to i32
  %53 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %14, i32 0, i32 0
  store i32 %52, i32* %53, align 8
  %54 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %14, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %14, i32 0, i32 1
  store i32 %55, i32* %56, align 4
  %57 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %14, i32 0, i32 8
  store i32* %17, i32** %57, align 8
  %58 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %14, i32 0, i32 7
  store i32* %17, i32** %58, align 8
  %59 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %14, i32 0, i32 6
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 1
  store i32* null, i32** %60, align 8
  %61 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %14, i32 0, i32 6
  %62 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %61, i32 0, i32 0
  store i64 0, i64* %62, align 8
  %63 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %64 = icmp ne %struct.TYPE_17__* %63, null
  %65 = zext i1 %64 to i64
  %66 = select i1 %64, i32 2, i32 1
  %67 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %14, i32 0, i32 2
  store i32 %66, i32* %67, align 8
  %68 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %14, i32 0, i32 3
  store i32 -1, i32* %68, align 4
  %69 = load i32, i32* %11, align 4
  %70 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %14, i32 0, i32 4
  store i32 %69, i32* %70, align 8
  %71 = load i32, i32* %13, align 4
  %72 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %14, i32 0, i32 5
  store i32 %71, i32* %72, align 4
  %73 = call i64 @jspStrictAbsenseOfErrors(%struct.TYPE_19__* %14)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %95

75:                                               ; preds = %43
  %76 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %77 = icmp ne %struct.TYPE_18__* %76, null
  br i1 %77, label %95, label %78

78:                                               ; preds = %75
  %79 = bitcast %struct.TYPE_18__* %18 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %79, i8 0, i64 4, i1 false)
  %80 = call i32 @executeItem(%struct.TYPE_19__* %14, i32* %16, i32* %17, %struct.TYPE_18__* %18)
  store i32 %80, i32* %15, align 4
  %81 = load i32, i32* %15, align 4
  %82 = call i64 @jperIsError(i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %78
  %85 = load i32, i32* %15, align 4
  store i32 %85, i32* %7, align 4
  br label %110

86:                                               ; preds = %78
  %87 = call i64 @JsonValueListIsEmpty(%struct.TYPE_18__* %18)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %86
  %90 = load i32, i32* @jperNotFound, align 4
  br label %93

91:                                               ; preds = %86
  %92 = load i32, i32* @jperOk, align 4
  br label %93

93:                                               ; preds = %91, %89
  %94 = phi i32 [ %90, %89 ], [ %92, %91 ]
  store i32 %94, i32* %7, align 4
  br label %110

95:                                               ; preds = %75, %43
  %96 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %97 = call i32 @executeItem(%struct.TYPE_19__* %14, i32* %16, i32* %17, %struct.TYPE_18__* %96)
  store i32 %97, i32* %15, align 4
  %98 = load i32, i32* %11, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %105

100:                                              ; preds = %95
  %101 = load i32, i32* %15, align 4
  %102 = call i64 @jperIsError(i32 %101)
  %103 = icmp ne i64 %102, 0
  %104 = xor i1 %103, true
  br label %105

105:                                              ; preds = %100, %95
  %106 = phi i1 [ true, %95 ], [ %104, %100 ]
  %107 = zext i1 %106 to i32
  %108 = call i32 @Assert(i32 %107)
  %109 = load i32, i32* %15, align 4
  store i32 %109, i32* %7, align 4
  br label %110

110:                                              ; preds = %105, %93, %84
  %111 = load i32, i32* %7, align 4
  ret i32 %111
}

declare dso_local i32 @jspInit(i32*, %struct.TYPE_20__*) #1

declare dso_local i32 @JsonbExtractScalar(i32*, i32*) #1

declare dso_local i32 @JsonbInitBinary(i32*, %struct.TYPE_17__*) #1

declare dso_local i32 @JsonContainerIsObject(i32*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32 @errdetail(i8*) #1

declare dso_local i64 @jspStrictAbsenseOfErrors(%struct.TYPE_19__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @executeItem(%struct.TYPE_19__*, i32*, i32*, %struct.TYPE_18__*) #1

declare dso_local i64 @jperIsError(i32) #1

declare dso_local i64 @JsonValueListIsEmpty(%struct.TYPE_18__*) #1

declare dso_local i32 @Assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
