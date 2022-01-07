; ModuleID = '/home/carl/AnghaBench/postgres/src/pl/plpgsql/src/extr_pl_exec.c_exec_eval_simple_expr.c'
source_filename = "/home/carl/AnghaBench/postgres/src/pl/plpgsql/src/extr_pl_exec.c_exec_eval_simple_expr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i64 }
%struct.TYPE_23__ = type { i32, %struct.TYPE_21__*, %struct.TYPE_20__*, %struct.TYPE_24__* }
%struct.TYPE_21__ = type { i8* }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_24__ = type { i32* }
%struct.TYPE_22__ = type { i32, i64, i64, i64, i32, i32*, i32, i32, i32 }
%struct.TYPE_25__ = type { i64 }

@MyProc = common dso_local global %struct.TYPE_19__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_23__*, %struct.TYPE_22__*, i32*, i32*, i32*, i32*)* @exec_eval_simple_expr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exec_eval_simple_expr(%struct.TYPE_23__* %0, %struct.TYPE_22__* %1, i32* %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_23__*, align 8
  %9 = alloca %struct.TYPE_22__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_24__*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_25__*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %8, align 8
  store %struct.TYPE_22__* %1, %struct.TYPE_22__** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %19 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %19, i32 0, i32 3
  %21 = load %struct.TYPE_24__*, %struct.TYPE_24__** %20, align 8
  store %struct.TYPE_24__* %21, %struct.TYPE_24__** %14, align 8
  %22 = load %struct.TYPE_19__*, %struct.TYPE_19__** @MyProc, align 8
  %23 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %15, align 8
  %25 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %25, i32 0, i32 5
  %27 = load i32*, i32** %26, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %167

30:                                               ; preds = %6
  %31 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %30
  %36 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* %15, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  store i32 0, i32* %7, align 4
  br label %167

42:                                               ; preds = %35, %30
  %43 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %44 = call i32 @get_eval_mcontext(%struct.TYPE_23__* %43)
  %45 = call i32 @MemoryContextSwitchTo(i32 %44)
  store i32 %45, i32* %18, align 4
  %46 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %46, i32 0, i32 8
  %48 = load i32, i32* %47, align 8
  %49 = call %struct.TYPE_25__* @SPI_plan_get_cached_plan(i32 %48)
  store %struct.TYPE_25__* %49, %struct.TYPE_25__** %16, align 8
  %50 = load i32, i32* %18, align 4
  %51 = call i32 @MemoryContextSwitchTo(i32 %50)
  %52 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %53 = icmp ne %struct.TYPE_25__* %52, null
  %54 = zext i1 %53 to i32
  %55 = call i32 @Assert(i32 %54)
  %56 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %57 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %58, %61
  br i1 %62, label %63, label %78

63:                                               ; preds = %42
  %64 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %65 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %66 = call i32 @exec_save_simple_expr(%struct.TYPE_22__* %64, %struct.TYPE_25__* %65)
  %67 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %68 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %67, i32 0, i32 3
  %69 = load i64, i64* %68, align 8
  %70 = icmp sge i64 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %63
  %72 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %73 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %74 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %73, i32 0, i32 3
  %75 = load i64, i64* %74, align 8
  %76 = call i32 @exec_check_rw_parameter(%struct.TYPE_22__* %72, i64 %75)
  br label %77

77:                                               ; preds = %71, %63
  br label %78

78:                                               ; preds = %77, %42
  %79 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %79, i32 0, i32 7
  %81 = load i32, i32* %80, align 4
  %82 = load i32*, i32** %12, align 8
  store i32 %81, i32* %82, align 4
  %83 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %84 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %83, i32 0, i32 6
  %85 = load i32, i32* %84, align 8
  %86 = load i32*, i32** %13, align 8
  store i32 %85, i32* %86, align 4
  %87 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %87, i32 0, i32 1
  %89 = load %struct.TYPE_21__*, %struct.TYPE_21__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %89, i32 0, i32 0
  %91 = load i8*, i8** %90, align 8
  store i8* %91, i8** %17, align 8
  %92 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %93 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %94 = call i32* @setup_param_list(%struct.TYPE_23__* %92, %struct.TYPE_22__* %93)
  %95 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %96 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %95, i32 0, i32 0
  store i32* %94, i32** %96, align 8
  %97 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %98 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* %15, align 8
  %101 = icmp ne i64 %99, %100
  br i1 %101, label %102, label %125

102:                                              ; preds = %78
  %103 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %103, i32 0, i32 2
  %105 = load %struct.TYPE_20__*, %struct.TYPE_20__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @MemoryContextSwitchTo(i32 %107)
  store i32 %108, i32* %18, align 4
  %109 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %110 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %109, i32 0, i32 5
  %111 = load i32*, i32** %110, align 8
  %112 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %113 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %112, i32 0, i32 0
  %114 = load i32*, i32** %113, align 8
  %115 = call i32 @ExecInitExprWithParams(i32* %111, i32* %114)
  %116 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %117 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %116, i32 0, i32 4
  store i32 %115, i32* %117, align 8
  %118 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %119 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %118, i32 0, i32 0
  store i32 0, i32* %119, align 8
  %120 = load i64, i64* %15, align 8
  %121 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %122 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %121, i32 0, i32 1
  store i64 %120, i64* %122, align 8
  %123 = load i32, i32* %18, align 4
  %124 = call i32 @MemoryContextSwitchTo(i32 %123)
  br label %125

125:                                              ; preds = %102, %78
  %126 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %127 = call i32 @get_eval_mcontext(%struct.TYPE_23__* %126)
  %128 = call i32 @MemoryContextSwitchTo(i32 %127)
  store i32 %128, i32* %18, align 4
  %129 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %130 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %137, label %133

133:                                              ; preds = %125
  %134 = call i32 (...) @CommandCounterIncrement()
  %135 = call i32 (...) @GetTransactionSnapshot()
  %136 = call i32 @PushActiveSnapshot(i32 %135)
  br label %137

137:                                              ; preds = %133, %125
  %138 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %139 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %138, i32 0, i32 0
  store i32 1, i32* %139, align 8
  %140 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %141 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %140, i32 0, i32 4
  %142 = load i32, i32* %141, align 8
  %143 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %144 = load i32*, i32** %11, align 8
  %145 = call i32 @ExecEvalExpr(i32 %142, %struct.TYPE_24__* %143, i32* %144)
  %146 = load i32*, i32** %10, align 8
  store i32 %145, i32* %146, align 4
  %147 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %148 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %147, i32 0, i32 0
  store i32 0, i32* %148, align 8
  %149 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %150 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %149, i32 0, i32 0
  store i32* null, i32** %150, align 8
  %151 = load i8*, i8** %17, align 8
  %152 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %153 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %152, i32 0, i32 1
  %154 = load %struct.TYPE_21__*, %struct.TYPE_21__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %154, i32 0, i32 0
  store i8* %151, i8** %155, align 8
  %156 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %157 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %162, label %160

160:                                              ; preds = %137
  %161 = call i32 (...) @PopActiveSnapshot()
  br label %162

162:                                              ; preds = %160, %137
  %163 = load i32, i32* %18, align 4
  %164 = call i32 @MemoryContextSwitchTo(i32 %163)
  %165 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %166 = call i32 @ReleaseCachedPlan(%struct.TYPE_25__* %165, i32 1)
  store i32 1, i32* %7, align 4
  br label %167

167:                                              ; preds = %162, %41, %29
  %168 = load i32, i32* %7, align 4
  ret i32 %168
}

declare dso_local i32 @MemoryContextSwitchTo(i32) #1

declare dso_local i32 @get_eval_mcontext(%struct.TYPE_23__*) #1

declare dso_local %struct.TYPE_25__* @SPI_plan_get_cached_plan(i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @exec_save_simple_expr(%struct.TYPE_22__*, %struct.TYPE_25__*) #1

declare dso_local i32 @exec_check_rw_parameter(%struct.TYPE_22__*, i64) #1

declare dso_local i32* @setup_param_list(%struct.TYPE_23__*, %struct.TYPE_22__*) #1

declare dso_local i32 @ExecInitExprWithParams(i32*, i32*) #1

declare dso_local i32 @CommandCounterIncrement(...) #1

declare dso_local i32 @PushActiveSnapshot(i32) #1

declare dso_local i32 @GetTransactionSnapshot(...) #1

declare dso_local i32 @ExecEvalExpr(i32, %struct.TYPE_24__*, i32*) #1

declare dso_local i32 @PopActiveSnapshot(...) #1

declare dso_local i32 @ReleaseCachedPlan(%struct.TYPE_25__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
