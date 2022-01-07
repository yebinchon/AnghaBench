; ModuleID = '/home/carl/AnghaBench/postgres/src/pl/plpython/extr_plpy_cursorobject.c_PLy_cursor_fetch.c'
source_filename = "/home/carl/AnghaBench/postgres/src/pl/plpython/extr_plpy_cursorobject.c_PLy_cursor_fetch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32* }
%struct.TYPE_14__ = type { i32, i32, i64 }
%struct.TYPE_12__ = type { %struct.TYPE_12__*, %struct.TYPE_12__*, %struct.TYPE_12__* }
%struct.TYPE_13__ = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"i:fetch\00", align 1
@PyExc_ValueError = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"fetch from a closed cursor\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"iterating a cursor in an aborted subtransaction\00", align 1
@CurrentMemoryContext = common dso_local global i32 0, align 4
@CurrentResourceOwner = common dso_local global i32 0, align 4
@SPI_OK_FETCH = common dso_local global i32 0, align 4
@SPI_processed = common dso_local global i64 0, align 8
@PY_SSIZE_T_MAX = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_PROGRAM_LIMIT_EXCEEDED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [55 x i8] c"query result has too many rows to fit in a Python list\00", align 1
@SPI_tuptable = common dso_local global %struct.TYPE_15__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*)* @PLy_cursor_fetch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @PLy_cursor_fetch(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %15 = call %struct.TYPE_13__* (...) @PLy_current_execution_context()
  store %struct.TYPE_13__* %15, %struct.TYPE_13__** %9, align 8
  %16 = load i32*, i32** %5, align 8
  %17 = call i32 @PyArg_ParseTuple(i32* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32* %7)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %2
  store i32* null, i32** %3, align 8
  br label %149

20:                                               ; preds = %2
  %21 = load i32*, i32** %4, align 8
  %22 = bitcast i32* %21 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %22, %struct.TYPE_14__** %6, align 8
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %20
  %28 = load i32, i32* @PyExc_ValueError, align 4
  %29 = call i32 @PLy_exception_set(i32 %28, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  store i32* null, i32** %3, align 8
  br label %149

30:                                               ; preds = %20
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @GetPortalByName(i32 %33)
  store i32 %34, i32* %12, align 4
  %35 = load i32, i32* %12, align 4
  %36 = call i32 @PortalIsValid(i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %30
  %39 = load i32, i32* @PyExc_ValueError, align 4
  %40 = call i32 @PLy_exception_set(i32 %39, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0))
  store i32* null, i32** %3, align 8
  br label %149

41:                                               ; preds = %30
  %42 = call i64 (...) @PLy_result_new()
  %43 = inttoptr i64 %42 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %43, %struct.TYPE_12__** %8, align 8
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %45 = icmp eq %struct.TYPE_12__* %44, null
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  store i32* null, i32** %3, align 8
  br label %149

47:                                               ; preds = %41
  %48 = load i32, i32* @CurrentMemoryContext, align 4
  store volatile i32 %48, i32* %10, align 4
  %49 = load i32, i32* @CurrentResourceOwner, align 4
  store volatile i32 %49, i32* %11, align 4
  %50 = load volatile i32, i32* %10, align 4
  %51 = load volatile i32, i32* %11, align 4
  %52 = call i32 @PLy_spi_subtransaction_begin(i32 %50, i32 %51)
  %53 = call i32 (...) @PG_TRY()
  %54 = load i32, i32* %12, align 4
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @SPI_cursor_fetch(i32 %54, i32 1, i32 %55)
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 2
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %58, align 8
  %60 = call i32 @Py_DECREF(%struct.TYPE_12__* %59)
  %61 = load i32, i32* @SPI_OK_FETCH, align 4
  %62 = call %struct.TYPE_12__* @PyInt_FromLong(i32 %61)
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 2
  store %struct.TYPE_12__* %62, %struct.TYPE_12__** %64, align 8
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 1
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %66, align 8
  %68 = call i32 @Py_DECREF(%struct.TYPE_12__* %67)
  %69 = load i64, i64* @SPI_processed, align 8
  %70 = call %struct.TYPE_12__* @PyLong_FromUnsignedLongLong(i64 %69)
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 1
  store %struct.TYPE_12__* %70, %struct.TYPE_12__** %72, align 8
  %73 = load i64, i64* @SPI_processed, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %139

75:                                               ; preds = %47
  %76 = load i64, i64* @SPI_processed, align 8
  %77 = load i64, i64* @PY_SSIZE_T_MAX, align 8
  %78 = icmp sgt i64 %76, %77
  br i1 %78, label %79, label %85

79:                                               ; preds = %75
  %80 = load i32, i32* @ERROR, align 4
  %81 = load i32, i32* @ERRCODE_PROGRAM_LIMIT_EXCEEDED, align 4
  %82 = call i32 @errcode(i32 %81)
  %83 = call i32 @errmsg(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0))
  %84 = call i32 @ereport(i32 %80, i32 %83)
  br label %85

85:                                               ; preds = %79, %75
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %87, align 8
  %89 = call i32 @Py_DECREF(%struct.TYPE_12__* %88)
  %90 = load i64, i64* @SPI_processed, align 8
  %91 = call %struct.TYPE_12__* @PyList_New(i64 %90)
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 0
  store %struct.TYPE_12__* %91, %struct.TYPE_12__** %93, align 8
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 0
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %95, align 8
  %97 = icmp ne %struct.TYPE_12__* %96, null
  br i1 %97, label %101, label %98

98:                                               ; preds = %85
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %100 = call i32 @Py_DECREF(%struct.TYPE_12__* %99)
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %8, align 8
  br label %138

101:                                              ; preds = %85
  %102 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %102, i32 0, i32 0
  %104 = load %struct.TYPE_15__*, %struct.TYPE_15__** @SPI_tuptable, align 8
  %105 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %108 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @PLy_input_setup_tuple(i32* %103, i32 %106, i32 %109)
  store i64 0, i64* %13, align 8
  br label %111

111:                                              ; preds = %134, %101
  %112 = load i64, i64* %13, align 8
  %113 = load i64, i64* @SPI_processed, align 8
  %114 = icmp slt i64 %112, %113
  br i1 %114, label %115, label %137

115:                                              ; preds = %111
  %116 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %116, i32 0, i32 0
  %118 = load %struct.TYPE_15__*, %struct.TYPE_15__** @SPI_tuptable, align 8
  %119 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %118, i32 0, i32 1
  %120 = load i32*, i32** %119, align 8
  %121 = load i64, i64* %13, align 8
  %122 = getelementptr inbounds i32, i32* %120, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.TYPE_15__*, %struct.TYPE_15__** @SPI_tuptable, align 8
  %125 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = call i32* @PLy_input_from_tuple(i32* %117, i32 %123, i32 %126, i32 1)
  store i32* %127, i32** %14, align 8
  %128 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %129 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %128, i32 0, i32 0
  %130 = load %struct.TYPE_12__*, %struct.TYPE_12__** %129, align 8
  %131 = load i64, i64* %13, align 8
  %132 = load i32*, i32** %14, align 8
  %133 = call i32 @PyList_SetItem(%struct.TYPE_12__* %130, i64 %131, i32* %132)
  br label %134

134:                                              ; preds = %115
  %135 = load i64, i64* %13, align 8
  %136 = add nsw i64 %135, 1
  store i64 %136, i64* %13, align 8
  br label %111

137:                                              ; preds = %111
  br label %138

138:                                              ; preds = %137, %98
  br label %139

139:                                              ; preds = %138, %47
  %140 = load %struct.TYPE_15__*, %struct.TYPE_15__** @SPI_tuptable, align 8
  %141 = call i32 @SPI_freetuptable(%struct.TYPE_15__* %140)
  %142 = load volatile i32, i32* %10, align 4
  %143 = load volatile i32, i32* %11, align 4
  %144 = call i32 @PLy_spi_subtransaction_commit(i32 %142, i32 %143)
  %145 = call i32 (...) @PG_CATCH()
  %146 = load volatile i32, i32* %10, align 4
  %147 = load volatile i32, i32* %11, align 4
  %148 = call i32 @PLy_spi_subtransaction_abort(i32 %146, i32 %147)
  store i32* null, i32** %3, align 8
  br label %149

149:                                              ; preds = %139, %46, %38, %27, %19
  %150 = load i32*, i32** %3, align 8
  ret i32* %150
}

declare dso_local %struct.TYPE_13__* @PLy_current_execution_context(...) #1

declare dso_local i32 @PyArg_ParseTuple(i32*, i8*, i32*) #1

declare dso_local i32 @PLy_exception_set(i32, i8*) #1

declare dso_local i32 @GetPortalByName(i32) #1

declare dso_local i32 @PortalIsValid(i32) #1

declare dso_local i64 @PLy_result_new(...) #1

declare dso_local i32 @PLy_spi_subtransaction_begin(i32, i32) #1

declare dso_local i32 @PG_TRY(...) #1

declare dso_local i32 @SPI_cursor_fetch(i32, i32, i32) #1

declare dso_local i32 @Py_DECREF(%struct.TYPE_12__*) #1

declare dso_local %struct.TYPE_12__* @PyInt_FromLong(i32) #1

declare dso_local %struct.TYPE_12__* @PyLong_FromUnsignedLongLong(i64) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local %struct.TYPE_12__* @PyList_New(i64) #1

declare dso_local i32 @PLy_input_setup_tuple(i32*, i32, i32) #1

declare dso_local i32* @PLy_input_from_tuple(i32*, i32, i32, i32) #1

declare dso_local i32 @PyList_SetItem(%struct.TYPE_12__*, i64, i32*) #1

declare dso_local i32 @SPI_freetuptable(%struct.TYPE_15__*) #1

declare dso_local i32 @PLy_spi_subtransaction_commit(i32, i32) #1

declare dso_local i32 @PG_CATCH(...) #1

declare dso_local i32 @PLy_spi_subtransaction_abort(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
