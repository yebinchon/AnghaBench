; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/heap/extr_heapam_handler.c_heapam_relation_needs_toast_table.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/heap/extr_heapam_handler.c_heapam_relation_needs_toast_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_9__ = type { i64, i8, i32, i32, i32, i64 }

@SizeofHeapTupleHeader = common dso_local global i64 0, align 8
@TOAST_TUPLE_THRESHOLD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*)* @heapam_relation_needs_toast_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @heapam_relation_needs_toast_table(%struct.TYPE_8__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store i64 0, i64* %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  store %struct.TYPE_7__* %14, %struct.TYPE_7__** %7, align 8
  store i32 0, i32* %9, align 4
  br label %15

15:                                               ; preds = %70, %1
  %16 = load i32, i32* %9, align 4
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %21, label %73

21:                                               ; preds = %15
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %23 = load i32, i32* %9, align 4
  %24 = call %struct.TYPE_9__* @TupleDescAttr(%struct.TYPE_7__* %22, i32 %23)
  store %struct.TYPE_9__* %24, %struct.TYPE_9__** %10, align 8
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 5
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %21
  br label %70

30:                                               ; preds = %21
  %31 = load i64, i64* %4, align 8
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @att_align_nominal(i64 %31, i32 %34)
  store i64 %35, i64* %4, align 8
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp sgt i64 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %30
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* %4, align 8
  %45 = add nsw i64 %44, %43
  store i64 %45, i64* %4, align 8
  br label %69

46:                                               ; preds = %30
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = call i64 @type_maximum_size(i32 %49, i32 %52)
  store i64 %53, i64* %11, align 8
  %54 = load i64, i64* %11, align 8
  %55 = icmp slt i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %46
  store i32 1, i32* %5, align 4
  br label %61

57:                                               ; preds = %46
  %58 = load i64, i64* %11, align 8
  %59 = load i64, i64* %4, align 8
  %60 = add nsw i64 %59, %58
  store i64 %60, i64* %4, align 8
  br label %61

61:                                               ; preds = %57, %56
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 1
  %64 = load i8, i8* %63, align 8
  %65 = sext i8 %64 to i32
  %66 = icmp ne i32 %65, 112
  br i1 %66, label %67, label %68

67:                                               ; preds = %61
  store i32 1, i32* %6, align 4
  br label %68

68:                                               ; preds = %67, %61
  br label %69

69:                                               ; preds = %68, %40
  br label %70

70:                                               ; preds = %69, %29
  %71 = load i32, i32* %9, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %9, align 4
  br label %15

73:                                               ; preds = %15
  %74 = load i32, i32* %6, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %73
  store i32 0, i32* %2, align 4
  br label %96

77:                                               ; preds = %73
  %78 = load i32, i32* %5, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %77
  store i32 1, i32* %2, align 4
  br label %96

81:                                               ; preds = %77
  %82 = load i64, i64* @SizeofHeapTupleHeader, align 8
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i64 @BITMAPLEN(i32 %85)
  %87 = add nsw i64 %82, %86
  %88 = call i64 @MAXALIGN(i64 %87)
  %89 = load i64, i64* %4, align 8
  %90 = call i64 @MAXALIGN(i64 %89)
  %91 = add nsw i64 %88, %90
  store i64 %91, i64* %8, align 8
  %92 = load i64, i64* %8, align 8
  %93 = load i64, i64* @TOAST_TUPLE_THRESHOLD, align 8
  %94 = icmp sgt i64 %92, %93
  %95 = zext i1 %94 to i32
  store i32 %95, i32* %2, align 4
  br label %96

96:                                               ; preds = %81, %80, %76
  %97 = load i32, i32* %2, align 4
  ret i32 %97
}

declare dso_local %struct.TYPE_9__* @TupleDescAttr(%struct.TYPE_7__*, i32) #1

declare dso_local i64 @att_align_nominal(i64, i32) #1

declare dso_local i64 @type_maximum_size(i32, i32) #1

declare dso_local i64 @MAXALIGN(i64) #1

declare dso_local i64 @BITMAPLEN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
