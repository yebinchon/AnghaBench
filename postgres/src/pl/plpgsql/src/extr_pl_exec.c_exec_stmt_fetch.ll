; ModuleID = '/home/carl/AnghaBench/postgres/src/pl/plpgsql/src/extr_pl_exec.c_exec_stmt_fetch.c'
source_filename = "/home/carl/AnghaBench/postgres/src/pl/plpgsql/src/extr_pl_exec.c_exec_stmt_fetch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32** }
%struct.TYPE_19__ = type { i64, i64* }
%struct.TYPE_18__ = type { i64, i64, i32, %struct.TYPE_15__*, i32, i64 }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_17__ = type { i32, i32, i64 }

@ERROR = common dso_local global i32 0, align 4
@ERRCODE_NULL_VALUE_NOT_ALLOWED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"cursor variable \22%s\22 is null\00", align 1
@ERRCODE_UNDEFINED_CURSOR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"cursor \22%s\22 does not exist\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"relative or absolute cursor position is null\00", align 1
@SPI_tuptable = common dso_local global %struct.TYPE_16__* null, align 8
@SPI_processed = common dso_local global i64 0, align 8
@PLPGSQL_RC_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_19__*, %struct.TYPE_18__*)* @exec_stmt_fetch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exec_stmt_fetch(%struct.TYPE_19__* %0, %struct.TYPE_18__* %1) #0 {
  %3 = alloca %struct.TYPE_19__*, align 8
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %3, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %4, align 8
  %14 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %6, align 8
  %17 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %17, i32 0, i32 1
  %19 = load i64*, i64** %18, align 8
  %20 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds i64, i64* %19, i64 %22
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %25, %struct.TYPE_17__** %5, align 8
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %2
  %31 = load i32, i32* @ERROR, align 4
  %32 = load i32, i32* @ERRCODE_NULL_VALUE_NOT_ALLOWED, align 4
  %33 = call i32 @errcode(i32 %32)
  %34 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = call i32 @ereport(i32 %31, i32 %37)
  br label %39

39:                                               ; preds = %30, %2
  %40 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %41 = call i32 @get_eval_mcontext(%struct.TYPE_19__* %40)
  %42 = call i32 @MemoryContextSwitchTo(i32 %41)
  store i32 %42, i32* %11, align 4
  %43 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i8* @TextDatumGetCString(i32 %45)
  store i8* %46, i8** %9, align 8
  %47 = load i32, i32* %11, align 4
  %48 = call i32 @MemoryContextSwitchTo(i32 %47)
  %49 = load i8*, i8** %9, align 8
  %50 = call i32* @SPI_cursor_find(i8* %49)
  store i32* %50, i32** %8, align 8
  %51 = load i32*, i32** %8, align 8
  %52 = icmp eq i32* %51, null
  br i1 %52, label %53, label %60

53:                                               ; preds = %39
  %54 = load i32, i32* @ERROR, align 4
  %55 = load i32, i32* @ERRCODE_UNDEFINED_CURSOR, align 4
  %56 = call i32 @errcode(i32 %55)
  %57 = load i8*, i8** %9, align 8
  %58 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* %57)
  %59 = call i32 @ereport(i32 %54, i32 %58)
  br label %60

60:                                               ; preds = %53, %39
  %61 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %61, i32 0, i32 5
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %82

65:                                               ; preds = %60
  %66 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %67 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %67, i32 0, i32 5
  %69 = load i64, i64* %68, align 8
  %70 = call i64 @exec_eval_integer(%struct.TYPE_19__* %66, i64 %69, i32* %12)
  store i64 %70, i64* %6, align 8
  %71 = load i32, i32* %12, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %65
  %74 = load i32, i32* @ERROR, align 4
  %75 = load i32, i32* @ERRCODE_NULL_VALUE_NOT_ALLOWED, align 4
  %76 = call i32 @errcode(i32 %75)
  %77 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  %78 = call i32 @ereport(i32 %74, i32 %77)
  br label %79

79:                                               ; preds = %73, %65
  %80 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %81 = call i32 @exec_eval_cleanup(%struct.TYPE_19__* %80)
  br label %82

82:                                               ; preds = %79, %60
  %83 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 8
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %133, label %87

87:                                               ; preds = %82
  %88 = load i32*, i32** %8, align 8
  %89 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = load i64, i64* %6, align 8
  %93 = call i32 @SPI_scroll_cursor_fetch(i32* %88, i32 %91, i64 %92)
  %94 = load %struct.TYPE_16__*, %struct.TYPE_16__** @SPI_tuptable, align 8
  store %struct.TYPE_16__* %94, %struct.TYPE_16__** %7, align 8
  %95 = load i64, i64* @SPI_processed, align 8
  store i64 %95, i64* %10, align 8
  %96 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %96, i32 0, i32 1
  %98 = load i64*, i64** %97, align 8
  %99 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %99, i32 0, i32 3
  %101 = load %struct.TYPE_15__*, %struct.TYPE_15__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = getelementptr inbounds i64, i64* %98, i64 %103
  %105 = load i64, i64* %104, align 8
  %106 = inttoptr i64 %105 to i32*
  store i32* %106, i32** %13, align 8
  %107 = load i64, i64* %10, align 8
  %108 = icmp eq i64 %107, 0
  br i1 %108, label %109, label %116

109:                                              ; preds = %87
  %110 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %111 = load i32*, i32** %13, align 8
  %112 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %113 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @exec_move_row(%struct.TYPE_19__* %110, i32* %111, i32* null, i32 %114)
  br label %128

116:                                              ; preds = %87
  %117 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %118 = load i32*, i32** %13, align 8
  %119 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %120 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %119, i32 0, i32 1
  %121 = load i32**, i32*** %120, align 8
  %122 = getelementptr inbounds i32*, i32** %121, i64 0
  %123 = load i32*, i32** %122, align 8
  %124 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %125 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = call i32 @exec_move_row(%struct.TYPE_19__* %117, i32* %118, i32* %123, i32 %126)
  br label %128

128:                                              ; preds = %116, %109
  %129 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %130 = call i32 @exec_eval_cleanup(%struct.TYPE_19__* %129)
  %131 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %132 = call i32 @SPI_freetuptable(%struct.TYPE_16__* %131)
  br label %141

133:                                              ; preds = %82
  %134 = load i32*, i32** %8, align 8
  %135 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = load i64, i64* %6, align 8
  %139 = call i32 @SPI_scroll_cursor_move(i32* %134, i32 %137, i64 %138)
  %140 = load i64, i64* @SPI_processed, align 8
  store i64 %140, i64* %10, align 8
  br label %141

141:                                              ; preds = %133, %128
  %142 = load i64, i64* %10, align 8
  %143 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %144 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %143, i32 0, i32 0
  store i64 %142, i64* %144, align 8
  %145 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %146 = load i64, i64* %10, align 8
  %147 = icmp ne i64 %146, 0
  %148 = zext i1 %147 to i32
  %149 = call i32 @exec_set_found(%struct.TYPE_19__* %145, i32 %148)
  %150 = load i32, i32* @PLPGSQL_RC_OK, align 4
  ret i32 %150
}

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, ...) #1

declare dso_local i32 @MemoryContextSwitchTo(i32) #1

declare dso_local i32 @get_eval_mcontext(%struct.TYPE_19__*) #1

declare dso_local i8* @TextDatumGetCString(i32) #1

declare dso_local i32* @SPI_cursor_find(i8*) #1

declare dso_local i64 @exec_eval_integer(%struct.TYPE_19__*, i64, i32*) #1

declare dso_local i32 @exec_eval_cleanup(%struct.TYPE_19__*) #1

declare dso_local i32 @SPI_scroll_cursor_fetch(i32*, i32, i64) #1

declare dso_local i32 @exec_move_row(%struct.TYPE_19__*, i32*, i32*, i32) #1

declare dso_local i32 @SPI_freetuptable(%struct.TYPE_16__*) #1

declare dso_local i32 @SPI_scroll_cursor_move(i32*, i32, i64) #1

declare dso_local i32 @exec_set_found(%struct.TYPE_19__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
