; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_expandedrecord.c_ER_flatten_into.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_expandedrecord.c_ER_flatten_into.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i64, i32, i64, i32, i64, i32, i32, i32, i32, i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i64, i32 }
%struct.TYPE_16__ = type { i32, i32*, i32, i32 }
%struct.TYPE_15__ = type { i32 }

@ER_MAGIC = common dso_local global i64 0, align 8
@ER_FLAG_FVALUE_VALID = common dso_local global i32 0, align 4
@ER_FLAG_HAVE_EXTERNAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, i64)* @ER_flatten_into to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ER_flatten_into(i32* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = bitcast i32* %10 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %11, %struct.TYPE_17__** %7, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %13, %struct.TYPE_16__** %8, align 8
  %14 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @ER_MAGIC, align 8
  %18 = icmp eq i64 %16, %17
  %19 = zext i1 %18 to i32
  %20 = call i32 @Assert(i32 %19)
  %21 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @ER_FLAG_FVALUE_VALID, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %65

27:                                               ; preds = %3
  %28 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @ER_FLAG_HAVE_EXTERNAL, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %65, label %34

34:                                               ; preds = %27
  %35 = load i64, i64* %6, align 8
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i32 0, i32 10
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %35, %40
  %42 = zext i1 %41 to i32
  %43 = call i32 @Assert(i32 %42)
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %45 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %45, i32 0, i32 10
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load i64, i64* %6, align 8
  %51 = call i32 @memcpy(%struct.TYPE_16__* %44, i32 %49, i64 %50)
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %53 = load i64, i64* %6, align 8
  %54 = call i32 @HeapTupleHeaderSetDatumLength(%struct.TYPE_16__* %52, i64 %53)
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %56 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %56, i32 0, i32 9
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @HeapTupleHeaderSetTypeId(%struct.TYPE_16__* %55, i32 %58)
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %61 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %61, i32 0, i32 8
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @HeapTupleHeaderSetTypMod(%struct.TYPE_16__* %60, i32 %63)
  br label %135

65:                                               ; preds = %27, %3
  %66 = load i64, i64* %6, align 8
  %67 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = icmp eq i64 %66, %69
  %71 = zext i1 %70 to i32
  %72 = call i32 @Assert(i32 %71)
  %73 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %74 = call %struct.TYPE_15__* @expanded_record_get_tupdesc(%struct.TYPE_17__* %73)
  store %struct.TYPE_15__* %74, %struct.TYPE_15__** %9, align 8
  %75 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %76 = load i64, i64* %6, align 8
  %77 = call i32 @memset(%struct.TYPE_16__* %75, i32 0, i64 %76)
  %78 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %79 = load i64, i64* %6, align 8
  %80 = call i32 @HeapTupleHeaderSetDatumLength(%struct.TYPE_16__* %78, i64 %79)
  %81 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %82 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %82, i32 0, i32 9
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @HeapTupleHeaderSetTypeId(%struct.TYPE_16__* %81, i32 %84)
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %87 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %87, i32 0, i32 8
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @HeapTupleHeaderSetTypMod(%struct.TYPE_16__* %86, i32 %89)
  %91 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %92 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %91, i32 0, i32 3
  %93 = call i32 @ItemPointerSetInvalid(i32* %92)
  %94 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %95 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %96 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @HeapTupleHeaderSetNatts(%struct.TYPE_16__* %94, i32 %97)
  %99 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %103 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %102, i32 0, i32 0
  store i32 %101, i32* %103, align 8
  %104 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %105 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %106 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %105, i32 0, i32 7
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %109 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %108, i32 0, i32 6
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %112 = bitcast %struct.TYPE_16__* %111 to i8*
  %113 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %114 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 8
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i8, i8* %112, i64 %116
  %118 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %119 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %118, i32 0, i32 5
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %122 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %121, i32 0, i32 2
  %123 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %124 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %123, i32 0, i32 4
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %131

127:                                              ; preds = %65
  %128 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %129 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %128, i32 0, i32 1
  %130 = load i32*, i32** %129, align 8
  br label %132

131:                                              ; preds = %65
  br label %132

132:                                              ; preds = %131, %127
  %133 = phi i32* [ %130, %127 ], [ null, %131 ]
  %134 = call i32 @heap_fill_tuple(%struct.TYPE_15__* %104, i32 %107, i32 %110, i8* %117, i32 %120, i32* %122, i32* %133)
  br label %135

135:                                              ; preds = %132, %34
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_16__*, i32, i64) #1

declare dso_local i32 @HeapTupleHeaderSetDatumLength(%struct.TYPE_16__*, i64) #1

declare dso_local i32 @HeapTupleHeaderSetTypeId(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @HeapTupleHeaderSetTypMod(%struct.TYPE_16__*, i32) #1

declare dso_local %struct.TYPE_15__* @expanded_record_get_tupdesc(%struct.TYPE_17__*) #1

declare dso_local i32 @memset(%struct.TYPE_16__*, i32, i64) #1

declare dso_local i32 @ItemPointerSetInvalid(i32*) #1

declare dso_local i32 @HeapTupleHeaderSetNatts(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @heap_fill_tuple(%struct.TYPE_15__*, i32, i32, i8*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
