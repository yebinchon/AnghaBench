; ModuleID = '/home/carl/AnghaBench/postgres/src/pl/plperl/extr_plperl.c_plperl_return_next.c'
source_filename = "/home/carl/AnghaBench/postgres/src/pl/plperl/extr_plperl.c_plperl_return_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@CurrentMemoryContext = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @plperl_return_next(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  store i32* %0, i32** %2, align 8
  %5 = load i32, i32* @CurrentMemoryContext, align 4
  store i32 %5, i32* %3, align 4
  %6 = call i32 (...) @PG_TRY()
  %7 = load i32*, i32** %2, align 8
  %8 = call i32 @plperl_return_next_internal(i32* %7)
  %9 = call i32 (...) @PG_CATCH()
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @MemoryContextSwitchTo(i32 %10)
  %12 = call %struct.TYPE_3__* (...) @CopyErrorData()
  store %struct.TYPE_3__* %12, %struct.TYPE_3__** %4, align 8
  %13 = call i32 (...) @FlushErrorState()
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @croak_cstr(i32 %16)
  %18 = call i32 (...) @PG_END_TRY()
  ret void
}

declare dso_local i32 @PG_TRY(...) #1

declare dso_local i32 @plperl_return_next_internal(i32*) #1

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
