; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/gist/extr_gistget.c_getNextNearest.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/gist/extr_gistget.c_getNextNearest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_17__*, i64, i32, i32, i32 }
%struct.TYPE_17__ = type { i32, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_17__*, i32, i32, i32 }
%struct.TYPE_18__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*)* @getNextNearest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getNextNearest(%struct.TYPE_16__* %0) #0 {
  %2 = alloca %struct.TYPE_16__*, align 8
  %3 = alloca %struct.TYPE_18__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_17__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %2, align 8
  %6 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %6, i32 0, i32 4
  %8 = load i32, i32* %7, align 8
  %9 = sext i32 %8 to i64
  %10 = inttoptr i64 %9 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %10, %struct.TYPE_18__** %3, align 8
  store i32 0, i32* %4, align 4
  %11 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %14 = icmp ne %struct.TYPE_17__* %13, null
  br i1 %14, label %15, label %22

15:                                               ; preds = %1
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %19 = call i32 @pfree(%struct.TYPE_17__* %18)
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 0
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %21, align 8
  br label %22

22:                                               ; preds = %15, %1
  br label %23

23:                                               ; preds = %85, %22
  %24 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %25 = call %struct.TYPE_17__* @getNextGISTSearchItem(%struct.TYPE_18__* %24)
  store %struct.TYPE_17__* %25, %struct.TYPE_17__** %5, align 8
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %27 = icmp ne %struct.TYPE_17__* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %23
  br label %89

29:                                               ; preds = %23
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %31 = call i64 @GISTSearchItemIsHeap(%struct.TYPE_17__* byval(%struct.TYPE_17__) align 8 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %74

33:                                               ; preds = %29
  %34 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %39, i32 0, i32 3
  store i32 %38, i32* %40, align 4
  %41 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 8
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %49 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @index_store_float8_orderby_distances(%struct.TYPE_16__* %48, i32 %51, i32 %54, i32 %59)
  %61 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %73

65:                                               ; preds = %33
  %66 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_17__*, %struct.TYPE_17__** %69, align 8
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %72 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %71, i32 0, i32 0
  store %struct.TYPE_17__* %70, %struct.TYPE_17__** %72, align 8
  br label %73

73:                                               ; preds = %65, %33
  store i32 1, i32* %4, align 4
  br label %82

74:                                               ; preds = %29
  %75 = call i32 (...) @CHECK_FOR_INTERRUPTS()
  %76 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %77 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %78 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @gistScanPage(%struct.TYPE_16__* %76, %struct.TYPE_17__* %77, i32 %80, i32* null, i32* null)
  br label %82

82:                                               ; preds = %74, %73
  %83 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %84 = call i32 @pfree(%struct.TYPE_17__* %83)
  br label %85

85:                                               ; preds = %82
  %86 = load i32, i32* %4, align 4
  %87 = icmp ne i32 %86, 0
  %88 = xor i1 %87, true
  br i1 %88, label %23, label %89

89:                                               ; preds = %85, %28
  %90 = load i32, i32* %4, align 4
  ret i32 %90
}

declare dso_local i32 @pfree(%struct.TYPE_17__*) #1

declare dso_local %struct.TYPE_17__* @getNextGISTSearchItem(%struct.TYPE_18__*) #1

declare dso_local i64 @GISTSearchItemIsHeap(%struct.TYPE_17__* byval(%struct.TYPE_17__) align 8) #1

declare dso_local i32 @index_store_float8_orderby_distances(%struct.TYPE_16__*, i32, i32, i32) #1

declare dso_local i32 @CHECK_FOR_INTERRUPTS(...) #1

declare dso_local i32 @gistScanPage(%struct.TYPE_16__*, %struct.TYPE_17__*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
