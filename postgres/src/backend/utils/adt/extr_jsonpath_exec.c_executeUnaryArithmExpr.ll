; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_jsonpath_exec.c_executeUnaryArithmExpr.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_jsonpath_exec.c_executeUnaryArithmExpr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_27__ = type { i32 }
%struct.TYPE_25__ = type { %struct.TYPE_24__ }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_26__ = type { i32 }

@jperNotFound = common dso_local global i64 0, align 8
@jbvNumeric = common dso_local global i32 0, align 4
@jperOk = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_SQL_JSON_NUMBER_NOT_FOUND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"operand of unary jsonpath operator %s is not a numeric value\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, %struct.TYPE_27__*, %struct.TYPE_25__*, i64, %struct.TYPE_26__*)* @executeUnaryArithmExpr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @executeUnaryArithmExpr(i32* %0, %struct.TYPE_27__* %1, %struct.TYPE_25__* %2, i64 %3, %struct.TYPE_26__* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_27__*, align 8
  %9 = alloca %struct.TYPE_25__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_26__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_27__, align 4
  %15 = alloca %struct.TYPE_26__, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_25__*, align 8
  %18 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_27__* %1, %struct.TYPE_27__** %8, align 8
  store %struct.TYPE_25__* %2, %struct.TYPE_25__** %9, align 8
  store i64 %3, i64* %10, align 8
  store %struct.TYPE_26__* %4, %struct.TYPE_26__** %11, align 8
  %19 = bitcast %struct.TYPE_26__* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %19, i8 0, i64 4, i1 false)
  %20 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %21 = call i32 @jspGetArg(%struct.TYPE_27__* %20, %struct.TYPE_27__* %14)
  %22 = load i32*, i32** %7, align 8
  %23 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %24 = call i64 @executeItemOptUnwrapResult(i32* %22, %struct.TYPE_27__* %14, %struct.TYPE_25__* %23, i32 1, %struct.TYPE_26__* %15)
  store i64 %24, i64* %12, align 8
  %25 = load i64, i64* %12, align 8
  %26 = call i64 @jperIsError(i64 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %5
  %29 = load i64, i64* %12, align 8
  store i64 %29, i64* %6, align 8
  br label %110

30:                                               ; preds = %5
  %31 = load i64, i64* @jperNotFound, align 8
  store i64 %31, i64* %12, align 8
  %32 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %33 = call i32 @jspGetNext(%struct.TYPE_27__* %32, %struct.TYPE_27__* %14)
  store i32 %33, i32* %18, align 4
  %34 = call i32 @JsonValueListInitIterator(%struct.TYPE_26__* %15, i32* %16)
  br label %35

35:                                               ; preds = %107, %58, %30
  %36 = call %struct.TYPE_25__* @JsonValueListNext(%struct.TYPE_26__* %15, i32* %16)
  store %struct.TYPE_25__* %36, %struct.TYPE_25__** %17, align 8
  %37 = icmp ne %struct.TYPE_25__* %36, null
  br i1 %37, label %38, label %108

38:                                               ; preds = %35
  %39 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %40 = load i32, i32* @jbvNumeric, align 4
  %41 = call %struct.TYPE_25__* @getScalar(%struct.TYPE_25__* %39, i32 %40)
  store %struct.TYPE_25__* %41, %struct.TYPE_25__** %17, align 8
  %42 = icmp ne %struct.TYPE_25__* %41, null
  br i1 %42, label %43, label %52

43:                                               ; preds = %38
  %44 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %45 = icmp ne %struct.TYPE_26__* %44, null
  br i1 %45, label %51, label %46

46:                                               ; preds = %43
  %47 = load i32, i32* %18, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %46
  %50 = load i64, i64* @jperOk, align 8
  store i64 %50, i64* %6, align 8
  br label %110

51:                                               ; preds = %46, %43
  br label %70

52:                                               ; preds = %38
  %53 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %54 = icmp ne %struct.TYPE_26__* %53, null
  br i1 %54, label %59, label %55

55:                                               ; preds = %52
  %56 = load i32, i32* %18, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %55
  br label %35

59:                                               ; preds = %55, %52
  %60 = load i32, i32* @ERROR, align 4
  %61 = load i32, i32* @ERRCODE_SQL_JSON_NUMBER_NOT_FOUND, align 4
  %62 = call i32 @errcode(i32 %61)
  %63 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @jspOperationName(i32 %65)
  %67 = call i32 @errmsg(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32 %66)
  %68 = call i32 @ereport(i32 %60, i32 %67)
  %69 = call i32 @RETURN_ERROR(i32 %68)
  br label %70

70:                                               ; preds = %59, %51
  %71 = load i64, i64* %10, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %85

73:                                               ; preds = %70
  %74 = load i64, i64* %10, align 8
  %75 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %76 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @NumericGetDatum(i32 %78)
  %80 = call i32 @DirectFunctionCall1(i64 %74, i32 %79)
  %81 = call i32 @DatumGetNumeric(i32 %80)
  %82 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %83 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %83, i32 0, i32 0
  store i32 %81, i32* %84, align 4
  br label %85

85:                                               ; preds = %73, %70
  %86 = load i32*, i32** %7, align 8
  %87 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %88 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %89 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %90 = call i64 @executeNextItem(i32* %86, %struct.TYPE_27__* %87, %struct.TYPE_27__* %14, %struct.TYPE_25__* %88, %struct.TYPE_26__* %89, i32 0)
  store i64 %90, i64* %13, align 8
  %91 = load i64, i64* %13, align 8
  %92 = call i64 @jperIsError(i64 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %85
  %95 = load i64, i64* %13, align 8
  store i64 %95, i64* %6, align 8
  br label %110

96:                                               ; preds = %85
  %97 = load i64, i64* %13, align 8
  %98 = load i64, i64* @jperOk, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %107

100:                                              ; preds = %96
  %101 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %102 = icmp ne %struct.TYPE_26__* %101, null
  br i1 %102, label %105, label %103

103:                                              ; preds = %100
  %104 = load i64, i64* @jperOk, align 8
  store i64 %104, i64* %6, align 8
  br label %110

105:                                              ; preds = %100
  %106 = load i64, i64* @jperOk, align 8
  store i64 %106, i64* %12, align 8
  br label %107

107:                                              ; preds = %105, %96
  br label %35

108:                                              ; preds = %35
  %109 = load i64, i64* %12, align 8
  store i64 %109, i64* %6, align 8
  br label %110

110:                                              ; preds = %108, %103, %94, %49, %28
  %111 = load i64, i64* %6, align 8
  ret i64 %111
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @jspGetArg(%struct.TYPE_27__*, %struct.TYPE_27__*) #2

declare dso_local i64 @executeItemOptUnwrapResult(i32*, %struct.TYPE_27__*, %struct.TYPE_25__*, i32, %struct.TYPE_26__*) #2

declare dso_local i64 @jperIsError(i64) #2

declare dso_local i32 @jspGetNext(%struct.TYPE_27__*, %struct.TYPE_27__*) #2

declare dso_local i32 @JsonValueListInitIterator(%struct.TYPE_26__*, i32*) #2

declare dso_local %struct.TYPE_25__* @JsonValueListNext(%struct.TYPE_26__*, i32*) #2

declare dso_local %struct.TYPE_25__* @getScalar(%struct.TYPE_25__*, i32) #2

declare dso_local i32 @RETURN_ERROR(i32) #2

declare dso_local i32 @ereport(i32, i32) #2

declare dso_local i32 @errcode(i32) #2

declare dso_local i32 @errmsg(i8*, i32) #2

declare dso_local i32 @jspOperationName(i32) #2

declare dso_local i32 @DatumGetNumeric(i32) #2

declare dso_local i32 @DirectFunctionCall1(i64, i32) #2

declare dso_local i32 @NumericGetDatum(i32) #2

declare dso_local i64 @executeNextItem(i32*, %struct.TYPE_27__*, %struct.TYPE_27__*, %struct.TYPE_25__*, %struct.TYPE_26__*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
