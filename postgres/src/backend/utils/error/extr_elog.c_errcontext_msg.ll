; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/error/extr_elog.c_errcontext_msg.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/error/extr_elog.c_errcontext_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@errordata = common dso_local global %struct.TYPE_3__* null, align 8
@errordata_stack_depth = common dso_local global i64 0, align 8
@recursion_depth = common dso_local global i32 0, align 4
@context = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @errcontext_msg(i8* %0, ...) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** @errordata, align 8
  %6 = load i64, i64* @errordata_stack_depth, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i64 %6
  store %struct.TYPE_3__* %7, %struct.TYPE_3__** %3, align 8
  %8 = load i32, i32* @recursion_depth, align 4
  %9 = add nsw i32 %8, 1
  store i32 %9, i32* @recursion_depth, align 4
  %10 = call i32 (...) @CHECK_STACK_DEPTH()
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @MemoryContextSwitchTo(i32 %13)
  store i32 %14, i32* %4, align 4
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @context, align 4
  %19 = call i32 @EVALUATE_MESSAGE(i32 %17, i32 %18, i32 1, i32 1)
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @MemoryContextSwitchTo(i32 %20)
  %22 = load i32, i32* @recursion_depth, align 4
  %23 = add nsw i32 %22, -1
  store i32 %23, i32* @recursion_depth, align 4
  ret i32 0
}

declare dso_local i32 @CHECK_STACK_DEPTH(...) #1

declare dso_local i32 @MemoryContextSwitchTo(i32) #1

declare dso_local i32 @EVALUATE_MESSAGE(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
