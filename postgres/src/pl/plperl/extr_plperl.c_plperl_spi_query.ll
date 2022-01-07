; ModuleID = '/home/carl/AnghaBench/postgres/src/pl/plperl/extr_plperl.c_plperl_spi_query.c'
source_filename = "/home/carl/AnghaBench/postgres/src/pl/plperl/extr_plperl.c_plperl_spi_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@CurrentMemoryContext = common dso_local global i32 0, align 4
@CurrentResourceOwner = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"SPI_prepare() failed:%s\00", align 1
@SPI_result = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"SPI_cursor_open() failed:%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @plperl_spi_query(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  store i8* %0, i8** %2, align 8
  %9 = load i32, i32* @CurrentMemoryContext, align 4
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* @CurrentResourceOwner, align 4
  store i32 %10, i32* %5, align 4
  %11 = call i32 (...) @check_spi_usage_allowed()
  %12 = call i32 @BeginInternalSubTransaction(i32* null)
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @MemoryContextSwitchTo(i32 %13)
  %15 = call i32 (...) @PG_TRY()
  %16 = load i8*, i8** %2, align 8
  %17 = load i8*, i8** %2, align 8
  %18 = call i32 @strlen(i8* %17)
  %19 = call i32 @pg_verifymbstr(i8* %16, i32 %18, i32 0)
  %20 = load i8*, i8** %2, align 8
  %21 = call i32* @SPI_prepare(i8* %20, i32 0, i32* null)
  store i32* %21, i32** %6, align 8
  %22 = load i32*, i32** %6, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %29

24:                                               ; preds = %1
  %25 = load i32, i32* @ERROR, align 4
  %26 = load i32, i32* @SPI_result, align 4
  %27 = call i32 @SPI_result_code_string(i32 %26)
  %28 = call i32 @elog(i32 %25, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %27)
  br label %29

29:                                               ; preds = %24, %1
  %30 = load i32*, i32** %6, align 8
  %31 = call %struct.TYPE_6__* @SPI_cursor_open(i32* null, i32* %30, i32* null, i32* null, i32 0)
  store %struct.TYPE_6__* %31, %struct.TYPE_6__** %7, align 8
  %32 = load i32*, i32** %6, align 8
  %33 = call i32 @SPI_freeplan(i32* %32)
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %35 = icmp eq %struct.TYPE_6__* %34, null
  br i1 %35, label %36, label %41

36:                                               ; preds = %29
  %37 = load i32, i32* @ERROR, align 4
  %38 = load i32, i32* @SPI_result, align 4
  %39 = call i32 @SPI_result_code_string(i32 %38)
  %40 = call i32 @elog(i32 %37, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  br label %41

41:                                               ; preds = %36, %29
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32* @cstr2sv(i32 %44)
  store i32* %45, i32** %3, align 8
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %47 = call i32 @PinPortal(%struct.TYPE_6__* %46)
  %48 = call i32 (...) @ReleaseCurrentSubTransaction()
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @MemoryContextSwitchTo(i32 %49)
  %51 = load i32, i32* %5, align 4
  store i32 %51, i32* @CurrentResourceOwner, align 4
  %52 = call i32 (...) @PG_CATCH()
  %53 = load i32, i32* %4, align 4
  %54 = call i32 @MemoryContextSwitchTo(i32 %53)
  %55 = call %struct.TYPE_7__* (...) @CopyErrorData()
  store %struct.TYPE_7__* %55, %struct.TYPE_7__** %8, align 8
  %56 = call i32 (...) @FlushErrorState()
  %57 = call i32 (...) @RollbackAndReleaseCurrentSubTransaction()
  %58 = load i32, i32* %4, align 4
  %59 = call i32 @MemoryContextSwitchTo(i32 %58)
  %60 = load i32, i32* %5, align 4
  store i32 %60, i32* @CurrentResourceOwner, align 4
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @croak_cstr(i32 %63)
  ret i32* null
}

declare dso_local i32 @check_spi_usage_allowed(...) #1

declare dso_local i32 @BeginInternalSubTransaction(i32*) #1

declare dso_local i32 @MemoryContextSwitchTo(i32) #1

declare dso_local i32 @PG_TRY(...) #1

declare dso_local i32 @pg_verifymbstr(i8*, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32* @SPI_prepare(i8*, i32, i32*) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i32 @SPI_result_code_string(i32) #1

declare dso_local %struct.TYPE_6__* @SPI_cursor_open(i32*, i32*, i32*, i32*, i32) #1

declare dso_local i32 @SPI_freeplan(i32*) #1

declare dso_local i32* @cstr2sv(i32) #1

declare dso_local i32 @PinPortal(%struct.TYPE_6__*) #1

declare dso_local i32 @ReleaseCurrentSubTransaction(...) #1

declare dso_local i32 @PG_CATCH(...) #1

declare dso_local %struct.TYPE_7__* @CopyErrorData(...) #1

declare dso_local i32 @FlushErrorState(...) #1

declare dso_local i32 @RollbackAndReleaseCurrentSubTransaction(...) #1

declare dso_local i32 @croak_cstr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
