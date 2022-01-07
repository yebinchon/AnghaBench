; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_ruleutils.c_get_query_def.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_ruleutils.c_get_query_def.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_16__ = type { i32, i32, i32, i32, i32, i32*, i32*, i32, i32 }

@NIL = common dso_local global i32* null, align 8
@EXPR_KIND_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"NOTHING\00", align 1
@ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"unrecognized query command type: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_17__*, i32, i32*, i32, i32, i32, i32)* @get_query_def to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_query_def(%struct.TYPE_17__* %0, i32 %1, i32* %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_16__, align 8
  %16 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %17 = call i32 (...) @CHECK_FOR_INTERRUPTS()
  %18 = call i32 (...) @check_stack_depth()
  %19 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %20 = call i32 @AcquireRewriteLocks(%struct.TYPE_17__* %19, i32 0, i32 0)
  %21 = load i32, i32* %9, align 4
  %22 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 8
  store i32 %21, i32* %22, align 4
  %23 = load i32*, i32** %10, align 8
  %24 = call i32 @list_copy(i32* %23)
  %25 = call i32 @lcons(i32* %16, i32 %24)
  %26 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 7
  store i32 %25, i32* %26, align 8
  %27 = load i32*, i32** @NIL, align 8
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 6
  store i32* %27, i32** %28, align 8
  %29 = load i32*, i32** @NIL, align 8
  %30 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 5
  store i32* %29, i32** %30, align 8
  %31 = load i32*, i32** %10, align 8
  %32 = load i32*, i32** @NIL, align 8
  %33 = icmp ne i32* %31, %32
  br i1 %33, label %40, label %34

34:                                               ; preds = %7
  %35 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @list_length(i32 %37)
  %39 = icmp ne i32 %38, 1
  br label %40

40:                                               ; preds = %34, %7
  %41 = phi i1 [ true, %7 ], [ %39, %34 ]
  %42 = zext i1 %41 to i32
  %43 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 0
  store i32 %42, i32* %43, align 8
  %44 = load i32, i32* %12, align 4
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 1
  store i32 %44, i32* %45, align 4
  %46 = load i32, i32* %13, align 4
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 2
  store i32 %46, i32* %47, align 8
  %48 = load i32, i32* %14, align 4
  %49 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 3
  store i32 %48, i32* %49, align 4
  %50 = load i32, i32* @EXPR_KIND_NONE, align 4
  %51 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 4
  store i32 %50, i32* %51, align 8
  %52 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %53 = load i32*, i32** %10, align 8
  %54 = call i32 @set_deparse_for_query(i32* %16, %struct.TYPE_17__* %52, i32* %53)
  %55 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  switch i32 %57, label %77 [
    i32 130, label %58
    i32 129, label %62
    i32 132, label %65
    i32 133, label %68
    i32 131, label %71
    i32 128, label %74
  ]

58:                                               ; preds = %40
  %59 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %60 = load i32, i32* %11, align 4
  %61 = call i32 @get_select_query_def(%struct.TYPE_17__* %59, %struct.TYPE_16__* %15, i32 %60)
  br label %83

62:                                               ; preds = %40
  %63 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %64 = call i32 @get_update_query_def(%struct.TYPE_17__* %63, %struct.TYPE_16__* %15)
  br label %83

65:                                               ; preds = %40
  %66 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %67 = call i32 @get_insert_query_def(%struct.TYPE_17__* %66, %struct.TYPE_16__* %15)
  br label %83

68:                                               ; preds = %40
  %69 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %70 = call i32 @get_delete_query_def(%struct.TYPE_17__* %69, %struct.TYPE_16__* %15)
  br label %83

71:                                               ; preds = %40
  %72 = load i32, i32* %9, align 4
  %73 = call i32 @appendStringInfoString(i32 %72, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  br label %83

74:                                               ; preds = %40
  %75 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %76 = call i32 @get_utility_query_def(%struct.TYPE_17__* %75, %struct.TYPE_16__* %15)
  br label %83

77:                                               ; preds = %40
  %78 = load i32, i32* @ERROR, align 4
  %79 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @elog(i32 %78, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %81)
  br label %83

83:                                               ; preds = %77, %74, %71, %68, %65, %62, %58
  ret void
}

declare dso_local i32 @CHECK_FOR_INTERRUPTS(...) #1

declare dso_local i32 @check_stack_depth(...) #1

declare dso_local i32 @AcquireRewriteLocks(%struct.TYPE_17__*, i32, i32) #1

declare dso_local i32 @lcons(i32*, i32) #1

declare dso_local i32 @list_copy(i32*) #1

declare dso_local i32 @list_length(i32) #1

declare dso_local i32 @set_deparse_for_query(i32*, %struct.TYPE_17__*, i32*) #1

declare dso_local i32 @get_select_query_def(%struct.TYPE_17__*, %struct.TYPE_16__*, i32) #1

declare dso_local i32 @get_update_query_def(%struct.TYPE_17__*, %struct.TYPE_16__*) #1

declare dso_local i32 @get_insert_query_def(%struct.TYPE_17__*, %struct.TYPE_16__*) #1

declare dso_local i32 @get_delete_query_def(%struct.TYPE_17__*, %struct.TYPE_16__*) #1

declare dso_local i32 @appendStringInfoString(i32, i8*) #1

declare dso_local i32 @get_utility_query_def(%struct.TYPE_17__*, %struct.TYPE_16__*) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
