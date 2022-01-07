; ModuleID = '/home/carl/AnghaBench/postgres/src/pl/plpython/extr_plpy_spi.c_PLy_spi_execute_fetch_result.c'
source_filename = "/home/carl/AnghaBench/postgres/src/pl/plpython/extr_plpy_spi.c_PLy_spi_execute_fetch_result.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32* }
%struct.TYPE_12__ = type { %struct.TYPE_12__*, i32, %struct.TYPE_12__*, %struct.TYPE_12__* }
%struct.TYPE_13__ = type { i32 }

@CurrentMemoryContext = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"PL/Python temp context\00", align 1
@ALLOCSET_DEFAULT_SIZES = common dso_local global i32 0, align 4
@RECORDOID = common dso_local global i32 0, align 4
@PY_SSIZE_T_MAX = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_PROGRAM_LIMIT_EXCEEDED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [55 x i8] c"query result has too many rows to fit in a Python list\00", align 1
@TopMemoryContext = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_11__*, i64, i32)* @PLy_spi_execute_fetch_result to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @PLy_spi_execute_fetch_result(%struct.TYPE_11__* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %16 = call %struct.TYPE_13__* (...) @PLy_current_execution_context()
  store %struct.TYPE_13__* %16, %struct.TYPE_13__** %9, align 8
  %17 = call i64 (...) @PLy_result_new()
  %18 = inttoptr i64 %17 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %18, %struct.TYPE_12__** %8, align 8
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %20 = icmp ne %struct.TYPE_12__* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %3
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %23 = call i32 @SPI_freetuptable(%struct.TYPE_11__* %22)
  store i32* null, i32** %4, align 8
  br label %170

24:                                               ; preds = %3
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 3
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %26, align 8
  %28 = call i32 @Py_DECREF(%struct.TYPE_12__* %27)
  %29 = load i32, i32* %7, align 4
  %30 = call %struct.TYPE_12__* @PyInt_FromLong(i32 %29)
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 3
  store %struct.TYPE_12__* %30, %struct.TYPE_12__** %32, align 8
  %33 = load i32, i32* %7, align 4
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %48

35:                                               ; preds = %24
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %37 = icmp eq %struct.TYPE_11__* %36, null
  br i1 %37, label %38, label %48

38:                                               ; preds = %35
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 2
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %40, align 8
  %42 = call i32 @Py_DECREF(%struct.TYPE_12__* %41)
  %43 = load i64, i64* %6, align 8
  %44 = call i8* @PyLong_FromUnsignedLongLong(i64 %43)
  %45 = bitcast i8* %44 to %struct.TYPE_12__*
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 2
  store %struct.TYPE_12__* %45, %struct.TYPE_12__** %47, align 8
  br label %167

48:                                               ; preds = %35, %24
  %49 = load i32, i32* %7, align 4
  %50 = icmp sgt i32 %49, 0
  br i1 %50, label %51, label %166

51:                                               ; preds = %48
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %53 = icmp ne %struct.TYPE_11__* %52, null
  br i1 %53, label %54, label %166

54:                                               ; preds = %51
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 2
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %56, align 8
  %58 = call i32 @Py_DECREF(%struct.TYPE_12__* %57)
  %59 = load i64, i64* %6, align 8
  %60 = call i8* @PyLong_FromUnsignedLongLong(i64 %59)
  %61 = bitcast i8* %60 to %struct.TYPE_12__*
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 2
  store %struct.TYPE_12__* %61, %struct.TYPE_12__** %63, align 8
  %64 = load volatile i32, i32* @CurrentMemoryContext, align 4
  %65 = load i32, i32* @ALLOCSET_DEFAULT_SIZES, align 4
  %66 = call i32 @AllocSetContextCreate(i32 %64, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %65)
  store volatile i32 %66, i32* %12, align 4
  %67 = load volatile i32, i32* %12, align 4
  %68 = load i32, i32* @RECORDOID, align 4
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @PLy_input_setup_func(i32* %11, i32 %67, i32 %68, i32 -1, i32 %71)
  %73 = load volatile i32, i32* @CurrentMemoryContext, align 4
  store volatile i32 %73, i32* %10, align 4
  %74 = call i32 (...) @PG_TRY()
  %75 = load i64, i64* %6, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %134

77:                                               ; preds = %54
  %78 = load i64, i64* %6, align 8
  %79 = load i64, i64* @PY_SSIZE_T_MAX, align 8
  %80 = icmp sgt i64 %78, %79
  br i1 %80, label %81, label %87

81:                                               ; preds = %77
  %82 = load i32, i32* @ERROR, align 4
  %83 = load i32, i32* @ERRCODE_PROGRAM_LIMIT_EXCEEDED, align 4
  %84 = call i32 @errcode(i32 %83)
  %85 = call i32 @errmsg(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0))
  %86 = call i32 @ereport(i32 %82, i32 %85)
  br label %87

87:                                               ; preds = %81, %77
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %89, align 8
  %91 = call i32 @Py_DECREF(%struct.TYPE_12__* %90)
  %92 = load i64, i64* %6, align 8
  %93 = call %struct.TYPE_12__* @PyList_New(i64 %92)
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 0
  store %struct.TYPE_12__* %93, %struct.TYPE_12__** %95, align 8
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i32 0, i32 0
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %97, align 8
  %99 = icmp ne %struct.TYPE_12__* %98, null
  br i1 %99, label %100, label %133

100:                                              ; preds = %87
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @PLy_input_setup_tuple(i32* %11, i32 %103, i32 %106)
  store i64 0, i64* %14, align 8
  br label %108

108:                                              ; preds = %129, %100
  %109 = load i64, i64* %14, align 8
  %110 = load i64, i64* %6, align 8
  %111 = icmp slt i64 %109, %110
  br i1 %111, label %112, label %132

112:                                              ; preds = %108
  %113 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 1
  %115 = load i32*, i32** %114, align 8
  %116 = load i64, i64* %14, align 8
  %117 = getelementptr inbounds i32, i32* %115, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = call i32* @PLy_input_from_tuple(i32* %11, i32 %118, i32 %121, i32 1)
  store i32* %122, i32** %15, align 8
  %123 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %124 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %123, i32 0, i32 0
  %125 = load %struct.TYPE_12__*, %struct.TYPE_12__** %124, align 8
  %126 = load i64, i64* %14, align 8
  %127 = load i32*, i32** %15, align 8
  %128 = call i32 @PyList_SetItem(%struct.TYPE_12__* %125, i64 %126, i32* %127)
  br label %129

129:                                              ; preds = %112
  %130 = load i64, i64* %14, align 8
  %131 = add nsw i64 %130, 1
  store i64 %131, i64* %14, align 8
  br label %108

132:                                              ; preds = %108
  br label %133

133:                                              ; preds = %132, %87
  br label %134

134:                                              ; preds = %133, %54
  %135 = load volatile i32, i32* @TopMemoryContext, align 4
  %136 = call i32 @MemoryContextSwitchTo(i32 %135)
  store volatile i32 %136, i32* %13, align 4
  %137 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = call i32 @CreateTupleDescCopy(i32 %139)
  %141 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %142 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %141, i32 0, i32 1
  store i32 %140, i32* %142, align 8
  %143 = load volatile i32, i32* %13, align 4
  %144 = call i32 @MemoryContextSwitchTo(i32 %143)
  %145 = call i32 (...) @PG_CATCH()
  %146 = load volatile i32, i32* %10, align 4
  %147 = call i32 @MemoryContextSwitchTo(i32 %146)
  %148 = load volatile i32, i32* %12, align 4
  %149 = call i32 @MemoryContextDelete(i32 %148)
  %150 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %151 = call i32 @Py_DECREF(%struct.TYPE_12__* %150)
  %152 = call i32 (...) @PG_RE_THROW()
  %153 = call i32 (...) @PG_END_TRY()
  %154 = load volatile i32, i32* %12, align 4
  %155 = call i32 @MemoryContextDelete(i32 %154)
  %156 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %157 = call i32 @SPI_freetuptable(%struct.TYPE_11__* %156)
  %158 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %159 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %158, i32 0, i32 0
  %160 = load %struct.TYPE_12__*, %struct.TYPE_12__** %159, align 8
  %161 = icmp ne %struct.TYPE_12__* %160, null
  br i1 %161, label %165, label %162

162:                                              ; preds = %134
  %163 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %164 = call i32 @Py_DECREF(%struct.TYPE_12__* %163)
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %8, align 8
  br label %165

165:                                              ; preds = %162, %134
  br label %166

166:                                              ; preds = %165, %51, %48
  br label %167

167:                                              ; preds = %166, %38
  %168 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %169 = bitcast %struct.TYPE_12__* %168 to i32*
  store i32* %169, i32** %4, align 8
  br label %170

170:                                              ; preds = %167, %21
  %171 = load i32*, i32** %4, align 8
  ret i32* %171
}

declare dso_local %struct.TYPE_13__* @PLy_current_execution_context(...) #1

declare dso_local i64 @PLy_result_new(...) #1

declare dso_local i32 @SPI_freetuptable(%struct.TYPE_11__*) #1

declare dso_local i32 @Py_DECREF(%struct.TYPE_12__*) #1

declare dso_local %struct.TYPE_12__* @PyInt_FromLong(i32) #1

declare dso_local i8* @PyLong_FromUnsignedLongLong(i64) #1

declare dso_local i32 @AllocSetContextCreate(i32, i8*, i32) #1

declare dso_local i32 @PLy_input_setup_func(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @PG_TRY(...) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local %struct.TYPE_12__* @PyList_New(i64) #1

declare dso_local i32 @PLy_input_setup_tuple(i32*, i32, i32) #1

declare dso_local i32* @PLy_input_from_tuple(i32*, i32, i32, i32) #1

declare dso_local i32 @PyList_SetItem(%struct.TYPE_12__*, i64, i32*) #1

declare dso_local i32 @MemoryContextSwitchTo(i32) #1

declare dso_local i32 @CreateTupleDescCopy(i32) #1

declare dso_local i32 @PG_CATCH(...) #1

declare dso_local i32 @MemoryContextDelete(i32) #1

declare dso_local i32 @PG_RE_THROW(...) #1

declare dso_local i32 @PG_END_TRY(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
