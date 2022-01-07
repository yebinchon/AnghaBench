; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/heap/extr_rewriteheap.c_logical_rewrite_heap_tuple.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/heap/extr_rewriteheap.c_logical_rewrite_heap_tuple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_14__*, %struct.TYPE_13__*, i32, i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_17__ = type { %struct.TYPE_12__*, i8* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_16__ = type { i8*, i32, i8*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_15__*, i8*, %struct.TYPE_17__*)* @logical_rewrite_heap_tuple to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @logical_rewrite_heap_tuple(%struct.TYPE_15__* %0, i8* %1, %struct.TYPE_17__* %2) #0 {
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_16__, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.TYPE_17__* %2, %struct.TYPE_17__** %6, align 8
  %14 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 1
  %16 = load i8*, i8** %15, align 8
  store i8* %16, i8** %7, align 8
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %8, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %3
  br label %107

25:                                               ; preds = %3
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %27, align 8
  %29 = call i32 @HeapTupleHeaderGetXmin(%struct.TYPE_12__* %28)
  store i32 %29, i32* %9, align 4
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %31, align 8
  %33 = call i32 @HeapTupleHeaderGetUpdateXid(%struct.TYPE_12__* %32)
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %9, align 4
  %35 = call i64 @TransactionIdIsNormal(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %25
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @TransactionIdPrecedes(i32 %38, i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %37
  store i32 1, i32* %11, align 4
  br label %43

43:                                               ; preds = %42, %37, %25
  %44 = load i32, i32* %10, align 4
  %45 = call i64 @TransactionIdIsNormal(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %43
  br label %65

48:                                               ; preds = %43
  %49 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @HEAP_XMAX_IS_LOCKED_ONLY(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %48
  br label %64

57:                                               ; preds = %48
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* %8, align 4
  %60 = call i32 @TransactionIdPrecedes(i32 %58, i32 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %57
  store i32 1, i32* %12, align 4
  br label %63

63:                                               ; preds = %62, %57
  br label %64

64:                                               ; preds = %63, %56
  br label %65

65:                                               ; preds = %64, %47
  %66 = load i32, i32* %11, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %72, label %68

68:                                               ; preds = %65
  %69 = load i32, i32* %12, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %68
  br label %107

72:                                               ; preds = %68, %65
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i32 0, i32 1
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 3
  store i32 %77, i32* %78, align 8
  %79 = load i8*, i8** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 2
  store i8* %79, i8** %80, align 8
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 1
  store i32 %85, i32* %86, align 8
  %87 = load i8*, i8** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 0
  store i8* %87, i8** %88, align 8
  %89 = load i32, i32* %11, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %72
  %92 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %93 = load i32, i32* %9, align 4
  %94 = call i32 @logical_rewrite_log_mapping(%struct.TYPE_15__* %92, i32 %93, %struct.TYPE_16__* %13)
  br label %95

95:                                               ; preds = %91, %72
  %96 = load i32, i32* %12, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %107

98:                                               ; preds = %95
  %99 = load i32, i32* %9, align 4
  %100 = load i32, i32* %10, align 4
  %101 = call i32 @TransactionIdEquals(i32 %99, i32 %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %107, label %103

103:                                              ; preds = %98
  %104 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %105 = load i32, i32* %10, align 4
  %106 = call i32 @logical_rewrite_log_mapping(%struct.TYPE_15__* %104, i32 %105, %struct.TYPE_16__* %13)
  br label %107

107:                                              ; preds = %24, %71, %103, %98, %95
  ret void
}

declare dso_local i32 @HeapTupleHeaderGetXmin(%struct.TYPE_12__*) #1

declare dso_local i32 @HeapTupleHeaderGetUpdateXid(%struct.TYPE_12__*) #1

declare dso_local i64 @TransactionIdIsNormal(i32) #1

declare dso_local i32 @TransactionIdPrecedes(i32, i32) #1

declare dso_local i64 @HEAP_XMAX_IS_LOCKED_ONLY(i32) #1

declare dso_local i32 @logical_rewrite_log_mapping(%struct.TYPE_15__*, i32, %struct.TYPE_16__*) #1

declare dso_local i32 @TransactionIdEquals(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
