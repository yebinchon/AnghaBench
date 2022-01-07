; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/executor/extr_execMain.c_InitResultRelInfo.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/executor/extr_execMain.c_InitResultRelInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32*, i32*, %struct.TYPE_14__*, i32*, i32*, i32*, i32*, i32*, i8*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32**, i32*, %struct.TYPE_11__*, i32*, i32*, i64, %struct.TYPE_14__*, i32, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_12__*, i32 }
%struct.TYPE_12__ = type { i64 }

@NIL = common dso_local global i8* null, align 8
@T_ResultRelInfo = common dso_local global i32 0, align 4
@RELKIND_FOREIGN_TABLE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @InitResultRelInfo(%struct.TYPE_13__* %0, %struct.TYPE_14__* %1, i32 %2, %struct.TYPE_14__* %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %6, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.TYPE_14__* %3, %struct.TYPE_14__** %9, align 8
  store i32 %4, i32* %10, align 4
  %13 = load i8*, i8** @NIL, align 8
  %14 = bitcast i8* %13 to i32*
  store i32* %14, i32** %11, align 8
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %16 = call i32 @MemSet(%struct.TYPE_13__* %15, i32 0, i32 200)
  %17 = load i32, i32* @T_ResultRelInfo, align 4
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 25
  store i32 %17, i32* %19, align 4
  %20 = load i32, i32* %8, align 4
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 24
  store i32 %20, i32* %22, align 8
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 23
  store %struct.TYPE_14__* %23, %struct.TYPE_14__** %25, align 8
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 22
  store i64 0, i64* %27, align 8
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 21
  store i32* null, i32** %29, align 8
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 20
  store i32* null, i32** %31, align 8
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call %struct.TYPE_11__* @CopyTriggerDesc(i32 %34)
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 19
  store %struct.TYPE_11__* %35, %struct.TYPE_11__** %37, align 8
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 19
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %39, align 8
  %41 = icmp ne %struct.TYPE_11__* %40, null
  br i1 %41, label %42, label %73

42:                                               ; preds = %5
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 19
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %12, align 4
  %48 = load i32, i32* %12, align 4
  %49 = sext i32 %48 to i64
  %50 = mul i64 %49, 4
  %51 = trunc i64 %50 to i32
  %52 = call i64 @palloc0(i32 %51)
  %53 = inttoptr i64 %52 to i32*
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 18
  store i32* %53, i32** %55, align 8
  %56 = load i32, i32* %12, align 4
  %57 = sext i32 %56 to i64
  %58 = mul i64 %57, 8
  %59 = trunc i64 %58 to i32
  %60 = call i64 @palloc0(i32 %59)
  %61 = inttoptr i64 %60 to i32**
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 17
  store i32** %61, i32*** %63, align 8
  %64 = load i32, i32* %10, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %42
  %67 = load i32, i32* %12, align 4
  %68 = load i32, i32* %10, align 4
  %69 = call i32* @InstrAlloc(i32 %67, i32 %68)
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 16
  store i32* %69, i32** %71, align 8
  br label %72

72:                                               ; preds = %66, %42
  br label %80

73:                                               ; preds = %5
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 18
  store i32* null, i32** %75, align 8
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 17
  store i32** null, i32*** %77, align 8
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 16
  store i32* null, i32** %79, align 8
  br label %80

80:                                               ; preds = %73, %72
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @RELKIND_FOREIGN_TABLE, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %93

88:                                               ; preds = %80
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %90 = call i32* @GetFdwRoutineForRelation(%struct.TYPE_14__* %89, i32 1)
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i32 0, i32 15
  store i32* %90, i32** %92, align 8
  br label %96

93:                                               ; preds = %80
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i32 0, i32 15
  store i32* null, i32** %95, align 8
  br label %96

96:                                               ; preds = %93, %88
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i32 0, i32 14
  store i32* null, i32** %98, align 8
  %99 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %99, i32 0, i32 0
  store i32 0, i32* %100, align 8
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %101, i32 0, i32 13
  store i32* null, i32** %102, align 8
  %103 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %103, i32 0, i32 12
  store i32* null, i32** %104, align 8
  %105 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i32 0, i32 11
  store i32* null, i32** %106, align 8
  %107 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %107, i32 0, i32 10
  store i32* null, i32** %108, align 8
  %109 = load i8*, i8** @NIL, align 8
  %110 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %110, i32 0, i32 9
  store i8* %109, i8** %111, align 8
  %112 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %112, i32 0, i32 8
  store i32* null, i32** %113, align 8
  %114 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %114, i32 0, i32 7
  store i32* null, i32** %115, align 8
  %116 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %116, i32 0, i32 6
  store i32* null, i32** %117, align 8
  %118 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %118, i32 0, i32 5
  store i32* null, i32** %119, align 8
  %120 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %121 = call i32* @RelationGetPartitionQual(%struct.TYPE_14__* %120)
  store i32* %121, i32** %11, align 8
  %122 = load i32*, i32** %11, align 8
  %123 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %123, i32 0, i32 4
  store i32* %122, i32** %124, align 8
  %125 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %126 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %127 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %126, i32 0, i32 3
  store %struct.TYPE_14__* %125, %struct.TYPE_14__** %127, align 8
  %128 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %129 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %128, i32 0, i32 2
  store i32* null, i32** %129, align 8
  %130 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %131 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %130, i32 0, i32 1
  store i32* null, i32** %131, align 8
  ret void
}

declare dso_local i32 @MemSet(%struct.TYPE_13__*, i32, i32) #1

declare dso_local %struct.TYPE_11__* @CopyTriggerDesc(i32) #1

declare dso_local i64 @palloc0(i32) #1

declare dso_local i32* @InstrAlloc(i32, i32) #1

declare dso_local i32* @GetFdwRoutineForRelation(%struct.TYPE_14__*, i32) #1

declare dso_local i32* @RelationGetPartitionQual(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
