; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/executor/extr_nodeIndexscan.c_IndexNext.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/executor/extr_nodeIndexscan.c_IndexNext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64, i32, i32, i32, i32, i32, i32, i64, %struct.TYPE_17__*, i32, %struct.TYPE_15__ }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_15__ = type { i32, i32*, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_19__*, i64, %struct.TYPE_20__* }
%struct.TYPE_19__ = type { i32* }
%struct.TYPE_20__ = type { i32, i32 }
%struct.TYPE_18__ = type { i32 }

@BackwardScanDirection = common dso_local global i32 0, align 4
@ForwardScanDirection = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_16__*)* @IndexNext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @IndexNext(%struct.TYPE_16__* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca i32*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %3, align 8
  %9 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 10
  %11 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 2
  %13 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  store %struct.TYPE_20__* %13, %struct.TYPE_20__** %4, align 8
  %14 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %6, align 4
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 10
  %19 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct.TYPE_18__*
  %23 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @ScanDirectionIsBackward(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %41

27:                                               ; preds = %1
  %28 = load i32, i32* %6, align 4
  %29 = call i64 @ScanDirectionIsForward(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = load i32, i32* @BackwardScanDirection, align 4
  store i32 %32, i32* %6, align 4
  br label %40

33:                                               ; preds = %27
  %34 = load i32, i32* %6, align 4
  %35 = call i64 @ScanDirectionIsBackward(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = load i32, i32* @ForwardScanDirection, align 4
  store i32 %38, i32* %6, align 4
  br label %39

39:                                               ; preds = %37, %33
  br label %40

40:                                               ; preds = %39, %31
  br label %41

41:                                               ; preds = %40, %1
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %42, i32 0, i32 8
  %44 = load %struct.TYPE_17__*, %struct.TYPE_17__** %43, align 8
  store %struct.TYPE_17__* %44, %struct.TYPE_17__** %7, align 8
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %45, i32 0, i32 10
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_19__*, %struct.TYPE_19__** %48, align 8
  store %struct.TYPE_19__* %49, %struct.TYPE_19__** %5, align 8
  %50 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %50, i32 0, i32 10
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  store i32* %53, i32** %8, align 8
  %54 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %55 = icmp eq %struct.TYPE_17__* %54, null
  br i1 %55, label %56, label %102

56:                                               ; preds = %41
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %57, i32 0, i32 10
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %61, i32 0, i32 9
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %67, i32 0, i32 5
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 8
  %73 = call %struct.TYPE_17__* @index_beginscan(i32 %60, i32 %63, i32 %66, i32 %69, i32 %72)
  store %struct.TYPE_17__* %73, %struct.TYPE_17__** %7, align 8
  %74 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %75 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %75, i32 0, i32 8
  store %struct.TYPE_17__* %74, %struct.TYPE_17__** %76, align 8
  %77 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %86, label %81

81:                                               ; preds = %56
  %82 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %82, i32 0, i32 7
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %101

86:                                               ; preds = %81, %56
  %87 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %88 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %88, i32 0, i32 6
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %91, i32 0, i32 5
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %94, i32 0, i32 4
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @index_rescan(%struct.TYPE_17__* %87, i32 %90, i32 %93, i32 %96, i32 %99)
  br label %101

101:                                              ; preds = %86, %81
  br label %102

102:                                              ; preds = %101, %41
  br label %103

103:                                              ; preds = %125, %102
  %104 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %105 = load i32, i32* %6, align 4
  %106 = load i32*, i32** %8, align 8
  %107 = call i64 @index_getnext_slot(%struct.TYPE_17__* %104, i32 %105, i32* %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %131

109:                                              ; preds = %103
  %110 = call i32 (...) @CHECK_FOR_INTERRUPTS()
  %111 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %112 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %129

115:                                              ; preds = %109
  %116 = load i32*, i32** %8, align 8
  %117 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %117, i32 0, i32 0
  store i32* %116, i32** %118, align 8
  %119 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %120 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %123 = call i32 @ExecQualAndReset(i32 %121, %struct.TYPE_19__* %122)
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %128, label %125

125:                                              ; preds = %115
  %126 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %127 = call i32 @InstrCountFiltered2(%struct.TYPE_16__* %126, i32 1)
  br label %103

128:                                              ; preds = %115
  br label %129

129:                                              ; preds = %128, %109
  %130 = load i32*, i32** %8, align 8
  store i32* %130, i32** %2, align 8
  br label %136

131:                                              ; preds = %103
  %132 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %133 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %132, i32 0, i32 1
  store i32 1, i32* %133, align 8
  %134 = load i32*, i32** %8, align 8
  %135 = call i32* @ExecClearTuple(i32* %134)
  store i32* %135, i32** %2, align 8
  br label %136

136:                                              ; preds = %131, %129
  %137 = load i32*, i32** %2, align 8
  ret i32* %137
}

declare dso_local i64 @ScanDirectionIsBackward(i32) #1

declare dso_local i64 @ScanDirectionIsForward(i32) #1

declare dso_local %struct.TYPE_17__* @index_beginscan(i32, i32, i32, i32, i32) #1

declare dso_local i32 @index_rescan(%struct.TYPE_17__*, i32, i32, i32, i32) #1

declare dso_local i64 @index_getnext_slot(%struct.TYPE_17__*, i32, i32*) #1

declare dso_local i32 @CHECK_FOR_INTERRUPTS(...) #1

declare dso_local i32 @ExecQualAndReset(i32, %struct.TYPE_19__*) #1

declare dso_local i32 @InstrCountFiltered2(%struct.TYPE_16__*, i32) #1

declare dso_local i32* @ExecClearTuple(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
