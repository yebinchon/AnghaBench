; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/gist/extr_gistvacuum.c_gistvacuumscan.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/gist/extr_gistvacuum.c_gistvacuumscan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_8__, i8*, i8*, i32 }
%struct.TYPE_8__ = type { i32, i64, i64, i64, i64 }
%struct.TYPE_10__ = type { i32, i8*, i32, %struct.TYPE_11__*, %struct.TYPE_9__* }

@GIST_ROOT_BLKNO = common dso_local global i64 0, align 8
@ExclusiveLock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, %struct.TYPE_11__*, i32, i8*)* @gistvacuumscan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gistvacuumscan(%struct.TYPE_9__* %0, %struct.TYPE_11__* %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_10__, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %9, align 4
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  store i32 0, i32* %20, align 8
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 4
  store i64 0, i64* %23, align 8
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 3
  store i64 0, i64* %26, align 8
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 1
  store i64 0, i64* %29, align 8
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @MemoryContextReset(i32 %32)
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @MemoryContextSwitchTo(i32 %36)
  store i32 %37, i32* %14, align 4
  %38 = call i8* (...) @intset_create()
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 2
  store i8* %38, i8** %40, align 8
  %41 = call i8* (...) @intset_create()
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 1
  store i8* %41, i8** %43, align 8
  %44 = load i32, i32* %14, align 4
  %45 = call i32 @MemoryContextSwitchTo(i32 %44)
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 4
  store %struct.TYPE_9__* %46, %struct.TYPE_9__** %47, align 8
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 3
  store %struct.TYPE_11__* %48, %struct.TYPE_11__** %49, align 8
  %50 = load i32, i32* %7, align 4
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 2
  store i32 %50, i32* %51, align 8
  %52 = load i8*, i8** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 1
  store i8* %52, i8** %53, align 8
  %54 = load i32, i32* %9, align 4
  %55 = call i64 @RelationNeedsWAL(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %4
  %58 = call i32 (...) @GetInsertRecPtr()
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  store i32 %58, i32* %59, align 8
  br label %64

60:                                               ; preds = %4
  %61 = load i32, i32* %9, align 4
  %62 = call i32 @gistGetFakeLSN(i32 %61)
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  store i32 %62, i32* %63, align 8
  br label %64

64:                                               ; preds = %60, %57
  %65 = load i32, i32* %9, align 4
  %66 = call i32 @RELATION_IS_LOCAL(i32 %65)
  %67 = icmp ne i32 %66, 0
  %68 = xor i1 %67, true
  %69 = zext i1 %68 to i32
  store i32 %69, i32* %12, align 4
  %70 = load i64, i64* @GIST_ROOT_BLKNO, align 8
  store i64 %70, i64* %13, align 8
  br label %71

71:                                               ; preds = %104, %64
  %72 = load i32, i32* %12, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %71
  %75 = load i32, i32* %9, align 4
  %76 = load i32, i32* @ExclusiveLock, align 4
  %77 = call i32 @LockRelationForExtension(i32 %75, i32 %76)
  br label %78

78:                                               ; preds = %74, %71
  %79 = load i32, i32* %9, align 4
  %80 = call i64 @RelationGetNumberOfBlocks(i32 %79)
  store i64 %80, i64* %11, align 8
  %81 = load i32, i32* %12, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %78
  %84 = load i32, i32* %9, align 4
  %85 = load i32, i32* @ExclusiveLock, align 4
  %86 = call i32 @UnlockRelationForExtension(i32 %84, i32 %85)
  br label %87

87:                                               ; preds = %83, %78
  %88 = load i64, i64* %13, align 8
  %89 = load i64, i64* %11, align 8
  %90 = icmp sge i64 %88, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %87
  br label %105

92:                                               ; preds = %87
  br label %93

93:                                               ; preds = %101, %92
  %94 = load i64, i64* %13, align 8
  %95 = load i64, i64* %11, align 8
  %96 = icmp slt i64 %94, %95
  br i1 %96, label %97, label %104

97:                                               ; preds = %93
  %98 = load i64, i64* %13, align 8
  %99 = load i64, i64* %13, align 8
  %100 = call i32 @gistvacuumpage(%struct.TYPE_10__* %10, i64 %98, i64 %99)
  br label %101

101:                                              ; preds = %97
  %102 = load i64, i64* %13, align 8
  %103 = add nsw i64 %102, 1
  store i64 %103, i64* %13, align 8
  br label %93

104:                                              ; preds = %93
  br label %71

105:                                              ; preds = %91
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = icmp sgt i64 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %105
  %112 = load i32, i32* %9, align 4
  %113 = call i32 @IndexFreeSpaceMapVacuum(i32 %112)
  br label %114

114:                                              ; preds = %111, %105
  %115 = load i64, i64* %11, align 8
  %116 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 2
  store i64 %115, i64* %118, align 8
  ret void
}

declare dso_local i32 @MemoryContextReset(i32) #1

declare dso_local i32 @MemoryContextSwitchTo(i32) #1

declare dso_local i8* @intset_create(...) #1

declare dso_local i64 @RelationNeedsWAL(i32) #1

declare dso_local i32 @GetInsertRecPtr(...) #1

declare dso_local i32 @gistGetFakeLSN(i32) #1

declare dso_local i32 @RELATION_IS_LOCAL(i32) #1

declare dso_local i32 @LockRelationForExtension(i32, i32) #1

declare dso_local i64 @RelationGetNumberOfBlocks(i32) #1

declare dso_local i32 @UnlockRelationForExtension(i32, i32) #1

declare dso_local i32 @gistvacuumpage(%struct.TYPE_10__*, i64, i64) #1

declare dso_local i32 @IndexFreeSpaceMapVacuum(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
