; ModuleID = '/home/carl/AnghaBench/postgres/src/pl/plpgsql/src/extr_pl_exec.c_exec_stmt_return_query.c'
source_filename = "/home/carl/AnghaBench/postgres/src/pl/plpgsql/src/extr_pl_exec.c_exec_stmt_return_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32* }
%struct.TYPE_21__ = type { i64, i32*, i32, i32 }
%struct.TYPE_20__ = type { i32, i32*, i32* }
%struct.TYPE_19__ = type { i32 }

@ERROR = common dso_local global i32 0, align 4
@ERRCODE_SYNTAX_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"cannot use RETURN QUERY in a non-SETOF function\00", align 1
@.str.1 = private unnamed_addr constant [55 x i8] c"structure of query does not match function result type\00", align 1
@SPI_processed = common dso_local global i64 0, align 8
@SPI_tuptable = common dso_local global %struct.TYPE_18__* null, align 8
@PLPGSQL_RC_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_21__*, %struct.TYPE_20__*)* @exec_stmt_return_query to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exec_stmt_return_query(%struct.TYPE_21__* %0, %struct.TYPE_20__* %1) #0 {
  %3 = alloca %struct.TYPE_21__*, align 8
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %3, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %4, align 8
  store i64 0, i64* %6, align 8
  %11 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @ERROR, align 4
  %17 = load i32, i32* @ERRCODE_SYNTAX_ERROR, align 4
  %18 = call i32 @errcode(i32 %17)
  %19 = call i32 @errmsg(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %20 = call i32 @ereport(i32 %16, i32 %19)
  br label %21

21:                                               ; preds = %15, %2
  %22 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %28 = call i32 @exec_init_tuple_store(%struct.TYPE_21__* %27)
  br label %29

29:                                               ; preds = %26, %21
  %30 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %30, i32 0, i32 2
  %32 = load i32*, i32** %31, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %40

34:                                               ; preds = %29
  %35 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %36 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %36, i32 0, i32 2
  %38 = load i32*, i32** %37, align 8
  %39 = call i32 @exec_run_select(%struct.TYPE_21__* %35, i32* %38, i32 0, %struct.TYPE_19__** %5)
  br label %55

40:                                               ; preds = %29
  %41 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = icmp ne i32* %43, null
  %45 = zext i1 %44 to i32
  %46 = call i32 @Assert(i32 %45)
  %47 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %48 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call %struct.TYPE_19__* @exec_dynquery_with_params(%struct.TYPE_21__* %47, i32* %50, i32 %53, i32* null, i32 0)
  store %struct.TYPE_19__* %54, %struct.TYPE_19__** %5, align 8
  br label %55

55:                                               ; preds = %40, %34
  %56 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %57 = call i32 @get_eval_mcontext(%struct.TYPE_21__* %56)
  %58 = call i32 @MemoryContextSwitchTo(i32 %57)
  store i32 %58, i32* %8, align 4
  %59 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @gettext_noop(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0))
  %66 = call i32* @convert_tuples_by_position(i32 %61, i32 %64, i32 %65)
  store i32* %66, i32** %7, align 8
  br label %67

67:                                               ; preds = %55, %111
  %68 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %69 = call i32 @SPI_cursor_fetch(%struct.TYPE_19__* %68, i32 1, i32 50)
  %70 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %71 = call i32 @get_eval_mcontext(%struct.TYPE_21__* %70)
  %72 = call i32 @MemoryContextSwitchTo(i32 %71)
  %73 = load i64, i64* @SPI_processed, align 8
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %67
  br label %114

76:                                               ; preds = %67
  store i64 0, i64* %9, align 8
  br label %77

77:                                               ; preds = %108, %76
  %78 = load i64, i64* %9, align 8
  %79 = load i64, i64* @SPI_processed, align 8
  %80 = icmp slt i64 %78, %79
  br i1 %80, label %81, label %111

81:                                               ; preds = %77
  %82 = load %struct.TYPE_18__*, %struct.TYPE_18__** @SPI_tuptable, align 8
  %83 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = load i64, i64* %9, align 8
  %86 = getelementptr inbounds i32, i32* %84, i64 %85
  %87 = load i32, i32* %86, align 4
  store i32 %87, i32* %10, align 4
  %88 = load i32*, i32** %7, align 8
  %89 = icmp ne i32* %88, null
  br i1 %89, label %90, label %94

90:                                               ; preds = %81
  %91 = load i32, i32* %10, align 4
  %92 = load i32*, i32** %7, align 8
  %93 = call i32 @execute_attr_map_tuple(i32 %91, i32* %92)
  store i32 %93, i32* %10, align 4
  br label %94

94:                                               ; preds = %90, %81
  %95 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %95, i32 0, i32 1
  %97 = load i32*, i32** %96, align 8
  %98 = load i32, i32* %10, align 4
  %99 = call i32 @tuplestore_puttuple(i32* %97, i32 %98)
  %100 = load i32*, i32** %7, align 8
  %101 = icmp ne i32* %100, null
  br i1 %101, label %102, label %105

102:                                              ; preds = %94
  %103 = load i32, i32* %10, align 4
  %104 = call i32 @heap_freetuple(i32 %103)
  br label %105

105:                                              ; preds = %102, %94
  %106 = load i64, i64* %6, align 8
  %107 = add nsw i64 %106, 1
  store i64 %107, i64* %6, align 8
  br label %108

108:                                              ; preds = %105
  %109 = load i64, i64* %9, align 8
  %110 = add nsw i64 %109, 1
  store i64 %110, i64* %9, align 8
  br label %77

111:                                              ; preds = %77
  %112 = load %struct.TYPE_18__*, %struct.TYPE_18__** @SPI_tuptable, align 8
  %113 = call i32 @SPI_freetuptable(%struct.TYPE_18__* %112)
  br label %67

114:                                              ; preds = %75
  %115 = load %struct.TYPE_18__*, %struct.TYPE_18__** @SPI_tuptable, align 8
  %116 = call i32 @SPI_freetuptable(%struct.TYPE_18__* %115)
  %117 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %118 = call i32 @SPI_cursor_close(%struct.TYPE_19__* %117)
  %119 = load i32, i32* %8, align 4
  %120 = call i32 @MemoryContextSwitchTo(i32 %119)
  %121 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %122 = call i32 @exec_eval_cleanup(%struct.TYPE_21__* %121)
  %123 = load i64, i64* %6, align 8
  %124 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %125 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %124, i32 0, i32 0
  store i64 %123, i64* %125, align 8
  %126 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %127 = load i64, i64* %6, align 8
  %128 = icmp ne i64 %127, 0
  %129 = zext i1 %128 to i32
  %130 = call i32 @exec_set_found(%struct.TYPE_21__* %126, i32 %129)
  %131 = load i32, i32* @PLPGSQL_RC_OK, align 4
  ret i32 %131
}

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32 @exec_init_tuple_store(%struct.TYPE_21__*) #1

declare dso_local i32 @exec_run_select(%struct.TYPE_21__*, i32*, i32, %struct.TYPE_19__**) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local %struct.TYPE_19__* @exec_dynquery_with_params(%struct.TYPE_21__*, i32*, i32, i32*, i32) #1

declare dso_local i32 @MemoryContextSwitchTo(i32) #1

declare dso_local i32 @get_eval_mcontext(%struct.TYPE_21__*) #1

declare dso_local i32* @convert_tuples_by_position(i32, i32, i32) #1

declare dso_local i32 @gettext_noop(i8*) #1

declare dso_local i32 @SPI_cursor_fetch(%struct.TYPE_19__*, i32, i32) #1

declare dso_local i32 @execute_attr_map_tuple(i32, i32*) #1

declare dso_local i32 @tuplestore_puttuple(i32*, i32) #1

declare dso_local i32 @heap_freetuple(i32) #1

declare dso_local i32 @SPI_freetuptable(%struct.TYPE_18__*) #1

declare dso_local i32 @SPI_cursor_close(%struct.TYPE_19__*) #1

declare dso_local i32 @exec_eval_cleanup(%struct.TYPE_21__*) #1

declare dso_local i32 @exec_set_found(%struct.TYPE_21__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
