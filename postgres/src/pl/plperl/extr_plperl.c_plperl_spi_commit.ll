; ModuleID = '/home/carl/AnghaBench/postgres/src/pl/plperl/extr_plperl.c_plperl_spi_commit.c'
source_filename = "/home/carl/AnghaBench/postgres/src/pl/plperl/extr_plperl.c_plperl_spi_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@CurrentMemoryContext = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @plperl_spi_commit() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = load i32, i32* @CurrentMemoryContext, align 4
  store i32 %3, i32* %1, align 4
  %4 = call i32 (...) @PG_TRY()
  %5 = call i32 (...) @SPI_commit()
  %6 = call i32 (...) @SPI_start_transaction()
  %7 = call i32 (...) @PG_CATCH()
  %8 = load i32, i32* %1, align 4
  %9 = call i32 @MemoryContextSwitchTo(i32 %8)
  %10 = call %struct.TYPE_3__* (...) @CopyErrorData()
  store %struct.TYPE_3__* %10, %struct.TYPE_3__** %2, align 8
  %11 = call i32 (...) @FlushErrorState()
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @croak_cstr(i32 %14)
  %16 = call i32 (...) @PG_END_TRY()
  ret void
}

declare dso_local i32 @PG_TRY(...) #1

declare dso_local i32 @SPI_commit(...) #1

declare dso_local i32 @SPI_start_transaction(...) #1

declare dso_local i32 @PG_CATCH(...) #1

declare dso_local i32 @MemoryContextSwitchTo(i32) #1

declare dso_local %struct.TYPE_3__* @CopyErrorData(...) #1

declare dso_local i32 @FlushErrorState(...) #1

declare dso_local i32 @croak_cstr(i32) #1

declare dso_local i32 @PG_END_TRY(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
