; ModuleID = '/home/carl/AnghaBench/postgres/src/pl/plpython/extr_plpy_spi.c_PLy_spi_execute_query.c'
source_filename = "/home/carl/AnghaBench/postgres/src/pl/plpython/extr_plpy_spi.c_PLy_spi_execute_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@CurrentMemoryContext = common dso_local global i32 0, align 4
@CurrentResourceOwner = common dso_local global i32 0, align 4
@SPI_tuptable = common dso_local global i32 0, align 4
@SPI_processed = common dso_local global i32 0, align 4
@PLy_exc_spi_error = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i64)* @PLy_spi_execute_query to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @PLy_spi_execute_query(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_5__*, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  store i32* null, i32** %8, align 8
  %10 = load i32, i32* @CurrentMemoryContext, align 4
  store volatile i32 %10, i32* %6, align 4
  %11 = load i32, i32* @CurrentResourceOwner, align 4
  store volatile i32 %11, i32* %7, align 4
  %12 = load volatile i32, i32* %6, align 4
  %13 = load volatile i32, i32* %7, align 4
  %14 = call i32 @PLy_spi_subtransaction_begin(i32 %12, i32 %13)
  %15 = call i32 (...) @PG_TRY()
  %16 = call %struct.TYPE_5__* (...) @PLy_current_execution_context()
  store %struct.TYPE_5__* %16, %struct.TYPE_5__** %9, align 8
  %17 = load i8*, i8** %3, align 8
  %18 = load i8*, i8** %3, align 8
  %19 = call i32 @strlen(i8* %18)
  %20 = call i32 @pg_verifymbstr(i8* %17, i32 %19, i32 0)
  %21 = load i8*, i8** %3, align 8
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i64, i64* %4, align 8
  %28 = call i32 @SPI_execute(i8* %21, i32 %26, i64 %27)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* @SPI_tuptable, align 4
  %30 = load i32, i32* @SPI_processed, align 4
  %31 = load i32, i32* %5, align 4
  %32 = call i32* @PLy_spi_execute_fetch_result(i32 %29, i32 %30, i32 %31)
  store i32* %32, i32** %8, align 8
  %33 = load volatile i32, i32* %6, align 4
  %34 = load volatile i32, i32* %7, align 4
  %35 = call i32 @PLy_spi_subtransaction_commit(i32 %33, i32 %34)
  %36 = call i32 (...) @PG_CATCH()
  %37 = load volatile i32, i32* %6, align 4
  %38 = load volatile i32, i32* %7, align 4
  %39 = call i32 @PLy_spi_subtransaction_abort(i32 %37, i32 %38)
  ret i32* null
}

declare dso_local i32 @PLy_spi_subtransaction_begin(i32, i32) #1

declare dso_local i32 @PG_TRY(...) #1

declare dso_local %struct.TYPE_5__* @PLy_current_execution_context(...) #1

declare dso_local i32 @pg_verifymbstr(i8*, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @SPI_execute(i8*, i32, i64) #1

declare dso_local i32* @PLy_spi_execute_fetch_result(i32, i32, i32) #1

declare dso_local i32 @PLy_spi_subtransaction_commit(i32, i32) #1

declare dso_local i32 @PG_CATCH(...) #1

declare dso_local i32 @PLy_spi_subtransaction_abort(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
