; ModuleID = '/home/carl/AnghaBench/postgres/contrib/amcheck/extr_verify_nbtree.c_invariant_l_nontarget_offset.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/amcheck/extr_verify_nbtree.c_invariant_l_nontarget_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32*, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, %struct.TYPE_9__*, i32, i32, i64)* @invariant_l_nontarget_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @invariant_l_nontarget_offset(%struct.TYPE_8__* %0, %struct.TYPE_9__* %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %7, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @Assert(i32 %21)
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* %10, align 4
  %26 = load i64, i64* %11, align 8
  %27 = call i32 @PageGetItemIdCareful(%struct.TYPE_8__* %23, i32 %24, i32 %25, i64 %26)
  store i32 %27, i32* %12, align 4
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %32 = load i32, i32* %10, align 4
  %33 = load i64, i64* %11, align 8
  %34 = call i64 @_bt_compare(i32 %30, %struct.TYPE_9__* %31, i32 %32, i64 %33)
  store i64 %34, i64* %13, align 8
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %5
  %40 = load i64, i64* %13, align 8
  %41 = icmp sle i64 %40, 0
  %42 = zext i1 %41 to i32
  store i32 %42, i32* %6, align 4
  br label %99

43:                                               ; preds = %5
  %44 = load i64, i64* %13, align 8
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %95

46:                                               ; preds = %43
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* %12, align 4
  %49 = call i64 @PageGetItem(i32 %47, i32 %48)
  store i64 %49, i64* %14, align 8
  %50 = load i32, i32* %10, align 4
  %51 = call i64 @PageGetSpecialPointer(i32 %50)
  store i64 %51, i64* %17, align 8
  %52 = load i64, i64* %17, align 8
  %53 = call i64 @P_ISLEAF(i64 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %46
  %56 = load i64, i64* %11, align 8
  %57 = load i64, i64* %17, align 8
  %58 = call i64 @P_FIRSTDATAKEY(i64 %57)
  %59 = icmp sge i64 %56, %58
  br label %60

60:                                               ; preds = %55, %46
  %61 = phi i1 [ false, %46 ], [ %59, %55 ]
  %62 = zext i1 %61 to i32
  store i32 %62, i32* %18, align 4
  %63 = load i64, i64* %14, align 8
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @BTreeTupleGetNKeyAtts(i64 %63, i32 %66)
  store i32 %67, i32* %15, align 4
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %69 = load i64, i64* %14, align 8
  %70 = load i32, i32* %18, align 4
  %71 = call i32* @BTreeTupleGetHeapTIDCareful(%struct.TYPE_8__* %68, i64 %69, i32 %70)
  store i32* %71, i32** %16, align 8
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* %15, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %88

77:                                               ; preds = %60
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  %81 = icmp eq i32* %80, null
  br i1 %81, label %82, label %85

82:                                               ; preds = %77
  %83 = load i32*, i32** %16, align 8
  %84 = icmp ne i32* %83, null
  br label %85

85:                                               ; preds = %82, %77
  %86 = phi i1 [ false, %77 ], [ %84, %82 ]
  %87 = zext i1 %86 to i32
  store i32 %87, i32* %6, align 4
  br label %99

88:                                               ; preds = %60
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* %15, align 4
  %93 = icmp slt i32 %91, %92
  %94 = zext i1 %93 to i32
  store i32 %94, i32* %6, align 4
  br label %99

95:                                               ; preds = %43
  %96 = load i64, i64* %13, align 8
  %97 = icmp slt i64 %96, 0
  %98 = zext i1 %97 to i32
  store i32 %98, i32* %6, align 4
  br label %99

99:                                               ; preds = %95, %88, %85, %39
  %100 = load i32, i32* %6, align 4
  ret i32 %100
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @PageGetItemIdCareful(%struct.TYPE_8__*, i32, i32, i64) #1

declare dso_local i64 @_bt_compare(i32, %struct.TYPE_9__*, i32, i64) #1

declare dso_local i64 @PageGetItem(i32, i32) #1

declare dso_local i64 @PageGetSpecialPointer(i32) #1

declare dso_local i64 @P_ISLEAF(i64) #1

declare dso_local i64 @P_FIRSTDATAKEY(i64) #1

declare dso_local i32 @BTreeTupleGetNKeyAtts(i64, i32) #1

declare dso_local i32* @BTreeTupleGetHeapTIDCareful(%struct.TYPE_8__*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
