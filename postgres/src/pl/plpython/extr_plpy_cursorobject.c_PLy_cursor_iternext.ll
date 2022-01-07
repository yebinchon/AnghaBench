; ModuleID = '/home/carl/AnghaBench/postgres/src/pl/plpython/extr_plpy_cursorobject.c_PLy_cursor_iternext.c'
source_filename = "/home/carl/AnghaBench/postgres/src/pl/plpython/extr_plpy_cursorobject.c_PLy_cursor_iternext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32* }
%struct.TYPE_7__ = type { i32, i32, i64 }
%struct.TYPE_6__ = type { i32 }

@PyExc_ValueError = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"iterating a closed cursor\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"iterating a cursor in an aborted subtransaction\00", align 1
@CurrentMemoryContext = common dso_local global i32 0, align 4
@CurrentResourceOwner = common dso_local global i32 0, align 4
@SPI_processed = common dso_local global i64 0, align 8
@PyExc_StopIteration = common dso_local global i32 0, align 4
@SPI_tuptable = common dso_local global %struct.TYPE_8__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*)* @PLy_cursor_iternext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @PLy_cursor_iternext(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %10 = call %struct.TYPE_6__* (...) @PLy_current_execution_context()
  store %struct.TYPE_6__* %10, %struct.TYPE_6__** %6, align 8
  %11 = load i32*, i32** %3, align 8
  %12 = bitcast i32* %11 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %12, %struct.TYPE_7__** %4, align 8
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load i32, i32* @PyExc_ValueError, align 4
  %19 = call i32 @PLy_exception_set(i32 %18, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  store i32* null, i32** %2, align 8
  br label %76

20:                                               ; preds = %1
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @GetPortalByName(i32 %23)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @PortalIsValid(i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %20
  %29 = load i32, i32* @PyExc_ValueError, align 4
  %30 = call i32 @PLy_exception_set(i32 %29, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  store i32* null, i32** %2, align 8
  br label %76

31:                                               ; preds = %20
  %32 = load i32, i32* @CurrentMemoryContext, align 4
  store volatile i32 %32, i32* %7, align 4
  %33 = load i32, i32* @CurrentResourceOwner, align 4
  store volatile i32 %33, i32* %8, align 4
  %34 = load volatile i32, i32* %7, align 4
  %35 = load volatile i32, i32* %8, align 4
  %36 = call i32 @PLy_spi_subtransaction_begin(i32 %34, i32 %35)
  %37 = call i32 (...) @PG_TRY()
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @SPI_cursor_fetch(i32 %38, i32 1, i32 1)
  %40 = load i64, i64* @SPI_processed, align 8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %31
  %43 = load i32, i32* @PyExc_StopIteration, align 4
  %44 = call i32 @PyErr_SetNone(i32 %43)
  store i32* null, i32** %5, align 8
  br label %66

45:                                               ; preds = %31
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** @SPI_tuptable, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @PLy_input_setup_tuple(i32* %47, i32 %50, i32 %53)
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** @SPI_tuptable, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** @SPI_tuptable, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32* @PLy_input_from_tuple(i32* %56, i32 %61, i32 %64, i32 1)
  store i32* %65, i32** %5, align 8
  br label %66

66:                                               ; preds = %45, %42
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** @SPI_tuptable, align 8
  %68 = call i32 @SPI_freetuptable(%struct.TYPE_8__* %67)
  %69 = load volatile i32, i32* %7, align 4
  %70 = load volatile i32, i32* %8, align 4
  %71 = call i32 @PLy_spi_subtransaction_commit(i32 %69, i32 %70)
  %72 = call i32 (...) @PG_CATCH()
  %73 = load volatile i32, i32* %7, align 4
  %74 = load volatile i32, i32* %8, align 4
  %75 = call i32 @PLy_spi_subtransaction_abort(i32 %73, i32 %74)
  store i32* null, i32** %2, align 8
  br label %76

76:                                               ; preds = %66, %28, %17
  %77 = load i32*, i32** %2, align 8
  ret i32* %77
}

declare dso_local %struct.TYPE_6__* @PLy_current_execution_context(...) #1

declare dso_local i32 @PLy_exception_set(i32, i8*) #1

declare dso_local i32 @GetPortalByName(i32) #1

declare dso_local i32 @PortalIsValid(i32) #1

declare dso_local i32 @PLy_spi_subtransaction_begin(i32, i32) #1

declare dso_local i32 @PG_TRY(...) #1

declare dso_local i32 @SPI_cursor_fetch(i32, i32, i32) #1

declare dso_local i32 @PyErr_SetNone(i32) #1

declare dso_local i32 @PLy_input_setup_tuple(i32*, i32, i32) #1

declare dso_local i32* @PLy_input_from_tuple(i32*, i32, i32, i32) #1

declare dso_local i32 @SPI_freetuptable(%struct.TYPE_8__*) #1

declare dso_local i32 @PLy_spi_subtransaction_commit(i32, i32) #1

declare dso_local i32 @PG_CATCH(...) #1

declare dso_local i32 @PLy_spi_subtransaction_abort(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
