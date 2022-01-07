; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/heap/extr_heapam.c_heap_prepare_insert.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/heap/extr_heapam.c_heap_prepare_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_19__ = type { i64, i32, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32, i32 }

@ERROR = common dso_local global i32 0, align 4
@ERRCODE_INVALID_TRANSACTION_STATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"cannot insert tuples in a parallel worker\00", align 1
@HEAP_XACT_MASK = common dso_local global i32 0, align 4
@HEAP2_XACT_MASK = common dso_local global i32 0, align 4
@HEAP_XMAX_INVALID = common dso_local global i32 0, align 4
@HEAP_INSERT_FROZEN = common dso_local global i32 0, align 4
@RELKIND_RELATION = common dso_local global i64 0, align 8
@RELKIND_MATVIEW = common dso_local global i64 0, align 8
@TOAST_TUPLE_THRESHOLD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_19__* (%struct.TYPE_18__*, %struct.TYPE_19__*, i32, i32, i32)* @heap_prepare_insert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_19__* @heap_prepare_insert(%struct.TYPE_18__* %0, %struct.TYPE_19__* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca %struct.TYPE_19__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %7, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %12 = call i64 (...) @IsParallelWorker()
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %5
  %15 = load i32, i32* @ERROR, align 4
  %16 = load i32, i32* @ERRCODE_INVALID_TRANSACTION_STATE, align 4
  %17 = call i32 @errcode(i32 %16)
  %18 = call i32 @errmsg(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %19 = call i32 @ereport(i32 %15, i32 %18)
  br label %20

20:                                               ; preds = %14, %5
  %21 = load i32, i32* @HEAP_XACT_MASK, align 4
  %22 = xor i32 %21, -1
  %23 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %23, i32 0, i32 2
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %27, %22
  store i32 %28, i32* %26, align 4
  %29 = load i32, i32* @HEAP2_XACT_MASK, align 4
  %30 = xor i32 %29, -1
  %31 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %31, i32 0, i32 2
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = and i32 %35, %30
  store i32 %36, i32* %34, align 4
  %37 = load i32, i32* @HEAP_XMAX_INVALID, align 4
  %38 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %38, i32 0, i32 2
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %42, %37
  store i32 %43, i32* %41, align 4
  %44 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %44, i32 0, i32 2
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %45, align 8
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @HeapTupleHeaderSetXmin(%struct.TYPE_16__* %46, i32 %47)
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* @HEAP_INSERT_FROZEN, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %20
  %54 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %54, i32 0, i32 2
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %55, align 8
  %57 = call i32 @HeapTupleHeaderSetXminFrozen(%struct.TYPE_16__* %56)
  br label %58

58:                                               ; preds = %53, %20
  %59 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %59, i32 0, i32 2
  %61 = load %struct.TYPE_16__*, %struct.TYPE_16__** %60, align 8
  %62 = load i32, i32* %10, align 4
  %63 = call i32 @HeapTupleHeaderSetCmin(%struct.TYPE_16__* %61, i32 %62)
  %64 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %64, i32 0, i32 2
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %65, align 8
  %67 = call i32 @HeapTupleHeaderSetXmax(%struct.TYPE_16__* %66, i32 0)
  %68 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %69 = call i32 @RelationGetRelid(%struct.TYPE_18__* %68)
  %70 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 8
  %72 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_17__*, %struct.TYPE_17__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @RELKIND_RELATION, align 8
  %78 = icmp ne i64 %76, %77
  br i1 %78, label %79, label %95

79:                                               ; preds = %58
  %80 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_17__*, %struct.TYPE_17__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @RELKIND_MATVIEW, align 8
  %86 = icmp ne i64 %84, %85
  br i1 %86, label %87, label %95

87:                                               ; preds = %79
  %88 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %89 = call i64 @HeapTupleHasExternal(%struct.TYPE_19__* %88)
  %90 = icmp ne i64 %89, 0
  %91 = xor i1 %90, true
  %92 = zext i1 %91 to i32
  %93 = call i32 @Assert(i32 %92)
  %94 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  store %struct.TYPE_19__* %94, %struct.TYPE_19__** %6, align 8
  br label %112

95:                                               ; preds = %79, %58
  %96 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %97 = call i64 @HeapTupleHasExternal(%struct.TYPE_19__* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %105, label %99

99:                                               ; preds = %95
  %100 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %101 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @TOAST_TUPLE_THRESHOLD, align 8
  %104 = icmp sgt i64 %102, %103
  br i1 %104, label %105, label %110

105:                                              ; preds = %99, %95
  %106 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %107 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %108 = load i32, i32* %11, align 4
  %109 = call %struct.TYPE_19__* @heap_toast_insert_or_update(%struct.TYPE_18__* %106, %struct.TYPE_19__* %107, i32* null, i32 %108)
  store %struct.TYPE_19__* %109, %struct.TYPE_19__** %6, align 8
  br label %112

110:                                              ; preds = %99
  %111 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  store %struct.TYPE_19__* %111, %struct.TYPE_19__** %6, align 8
  br label %112

112:                                              ; preds = %110, %105, %87
  %113 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  ret %struct.TYPE_19__* %113
}

declare dso_local i64 @IsParallelWorker(...) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32 @HeapTupleHeaderSetXmin(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @HeapTupleHeaderSetXminFrozen(%struct.TYPE_16__*) #1

declare dso_local i32 @HeapTupleHeaderSetCmin(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @HeapTupleHeaderSetXmax(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @RelationGetRelid(%struct.TYPE_18__*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i64 @HeapTupleHasExternal(%struct.TYPE_19__*) #1

declare dso_local %struct.TYPE_19__* @heap_toast_insert_or_update(%struct.TYPE_18__*, %struct.TYPE_19__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
