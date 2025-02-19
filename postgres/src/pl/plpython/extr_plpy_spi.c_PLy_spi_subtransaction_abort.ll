; ModuleID = '/home/carl/AnghaBench/postgres/src/pl/plpython/extr_plpy_spi.c_PLy_spi_subtransaction_abort.c'
source_filename = "/home/carl/AnghaBench/postgres/src/pl/plpython/extr_plpy_spi.c_PLy_spi_subtransaction_abort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32* }

@CurrentResourceOwner = common dso_local global i32 0, align 4
@PLy_spi_exceptions = common dso_local global i32 0, align 4
@HASH_FIND = common dso_local global i32 0, align 4
@PLy_exc_spi_error = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @PLy_spi_subtransaction_abort(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @MemoryContextSwitchTo(i32 %8)
  %10 = call %struct.TYPE_8__* (...) @CopyErrorData()
  store %struct.TYPE_8__* %10, %struct.TYPE_8__** %5, align 8
  %11 = call i32 (...) @FlushErrorState()
  %12 = call i32 (...) @RollbackAndReleaseCurrentSubTransaction()
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @MemoryContextSwitchTo(i32 %13)
  %15 = load i32, i32* %4, align 4
  store i32 %15, i32* @CurrentResourceOwner, align 4
  %16 = load i32, i32* @PLy_spi_exceptions, align 4
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load i32, i32* @HASH_FIND, align 4
  %20 = call %struct.TYPE_7__* @hash_search(i32 %16, i32* %18, i32 %19, i32* null)
  store %struct.TYPE_7__* %20, %struct.TYPE_7__** %6, align 8
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %22 = icmp ne %struct.TYPE_7__* %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %2
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  br label %29

27:                                               ; preds = %2
  %28 = load i32*, i32** @PLy_exc_spi_error, align 8
  br label %29

29:                                               ; preds = %27, %23
  %30 = phi i32* [ %26, %23 ], [ %28, %27 ]
  store i32* %30, i32** %7, align 8
  %31 = load i32*, i32** %7, align 8
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %33 = call i32 @PLy_spi_exception_set(i32* %31, %struct.TYPE_8__* %32)
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %35 = call i32 @FreeErrorData(%struct.TYPE_8__* %34)
  ret void
}

declare dso_local i32 @MemoryContextSwitchTo(i32) #1

declare dso_local %struct.TYPE_8__* @CopyErrorData(...) #1

declare dso_local i32 @FlushErrorState(...) #1

declare dso_local i32 @RollbackAndReleaseCurrentSubTransaction(...) #1

declare dso_local %struct.TYPE_7__* @hash_search(i32, i32*, i32, i32*) #1

declare dso_local i32 @PLy_spi_exception_set(i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @FreeErrorData(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
