; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/sort/extr_tuplesort.c_tuplesort_putindextuplevalues.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/sort/extr_tuplesort.c_tuplesort_putindextuplevalues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, %struct.TYPE_14__*, %struct.TYPE_16__*, i32, i32 }
%struct.TYPE_14__ = type { i64, i8*, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_16__ = type { i8* (i8*, %struct.TYPE_16__*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tuplesort_putindextuplevalues(%struct.TYPE_13__* %0, i32 %1, i32* %2, i8** %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_14__, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.TYPE_15__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i8** %3, i8*** %9, align 8
  store i32* %4, i32** %10, align 8
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 5
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @MemoryContextSwitchTo(i32 %19)
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @RelationGetDescr(i32 %21)
  %23 = load i8**, i8*** %9, align 8
  %24 = load i32*, i32** %10, align 8
  %25 = call %struct.TYPE_15__* @index_form_tuple(i32 %22, i8** %23, i32* %24)
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 2
  store %struct.TYPE_15__* %25, %struct.TYPE_15__** %26, align 8
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 2
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %27, align 8
  store %struct.TYPE_15__* %28, %struct.TYPE_15__** %14, align 8
  %29 = load i32*, i32** %8, align 8
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 2
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %34, align 8
  %36 = call i32 @GetMemoryChunkSpace(%struct.TYPE_15__* %35)
  %37 = call i32 @USEMEM(%struct.TYPE_13__* %33, i32 %36)
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @RelationGetDescr(i32 %41)
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 0
  %44 = call i8* @index_getattr(%struct.TYPE_15__* %38, i32 1, i32 %42, i64* %43)
  store i8* %44, i8** %13, align 8
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @MemoryContextSwitchTo(i32 %47)
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 3
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %50, align 8
  %52 = icmp ne %struct.TYPE_16__* %51, null
  br i1 %52, label %53, label %64

53:                                               ; preds = %5
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 3
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %56, i32 0, i32 0
  %58 = load i8* (i8*, %struct.TYPE_16__*)*, i8* (i8*, %struct.TYPE_16__*)** %57, align 8
  %59 = icmp ne i8* (i8*, %struct.TYPE_16__*)* %58, null
  br i1 %59, label %60, label %64

60:                                               ; preds = %53
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %60, %53, %5
  %65 = load i8*, i8** %13, align 8
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 1
  store i8* %65, i8** %66, align 8
  br label %117

67:                                               ; preds = %60
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %69 = call i32 @consider_abort_common(%struct.TYPE_13__* %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %83, label %71

71:                                               ; preds = %67
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 3
  %74 = load %struct.TYPE_16__*, %struct.TYPE_16__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %74, i32 0, i32 0
  %76 = load i8* (i8*, %struct.TYPE_16__*)*, i8* (i8*, %struct.TYPE_16__*)** %75, align 8
  %77 = load i8*, i8** %13, align 8
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 3
  %80 = load %struct.TYPE_16__*, %struct.TYPE_16__** %79, align 8
  %81 = call i8* %76(i8* %77, %struct.TYPE_16__* %80)
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 1
  store i8* %81, i8** %82, align 8
  br label %116

83:                                               ; preds = %67
  %84 = load i8*, i8** %13, align 8
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 1
  store i8* %84, i8** %85, align 8
  store i32 0, i32* %15, align 4
  br label %86

86:                                               ; preds = %112, %83
  %87 = load i32, i32* %15, align 4
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = icmp slt i32 %87, %90
  br i1 %91, label %92, label %115

92:                                               ; preds = %86
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 2
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** %94, align 8
  %96 = load i32, i32* %15, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i64 %97
  store %struct.TYPE_14__* %98, %struct.TYPE_14__** %16, align 8
  %99 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %100 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %99, i32 0, i32 2
  %101 = load %struct.TYPE_15__*, %struct.TYPE_15__** %100, align 8
  store %struct.TYPE_15__* %101, %struct.TYPE_15__** %14, align 8
  %102 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %103 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @RelationGetDescr(i32 %105)
  %107 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %108 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %107, i32 0, i32 0
  %109 = call i8* @index_getattr(%struct.TYPE_15__* %102, i32 1, i32 %106, i64* %108)
  %110 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %111 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %110, i32 0, i32 1
  store i8* %109, i8** %111, align 8
  br label %112

112:                                              ; preds = %92
  %113 = load i32, i32* %15, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %15, align 4
  br label %86

115:                                              ; preds = %86
  br label %116

116:                                              ; preds = %115, %71
  br label %117

117:                                              ; preds = %116, %64
  %118 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %119 = call i32 @puttuple_common(%struct.TYPE_13__* %118, %struct.TYPE_14__* %12)
  %120 = load i32, i32* %11, align 4
  %121 = call i32 @MemoryContextSwitchTo(i32 %120)
  ret void
}

declare dso_local i32 @MemoryContextSwitchTo(i32) #1

declare dso_local %struct.TYPE_15__* @index_form_tuple(i32, i8**, i32*) #1

declare dso_local i32 @RelationGetDescr(i32) #1

declare dso_local i32 @USEMEM(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @GetMemoryChunkSpace(%struct.TYPE_15__*) #1

declare dso_local i8* @index_getattr(%struct.TYPE_15__*, i32, i32, i64*) #1

declare dso_local i32 @consider_abort_common(%struct.TYPE_13__*) #1

declare dso_local i32 @puttuple_common(%struct.TYPE_13__*, %struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
