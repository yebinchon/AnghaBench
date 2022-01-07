; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/executor/extr_nodeSetOp.c_setop_retrieve_direct.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/executor/extr_nodeSetOp.c_setop_retrieve_direct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i64, i32*, i32, %struct.TYPE_9__, i64 }
%struct.TYPE_9__ = type { i32*, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_10__*)* @setop_retrieve_direct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @setop_retrieve_direct(%struct.TYPE_10__* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 4
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  store %struct.TYPE_11__* %12, %struct.TYPE_11__** %8, align 8
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %14 = call i32* @outerPlanState(%struct.TYPE_10__* %13)
  store i32* %14, i32** %4, align 8
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 5
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %5, align 8
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 4
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  store i32* %21, i32** %7, align 8
  br label %22

22:                                               ; preds = %112, %1
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  br i1 %27, label %28, label %113

28:                                               ; preds = %22
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 2
  %31 = load i32*, i32** %30, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %49

33:                                               ; preds = %28
  %34 = load i32*, i32** %4, align 8
  %35 = call i32* @ExecProcNode(i32* %34)
  store i32* %35, i32** %6, align 8
  %36 = load i32*, i32** %6, align 8
  %37 = call i64 @TupIsNull(i32* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %45, label %39

39:                                               ; preds = %33
  %40 = load i32*, i32** %6, align 8
  %41 = call i8* @ExecCopySlotHeapTuple(i32* %40)
  %42 = bitcast i8* %41 to i32*
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 2
  store i32* %42, i32** %44, align 8
  br label %48

45:                                               ; preds = %33
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  store i32 1, i32* %47, align 8
  store i32* null, i32** %2, align 8
  br label %116

48:                                               ; preds = %39
  br label %49

49:                                               ; preds = %48, %28
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 2
  %52 = load i32*, i32** %51, align 8
  %53 = load i32*, i32** %7, align 8
  %54 = call i32 @ExecStoreHeapTuple(i32* %52, i32* %53, i32 1)
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 2
  store i32* null, i32** %56, align 8
  %57 = load i64, i64* %5, align 8
  %58 = call i32 @initialize_counts(i64 %57)
  %59 = load i64, i64* %5, align 8
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %61 = load i32*, i32** %7, align 8
  %62 = call i32 @fetch_tuple_flag(%struct.TYPE_10__* %60, i32* %61)
  %63 = call i32 @advance_counts(i64 %59, i32 %62)
  br label %64

64:                                               ; preds = %92, %49
  %65 = load i32*, i32** %4, align 8
  %66 = call i32* @ExecProcNode(i32* %65)
  store i32* %66, i32** %6, align 8
  %67 = load i32*, i32** %6, align 8
  %68 = call i64 @TupIsNull(i32* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %64
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 0
  store i32 1, i32* %72, align 8
  br label %98

73:                                               ; preds = %64
  %74 = load i32*, i32** %7, align 8
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 1
  store i32* %74, i32** %76, align 8
  %77 = load i32*, i32** %6, align 8
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 0
  store i32* %77, i32** %79, align 8
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %84 = call i32 @ExecQualAndReset(i32 %82, %struct.TYPE_11__* %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %92, label %86

86:                                               ; preds = %73
  %87 = load i32*, i32** %6, align 8
  %88 = call i8* @ExecCopySlotHeapTuple(i32* %87)
  %89 = bitcast i8* %88 to i32*
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 2
  store i32* %89, i32** %91, align 8
  br label %98

92:                                               ; preds = %73
  %93 = load i64, i64* %5, align 8
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %95 = load i32*, i32** %6, align 8
  %96 = call i32 @fetch_tuple_flag(%struct.TYPE_10__* %94, i32* %95)
  %97 = call i32 @advance_counts(i64 %93, i32 %96)
  br label %64

98:                                               ; preds = %86, %70
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %100 = load i64, i64* %5, align 8
  %101 = call i32 @set_output_count(%struct.TYPE_10__* %99, i64 %100)
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = icmp sgt i64 %104, 0
  br i1 %105, label %106, label %112

106:                                              ; preds = %98
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = add nsw i64 %109, -1
  store i64 %110, i64* %108, align 8
  %111 = load i32*, i32** %7, align 8
  store i32* %111, i32** %2, align 8
  br label %116

112:                                              ; preds = %98
  br label %22

113:                                              ; preds = %22
  %114 = load i32*, i32** %7, align 8
  %115 = call i32 @ExecClearTuple(i32* %114)
  store i32* null, i32** %2, align 8
  br label %116

116:                                              ; preds = %113, %106, %45
  %117 = load i32*, i32** %2, align 8
  ret i32* %117
}

declare dso_local i32* @outerPlanState(%struct.TYPE_10__*) #1

declare dso_local i32* @ExecProcNode(i32*) #1

declare dso_local i64 @TupIsNull(i32*) #1

declare dso_local i8* @ExecCopySlotHeapTuple(i32*) #1

declare dso_local i32 @ExecStoreHeapTuple(i32*, i32*, i32) #1

declare dso_local i32 @initialize_counts(i64) #1

declare dso_local i32 @advance_counts(i64, i32) #1

declare dso_local i32 @fetch_tuple_flag(%struct.TYPE_10__*, i32*) #1

declare dso_local i32 @ExecQualAndReset(i32, %struct.TYPE_11__*) #1

declare dso_local i32 @set_output_count(%struct.TYPE_10__*, i64) #1

declare dso_local i32 @ExecClearTuple(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
