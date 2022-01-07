; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/nbtree/extr_nbtutils.c__bt_truncate.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/nbtree/extr_nbtutils.c__bt_truncate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, i32 }
%struct.TYPE_21__ = type { i32 }

@INDEX_SIZE_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_20__* @_bt_truncate(i32 %0, %struct.TYPE_20__* %1, %struct.TYPE_20__* %2, %struct.TYPE_21__* %3) #0 {
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_20__*, align 8
  %8 = alloca %struct.TYPE_20__*, align 8
  %9 = alloca %struct.TYPE_21__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_20__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_20__*, align 8
  store i32 %0, i32* %6, align 4
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %7, align 8
  store %struct.TYPE_20__* %2, %struct.TYPE_20__** %8, align 8
  store %struct.TYPE_21__* %3, %struct.TYPE_21__** %9, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @RelationGetDescr(i32 %18)
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @IndexRelationGetNumberOfAttributes(i32 %20)
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @IndexRelationGetNumberOfKeyAttributes(i32 %22)
  store i32 %23, i32* %12, align 4
  %24 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @BTreeTupleGetNAtts(%struct.TYPE_20__* %24, i32 %25)
  %27 = load i32, i32* %11, align 4
  %28 = icmp eq i32 %26, %27
  %29 = zext i1 %28 to i32
  %30 = call i32 @Assert(i32 %29)
  %31 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @BTreeTupleGetNAtts(%struct.TYPE_20__* %31, i32 %32)
  %34 = load i32, i32* %11, align 4
  %35 = icmp eq i32 %33, %34
  %36 = zext i1 %35 to i32
  %37 = call i32 @Assert(i32 %36)
  %38 = load i32, i32* %6, align 4
  %39 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %40 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %41 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %42 = call i32 @_bt_keep_natts(i32 %38, %struct.TYPE_20__* %39, %struct.TYPE_20__* %40, %struct.TYPE_21__* %41)
  store i32 %42, i32* %13, align 4
  %43 = load i32, i32* %13, align 4
  %44 = load i32, i32* %11, align 4
  %45 = icmp sle i32 %43, %44
  br i1 %45, label %46, label %79

46:                                               ; preds = %4
  %47 = load i32, i32* %10, align 4
  %48 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %49 = load i32, i32* %13, align 4
  %50 = call %struct.TYPE_20__* @index_truncate_tuple(i32 %47, %struct.TYPE_20__* %48, i32 %49)
  store %struct.TYPE_20__* %50, %struct.TYPE_20__** %14, align 8
  %51 = load i32, i32* %13, align 4
  %52 = load i32, i32* %12, align 4
  %53 = icmp sle i32 %51, %52
  br i1 %53, label %54, label %59

54:                                               ; preds = %46
  %55 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %56 = load i32, i32* %13, align 4
  %57 = call i32 @BTreeTupleSetNAtts(%struct.TYPE_20__* %55, i32 %56)
  %58 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  store %struct.TYPE_20__* %58, %struct.TYPE_20__** %5, align 8
  br label %151

59:                                               ; preds = %46
  %60 = load i32, i32* %11, align 4
  %61 = load i32, i32* %12, align 4
  %62 = icmp ne i32 %60, %61
  %63 = zext i1 %62 to i32
  %64 = call i32 @Assert(i32 %63)
  %65 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %66 = call i32 @IndexTupleSize(%struct.TYPE_20__* %65)
  %67 = call i32 @MAXALIGN(i32 4)
  %68 = add nsw i32 %66, %67
  store i32 %68, i32* %16, align 4
  %69 = load i32, i32* %16, align 4
  %70 = call %struct.TYPE_20__* @palloc0(i32 %69)
  store %struct.TYPE_20__* %70, %struct.TYPE_20__** %17, align 8
  %71 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %72 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %73 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %74 = call i32 @IndexTupleSize(%struct.TYPE_20__* %73)
  %75 = call i32 @memcpy(%struct.TYPE_20__* %71, %struct.TYPE_20__* %72, i32 %74)
  %76 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %77 = call i32 @pfree(%struct.TYPE_20__* %76)
  %78 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  store %struct.TYPE_20__* %78, %struct.TYPE_20__** %14, align 8
  br label %96

79:                                               ; preds = %4
  %80 = load i32, i32* %11, align 4
  %81 = load i32, i32* %12, align 4
  %82 = icmp eq i32 %80, %81
  %83 = zext i1 %82 to i32
  %84 = call i32 @Assert(i32 %83)
  %85 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %86 = call i32 @IndexTupleSize(%struct.TYPE_20__* %85)
  %87 = call i32 @MAXALIGN(i32 4)
  %88 = add nsw i32 %86, %87
  store i32 %88, i32* %16, align 4
  %89 = load i32, i32* %16, align 4
  %90 = call %struct.TYPE_20__* @palloc0(i32 %89)
  store %struct.TYPE_20__* %90, %struct.TYPE_20__** %14, align 8
  %91 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %92 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %93 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %94 = call i32 @IndexTupleSize(%struct.TYPE_20__* %93)
  %95 = call i32 @memcpy(%struct.TYPE_20__* %91, %struct.TYPE_20__* %92, i32 %94)
  br label %96

96:                                               ; preds = %79, %59
  %97 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %98 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @Assert(i32 %99)
  %101 = load i32, i32* @INDEX_SIZE_MASK, align 4
  %102 = xor i32 %101, -1
  %103 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %104 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = and i32 %105, %102
  store i32 %106, i32* %104, align 4
  %107 = load i32, i32* %16, align 4
  %108 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %109 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = or i32 %110, %107
  store i32 %111, i32* %109, align 4
  %112 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %113 = bitcast %struct.TYPE_20__* %112 to i8*
  %114 = load i32, i32* %16, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i8, i8* %113, i64 %115
  %117 = getelementptr inbounds i8, i8* %116, i64 -4
  %118 = bitcast i8* %117 to i32*
  store i32* %118, i32** %15, align 8
  %119 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %120 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %119, i32 0, i32 1
  %121 = load i32*, i32** %15, align 8
  %122 = call i32 @ItemPointerCopy(i32* %120, i32* %121)
  %123 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %124 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %123, i32 0, i32 1
  %125 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %126 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %125, i32 0, i32 1
  %127 = call i64 @ItemPointerCompare(i32* %124, i32* %126)
  %128 = icmp slt i64 %127, 0
  %129 = zext i1 %128 to i32
  %130 = call i32 @Assert(i32 %129)
  %131 = load i32*, i32** %15, align 8
  %132 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %133 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %132, i32 0, i32 1
  %134 = call i64 @ItemPointerCompare(i32* %131, i32* %133)
  %135 = icmp sge i64 %134, 0
  %136 = zext i1 %135 to i32
  %137 = call i32 @Assert(i32 %136)
  %138 = load i32*, i32** %15, align 8
  %139 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %140 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %139, i32 0, i32 1
  %141 = call i64 @ItemPointerCompare(i32* %138, i32* %140)
  %142 = icmp slt i64 %141, 0
  %143 = zext i1 %142 to i32
  %144 = call i32 @Assert(i32 %143)
  %145 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %146 = load i32, i32* %12, align 4
  %147 = call i32 @BTreeTupleSetNAtts(%struct.TYPE_20__* %145, i32 %146)
  %148 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %149 = call i32 @BTreeTupleSetAltHeapTID(%struct.TYPE_20__* %148)
  %150 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  store %struct.TYPE_20__* %150, %struct.TYPE_20__** %5, align 8
  br label %151

151:                                              ; preds = %96, %54
  %152 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  ret %struct.TYPE_20__* %152
}

declare dso_local i32 @RelationGetDescr(i32) #1

declare dso_local i32 @IndexRelationGetNumberOfAttributes(i32) #1

declare dso_local i32 @IndexRelationGetNumberOfKeyAttributes(i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @BTreeTupleGetNAtts(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @_bt_keep_natts(i32, %struct.TYPE_20__*, %struct.TYPE_20__*, %struct.TYPE_21__*) #1

declare dso_local %struct.TYPE_20__* @index_truncate_tuple(i32, %struct.TYPE_20__*, i32) #1

declare dso_local i32 @BTreeTupleSetNAtts(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @IndexTupleSize(%struct.TYPE_20__*) #1

declare dso_local i32 @MAXALIGN(i32) #1

declare dso_local %struct.TYPE_20__* @palloc0(i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_20__*, %struct.TYPE_20__*, i32) #1

declare dso_local i32 @pfree(%struct.TYPE_20__*) #1

declare dso_local i32 @ItemPointerCopy(i32*, i32*) #1

declare dso_local i64 @ItemPointerCompare(i32*, i32*) #1

declare dso_local i32 @BTreeTupleSetAltHeapTID(%struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
