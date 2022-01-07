; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/nbtree/extr_nbtpage.c__bt_heapkeyspace.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/nbtree/extr_nbtpage.c__bt_heapkeyspace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32*, i32 }
%struct.TYPE_10__ = type { i64, i64, i64, i64 }

@BTREE_METAPAGE = common dso_local global i32 0, align 4
@BT_READ = common dso_local global i32 0, align 4
@P_NONE = common dso_local global i64 0, align 8
@BTREE_NOVAC_VERSION = common dso_local global i64 0, align 8
@BTREE_MAGIC = common dso_local global i64 0, align 8
@BTREE_MIN_VERSION = common dso_local global i64 0, align 8
@BTREE_VERSION = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_bt_heapkeyspace(%struct.TYPE_9__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  %7 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = icmp eq i32* %9, null
  br i1 %10, label %11, label %50

11:                                               ; preds = %1
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %13 = load i32, i32* @BTREE_METAPAGE, align 4
  %14 = load i32, i32* @BT_READ, align 4
  %15 = call i32 @_bt_getbuf(%struct.TYPE_9__* %12, i32 %13, i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %17 = load i32, i32* %5, align 4
  %18 = call %struct.TYPE_10__* @_bt_getmeta(%struct.TYPE_9__* %16, i32 %17)
  store %struct.TYPE_10__* %18, %struct.TYPE_10__** %4, align 8
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @P_NONE, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %35

24:                                               ; preds = %11
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %6, align 8
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @_bt_relbuf(%struct.TYPE_9__* %28, i32 %29)
  %31 = load i64, i64* %6, align 8
  %32 = load i64, i64* @BTREE_NOVAC_VERSION, align 8
  %33 = icmp sgt i64 %31, %32
  %34 = zext i1 %33 to i32
  store i32 %34, i32* %2, align 4
  br label %89

35:                                               ; preds = %11
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i32* @MemoryContextAlloc(i32 %38, i32 32)
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  store i32* %39, i32** %41, align 8
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %46 = call i32 @memcpy(i32* %44, %struct.TYPE_10__* %45, i32 32)
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @_bt_relbuf(%struct.TYPE_9__* %47, i32 %48)
  br label %50

50:                                               ; preds = %35, %1
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = bitcast i32* %53 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %54, %struct.TYPE_10__** %4, align 8
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @BTREE_MAGIC, align 8
  %59 = icmp eq i64 %57, %58
  %60 = zext i1 %59 to i32
  %61 = call i32 @Assert(i32 %60)
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @BTREE_MIN_VERSION, align 8
  %66 = icmp sge i64 %64, %65
  %67 = zext i1 %66 to i32
  %68 = call i32 @Assert(i32 %67)
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @BTREE_VERSION, align 8
  %73 = icmp sle i64 %71, %72
  %74 = zext i1 %73 to i32
  %75 = call i32 @Assert(i32 %74)
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 3
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @P_NONE, align 8
  %80 = icmp ne i64 %78, %79
  %81 = zext i1 %80 to i32
  %82 = call i32 @Assert(i32 %81)
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @BTREE_NOVAC_VERSION, align 8
  %87 = icmp sgt i64 %85, %86
  %88 = zext i1 %87 to i32
  store i32 %88, i32* %2, align 4
  br label %89

89:                                               ; preds = %50, %24
  %90 = load i32, i32* %2, align 4
  ret i32 %90
}

declare dso_local i32 @_bt_getbuf(%struct.TYPE_9__*, i32, i32) #1

declare dso_local %struct.TYPE_10__* @_bt_getmeta(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @_bt_relbuf(%struct.TYPE_9__*, i32) #1

declare dso_local i32* @MemoryContextAlloc(i32, i32) #1

declare dso_local i32 @memcpy(i32*, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @Assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
