; ModuleID = '/home/carl/AnghaBench/postgres/contrib/amcheck/extr_verify_nbtree.c_bt_rootdescend.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/amcheck/extr_verify_nbtree.c_bt_rootdescend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i64, i64 }
%struct.TYPE_11__ = type { i32*, i64 }
%struct.TYPE_12__ = type { i32, i32, %struct.TYPE_11__*, i32, i32 }

@BT_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i32)* @bt_rootdescend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bt_rootdescend(%struct.TYPE_10__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_12__, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* %4, align 4
  %16 = call %struct.TYPE_11__* @_bt_mkscankey(i32 %14, i32 %15)
  store %struct.TYPE_11__* %16, %struct.TYPE_11__** %5, align 8
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %2
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = icmp ne i32* %24, null
  br label %26

26:                                               ; preds = %21, %2
  %27 = phi i1 [ false, %2 ], [ %25, %21 ]
  %28 = zext i1 %27 to i32
  %29 = call i32 @Assert(i32 %28)
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %26
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br label %39

39:                                               ; preds = %34, %26
  %40 = phi i1 [ false, %26 ], [ %38, %34 ]
  %41 = zext i1 %40 to i32
  %42 = call i32 @Assert(i32 %41)
  store i32 0, i32* %8, align 4
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %47 = load i32, i32* @BT_READ, align 4
  %48 = call i32 @_bt_search(i32 %45, %struct.TYPE_11__* %46, i32* %7, i32 %47, i32* null)
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %7, align 4
  %50 = call i64 @BufferIsValid(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %90

52:                                               ; preds = %39
  %53 = load i32, i32* %4, align 4
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 4
  store i32 %53, i32* %54, align 4
  %55 = load i32, i32* %4, align 4
  %56 = call i32 @IndexTupleSize(i32 %55)
  %57 = call i32 @MAXALIGN(i32 %56)
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 3
  store i32 %57, i32* %58, align 8
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 2
  store %struct.TYPE_11__* %59, %struct.TYPE_11__** %60, align 8
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 0
  store i32 0, i32* %61, align 8
  %62 = load i32, i32* %7, align 4
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 1
  store i32 %62, i32* %63, align 4
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i64 @_bt_binsrch_insert(i32 %66, %struct.TYPE_12__* %9)
  store i64 %67, i64* %10, align 8
  %68 = load i32, i32* %7, align 4
  %69 = call i32 @BufferGetPage(i32 %68)
  store i32 %69, i32* %11, align 4
  %70 = load i64, i64* %10, align 8
  %71 = load i32, i32* %11, align 4
  %72 = call i64 @PageGetMaxOffsetNumber(i32 %71)
  %73 = icmp sle i64 %70, %72
  br i1 %73, label %74, label %84

74:                                               ; preds = %52
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %79 = load i32, i32* %11, align 4
  %80 = load i64, i64* %10, align 8
  %81 = call i64 @_bt_compare(i32 %77, %struct.TYPE_11__* %78, i32 %79, i64 %80)
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %74
  store i32 1, i32* %8, align 4
  br label %84

84:                                               ; preds = %83, %74, %52
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* %7, align 4
  %89 = call i32 @_bt_relbuf(i32 %87, i32 %88)
  br label %90

90:                                               ; preds = %84, %39
  %91 = load i32, i32* %6, align 4
  %92 = call i32 @_bt_freestack(i32 %91)
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %94 = call i32 @pfree(%struct.TYPE_11__* %93)
  %95 = load i32, i32* %8, align 4
  ret i32 %95
}

declare dso_local %struct.TYPE_11__* @_bt_mkscankey(i32, i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @_bt_search(i32, %struct.TYPE_11__*, i32*, i32, i32*) #1

declare dso_local i64 @BufferIsValid(i32) #1

declare dso_local i32 @MAXALIGN(i32) #1

declare dso_local i32 @IndexTupleSize(i32) #1

declare dso_local i64 @_bt_binsrch_insert(i32, %struct.TYPE_12__*) #1

declare dso_local i32 @BufferGetPage(i32) #1

declare dso_local i64 @PageGetMaxOffsetNumber(i32) #1

declare dso_local i64 @_bt_compare(i32, %struct.TYPE_11__*, i32, i64) #1

declare dso_local i32 @_bt_relbuf(i32, i32) #1

declare dso_local i32 @_bt_freestack(i32) #1

declare dso_local i32 @pfree(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
