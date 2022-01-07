; ModuleID = '/home/carl/AnghaBench/mongoose/examples/api_server/extr_sqlite3.c_btreeCursor.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/api_server/extr_sqlite3.c_btreeCursor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, %struct.TYPE_14__*, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64 }
%struct.KeyInfo = type { i32 }
%struct.TYPE_14__ = type { i32, i64, i32, %struct.TYPE_14__*, %struct.TYPE_14__*, i64, %struct.TYPE_13__*, %struct.TYPE_12__*, %struct.KeyInfo*, i64 }

@TRANS_NONE = common dso_local global i64 0, align 8
@TRANS_WRITE = common dso_local global i64 0, align 8
@BTS_READ_ONLY = common dso_local global i32 0, align 4
@SQLITE_READONLY = common dso_local global i32 0, align 4
@CURSOR_INVALID = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, i32, i32, %struct.KeyInfo*, %struct.TYPE_14__*)* @btreeCursor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btreeCursor(%struct.TYPE_12__* %0, i32 %1, i32 %2, %struct.KeyInfo* %3, %struct.TYPE_14__* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.KeyInfo*, align 8
  %11 = alloca %struct.TYPE_14__*, align 8
  %12 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store %struct.KeyInfo* %3, %struct.KeyInfo** %10, align 8
  store %struct.TYPE_14__* %4, %struct.TYPE_14__** %11, align 8
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  store %struct.TYPE_13__* %15, %struct.TYPE_13__** %12, align 8
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %17 = call i32 @sqlite3BtreeHoldsMutex(%struct.TYPE_12__* %16)
  %18 = call i32 @assert(i32 %17)
  %19 = load i32, i32* %9, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %5
  %22 = load i32, i32* %9, align 4
  %23 = icmp eq i32 %22, 1
  br label %24

24:                                               ; preds = %21, %5
  %25 = phi i1 [ true, %5 ], [ %23, %21 ]
  %26 = zext i1 %25 to i32
  %27 = call i32 @assert(i32 %26)
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %29 = load i32, i32* %8, align 4
  %30 = load %struct.KeyInfo*, %struct.KeyInfo** %10, align 8
  %31 = icmp ne %struct.KeyInfo* %30, null
  %32 = zext i1 %31 to i32
  %33 = load i32, i32* %9, align 4
  %34 = add nsw i32 %33, 1
  %35 = call i32 @hasSharedCacheTableLock(%struct.TYPE_12__* %28, i32 %29, i32 %32, i32 %34)
  %36 = call i32 @assert(i32 %35)
  %37 = load i32, i32* %9, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %45, label %39

39:                                               ; preds = %24
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @hasReadConflicts(%struct.TYPE_12__* %40, i32 %41)
  %43 = icmp ne i32 %42, 0
  %44 = xor i1 %43, true
  br label %45

45:                                               ; preds = %39, %24
  %46 = phi i1 [ true, %24 ], [ %44, %39 ]
  %47 = zext i1 %46 to i32
  %48 = call i32 @assert(i32 %47)
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @TRANS_NONE, align 8
  %53 = icmp sgt i64 %51, %52
  %54 = zext i1 %53 to i32
  %55 = call i32 @assert(i32 %54)
  %56 = load i32, i32* %9, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %64, label %58

58:                                               ; preds = %45
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @TRANS_WRITE, align 8
  %63 = icmp eq i64 %61, %62
  br label %64

64:                                               ; preds = %58, %45
  %65 = phi i1 [ true, %45 ], [ %63, %58 ]
  %66 = zext i1 %65 to i32
  %67 = call i32 @assert(i32 %66)
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 2
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %69, align 8
  %71 = icmp ne %struct.TYPE_11__* %70, null
  br i1 %71, label %72, label %79

72:                                               ; preds = %64
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 2
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br label %79

79:                                               ; preds = %72, %64
  %80 = phi i1 [ false, %64 ], [ %78, %72 ]
  %81 = zext i1 %80 to i32
  %82 = call i32 @assert(i32 %81)
  %83 = load i32, i32* %9, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %92

85:                                               ; preds = %79
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @BTS_READ_ONLY, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br label %92

92:                                               ; preds = %85, %79
  %93 = phi i1 [ false, %79 ], [ %91, %85 ]
  %94 = zext i1 %93 to i32
  %95 = call i64 @NEVER(i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %92
  %98 = load i32, i32* @SQLITE_READONLY, align 4
  store i32 %98, i32* %6, align 4
  br label %156

99:                                               ; preds = %92
  %100 = load i32, i32* %8, align 4
  %101 = icmp eq i32 %100, 1
  br i1 %101, label %102, label %111

102:                                              ; preds = %99
  %103 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %104 = call i64 @btreePagecount(%struct.TYPE_13__* %103)
  %105 = icmp eq i64 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %102
  %107 = load i32, i32* %9, align 4
  %108 = icmp eq i32 %107, 0
  %109 = zext i1 %108 to i32
  %110 = call i32 @assert(i32 %109)
  store i32 0, i32* %8, align 4
  br label %111

111:                                              ; preds = %106, %102, %99
  %112 = load i32, i32* %8, align 4
  %113 = sext i32 %112 to i64
  %114 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %115 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %114, i32 0, i32 9
  store i64 %113, i64* %115, align 8
  %116 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %117 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %116, i32 0, i32 0
  store i32 -1, i32* %117, align 8
  %118 = load %struct.KeyInfo*, %struct.KeyInfo** %10, align 8
  %119 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %120 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %119, i32 0, i32 8
  store %struct.KeyInfo* %118, %struct.KeyInfo** %120, align 8
  %121 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %122 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %123 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %122, i32 0, i32 7
  store %struct.TYPE_12__* %121, %struct.TYPE_12__** %123, align 8
  %124 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %125 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %126 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %125, i32 0, i32 6
  store %struct.TYPE_13__* %124, %struct.TYPE_13__** %126, align 8
  %127 = load i32, i32* %9, align 4
  %128 = sext i32 %127 to i64
  %129 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %130 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %129, i32 0, i32 5
  store i64 %128, i64* %130, align 8
  %131 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %132 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %131, i32 0, i32 1
  %133 = load %struct.TYPE_14__*, %struct.TYPE_14__** %132, align 8
  %134 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %135 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %134, i32 0, i32 4
  store %struct.TYPE_14__* %133, %struct.TYPE_14__** %135, align 8
  %136 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %137 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %136, i32 0, i32 4
  %138 = load %struct.TYPE_14__*, %struct.TYPE_14__** %137, align 8
  %139 = icmp ne %struct.TYPE_14__* %138, null
  br i1 %139, label %140, label %146

140:                                              ; preds = %111
  %141 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %142 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %143 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %142, i32 0, i32 4
  %144 = load %struct.TYPE_14__*, %struct.TYPE_14__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %144, i32 0, i32 3
  store %struct.TYPE_14__* %141, %struct.TYPE_14__** %145, align 8
  br label %146

146:                                              ; preds = %140, %111
  %147 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %148 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %149 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %148, i32 0, i32 1
  store %struct.TYPE_14__* %147, %struct.TYPE_14__** %149, align 8
  %150 = load i32, i32* @CURSOR_INVALID, align 4
  %151 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %152 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %151, i32 0, i32 2
  store i32 %150, i32* %152, align 8
  %153 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %154 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %153, i32 0, i32 1
  store i64 0, i64* %154, align 8
  %155 = load i32, i32* @SQLITE_OK, align 4
  store i32 %155, i32* %6, align 4
  br label %156

156:                                              ; preds = %146, %97
  %157 = load i32, i32* %6, align 4
  ret i32 %157
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3BtreeHoldsMutex(%struct.TYPE_12__*) #1

declare dso_local i32 @hasSharedCacheTableLock(%struct.TYPE_12__*, i32, i32, i32) #1

declare dso_local i32 @hasReadConflicts(%struct.TYPE_12__*, i32) #1

declare dso_local i64 @NEVER(i32) #1

declare dso_local i64 @btreePagecount(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
