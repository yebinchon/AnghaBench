; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_jsonpath_exec.c_executeBinaryArithmExpr.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_jsonpath_exec.c_executeBinaryArithmExpr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_28__ = type { i32 }
%struct.TYPE_26__ = type { %struct.TYPE_25__, i32 }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_27__ = type { i32 }

@jbvNumeric = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_SINGLETON_SQL_JSON_ITEM_REQUIRED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [67 x i8] c"left operand of jsonpath operator %s is not a single numeric value\00", align 1
@.str.1 = private unnamed_addr constant [68 x i8] c"right operand of jsonpath operator %s is not a single numeric value\00", align 1
@jperError = common dso_local global i32 0, align 4
@jperOk = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_28__*, %struct.TYPE_26__*, i32 (i32, i32, i32*)*, %struct.TYPE_27__*)* @executeBinaryArithmExpr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @executeBinaryArithmExpr(i32* %0, %struct.TYPE_28__* %1, %struct.TYPE_26__* %2, i32 (i32, i32, i32*)* %3, %struct.TYPE_27__* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_28__*, align 8
  %9 = alloca %struct.TYPE_26__*, align 8
  %10 = alloca i32 (i32, i32, i32*)*, align 8
  %11 = alloca %struct.TYPE_27__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_28__, align 4
  %14 = alloca %struct.TYPE_27__, align 4
  %15 = alloca %struct.TYPE_27__, align 4
  %16 = alloca %struct.TYPE_26__*, align 8
  %17 = alloca %struct.TYPE_26__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_28__* %1, %struct.TYPE_28__** %8, align 8
  store %struct.TYPE_26__* %2, %struct.TYPE_26__** %9, align 8
  store i32 (i32, i32, i32*)* %3, i32 (i32, i32, i32*)** %10, align 8
  store %struct.TYPE_27__* %4, %struct.TYPE_27__** %11, align 8
  %20 = bitcast %struct.TYPE_27__* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %20, i8 0, i64 4, i1 false)
  %21 = bitcast %struct.TYPE_27__* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %21, i8 0, i64 4, i1 false)
  %22 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %23 = call i32 @jspGetLeftArg(%struct.TYPE_28__* %22, %struct.TYPE_28__* %13)
  %24 = load i32*, i32** %7, align 8
  %25 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %26 = call i32 @executeItemOptUnwrapResult(i32* %24, %struct.TYPE_28__* %13, %struct.TYPE_26__* %25, i32 1, %struct.TYPE_27__* %14)
  store i32 %26, i32* %12, align 4
  %27 = load i32, i32* %12, align 4
  %28 = call i64 @jperIsError(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %5
  %31 = load i32, i32* %12, align 4
  store i32 %31, i32* %6, align 4
  br label %135

32:                                               ; preds = %5
  %33 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %34 = call i32 @jspGetRightArg(%struct.TYPE_28__* %33, %struct.TYPE_28__* %13)
  %35 = load i32*, i32** %7, align 8
  %36 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %37 = call i32 @executeItemOptUnwrapResult(i32* %35, %struct.TYPE_28__* %13, %struct.TYPE_26__* %36, i32 1, %struct.TYPE_27__* %15)
  store i32 %37, i32* %12, align 4
  %38 = load i32, i32* %12, align 4
  %39 = call i64 @jperIsError(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %32
  %42 = load i32, i32* %12, align 4
  store i32 %42, i32* %6, align 4
  br label %135

43:                                               ; preds = %32
  %44 = call i32 @JsonValueListLength(%struct.TYPE_27__* %14)
  %45 = icmp ne i32 %44, 1
  br i1 %45, label %51, label %46

46:                                               ; preds = %43
  %47 = call i32 @JsonValueListHead(%struct.TYPE_27__* %14)
  %48 = load i32, i32* @jbvNumeric, align 4
  %49 = call %struct.TYPE_26__* @getScalar(i32 %47, i32 %48)
  store %struct.TYPE_26__* %49, %struct.TYPE_26__** %16, align 8
  %50 = icmp ne %struct.TYPE_26__* %49, null
  br i1 %50, label %62, label %51

51:                                               ; preds = %46, %43
  %52 = load i32, i32* @ERROR, align 4
  %53 = load i32, i32* @ERRCODE_SINGLETON_SQL_JSON_ITEM_REQUIRED, align 4
  %54 = call i32 @errcode(i32 %53)
  %55 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @jspOperationName(i32 %57)
  %59 = call i32 @errmsg(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i32 %58)
  %60 = call i32 @ereport(i32 %52, i32 %59)
  %61 = call i32 @RETURN_ERROR(i32 %60)
  br label %62

62:                                               ; preds = %51, %46
  %63 = call i32 @JsonValueListLength(%struct.TYPE_27__* %15)
  %64 = icmp ne i32 %63, 1
  br i1 %64, label %70, label %65

65:                                               ; preds = %62
  %66 = call i32 @JsonValueListHead(%struct.TYPE_27__* %15)
  %67 = load i32, i32* @jbvNumeric, align 4
  %68 = call %struct.TYPE_26__* @getScalar(i32 %66, i32 %67)
  store %struct.TYPE_26__* %68, %struct.TYPE_26__** %17, align 8
  %69 = icmp ne %struct.TYPE_26__* %68, null
  br i1 %69, label %81, label %70

70:                                               ; preds = %65, %62
  %71 = load i32, i32* @ERROR, align 4
  %72 = load i32, i32* @ERRCODE_SINGLETON_SQL_JSON_ITEM_REQUIRED, align 4
  %73 = call i32 @errcode(i32 %72)
  %74 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @jspOperationName(i32 %76)
  %78 = call i32 @errmsg(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.1, i64 0, i64 0), i32 %77)
  %79 = call i32 @ereport(i32 %71, i32 %78)
  %80 = call i32 @RETURN_ERROR(i32 %79)
  br label %81

81:                                               ; preds = %70, %65
  %82 = load i32*, i32** %7, align 8
  %83 = call i64 @jspThrowErrors(i32* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %96

85:                                               ; preds = %81
  %86 = load i32 (i32, i32, i32*)*, i32 (i32, i32, i32*)** %10, align 8
  %87 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %88 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.TYPE_26__*, %struct.TYPE_26__** %17, align 8
  %92 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 %86(i32 %90, i32 %94, i32* null)
  store i32 %95, i32* %18, align 4
  br label %112

96:                                               ; preds = %81
  store i32 0, i32* %19, align 4
  %97 = load i32 (i32, i32, i32*)*, i32 (i32, i32, i32*)** %10, align 8
  %98 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %99 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.TYPE_26__*, %struct.TYPE_26__** %17, align 8
  %103 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32 %97(i32 %101, i32 %105, i32* %19)
  store i32 %106, i32* %18, align 4
  %107 = load i32, i32* %19, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %96
  %110 = load i32, i32* @jperError, align 4
  store i32 %110, i32* %6, align 4
  br label %135

111:                                              ; preds = %96
  br label %112

112:                                              ; preds = %111, %85
  %113 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %114 = call i32 @jspGetNext(%struct.TYPE_28__* %113, %struct.TYPE_28__* %13)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %121, label %116

116:                                              ; preds = %112
  %117 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %118 = icmp ne %struct.TYPE_27__* %117, null
  br i1 %118, label %121, label %119

119:                                              ; preds = %116
  %120 = load i32, i32* @jperOk, align 4
  store i32 %120, i32* %6, align 4
  br label %135

121:                                              ; preds = %116, %112
  %122 = call %struct.TYPE_26__* @palloc(i32 8)
  store %struct.TYPE_26__* %122, %struct.TYPE_26__** %16, align 8
  %123 = load i32, i32* @jbvNumeric, align 4
  %124 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %125 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %124, i32 0, i32 1
  store i32 %123, i32* %125, align 4
  %126 = load i32, i32* %18, align 4
  %127 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %128 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %128, i32 0, i32 0
  store i32 %126, i32* %129, align 4
  %130 = load i32*, i32** %7, align 8
  %131 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %132 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %133 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %134 = call i32 @executeNextItem(i32* %130, %struct.TYPE_28__* %131, %struct.TYPE_28__* %13, %struct.TYPE_26__* %132, %struct.TYPE_27__* %133, i32 0)
  store i32 %134, i32* %6, align 4
  br label %135

135:                                              ; preds = %121, %119, %109, %41, %30
  %136 = load i32, i32* %6, align 4
  ret i32 %136
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @jspGetLeftArg(%struct.TYPE_28__*, %struct.TYPE_28__*) #2

declare dso_local i32 @executeItemOptUnwrapResult(i32*, %struct.TYPE_28__*, %struct.TYPE_26__*, i32, %struct.TYPE_27__*) #2

declare dso_local i64 @jperIsError(i32) #2

declare dso_local i32 @jspGetRightArg(%struct.TYPE_28__*, %struct.TYPE_28__*) #2

declare dso_local i32 @JsonValueListLength(%struct.TYPE_27__*) #2

declare dso_local %struct.TYPE_26__* @getScalar(i32, i32) #2

declare dso_local i32 @JsonValueListHead(%struct.TYPE_27__*) #2

declare dso_local i32 @RETURN_ERROR(i32) #2

declare dso_local i32 @ereport(i32, i32) #2

declare dso_local i32 @errcode(i32) #2

declare dso_local i32 @errmsg(i8*, i32) #2

declare dso_local i32 @jspOperationName(i32) #2

declare dso_local i64 @jspThrowErrors(i32*) #2

declare dso_local i32 @jspGetNext(%struct.TYPE_28__*, %struct.TYPE_28__*) #2

declare dso_local %struct.TYPE_26__* @palloc(i32) #2

declare dso_local i32 @executeNextItem(i32*, %struct.TYPE_28__*, %struct.TYPE_28__*, %struct.TYPE_26__*, %struct.TYPE_27__*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
