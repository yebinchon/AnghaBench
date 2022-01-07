; ModuleID = '/home/carl/AnghaBench/postgres/src/pl/plperl/extr_plperl.c_plperl_spi_fetchrow.c'
source_filename = "/home/carl/AnghaBench/postgres/src/pl/plperl/extr_plperl.c_plperl_spi_fetchrow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32* }
%struct.TYPE_5__ = type { i32 }

@CurrentMemoryContext = common dso_local global i32 0, align 4
@CurrentResourceOwner = common dso_local global i32 0, align 4
@dTHX = common dso_local global i32 0, align 4
@PL_sv_undef = common dso_local global i32 0, align 4
@SPI_processed = common dso_local global i64 0, align 8
@SPI_tuptable = common dso_local global %struct.TYPE_6__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @plperl_spi_fetchrow(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__*, align 8
  store i8* %0, i8** %2, align 8
  %8 = load i32, i32* @CurrentMemoryContext, align 4
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* @CurrentResourceOwner, align 4
  store i32 %9, i32* %5, align 4
  %10 = call i32 (...) @check_spi_usage_allowed()
  %11 = call i32 @BeginInternalSubTransaction(i32* null)
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @MemoryContextSwitchTo(i32 %12)
  %14 = call i32 (...) @PG_TRY()
  %15 = load i32, i32* @dTHX, align 4
  %16 = load i8*, i8** %2, align 8
  %17 = call i32 @SPI_cursor_find(i8* %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %1
  store i32* @PL_sv_undef, i32** %3, align 8
  br label %44

21:                                               ; preds = %1
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @SPI_cursor_fetch(i32 %22, i32 1, i32 1)
  %24 = load i64, i64* @SPI_processed, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @UnpinPortal(i32 %27)
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @SPI_cursor_close(i32 %29)
  store i32* @PL_sv_undef, i32** %3, align 8
  br label %41

31:                                               ; preds = %21
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** @SPI_tuptable, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** @SPI_tuptable, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32* @plperl_hash_from_tuple(i32 %36, i32 %39, i32 1)
  store i32* %40, i32** %3, align 8
  br label %41

41:                                               ; preds = %31, %26
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** @SPI_tuptable, align 8
  %43 = call i32 @SPI_freetuptable(%struct.TYPE_6__* %42)
  br label %44

44:                                               ; preds = %41, %20
  %45 = call i32 (...) @ReleaseCurrentSubTransaction()
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @MemoryContextSwitchTo(i32 %46)
  %48 = load i32, i32* %5, align 4
  store i32 %48, i32* @CurrentResourceOwner, align 4
  %49 = call i32 (...) @PG_CATCH()
  %50 = load i32, i32* %4, align 4
  %51 = call i32 @MemoryContextSwitchTo(i32 %50)
  %52 = call %struct.TYPE_5__* (...) @CopyErrorData()
  store %struct.TYPE_5__* %52, %struct.TYPE_5__** %7, align 8
  %53 = call i32 (...) @FlushErrorState()
  %54 = call i32 (...) @RollbackAndReleaseCurrentSubTransaction()
  %55 = load i32, i32* %4, align 4
  %56 = call i32 @MemoryContextSwitchTo(i32 %55)
  %57 = load i32, i32* %5, align 4
  store i32 %57, i32* @CurrentResourceOwner, align 4
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @croak_cstr(i32 %60)
  ret i32* null
}

declare dso_local i32 @check_spi_usage_allowed(...) #1

declare dso_local i32 @BeginInternalSubTransaction(i32*) #1

declare dso_local i32 @MemoryContextSwitchTo(i32) #1

declare dso_local i32 @PG_TRY(...) #1

declare dso_local i32 @SPI_cursor_find(i8*) #1

declare dso_local i32 @SPI_cursor_fetch(i32, i32, i32) #1

declare dso_local i32 @UnpinPortal(i32) #1

declare dso_local i32 @SPI_cursor_close(i32) #1

declare dso_local i32* @plperl_hash_from_tuple(i32, i32, i32) #1

declare dso_local i32 @SPI_freetuptable(%struct.TYPE_6__*) #1

declare dso_local i32 @ReleaseCurrentSubTransaction(...) #1

declare dso_local i32 @PG_CATCH(...) #1

declare dso_local %struct.TYPE_5__* @CopyErrorData(...) #1

declare dso_local i32 @FlushErrorState(...) #1

declare dso_local i32 @RollbackAndReleaseCurrentSubTransaction(...) #1

declare dso_local i32 @croak_cstr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
