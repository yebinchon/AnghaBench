; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/spgist/extr_spgscan.c_spgLeafTest.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/spgist/extr_spgscan.c_spgLeafTest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_19__ = type { i32, i32, i32 }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_18__ = type { i64, i32, double*, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*, %struct.TYPE_19__*, %struct.TYPE_20__*, i32, i32*, i32 (%struct.TYPE_17__*, i32*, i64, i32, i32, i32, i32*)*)* @spgLeafTest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spgLeafTest(%struct.TYPE_17__* %0, %struct.TYPE_19__* %1, %struct.TYPE_20__* %2, i32 %3, i32* %4, i32 (%struct.TYPE_17__*, i32*, i64, i32, i32, i32, i32*)* %5) #0 {
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca %struct.TYPE_19__*, align 8
  %9 = alloca %struct.TYPE_20__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32 (%struct.TYPE_17__*, i32*, i64, i32, i32, i32, i32*)*, align 8
  %13 = alloca i64, align 8
  %14 = alloca double*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_18__, align 8
  %19 = alloca %struct.TYPE_18__, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.TYPE_19__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %7, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %8, align 8
  store %struct.TYPE_20__* %2, %struct.TYPE_20__** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32 (%struct.TYPE_17__*, i32*, i64, i32, i32, i32, i32*)* %5, i32 (%struct.TYPE_17__*, i32*, i64, i32, i32, i32, i32*)** %12, align 8
  %23 = load i32, i32* %10, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %6
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @Assert(i32 %28)
  store i64 0, i64* %13, align 8
  store double* null, double** %14, align 8
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 1, i32* %15, align 4
  br label %95

30:                                               ; preds = %6
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %31, i32 0, i32 10
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @MemoryContextSwitchTo(i32 %33)
  store i32 %34, i32* %20, align 4
  %35 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %35, i32 0, i32 9
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %18, i32 0, i32 12
  store i32 %37, i32* %38, align 4
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %39, i32 0, i32 8
  %41 = load i32, i32* %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %18, i32 0, i32 11
  store i32 %41, i32* %42, align 8
  %43 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %43, i32 0, i32 7
  %45 = load i32, i32* %44, align 4
  %46 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %18, i32 0, i32 10
  store i32 %45, i32* %46, align 4
  %47 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %18, i32 0, i32 0
  store i64 %49, i64* %50, align 8
  %51 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %18, i32 0, i32 9
  store i32 %53, i32* %54, align 8
  %55 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %18, i32 0, i32 8
  store i32 %57, i32* %58, align 4
  %59 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %18, i32 0, i32 7
  store i32 %61, i32* %62, align 8
  %63 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %63, i32 0, i32 6
  %65 = load i32, i32* %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %18, i32 0, i32 6
  store i32 %65, i32* %66, align 4
  %67 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %68 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %68, i32 0, i32 5
  %70 = call i32 @SGLTDATUM(%struct.TYPE_20__* %67, i32* %69)
  %71 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %18, i32 0, i32 5
  store i32 %70, i32* %71, align 8
  %72 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %19, i32 0, i32 4
  store i64 0, i64* %72, align 8
  %73 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %19, i32 0, i32 1
  store i32 0, i32* %73, align 8
  %74 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %19, i32 0, i32 2
  store double* null, double** %74, align 8
  %75 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %19, i32 0, i32 3
  store i32 0, i32* %75, align 8
  %76 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %76, i32 0, i32 4
  %78 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @PointerGetDatum(%struct.TYPE_18__* %18)
  %82 = call i32 @PointerGetDatum(%struct.TYPE_18__* %19)
  %83 = call i32 @FunctionCall2Coll(i32* %77, i32 %80, i32 %81, i32 %82)
  %84 = call i32 @DatumGetBool(i32 %83)
  store i32 %84, i32* %15, align 4
  %85 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %19, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  store i32 %86, i32* %16, align 4
  %87 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %19, i32 0, i32 3
  %88 = load i32, i32* %87, align 8
  store i32 %88, i32* %17, align 4
  %89 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %19, i32 0, i32 4
  %90 = load i64, i64* %89, align 8
  store i64 %90, i64* %13, align 8
  %91 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %19, i32 0, i32 2
  %92 = load double*, double** %91, align 8
  store double* %92, double** %14, align 8
  %93 = load i32, i32* %20, align 4
  %94 = call i32 @MemoryContextSwitchTo(i32 %93)
  br label %95

95:                                               ; preds = %30, %25
  %96 = load i32, i32* %15, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %141

98:                                               ; preds = %95
  %99 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = icmp sgt i64 %101, 0
  br i1 %102, label %103, label %125

103:                                              ; preds = %98
  %104 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %105 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @MemoryContextSwitchTo(i32 %106)
  store i32 %107, i32* %21, align 4
  %108 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %109 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %110 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %113 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %112, i32 0, i32 0
  %114 = load i64, i64* %13, align 8
  %115 = load i32, i32* %16, align 4
  %116 = load i32, i32* %17, align 4
  %117 = load i32, i32* %10, align 4
  %118 = load double*, double** %14, align 8
  %119 = call %struct.TYPE_19__* @spgNewHeapItem(%struct.TYPE_17__* %108, i32 %111, i32* %113, i64 %114, i32 %115, i32 %116, i32 %117, double* %118)
  store %struct.TYPE_19__* %119, %struct.TYPE_19__** %22, align 8
  %120 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %121 = load %struct.TYPE_19__*, %struct.TYPE_19__** %22, align 8
  %122 = call i32 @spgAddSearchItemToQueue(%struct.TYPE_17__* %120, %struct.TYPE_19__* %121)
  %123 = load i32, i32* %21, align 4
  %124 = call i32 @MemoryContextSwitchTo(i32 %123)
  br label %140

125:                                              ; preds = %98
  %126 = load i32, i32* %17, align 4
  %127 = icmp ne i32 %126, 0
  %128 = xor i1 %127, true
  %129 = zext i1 %128 to i32
  %130 = call i32 @Assert(i32 %129)
  %131 = load i32 (%struct.TYPE_17__*, i32*, i64, i32, i32, i32, i32*)*, i32 (%struct.TYPE_17__*, i32*, i64, i32, i32, i32, i32*)** %12, align 8
  %132 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %133 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %134 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %133, i32 0, i32 0
  %135 = load i64, i64* %13, align 8
  %136 = load i32, i32* %10, align 4
  %137 = load i32, i32* %16, align 4
  %138 = call i32 %131(%struct.TYPE_17__* %132, i32* %134, i64 %135, i32 %136, i32 %137, i32 0, i32* null)
  %139 = load i32*, i32** %11, align 8
  store i32 1, i32* %139, align 4
  br label %140

140:                                              ; preds = %125, %103
  br label %141

141:                                              ; preds = %140, %95
  %142 = load i32, i32* %15, align 4
  ret i32 %142
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @MemoryContextSwitchTo(i32) #1

declare dso_local i32 @SGLTDATUM(%struct.TYPE_20__*, i32*) #1

declare dso_local i32 @DatumGetBool(i32) #1

declare dso_local i32 @FunctionCall2Coll(i32*, i32, i32, i32) #1

declare dso_local i32 @PointerGetDatum(%struct.TYPE_18__*) #1

declare dso_local %struct.TYPE_19__* @spgNewHeapItem(%struct.TYPE_17__*, i32, i32*, i64, i32, i32, i32, double*) #1

declare dso_local i32 @spgAddSearchItemToQueue(%struct.TYPE_17__*, %struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
