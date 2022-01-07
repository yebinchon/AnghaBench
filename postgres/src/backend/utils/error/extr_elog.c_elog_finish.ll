; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/error/extr_elog.c_elog_finish.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/error/extr_elog.c_elog_finish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i32, i64, i32, i32, i32, i32, i32 }

@errordata = common dso_local global %struct.TYPE_4__* null, align 8
@errordata_stack_depth = common dso_local global i64 0, align 8
@errno = common dso_local global i32 0, align 4
@recursion_depth = common dso_local global i32 0, align 4
@message = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @elog_finish(i32 %0, i8* %1, ...) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** @errordata, align 8
  %8 = load i64, i64* @errordata_stack_depth, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i64 %8
  store %struct.TYPE_4__* %9, %struct.TYPE_4__** %5, align 8
  %10 = call i32 (...) @CHECK_STACK_DEPTH()
  %11 = load i64, i64* @errordata_stack_depth, align 8
  %12 = add i64 %11, -1
  store i64 %12, i64* @errordata_stack_depth, align 8
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 7
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* @errno, align 4
  %16 = load i32, i32* %3, align 4
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 6
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 5
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @errstart(i32 %16, i32 %19, i32 %22, i64 %25, i32* null)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %2
  br label %68

29:                                               ; preds = %2
  %30 = load i32, i32* @recursion_depth, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* @recursion_depth, align 4
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @MemoryContextSwitchTo(i32 %34)
  store i32 %35, i32* %6, align 4
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %54, label %40

40:                                               ; preds = %29
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %54

45:                                               ; preds = %40
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = call i64 @matches_backtrace_functions(i64 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %45
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %53 = call i32 @set_backtrace(%struct.TYPE_4__* %52, i32 2)
  br label %54

54:                                               ; preds = %51, %45, %40, %29
  %55 = load i8*, i8** %4, align 8
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  store i8* %55, i8** %57, align 8
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @message, align 4
  %62 = call i32 @EVALUATE_MESSAGE(i32 %60, i32 %61, i32 0, i32 0)
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @MemoryContextSwitchTo(i32 %63)
  %65 = load i32, i32* @recursion_depth, align 4
  %66 = add nsw i32 %65, -1
  store i32 %66, i32* @recursion_depth, align 4
  %67 = call i32 @errfinish(i32 0)
  br label %68

68:                                               ; preds = %54, %28
  ret void
}

declare dso_local i32 @CHECK_STACK_DEPTH(...) #1

declare dso_local i32 @errstart(i32, i32, i32, i64, i32*) #1

declare dso_local i32 @MemoryContextSwitchTo(i32) #1

declare dso_local i64 @matches_backtrace_functions(i64) #1

declare dso_local i32 @set_backtrace(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @EVALUATE_MESSAGE(i32, i32, i32, i32) #1

declare dso_local i32 @errfinish(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
