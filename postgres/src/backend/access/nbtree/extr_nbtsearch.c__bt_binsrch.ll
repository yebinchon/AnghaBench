; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/nbtree/extr_nbtsearch.c__bt_binsrch.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/nbtree/extr_nbtsearch.c__bt_binsrch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, %struct.TYPE_4__*, i32)* @_bt_binsrch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @_bt_binsrch(i32 %0, %struct.TYPE_4__* %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @BufferGetPage(i32 %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = call i64 @PageGetSpecialPointer(i32 %17)
  store i64 %18, i64* %9, align 8
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %3
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = icmp eq i32* %26, null
  br label %28

28:                                               ; preds = %23, %3
  %29 = phi i1 [ true, %3 ], [ %27, %23 ]
  %30 = zext i1 %29 to i32
  %31 = call i32 @Assert(i32 %30)
  %32 = load i64, i64* %9, align 8
  %33 = call i64 @P_ISLEAF(i64 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %28
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = icmp eq i32* %38, null
  br label %40

40:                                               ; preds = %35, %28
  %41 = phi i1 [ true, %28 ], [ %39, %35 ]
  %42 = zext i1 %41 to i32
  %43 = call i32 @Assert(i32 %42)
  %44 = load i64, i64* %9, align 8
  %45 = call i64 @P_FIRSTDATAKEY(i64 %44)
  store i64 %45, i64* %10, align 8
  %46 = load i32, i32* %8, align 4
  %47 = call i64 @PageGetMaxOffsetNumber(i32 %46)
  store i64 %47, i64* %11, align 8
  %48 = load i64, i64* %11, align 8
  %49 = load i64, i64* %10, align 8
  %50 = icmp slt i64 %48, %49
  %51 = zext i1 %50 to i32
  %52 = call i64 @unlikely(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %40
  %55 = load i64, i64* %10, align 8
  store i64 %55, i64* %4, align 8
  br label %105

56:                                               ; preds = %40
  %57 = load i64, i64* %11, align 8
  %58 = add nsw i64 %57, 1
  store i64 %58, i64* %11, align 8
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  %63 = zext i1 %62 to i64
  %64 = select i1 %62, i32 0, i32 1
  store i32 %64, i32* %13, align 4
  br label %65

65:                                               ; preds = %89, %56
  %66 = load i64, i64* %11, align 8
  %67 = load i64, i64* %10, align 8
  %68 = icmp sgt i64 %66, %67
  br i1 %68, label %69, label %90

69:                                               ; preds = %65
  %70 = load i64, i64* %10, align 8
  %71 = load i64, i64* %11, align 8
  %72 = load i64, i64* %10, align 8
  %73 = sub nsw i64 %71, %72
  %74 = sdiv i64 %73, 2
  %75 = add nsw i64 %70, %74
  store i64 %75, i64* %14, align 8
  %76 = load i32, i32* %5, align 4
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %78 = load i32, i32* %8, align 4
  %79 = load i64, i64* %14, align 8
  %80 = call i32 @_bt_compare(i32 %76, %struct.TYPE_4__* %77, i32 %78, i64 %79)
  store i32 %80, i32* %12, align 4
  %81 = load i32, i32* %12, align 4
  %82 = load i32, i32* %13, align 4
  %83 = icmp sge i32 %81, %82
  br i1 %83, label %84, label %87

84:                                               ; preds = %69
  %85 = load i64, i64* %14, align 8
  %86 = add nsw i64 %85, 1
  store i64 %86, i64* %10, align 8
  br label %89

87:                                               ; preds = %69
  %88 = load i64, i64* %14, align 8
  store i64 %88, i64* %11, align 8
  br label %89

89:                                               ; preds = %87, %84
  br label %65

90:                                               ; preds = %65
  %91 = load i64, i64* %9, align 8
  %92 = call i64 @P_ISLEAF(i64 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %90
  %95 = load i64, i64* %10, align 8
  store i64 %95, i64* %4, align 8
  br label %105

96:                                               ; preds = %90
  %97 = load i64, i64* %10, align 8
  %98 = load i64, i64* %9, align 8
  %99 = call i64 @P_FIRSTDATAKEY(i64 %98)
  %100 = icmp sgt i64 %97, %99
  %101 = zext i1 %100 to i32
  %102 = call i32 @Assert(i32 %101)
  %103 = load i64, i64* %10, align 8
  %104 = call i64 @OffsetNumberPrev(i64 %103)
  store i64 %104, i64* %4, align 8
  br label %105

105:                                              ; preds = %96, %94, %54
  %106 = load i64, i64* %4, align 8
  ret i64 %106
}

declare dso_local i32 @BufferGetPage(i32) #1

declare dso_local i64 @PageGetSpecialPointer(i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i64 @P_ISLEAF(i64) #1

declare dso_local i64 @P_FIRSTDATAKEY(i64) #1

declare dso_local i64 @PageGetMaxOffsetNumber(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @_bt_compare(i32, %struct.TYPE_4__*, i32, i64) #1

declare dso_local i64 @OffsetNumberPrev(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
