; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/nodes/extr_outfuncs.c__outPathInfo.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/nodes/extr_outfuncs.c__outPathInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, %struct.TYPE_5__*, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { i32* }
%struct.TYPE_6__ = type { i64, i32* }

@pathtype = common dso_local global i32 0, align 4
@NodeTag = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c" :parent_relids \00", align 1
@pathtarget = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c" :required_outer \00", align 1
@parallel_aware = common dso_local global i32 0, align 4
@parallel_safe = common dso_local global i32 0, align 4
@parallel_workers = common dso_local global i32 0, align 4
@rows = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"%.0f\00", align 1
@startup_cost = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"%.2f\00", align 1
@total_cost = common dso_local global i32 0, align 4
@pathkeys = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_7__*)* @_outPathInfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_outPathInfo(i32 %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %4, align 8
  %5 = load i32, i32* @pathtype, align 4
  %6 = load i32, i32* @NodeTag, align 4
  %7 = call i32 @WRITE_ENUM_FIELD(i32 %5, i32 %6)
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @appendStringInfoString(i32 %8, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %10 = load i32, i32* %3, align 4
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 2
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = call i32 @outBitmapset(i32 %10, i32* %15)
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 2
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %19, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %2
  %27 = load i32, i32* @pathtarget, align 4
  %28 = call i32 @WRITE_NODE_FIELD(i32 %27)
  br label %29

29:                                               ; preds = %26, %2
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @appendStringInfoString(i32 %30, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  %35 = icmp ne %struct.TYPE_5__* %34, null
  br i1 %35, label %36, label %44

36:                                               ; preds = %29
  %37 = load i32, i32* %3, align 4
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = call i32 @outBitmapset(i32 %37, i32* %42)
  br label %47

44:                                               ; preds = %29
  %45 = load i32, i32* %3, align 4
  %46 = call i32 @outBitmapset(i32 %45, i32* null)
  br label %47

47:                                               ; preds = %44, %36
  %48 = load i32, i32* @parallel_aware, align 4
  %49 = call i32 @WRITE_BOOL_FIELD(i32 %48)
  %50 = load i32, i32* @parallel_safe, align 4
  %51 = call i32 @WRITE_BOOL_FIELD(i32 %50)
  %52 = load i32, i32* @parallel_workers, align 4
  %53 = call i32 @WRITE_INT_FIELD(i32 %52)
  %54 = load i32, i32* @rows, align 4
  %55 = call i32 @WRITE_FLOAT_FIELD(i32 %54, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %56 = load i32, i32* @startup_cost, align 4
  %57 = call i32 @WRITE_FLOAT_FIELD(i32 %56, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %58 = load i32, i32* @total_cost, align 4
  %59 = call i32 @WRITE_FLOAT_FIELD(i32 %58, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %60 = load i32, i32* @pathkeys, align 4
  %61 = call i32 @WRITE_NODE_FIELD(i32 %60)
  ret void
}

declare dso_local i32 @WRITE_ENUM_FIELD(i32, i32) #1

declare dso_local i32 @appendStringInfoString(i32, i8*) #1

declare dso_local i32 @outBitmapset(i32, i32*) #1

declare dso_local i32 @WRITE_NODE_FIELD(i32) #1

declare dso_local i32 @WRITE_BOOL_FIELD(i32) #1

declare dso_local i32 @WRITE_INT_FIELD(i32) #1

declare dso_local i32 @WRITE_FLOAT_FIELD(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
