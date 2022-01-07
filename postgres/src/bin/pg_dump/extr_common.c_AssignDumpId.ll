; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_common.c_AssignDumpId.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_common.c_AssignDumpId.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i64, i64, i32*, i32, i32*, i32* }

@lastDumpId = common dso_local global i32 0, align 4
@DUMP_COMPONENT_ALL = common dso_local global i32 0, align 4
@allocedDumpIds = common dso_local global i32 0, align 4
@dumpIdMap = common dso_local global %struct.TYPE_6__** null, align 8
@catalogIdMapValid = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AssignDumpId(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %4 = load i32, i32* @lastDumpId, align 4
  %5 = add nsw i32 %4, 1
  store i32 %5, i32* @lastDumpId, align 4
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  store i32 %5, i32* %7, align 8
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 7
  store i32* null, i32** %9, align 8
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 6
  store i32* null, i32** %11, align 8
  %12 = load i32, i32* @DUMP_COMPONENT_ALL, align 4
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 5
  store i32 %12, i32* %14, align 8
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 1
  store i32 0, i32* %16, align 4
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 4
  store i32* null, i32** %18, align 8
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 3
  store i64 0, i64* %20, align 8
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 2
  store i64 0, i64* %22, align 8
  br label %23

23:                                               ; preds = %49, %1
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @allocedDumpIds, align 4
  %28 = icmp sge i32 %26, %27
  br i1 %28, label %29, label %62

29:                                               ; preds = %23
  %30 = load i32, i32* @allocedDumpIds, align 4
  %31 = icmp sle i32 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %29
  store i32 256, i32* %3, align 4
  %33 = load i32, i32* %3, align 4
  %34 = sext i32 %33 to i64
  %35 = mul i64 %34, 8
  %36 = trunc i64 %35 to i32
  %37 = call i64 @pg_malloc(i32 %36)
  %38 = inttoptr i64 %37 to %struct.TYPE_6__**
  store %struct.TYPE_6__** %38, %struct.TYPE_6__*** @dumpIdMap, align 8
  br label %49

39:                                               ; preds = %29
  %40 = load i32, i32* @allocedDumpIds, align 4
  %41 = mul nsw i32 %40, 2
  store i32 %41, i32* %3, align 4
  %42 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @dumpIdMap, align 8
  %43 = load i32, i32* %3, align 4
  %44 = sext i32 %43 to i64
  %45 = mul i64 %44, 8
  %46 = trunc i64 %45 to i32
  %47 = call i64 @pg_realloc(%struct.TYPE_6__** %42, i32 %46)
  %48 = inttoptr i64 %47 to %struct.TYPE_6__**
  store %struct.TYPE_6__** %48, %struct.TYPE_6__*** @dumpIdMap, align 8
  br label %49

49:                                               ; preds = %39, %32
  %50 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @dumpIdMap, align 8
  %51 = load i32, i32* @allocedDumpIds, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %50, i64 %52
  %54 = load i32, i32* %3, align 4
  %55 = load i32, i32* @allocedDumpIds, align 4
  %56 = sub nsw i32 %54, %55
  %57 = sext i32 %56 to i64
  %58 = mul i64 %57, 8
  %59 = trunc i64 %58 to i32
  %60 = call i32 @memset(%struct.TYPE_6__** %53, i32 0, i32 %59)
  %61 = load i32, i32* %3, align 4
  store i32 %61, i32* @allocedDumpIds, align 4
  br label %23

62:                                               ; preds = %23
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %64 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @dumpIdMap, align 8
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %64, i64 %68
  store %struct.TYPE_6__* %63, %struct.TYPE_6__** %69, align 8
  store i32 0, i32* @catalogIdMapValid, align 4
  ret void
}

declare dso_local i64 @pg_malloc(i32) #1

declare dso_local i64 @pg_realloc(%struct.TYPE_6__**, i32) #1

declare dso_local i32 @memset(%struct.TYPE_6__**, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
