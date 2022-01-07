; ModuleID = '/home/carl/AnghaBench/postgres/src/pl/tcl/extr_pltcl.c_pltcl_commit.c'
source_filename = "/home/carl/AnghaBench/postgres/src/pl/tcl/extr_pltcl.c_pltcl_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@CurrentMemoryContext = common dso_local global i32 0, align 4
@UTF_BEGIN = common dso_local global i32 0, align 4
@UTF_END = common dso_local global i32 0, align 4
@TCL_ERROR = common dso_local global i32 0, align 4
@TCL_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i32, i32**)* @pltcl_commit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pltcl_commit(i32 %0, i32* %1, i32 %2, i32** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32**, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_5__*, align 8
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32** %3, i32*** %8, align 8
  %11 = load i32, i32* @CurrentMemoryContext, align 4
  store i32 %11, i32* %9, align 4
  %12 = call i32 (...) @PG_TRY()
  %13 = call i32 (...) @SPI_commit()
  %14 = call i32 (...) @SPI_start_transaction()
  %15 = call i32 (...) @PG_CATCH()
  %16 = load i32, i32* %9, align 4
  %17 = call i32 @MemoryContextSwitchTo(i32 %16)
  %18 = call %struct.TYPE_5__* (...) @CopyErrorData()
  store %struct.TYPE_5__* %18, %struct.TYPE_5__** %10, align 8
  %19 = call i32 (...) @FlushErrorState()
  %20 = load i32*, i32** %6, align 8
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %22 = call i32 @pltcl_construct_errorCode(i32* %20, %struct.TYPE_5__* %21)
  %23 = load i32, i32* @UTF_BEGIN, align 4
  %24 = load i32*, i32** %6, align 8
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @UTF_E2U(i32 %27)
  %29 = call i32 @Tcl_NewStringObj(i32 %28, i32 -1)
  %30 = call i32 @Tcl_SetObjResult(i32* %24, i32 %29)
  %31 = load i32, i32* @UTF_END, align 4
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %33 = call i32 @FreeErrorData(%struct.TYPE_5__* %32)
  %34 = load i32, i32* @TCL_ERROR, align 4
  ret i32 %34
}

declare dso_local i32 @PG_TRY(...) #1

declare dso_local i32 @SPI_commit(...) #1

declare dso_local i32 @SPI_start_transaction(...) #1

declare dso_local i32 @PG_CATCH(...) #1

declare dso_local i32 @MemoryContextSwitchTo(i32) #1

declare dso_local %struct.TYPE_5__* @CopyErrorData(...) #1

declare dso_local i32 @FlushErrorState(...) #1

declare dso_local i32 @pltcl_construct_errorCode(i32*, %struct.TYPE_5__*) #1

declare dso_local i32 @Tcl_SetObjResult(i32*, i32) #1

declare dso_local i32 @Tcl_NewStringObj(i32, i32) #1

declare dso_local i32 @UTF_E2U(i32) #1

declare dso_local i32 @FreeErrorData(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
