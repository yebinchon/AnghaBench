; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/parser/extr_parse_clause.c_setTargetTable.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/parser/extr_parse_clause.c_setTargetTable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, %struct.TYPE_15__*, i32* }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i32, i32, i32* }

@ERROR = common dso_local global i32 0, align 4
@ERRCODE_FEATURE_NOT_SUPPORTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"relation \22%s\22 cannot be the target of a modifying statement\00", align 1
@NoLock = common dso_local global i32 0, align 4
@RowExclusiveLock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @setTargetTable(%struct.TYPE_16__* %0, %struct.TYPE_14__* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_15__*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %6, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %14 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 2
  %15 = load i32*, i32** %14, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %33

17:                                               ; preds = %5
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @scanNameSpaceForENR(%struct.TYPE_16__* %18, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %17
  %25 = load i32, i32* @ERROR, align 4
  %26 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %27 = call i32 @errcode(i32 %26)
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @errmsg(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = call i32 @ereport(i32 %25, i32 %31)
  br label %33

33:                                               ; preds = %24, %17, %5
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %34, i32 0, i32 2
  %36 = load i32*, i32** %35, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %44

38:                                               ; preds = %33
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %39, i32 0, i32 2
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* @NoLock, align 4
  %43 = call i32 @table_close(i32* %41, i32 %42)
  br label %44

44:                                               ; preds = %38, %33
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %47 = load i32, i32* @RowExclusiveLock, align 4
  %48 = call i32* @parserOpenTable(%struct.TYPE_16__* %45, %struct.TYPE_14__* %46, i32 %47)
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i32 0, i32 2
  store i32* %48, i32** %50, align 8
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %52, i32 0, i32 2
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* @RowExclusiveLock, align 4
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* %8, align 4
  %60 = call %struct.TYPE_15__* @addRangeTableEntryForRelation(%struct.TYPE_16__* %51, i32* %54, i32 %55, i32 %58, i32 %59, i32 0)
  store %struct.TYPE_15__* %60, %struct.TYPE_15__** %11, align 8
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %62, i32 0, i32 1
  store %struct.TYPE_15__* %61, %struct.TYPE_15__** %63, align 8
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @list_length(i32 %66)
  store i32 %67, i32* %12, align 4
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %69 = load i32, i32* %12, align 4
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call %struct.TYPE_15__* @rt_fetch(i32 %69, i32 %72)
  %74 = icmp eq %struct.TYPE_15__* %68, %73
  %75 = zext i1 %74 to i32
  %76 = call i32 @Assert(i32 %75)
  %77 = load i32, i32* %10, align 4
  %78 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %79 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 4
  %80 = load i32, i32* %9, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %44
  %83 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %84 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %85 = call i32 @addRTEtoQuery(%struct.TYPE_16__* %83, %struct.TYPE_15__* %84, i32 1, i32 1, i32 1)
  br label %86

86:                                               ; preds = %82, %44
  %87 = load i32, i32* %12, align 4
  ret i32 %87
}

declare dso_local i64 @scanNameSpaceForENR(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i32) #1

declare dso_local i32 @table_close(i32*, i32) #1

declare dso_local i32* @parserOpenTable(%struct.TYPE_16__*, %struct.TYPE_14__*, i32) #1

declare dso_local %struct.TYPE_15__* @addRangeTableEntryForRelation(%struct.TYPE_16__*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @list_length(i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local %struct.TYPE_15__* @rt_fetch(i32, i32) #1

declare dso_local i32 @addRTEtoQuery(%struct.TYPE_16__*, %struct.TYPE_15__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
