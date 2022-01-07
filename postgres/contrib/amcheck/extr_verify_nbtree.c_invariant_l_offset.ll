; ModuleID = '/home/carl/AnghaBench/postgres/contrib/amcheck/extr_verify_nbtree.c_invariant_l_offset.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/amcheck/extr_verify_nbtree.c_invariant_l_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.TYPE_11__ = type { i32, i32*, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, %struct.TYPE_11__*, i64)* @invariant_l_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @invariant_l_offset(%struct.TYPE_10__* %0, %struct.TYPE_11__* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %6, align 8
  store i64 %2, i64* %7, align 8
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @Assert(i32 %17)
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i64, i64* %7, align 8
  %27 = call i32 @PageGetItemIdCareful(%struct.TYPE_10__* %19, i32 %22, i32 %25, i64 %26)
  store i32 %27, i32* %8, align 4
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %3
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %35 = load i64, i64* %7, align 8
  %36 = call i32 @invariant_leq_offset(%struct.TYPE_10__* %33, %struct.TYPE_11__* %34, i64 %35)
  store i32 %36, i32* %4, align 4
  br label %106

37:                                               ; preds = %3
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i64, i64* %7, align 8
  %46 = call i64 @_bt_compare(i32 %40, %struct.TYPE_11__* %41, i32 %44, i64 %45)
  store i64 %46, i64* %9, align 8
  %47 = load i64, i64* %9, align 8
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %102

49:                                               ; preds = %37
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %8, align 4
  %54 = call i64 @PageGetItem(i32 %52, i32 %53)
  store i64 %54, i64* %11, align 8
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i64 @PageGetSpecialPointer(i32 %57)
  store i64 %58, i64* %10, align 8
  %59 = load i64, i64* %10, align 8
  %60 = call i64 @P_ISLEAF(i64 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %49
  %63 = load i64, i64* %7, align 8
  %64 = load i64, i64* %10, align 8
  %65 = call i64 @P_FIRSTDATAKEY(i64 %64)
  %66 = icmp sge i64 %63, %65
  br label %67

67:                                               ; preds = %62, %49
  %68 = phi i1 [ false, %49 ], [ %66, %62 ]
  %69 = zext i1 %68 to i32
  store i32 %69, i32* %14, align 4
  %70 = load i64, i64* %11, align 8
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @BTreeTupleGetNKeyAtts(i64 %70, i32 %73)
  store i32 %74, i32* %12, align 4
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %76 = load i64, i64* %11, align 8
  %77 = load i32, i32* %14, align 4
  %78 = call i32* @BTreeTupleGetHeapTIDCareful(%struct.TYPE_10__* %75, i64 %76, i32 %77)
  store i32* %78, i32** %13, align 8
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* %12, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %95

84:                                               ; preds = %67
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 1
  %87 = load i32*, i32** %86, align 8
  %88 = icmp eq i32* %87, null
  br i1 %88, label %89, label %92

89:                                               ; preds = %84
  %90 = load i32*, i32** %13, align 8
  %91 = icmp ne i32* %90, null
  br label %92

92:                                               ; preds = %89, %84
  %93 = phi i1 [ false, %84 ], [ %91, %89 ]
  %94 = zext i1 %93 to i32
  store i32 %94, i32* %4, align 4
  br label %106

95:                                               ; preds = %67
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* %12, align 4
  %100 = icmp slt i32 %98, %99
  %101 = zext i1 %100 to i32
  store i32 %101, i32* %4, align 4
  br label %106

102:                                              ; preds = %37
  %103 = load i64, i64* %9, align 8
  %104 = icmp slt i64 %103, 0
  %105 = zext i1 %104 to i32
  store i32 %105, i32* %4, align 4
  br label %106

106:                                              ; preds = %102, %95, %92, %32
  %107 = load i32, i32* %4, align 4
  ret i32 %107
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @PageGetItemIdCareful(%struct.TYPE_10__*, i32, i32, i64) #1

declare dso_local i32 @invariant_leq_offset(%struct.TYPE_10__*, %struct.TYPE_11__*, i64) #1

declare dso_local i64 @_bt_compare(i32, %struct.TYPE_11__*, i32, i64) #1

declare dso_local i64 @PageGetItem(i32, i32) #1

declare dso_local i64 @PageGetSpecialPointer(i32) #1

declare dso_local i64 @P_ISLEAF(i64) #1

declare dso_local i64 @P_FIRSTDATAKEY(i64) #1

declare dso_local i32 @BTreeTupleGetNKeyAtts(i64, i32) #1

declare dso_local i32* @BTreeTupleGetHeapTIDCareful(%struct.TYPE_10__*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
