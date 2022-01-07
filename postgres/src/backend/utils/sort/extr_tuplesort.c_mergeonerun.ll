; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/sort/extr_tuplesort.c_mergeonerun.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/sort/extr_tuplesort.c_mergeonerun.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32*, i64, i64, i32, i32, i32, i32*, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, i64 }
%struct.TYPE_16__ = type { i32 }

@LOG = common dso_local global i32 0, align 4
@trace_sort = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_15__*)* @mergeonerun to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mergeonerun(%struct.TYPE_15__* %0) #0 {
  %2 = alloca %struct.TYPE_15__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_16__, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %2, align 8
  %6 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  %9 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds i32, i32* %8, i64 %11
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %3, align 4
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %15 = call i32 @beginmerge(%struct.TYPE_15__* %14)
  br label %16

16:                                               ; preds = %64, %1
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = icmp sgt i64 %19, 0
  br i1 %20, label %21, label %65

21:                                               ; preds = %16
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 7
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i64 0
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %4, align 4
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %29 = load i32, i32* %3, align 4
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 7
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i64 0
  %34 = call i32 @WRITETUP(%struct.TYPE_15__* %28, i32 %29, %struct.TYPE_14__* %33)
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %35, i32 0, i32 7
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i64 0
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %21
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %44 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %44, i32 0, i32 7
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i64 0
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @RELEASE_SLAB_SLOT(%struct.TYPE_15__* %43, i64 %49)
  br label %51

51:                                               ; preds = %42, %21
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %53 = load i32, i32* %4, align 4
  %54 = call i64 @mergereadnext(%struct.TYPE_15__* %52, i32 %53, %struct.TYPE_16__* %5)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %51
  %57 = load i32, i32* %4, align 4
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 0
  store i32 %57, i32* %58, align 4
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %60 = call i32 @tuplesort_heap_replace_top(%struct.TYPE_15__* %59, %struct.TYPE_16__* %5)
  br label %64

61:                                               ; preds = %51
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %63 = call i32 @tuplesort_heap_delete_top(%struct.TYPE_15__* %62)
  br label %64

64:                                               ; preds = %61, %56
  br label %16

65:                                               ; preds = %16
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %67 = load i32, i32* %3, align 4
  %68 = call i32 @markrunend(%struct.TYPE_15__* %66, i32 %67)
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i32 0, i32 6
  %71 = load i32*, i32** %70, align 8
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = getelementptr inbounds i32, i32* %71, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %75, align 4
  ret void
}

declare dso_local i32 @beginmerge(%struct.TYPE_15__*) #1

declare dso_local i32 @WRITETUP(%struct.TYPE_15__*, i32, %struct.TYPE_14__*) #1

declare dso_local i32 @RELEASE_SLAB_SLOT(%struct.TYPE_15__*, i64) #1

declare dso_local i64 @mergereadnext(%struct.TYPE_15__*, i32, %struct.TYPE_16__*) #1

declare dso_local i32 @tuplesort_heap_replace_top(%struct.TYPE_15__*, %struct.TYPE_16__*) #1

declare dso_local i32 @tuplesort_heap_delete_top(%struct.TYPE_15__*) #1

declare dso_local i32 @markrunend(%struct.TYPE_15__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
