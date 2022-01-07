; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/nbtree/extr_nbtpage.c__bt_getrootheight.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/nbtree/extr_nbtpage.c__bt_getrootheight.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32*, i32 }
%struct.TYPE_10__ = type { i64, i64, i64, i64, i32 }

@BTREE_METAPAGE = common dso_local global i32 0, align 4
@BT_READ = common dso_local global i32 0, align 4
@P_NONE = common dso_local global i64 0, align 8
@BTREE_MAGIC = common dso_local global i64 0, align 8
@BTREE_MIN_VERSION = common dso_local global i64 0, align 8
@BTREE_VERSION = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_bt_getrootheight(%struct.TYPE_9__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  %6 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  %9 = icmp eq i32* %8, null
  br i1 %9, label %10, label %42

10:                                               ; preds = %1
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %12 = load i32, i32* @BTREE_METAPAGE, align 4
  %13 = load i32, i32* @BT_READ, align 4
  %14 = call i32 @_bt_getbuf(%struct.TYPE_9__* %11, i32 %12, i32 %13)
  store i32 %14, i32* %5, align 4
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %16 = load i32, i32* %5, align 4
  %17 = call %struct.TYPE_10__* @_bt_getmeta(%struct.TYPE_9__* %15, i32 %16)
  store %struct.TYPE_10__* %17, %struct.TYPE_10__** %4, align 8
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @P_NONE, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %10
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @_bt_relbuf(%struct.TYPE_9__* %24, i32 %25)
  store i32 0, i32* %2, align 4
  br label %78

27:                                               ; preds = %10
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i32* @MemoryContextAlloc(i32 %30, i32 40)
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  store i32* %31, i32** %33, align 8
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %38 = call i32 @memcpy(i32* %36, %struct.TYPE_10__* %37, i32 40)
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @_bt_relbuf(%struct.TYPE_9__* %39, i32 %40)
  br label %42

42:                                               ; preds = %27, %1
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = bitcast i32* %45 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %46, %struct.TYPE_10__** %4, align 8
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @BTREE_MAGIC, align 8
  %51 = icmp eq i64 %49, %50
  %52 = zext i1 %51 to i32
  %53 = call i32 @Assert(i32 %52)
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @BTREE_MIN_VERSION, align 8
  %58 = icmp sge i64 %56, %57
  %59 = zext i1 %58 to i32
  %60 = call i32 @Assert(i32 %59)
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @BTREE_VERSION, align 8
  %65 = icmp sle i64 %63, %64
  %66 = zext i1 %65 to i32
  %67 = call i32 @Assert(i32 %66)
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 3
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @P_NONE, align 8
  %72 = icmp ne i64 %70, %71
  %73 = zext i1 %72 to i32
  %74 = call i32 @Assert(i32 %73)
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 8
  store i32 %77, i32* %2, align 4
  br label %78

78:                                               ; preds = %42, %23
  %79 = load i32, i32* %2, align 4
  ret i32 %79
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
