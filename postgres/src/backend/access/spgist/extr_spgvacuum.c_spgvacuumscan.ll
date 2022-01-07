; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/spgist/extr_spgvacuum.c_spgvacuumscan.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/spgist/extr_spgvacuum.c_spgvacuumscan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, %struct.TYPE_9__*, i32*, i32, i32, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { i32, i64, i64, i64, i32, i64 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_11__ = type { i32 }

@SPGIST_LAST_FIXED_BLKNO = common dso_local global i64 0, align 8
@SPGIST_METAPAGE_BLKNO = common dso_local global i64 0, align 8
@ExclusiveLock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*)* @spgvacuumscan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spgvacuumscan(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  %7 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 5
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %3, align 4
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 4
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @initSpGistState(i32* %13, i32 %14)
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 2
  store i32* null, i32** %17, align 8
  %18 = call %struct.TYPE_11__* (...) @GetActiveSnapshot()
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 3
  store i32 %20, i32* %22, align 8
  %23 = load i64, i64* @SPGIST_LAST_FIXED_BLKNO, align 8
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  store i64 %23, i64* %25, align 8
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  store i32 0, i32* %29, align 8
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 5
  store i64 0, i64* %33, align 8
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 1
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 1
  store i64 0, i64* %37, align 8
  %38 = load i32, i32* %3, align 4
  %39 = call i32 @RELATION_IS_LOCAL(i32 %38)
  %40 = icmp ne i32 %39, 0
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  store i32 %42, i32* %4, align 4
  %43 = load i64, i64* @SPGIST_METAPAGE_BLKNO, align 8
  %44 = add nsw i64 %43, 1
  store i64 %44, i64* %6, align 8
  br label %45

45:                                               ; preds = %86, %1
  %46 = load i32, i32* %4, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %45
  %49 = load i32, i32* %3, align 4
  %50 = load i32, i32* @ExclusiveLock, align 4
  %51 = call i32 @LockRelationForExtension(i32 %49, i32 %50)
  br label %52

52:                                               ; preds = %48, %45
  %53 = load i32, i32* %3, align 4
  %54 = call i64 @RelationGetNumberOfBlocks(i32 %53)
  store i64 %54, i64* %5, align 8
  %55 = load i32, i32* %4, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %52
  %58 = load i32, i32* %3, align 4
  %59 = load i32, i32* @ExclusiveLock, align 4
  %60 = call i32 @UnlockRelationForExtension(i32 %58, i32 %59)
  br label %61

61:                                               ; preds = %57, %52
  %62 = load i64, i64* %6, align 8
  %63 = load i64, i64* %5, align 8
  %64 = icmp sge i64 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %61
  br label %87

66:                                               ; preds = %61
  br label %67

67:                                               ; preds = %83, %66
  %68 = load i64, i64* %6, align 8
  %69 = load i64, i64* %5, align 8
  %70 = icmp slt i64 %68, %69
  br i1 %70, label %71, label %86

71:                                               ; preds = %67
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %73 = load i64, i64* %6, align 8
  %74 = call i32 @spgvacuumpage(%struct.TYPE_10__* %72, i64 %73)
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 2
  %77 = load i32*, i32** %76, align 8
  %78 = icmp ne i32* %77, null
  br i1 %78, label %79, label %82

79:                                               ; preds = %71
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %81 = call i32 @spgprocesspending(%struct.TYPE_10__* %80)
  br label %82

82:                                               ; preds = %79, %71
  br label %83

83:                                               ; preds = %82
  %84 = load i64, i64* %6, align 8
  %85 = add nsw i64 %84, 1
  store i64 %85, i64* %6, align 8
  br label %67

86:                                               ; preds = %67
  br label %45

87:                                               ; preds = %65
  %88 = load i32, i32* %3, align 4
  %89 = call i32 @SpGistUpdateMetaPage(i32 %88)
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 1
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = icmp sgt i64 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %87
  %97 = load i32, i32* %3, align 4
  %98 = call i32 @IndexFreeSpaceMapVacuum(i32 %97)
  br label %99

99:                                               ; preds = %96, %87
  %100 = load i64, i64* %5, align 8
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 1
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 3
  store i64 %100, i64* %104, align 8
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 1
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 1
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 2
  store i64 %109, i64* %113, align 8
  ret void
}

declare dso_local i32 @initSpGistState(i32*, i32) #1

declare dso_local %struct.TYPE_11__* @GetActiveSnapshot(...) #1

declare dso_local i32 @RELATION_IS_LOCAL(i32) #1

declare dso_local i32 @LockRelationForExtension(i32, i32) #1

declare dso_local i64 @RelationGetNumberOfBlocks(i32) #1

declare dso_local i32 @UnlockRelationForExtension(i32, i32) #1

declare dso_local i32 @spgvacuumpage(%struct.TYPE_10__*, i64) #1

declare dso_local i32 @spgprocesspending(%struct.TYPE_10__*) #1

declare dso_local i32 @SpGistUpdateMetaPage(i32) #1

declare dso_local i32 @IndexFreeSpaceMapVacuum(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
