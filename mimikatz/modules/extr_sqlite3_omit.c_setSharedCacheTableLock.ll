; ModuleID = '/home/carl/AnghaBench/mimikatz/modules/extr_sqlite3_omit.c_setSharedCacheTableLock.c'
source_filename = "/home/carl/AnghaBench/mimikatz/modules/extr_sqlite3_omit.c_setSharedCacheTableLock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_8__*, %struct.TYPE_10__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64, i64, %struct.TYPE_11__*, %struct.TYPE_9__* }

@READ_LOCK = common dso_local global i64 0, align 8
@WRITE_LOCK = common dso_local global i64 0, align 8
@SQLITE_ReadUncommit = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i64 0, align 8
@SQLITE_NOMEM_BKPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i64, i64)* @setSharedCacheTableLock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setSharedCacheTableLock(%struct.TYPE_9__* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 2
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  store %struct.TYPE_10__* %13, %struct.TYPE_10__** %8, align 8
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %9, align 8
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %15 = call i32 @sqlite3BtreeHoldsMutex(%struct.TYPE_9__* %14)
  %16 = call i32 @assert(i32 %15)
  %17 = load i64, i64* %7, align 8
  %18 = load i64, i64* @READ_LOCK, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %24, label %20

20:                                               ; preds = %3
  %21 = load i64, i64* %7, align 8
  %22 = load i64, i64* @WRITE_LOCK, align 8
  %23 = icmp eq i64 %21, %22
  br label %24

24:                                               ; preds = %20, %3
  %25 = phi i1 [ true, %3 ], [ %23, %20 ]
  %26 = zext i1 %25 to i32
  %27 = call i32 @assert(i32 %26)
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %29, align 8
  %31 = icmp ne %struct.TYPE_8__* %30, null
  %32 = zext i1 %31 to i32
  %33 = call i32 @assert(i32 %32)
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 1
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @SQLITE_ReadUncommit, align 4
  %40 = and i32 %38, %39
  %41 = icmp eq i32 0, %40
  br i1 %41, label %46, label %42

42:                                               ; preds = %24
  %43 = load i64, i64* %7, align 8
  %44 = load i64, i64* @WRITE_LOCK, align 8
  %45 = icmp eq i64 %43, %44
  br label %46

46:                                               ; preds = %42, %24
  %47 = phi i1 [ true, %24 ], [ %45, %42 ]
  %48 = zext i1 %47 to i32
  %49 = call i32 @assert(i32 %48)
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @assert(i32 %52)
  %54 = load i64, i64* @SQLITE_OK, align 8
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %56 = load i64, i64* %6, align 8
  %57 = load i64, i64* %7, align 8
  %58 = call i64 @querySharedCacheTableLock(%struct.TYPE_9__* %55, i64 %56, i64 %57)
  %59 = icmp eq i64 %54, %58
  %60 = zext i1 %59 to i32
  %61 = call i32 @assert(i32 %60)
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %63, align 8
  store %struct.TYPE_11__* %64, %struct.TYPE_11__** %10, align 8
  br label %65

65:                                               ; preds = %83, %46
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %67 = icmp ne %struct.TYPE_11__* %66, null
  br i1 %67, label %68, label %87

68:                                               ; preds = %65
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* %6, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %82

74:                                               ; preds = %68
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 3
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %76, align 8
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %79 = icmp eq %struct.TYPE_9__* %77, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %74
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  store %struct.TYPE_11__* %81, %struct.TYPE_11__** %9, align 8
  br label %87

82:                                               ; preds = %74, %68
  br label %83

83:                                               ; preds = %82
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 2
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %85, align 8
  store %struct.TYPE_11__* %86, %struct.TYPE_11__** %10, align 8
  br label %65

87:                                               ; preds = %80, %65
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %89 = icmp ne %struct.TYPE_11__* %88, null
  br i1 %89, label %112, label %90

90:                                               ; preds = %87
  %91 = call i64 @sqlite3MallocZero(i32 32)
  %92 = inttoptr i64 %91 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %92, %struct.TYPE_11__** %9, align 8
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %94 = icmp ne %struct.TYPE_11__* %93, null
  br i1 %94, label %97, label %95

95:                                               ; preds = %90
  %96 = load i32, i32* @SQLITE_NOMEM_BKPT, align 4
  store i32 %96, i32* %4, align 4
  br label %130

97:                                               ; preds = %90
  %98 = load i64, i64* %6, align 8
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 0
  store i64 %98, i64* %100, align 8
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 3
  store %struct.TYPE_9__* %101, %struct.TYPE_9__** %103, align 8
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 0
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %105, align 8
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 2
  store %struct.TYPE_11__* %106, %struct.TYPE_11__** %108, align 8
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 0
  store %struct.TYPE_11__* %109, %struct.TYPE_11__** %111, align 8
  br label %112

112:                                              ; preds = %97, %87
  %113 = load i64, i64* @WRITE_LOCK, align 8
  %114 = load i64, i64* @READ_LOCK, align 8
  %115 = icmp sgt i64 %113, %114
  %116 = zext i1 %115 to i32
  %117 = call i32 @assert(i32 %116)
  %118 = load i64, i64* %7, align 8
  %119 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = icmp sgt i64 %118, %121
  br i1 %122, label %123, label %127

123:                                              ; preds = %112
  %124 = load i64, i64* %7, align 8
  %125 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i32 0, i32 1
  store i64 %124, i64* %126, align 8
  br label %127

127:                                              ; preds = %123, %112
  %128 = load i64, i64* @SQLITE_OK, align 8
  %129 = trunc i64 %128 to i32
  store i32 %129, i32* %4, align 4
  br label %130

130:                                              ; preds = %127, %95
  %131 = load i32, i32* %4, align 4
  ret i32 %131
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3BtreeHoldsMutex(%struct.TYPE_9__*) #1

declare dso_local i64 @querySharedCacheTableLock(%struct.TYPE_9__*, i64, i64) #1

declare dso_local i64 @sqlite3MallocZero(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
