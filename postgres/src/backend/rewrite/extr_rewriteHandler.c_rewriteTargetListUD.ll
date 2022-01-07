; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/rewrite/extr_rewriteHandler.c_rewriteTargetListUD.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/rewrite/extr_rewriteHandler.c_rewriteTargetListUD.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64, i32, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__*, %struct.TYPE_12__* }
%struct.TYPE_13__ = type { i64, i64, i64, i64 }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_16__ = type { i32 (%struct.TYPE_15__*, i32*, %struct.TYPE_14__*)* }

@RELKIND_RELATION = common dso_local global i64 0, align 8
@RELKIND_MATVIEW = common dso_local global i64 0, align 8
@RELKIND_PARTITIONED_TABLE = common dso_local global i64 0, align 8
@SelfItemPointerAttributeNumber = common dso_local global i32 0, align 4
@TIDOID = common dso_local global i32 0, align 4
@InvalidOid = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"ctid\00", align 1
@RELKIND_FOREIGN_TABLE = common dso_local global i64 0, align 8
@CMD_UPDATE = common dso_local global i64 0, align 8
@CMD_DELETE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"wholerow\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rewriteTargetListUD(%struct.TYPE_15__* %0, i32* %1, %struct.TYPE_14__* %2) #0 {
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.TYPE_14__* %2, %struct.TYPE_14__** %6, align 8
  store i32* null, i32** %7, align 8
  %11 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @RELKIND_RELATION, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %34, label %18

18:                                               ; preds = %3
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @RELKIND_MATVIEW, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %34, label %26

26:                                               ; preds = %18
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @RELKIND_PARTITIONED_TABLE, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %42

34:                                               ; preds = %26, %18, %3
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @SelfItemPointerAttributeNumber, align 4
  %39 = load i32, i32* @TIDOID, align 4
  %40 = load i32, i32* @InvalidOid, align 4
  %41 = call i32* @makeVar(i32 %37, i32 %38, i32 %39, i32 -1, i32 %40, i32 0)
  store i32* %41, i32** %7, align 8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  br label %118

42:                                               ; preds = %26
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @RELKIND_FOREIGN_TABLE, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %117

50:                                               ; preds = %42
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %52 = call %struct.TYPE_16__* @GetFdwRoutineForRelation(%struct.TYPE_14__* %51, i32 0)
  store %struct.TYPE_16__* %52, %struct.TYPE_16__** %10, align 8
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %53, i32 0, i32 0
  %55 = load i32 (%struct.TYPE_15__*, i32*, %struct.TYPE_14__*)*, i32 (%struct.TYPE_15__*, i32*, %struct.TYPE_14__*)** %54, align 8
  %56 = icmp ne i32 (%struct.TYPE_15__*, i32*, %struct.TYPE_14__*)* %55, null
  br i1 %56, label %57, label %65

57:                                               ; preds = %50
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %58, i32 0, i32 0
  %60 = load i32 (%struct.TYPE_15__*, i32*, %struct.TYPE_14__*)*, i32 (%struct.TYPE_15__*, i32*, %struct.TYPE_14__*)** %59, align 8
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %62 = load i32*, i32** %5, align 8
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %64 = call i32 %60(%struct.TYPE_15__* %61, i32* %62, %struct.TYPE_14__* %63)
  br label %65

65:                                               ; preds = %57, %50
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %67, align 8
  %69 = icmp ne %struct.TYPE_13__* %68, null
  br i1 %69, label %70, label %116

70:                                               ; preds = %65
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @CMD_UPDATE, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %90

76:                                               ; preds = %70
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 3
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %110, label %83

83:                                               ; preds = %76
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %110, label %90

90:                                               ; preds = %83, %70
  %91 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @CMD_DELETE, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %116

96:                                               ; preds = %90
  %97 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %97, i32 0, i32 0
  %99 = load %struct.TYPE_13__*, %struct.TYPE_13__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %110, label %103

103:                                              ; preds = %96
  %104 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %104, i32 0, i32 0
  %106 = load %struct.TYPE_13__*, %struct.TYPE_13__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %116

110:                                              ; preds = %103, %96, %83, %76
  %111 = load i32*, i32** %5, align 8
  %112 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = call i32* @makeWholeRowVar(i32* %111, i32 %114, i32 0, i32 0)
  store i32* %115, i32** %7, align 8
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8** %8, align 8
  br label %116

116:                                              ; preds = %110, %103, %90, %65
  br label %117

117:                                              ; preds = %116, %42
  br label %118

118:                                              ; preds = %117, %34
  %119 = load i32*, i32** %7, align 8
  %120 = icmp ne i32* %119, null
  br i1 %120, label %121, label %138

121:                                              ; preds = %118
  %122 = load i32*, i32** %7, align 8
  %123 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 8
  %126 = call i64 @list_length(i32 %125)
  %127 = add nsw i64 %126, 1
  %128 = load i8*, i8** %8, align 8
  %129 = call i32 @pstrdup(i8* %128)
  %130 = call i32* @makeTargetEntry(i32* %122, i64 %127, i32 %129, i32 1)
  store i32* %130, i32** %9, align 8
  %131 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 8
  %134 = load i32*, i32** %9, align 8
  %135 = call i32 @lappend(i32 %133, i32* %134)
  %136 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %136, i32 0, i32 1
  store i32 %135, i32* %137, align 8
  br label %138

138:                                              ; preds = %121, %118
  ret void
}

declare dso_local i32* @makeVar(i32, i32, i32, i32, i32, i32) #1

declare dso_local %struct.TYPE_16__* @GetFdwRoutineForRelation(%struct.TYPE_14__*, i32) #1

declare dso_local i32* @makeWholeRowVar(i32*, i32, i32, i32) #1

declare dso_local i32* @makeTargetEntry(i32*, i64, i32, i32) #1

declare dso_local i64 @list_length(i32) #1

declare dso_local i32 @pstrdup(i8*) #1

declare dso_local i32 @lappend(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
