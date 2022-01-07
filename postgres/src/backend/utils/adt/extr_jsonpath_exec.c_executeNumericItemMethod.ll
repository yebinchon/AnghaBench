; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_jsonpath_exec.c_executeNumericItemMethod.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_jsonpath_exec.c_executeNumericItemMethod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32 }
%struct.TYPE_18__ = type { %struct.TYPE_17__, i32 }
%struct.TYPE_17__ = type { i32 }

@jbvArray = common dso_local global i64 0, align 8
@jbvNumeric = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_NON_NUMERIC_SQL_JSON_ITEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [66 x i8] c"jsonpath item method .%s() can only be applied to a numeric value\00", align 1
@jperOk = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_19__*, %struct.TYPE_18__*, i32, i32, i32*)* @executeNumericItemMethod to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @executeNumericItemMethod(i32* %0, %struct.TYPE_19__* %1, %struct.TYPE_18__* %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_19__*, align 8
  %10 = alloca %struct.TYPE_18__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_19__, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %9, align 8
  store %struct.TYPE_18__* %2, %struct.TYPE_18__** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  %16 = load i32, i32* %11, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %29

18:                                               ; preds = %6
  %19 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %20 = call i64 @JsonbType(%struct.TYPE_18__* %19)
  %21 = load i64, i64* @jbvArray, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %29

23:                                               ; preds = %18
  %24 = load i32*, i32** %8, align 8
  %25 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %26 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %27 = load i32*, i32** %13, align 8
  %28 = call i32 @executeItemUnwrapTargetArray(i32* %24, %struct.TYPE_19__* %25, %struct.TYPE_18__* %26, i32* %27, i32 0)
  store i32 %28, i32* %7, align 4
  br label %76

29:                                               ; preds = %18, %6
  %30 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %31 = load i32, i32* @jbvNumeric, align 4
  %32 = call %struct.TYPE_18__* @getScalar(%struct.TYPE_18__* %30, i32 %31)
  store %struct.TYPE_18__* %32, %struct.TYPE_18__** %10, align 8
  %33 = icmp ne %struct.TYPE_18__* %32, null
  br i1 %33, label %45, label %34

34:                                               ; preds = %29
  %35 = load i32, i32* @ERROR, align 4
  %36 = load i32, i32* @ERRCODE_NON_NUMERIC_SQL_JSON_ITEM, align 4
  %37 = call i32 @errcode(i32 %36)
  %38 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @jspOperationName(i32 %40)
  %42 = call i32 @errmsg(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i32 %41)
  %43 = call i32 @ereport(i32 %35, i32 %42)
  %44 = call i32 @RETURN_ERROR(i32 %43)
  br label %45

45:                                               ; preds = %34, %29
  %46 = load i32, i32* %12, align 4
  %47 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @NumericGetDatum(i32 %50)
  %52 = call i32 @DirectFunctionCall1(i32 %46, i32 %51)
  store i32 %52, i32* %15, align 4
  %53 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %54 = call i32 @jspGetNext(%struct.TYPE_19__* %53, %struct.TYPE_19__* %14)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %61, label %56

56:                                               ; preds = %45
  %57 = load i32*, i32** %13, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %61, label %59

59:                                               ; preds = %56
  %60 = load i32, i32* @jperOk, align 4
  store i32 %60, i32* %7, align 4
  br label %76

61:                                               ; preds = %56, %45
  %62 = call %struct.TYPE_18__* @palloc(i32 8)
  store %struct.TYPE_18__* %62, %struct.TYPE_18__** %10, align 8
  %63 = load i32, i32* @jbvNumeric, align 4
  %64 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %65 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 4
  %66 = load i32, i32* %15, align 4
  %67 = call i32 @DatumGetNumeric(i32 %66)
  %68 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %69 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %69, i32 0, i32 0
  store i32 %67, i32* %70, align 4
  %71 = load i32*, i32** %8, align 8
  %72 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %73 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %74 = load i32*, i32** %13, align 8
  %75 = call i32 @executeNextItem(i32* %71, %struct.TYPE_19__* %72, %struct.TYPE_19__* %14, %struct.TYPE_18__* %73, i32* %74, i32 0)
  store i32 %75, i32* %7, align 4
  br label %76

76:                                               ; preds = %61, %59, %23
  %77 = load i32, i32* %7, align 4
  ret i32 %77
}

declare dso_local i64 @JsonbType(%struct.TYPE_18__*) #1

declare dso_local i32 @executeItemUnwrapTargetArray(i32*, %struct.TYPE_19__*, %struct.TYPE_18__*, i32*, i32) #1

declare dso_local %struct.TYPE_18__* @getScalar(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @RETURN_ERROR(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i32) #1

declare dso_local i32 @jspOperationName(i32) #1

declare dso_local i32 @DirectFunctionCall1(i32, i32) #1

declare dso_local i32 @NumericGetDatum(i32) #1

declare dso_local i32 @jspGetNext(%struct.TYPE_19__*, %struct.TYPE_19__*) #1

declare dso_local %struct.TYPE_18__* @palloc(i32) #1

declare dso_local i32 @DatumGetNumeric(i32) #1

declare dso_local i32 @executeNextItem(i32*, %struct.TYPE_19__*, %struct.TYPE_19__*, %struct.TYPE_18__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
