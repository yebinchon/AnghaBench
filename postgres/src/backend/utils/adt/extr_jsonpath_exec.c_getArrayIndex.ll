; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_jsonpath_exec.c_getArrayIndex.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_jsonpath_exec.c_getArrayIndex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_12__ = type { i32 }

@jbvNumeric = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_INVALID_SQL_JSON_SUBSCRIPT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"jsonpath array subscript is not a single numeric value\00", align 1
@numeric_trunc = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"jsonpath array subscript is out of integer range\00", align 1
@jperOk = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, %struct.TYPE_11__*, i32*)* @getArrayIndex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getArrayIndex(i32* %0, i32* %1, %struct.TYPE_11__* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca %struct.TYPE_12__, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.TYPE_11__* %2, %struct.TYPE_11__** %8, align 8
  store i32* %3, i32** %9, align 8
  %15 = bitcast %struct.TYPE_12__* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %15, i8 0, i64 4, i1 false)
  %16 = load i32*, i32** %6, align 8
  %17 = load i32*, i32** %7, align 8
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %19 = call i32 @executeItem(i32* %16, i32* %17, %struct.TYPE_11__* %18, %struct.TYPE_12__* %11)
  store i32 %19, i32* %12, align 4
  store i32 0, i32* %14, align 4
  %20 = load i32, i32* %12, align 4
  %21 = call i64 @jperIsError(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %4
  %24 = load i32, i32* %12, align 4
  store i32 %24, i32* %5, align 4
  br label %64

25:                                               ; preds = %4
  %26 = call i32 @JsonValueListLength(%struct.TYPE_12__* %11)
  %27 = icmp ne i32 %26, 1
  br i1 %27, label %33, label %28

28:                                               ; preds = %25
  %29 = call i32 @JsonValueListHead(%struct.TYPE_12__* %11)
  %30 = load i32, i32* @jbvNumeric, align 4
  %31 = call %struct.TYPE_11__* @getScalar(i32 %29, i32 %30)
  store %struct.TYPE_11__* %31, %struct.TYPE_11__** %10, align 8
  %32 = icmp ne %struct.TYPE_11__* %31, null
  br i1 %32, label %40, label %33

33:                                               ; preds = %28, %25
  %34 = load i32, i32* @ERROR, align 4
  %35 = load i32, i32* @ERRCODE_INVALID_SQL_JSON_SUBSCRIPT, align 4
  %36 = call i32 @errcode(i32 %35)
  %37 = call i32 @errmsg(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  %38 = call i32 @ereport(i32 %34, i32 %37)
  %39 = call i32 @RETURN_ERROR(i32 %38)
  br label %40

40:                                               ; preds = %33, %28
  %41 = load i32, i32* @numeric_trunc, align 4
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @NumericGetDatum(i32 %45)
  %47 = call i32 @Int32GetDatum(i32 0)
  %48 = call i32 @DirectFunctionCall2(i32 %41, i32 %46, i32 %47)
  store i32 %48, i32* %13, align 4
  %49 = load i32, i32* %13, align 4
  %50 = call i32 @DatumGetNumeric(i32 %49)
  %51 = call i32 @numeric_int4_opt_error(i32 %50, i32* %14)
  %52 = load i32*, i32** %9, align 8
  store i32 %51, i32* %52, align 4
  %53 = load i32, i32* %14, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %40
  %56 = load i32, i32* @ERROR, align 4
  %57 = load i32, i32* @ERRCODE_INVALID_SQL_JSON_SUBSCRIPT, align 4
  %58 = call i32 @errcode(i32 %57)
  %59 = call i32 @errmsg(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  %60 = call i32 @ereport(i32 %56, i32 %59)
  %61 = call i32 @RETURN_ERROR(i32 %60)
  br label %62

62:                                               ; preds = %55, %40
  %63 = load i32, i32* @jperOk, align 4
  store i32 %63, i32* %5, align 4
  br label %64

64:                                               ; preds = %62, %23
  %65 = load i32, i32* %5, align 4
  ret i32 %65
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @executeItem(i32*, i32*, %struct.TYPE_11__*, %struct.TYPE_12__*) #2

declare dso_local i64 @jperIsError(i32) #2

declare dso_local i32 @JsonValueListLength(%struct.TYPE_12__*) #2

declare dso_local %struct.TYPE_11__* @getScalar(i32, i32) #2

declare dso_local i32 @JsonValueListHead(%struct.TYPE_12__*) #2

declare dso_local i32 @RETURN_ERROR(i32) #2

declare dso_local i32 @ereport(i32, i32) #2

declare dso_local i32 @errcode(i32) #2

declare dso_local i32 @errmsg(i8*) #2

declare dso_local i32 @DirectFunctionCall2(i32, i32, i32) #2

declare dso_local i32 @NumericGetDatum(i32) #2

declare dso_local i32 @Int32GetDatum(i32) #2

declare dso_local i32 @numeric_int4_opt_error(i32, i32*) #2

declare dso_local i32 @DatumGetNumeric(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
