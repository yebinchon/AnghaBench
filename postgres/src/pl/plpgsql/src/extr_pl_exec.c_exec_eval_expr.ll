; ModuleID = '/home/carl/AnghaBench/postgres/src/pl/plpgsql/src/extr_pl_exec.c_exec_eval_expr.c'
source_filename = "/home/carl/AnghaBench/postgres/src/pl/plpgsql/src/extr_pl_exec.c_exec_eval_expr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { %struct.TYPE_16__*, i32* }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_18__ = type { i32, i32* }
%struct.TYPE_20__ = type { i32, i32 }

@CURSOR_OPT_PARALLEL_OK = common dso_local global i32 0, align 4
@SPI_OK_SELECT = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_WRONG_OBJECT_TYPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"query \22%s\22 did not return data\00", align 1
@ERRCODE_SYNTAX_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"query \22%s\22 returned %d column\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"query \22%s\22 returned %d columns\00", align 1
@ERRCODE_CARDINALITY_VIOLATION = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"query \22%s\22 returned more than one row\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_19__*, %struct.TYPE_18__*, i32*, i32*, i32*)* @exec_eval_expr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exec_eval_expr(%struct.TYPE_19__* %0, %struct.TYPE_18__* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_19__*, align 8
  %8 = alloca %struct.TYPE_18__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_20__*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %7, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32 0, i32* %12, align 4
  %15 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %16 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %24

19:                                               ; preds = %5
  %20 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %21 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %22 = load i32, i32* @CURSOR_OPT_PARALLEL_OK, align 4
  %23 = call i32 @exec_prepare_plan(%struct.TYPE_19__* %20, %struct.TYPE_18__* %21, i32 %22, i32 1)
  br label %24

24:                                               ; preds = %19, %5
  %25 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %26 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %27 = load i32*, i32** %9, align 8
  %28 = load i32*, i32** %10, align 8
  %29 = load i32*, i32** %11, align 8
  %30 = call i64 @exec_eval_simple_expr(%struct.TYPE_19__* %25, %struct.TYPE_18__* %26, i32* %12, i32* %27, i32* %28, i32* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %24
  %33 = load i32, i32* %12, align 4
  store i32 %33, i32* %6, align 4
  br label %132

34:                                               ; preds = %24
  %35 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %36 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %37 = call i32 @exec_run_select(%struct.TYPE_19__* %35, %struct.TYPE_18__* %36, i32 2, i32* null)
  store i32 %37, i32* %13, align 4
  %38 = load i32, i32* %13, align 4
  %39 = load i32, i32* @SPI_OK_SELECT, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %50

41:                                               ; preds = %34
  %42 = load i32, i32* @ERROR, align 4
  %43 = load i32, i32* @ERRCODE_WRONG_OBJECT_TYPE, align 4
  %44 = call i32 @errcode(i32 %43)
  %45 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @errmsg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %47)
  %49 = call i32 @ereport(i32 %42, i32 %48)
  br label %50

50:                                               ; preds = %41, %34
  %51 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_17__*, %struct.TYPE_17__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 1
  br i1 %58, label %59, label %82

59:                                               ; preds = %50
  %60 = load i32, i32* @ERROR, align 4
  %61 = load i32, i32* @ERRCODE_SYNTAX_ERROR, align 4
  %62 = call i32 @errcode(i32 %61)
  %63 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %63, i32 0, i32 1
  %65 = load %struct.TYPE_17__*, %struct.TYPE_17__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %73, i32 0, i32 1
  %75 = load %struct.TYPE_17__*, %struct.TYPE_17__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_16__*, %struct.TYPE_16__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @errmsg_plural(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %69, i32 %72, i32 %79)
  %81 = call i32 @ereport(i32 %60, i32 %80)
  br label %82

82:                                               ; preds = %59, %50
  %83 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %83, i32 0, i32 1
  %85 = load %struct.TYPE_17__*, %struct.TYPE_17__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_16__*, %struct.TYPE_16__** %86, align 8
  %88 = call %struct.TYPE_20__* @TupleDescAttr(%struct.TYPE_16__* %87, i32 0)
  store %struct.TYPE_20__* %88, %struct.TYPE_20__** %14, align 8
  %89 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %90 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load i32*, i32** %10, align 8
  store i32 %91, i32* %92, align 4
  %93 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %94 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32*, i32** %11, align 8
  store i32 %95, i32* %96, align 4
  %97 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %82
  %102 = load i32*, i32** %9, align 8
  store i32 1, i32* %102, align 4
  store i32 0, i32* %6, align 4
  br label %132

103:                                              ; preds = %82
  %104 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %105 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = icmp ne i32 %106, 1
  br i1 %107, label %108, label %117

108:                                              ; preds = %103
  %109 = load i32, i32* @ERROR, align 4
  %110 = load i32, i32* @ERRCODE_CARDINALITY_VIOLATION, align 4
  %111 = call i32 @errcode(i32 %110)
  %112 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %113 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @errmsg(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %114)
  %116 = call i32 @ereport(i32 %109, i32 %115)
  br label %117

117:                                              ; preds = %108, %103
  %118 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %119 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %118, i32 0, i32 1
  %120 = load %struct.TYPE_17__*, %struct.TYPE_17__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %120, i32 0, i32 1
  %122 = load i32*, i32** %121, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 0
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %126 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %125, i32 0, i32 1
  %127 = load %struct.TYPE_17__*, %struct.TYPE_17__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %127, i32 0, i32 0
  %129 = load %struct.TYPE_16__*, %struct.TYPE_16__** %128, align 8
  %130 = load i32*, i32** %9, align 8
  %131 = call i32 @SPI_getbinval(i32 %124, %struct.TYPE_16__* %129, i32 1, i32* %130)
  store i32 %131, i32* %6, align 4
  br label %132

132:                                              ; preds = %117, %101, %32
  %133 = load i32, i32* %6, align 4
  ret i32 %133
}

declare dso_local i32 @exec_prepare_plan(%struct.TYPE_19__*, %struct.TYPE_18__*, i32, i32) #1

declare dso_local i64 @exec_eval_simple_expr(%struct.TYPE_19__*, %struct.TYPE_18__*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @exec_run_select(%struct.TYPE_19__*, %struct.TYPE_18__*, i32, i32*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i32) #1

declare dso_local i32 @errmsg_plural(i8*, i8*, i32, i32, i32) #1

declare dso_local %struct.TYPE_20__* @TupleDescAttr(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @SPI_getbinval(i32, %struct.TYPE_16__*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
