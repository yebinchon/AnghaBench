; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/glu32/src/libtess/extr_sweep.c_CheckForLeftSplice.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/glu32/src/libtess/extr_sweep.c_CheckForLeftSplice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32 }
%struct.TYPE_21__ = type { i32, i32, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { %struct.TYPE_18__*, %struct.TYPE_20__*, %struct.TYPE_20__*, i32, i32, %struct.TYPE_17__* }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_19__*, %struct.TYPE_21__*)* @CheckForLeftSplice to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CheckForLeftSplice(%struct.TYPE_19__* %0, %struct.TYPE_21__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca %struct.TYPE_20__*, align 8
  %8 = alloca %struct.TYPE_20__*, align 8
  %9 = alloca %struct.TYPE_20__*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %4, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %5, align 8
  %10 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %11 = call %struct.TYPE_21__* @RegionBelow(%struct.TYPE_21__* %10)
  store %struct.TYPE_21__* %11, %struct.TYPE_21__** %6, align 8
  %12 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %12, i32 0, i32 2
  %14 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  store %struct.TYPE_20__* %14, %struct.TYPE_20__** %7, align 8
  %15 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 2
  %17 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  store %struct.TYPE_20__* %17, %struct.TYPE_20__** %8, align 8
  %18 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @VertEq(i32 %20, i32 %23)
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = call i32 @assert(i32 %27)
  %29 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @VertLeq(i32 %31, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %87

37:                                               ; preds = %2
  %38 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = call i64 @EdgeSign(i32 %40, i32 %43, i32 %46)
  %48 = icmp slt i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %37
  %50 = load i32, i32* @FALSE, align 4
  store i32 %50, i32* %3, align 4
  br label %140

51:                                               ; preds = %37
  %52 = load i32, i32* @TRUE, align 4
  %53 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  %55 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %56 = call %struct.TYPE_16__* @RegionAbove(%struct.TYPE_21__* %55)
  %57 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %56, i32 0, i32 0
  store i32 %52, i32* %57, align 4
  %58 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %59 = call %struct.TYPE_20__* @__gl_meshSplitEdge(%struct.TYPE_20__* %58)
  store %struct.TYPE_20__* %59, %struct.TYPE_20__** %9, align 8
  %60 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %61 = icmp eq %struct.TYPE_20__* %60, null
  br i1 %61, label %62, label %67

62:                                               ; preds = %51
  %63 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @longjmp(i32 %65, i32 1)
  br label %67

67:                                               ; preds = %62, %51
  %68 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %68, i32 0, i32 1
  %70 = load %struct.TYPE_20__*, %struct.TYPE_20__** %69, align 8
  %71 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %72 = call i32 @__gl_meshSplice(%struct.TYPE_20__* %70, %struct.TYPE_20__* %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %79, label %74

74:                                               ; preds = %67
  %75 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @longjmp(i32 %77, i32 1)
  br label %79

79:                                               ; preds = %74, %67
  %80 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %84 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %83, i32 0, i32 5
  %85 = load %struct.TYPE_17__*, %struct.TYPE_17__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %85, i32 0, i32 0
  store i32 %82, i32* %86, align 4
  br label %138

87:                                               ; preds = %2
  %88 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %88, i32 0, i32 4
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %91, i32 0, i32 4
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 8
  %97 = call i64 @EdgeSign(i32 %90, i32 %93, i32 %96)
  %98 = icmp sgt i64 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %87
  %100 = load i32, i32* @FALSE, align 4
  store i32 %100, i32* %3, align 4
  br label %140

101:                                              ; preds = %87
  %102 = load i32, i32* @TRUE, align 4
  %103 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %103, i32 0, i32 0
  store i32 %102, i32* %104, align 8
  %105 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %105, i32 0, i32 0
  store i32 %102, i32* %106, align 8
  %107 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %108 = call %struct.TYPE_20__* @__gl_meshSplitEdge(%struct.TYPE_20__* %107)
  store %struct.TYPE_20__* %108, %struct.TYPE_20__** %9, align 8
  %109 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %110 = icmp eq %struct.TYPE_20__* %109, null
  br i1 %110, label %111, label %116

111:                                              ; preds = %101
  %112 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @longjmp(i32 %114, i32 1)
  br label %116

116:                                              ; preds = %111, %101
  %117 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %118 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %117, i32 0, i32 2
  %119 = load %struct.TYPE_20__*, %struct.TYPE_20__** %118, align 8
  %120 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %121 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %120, i32 0, i32 1
  %122 = load %struct.TYPE_20__*, %struct.TYPE_20__** %121, align 8
  %123 = call i32 @__gl_meshSplice(%struct.TYPE_20__* %119, %struct.TYPE_20__* %122)
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %130, label %125

125:                                              ; preds = %116
  %126 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @longjmp(i32 %128, i32 1)
  br label %130

130:                                              ; preds = %125, %116
  %131 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %135 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %134, i32 0, i32 0
  %136 = load %struct.TYPE_18__*, %struct.TYPE_18__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %136, i32 0, i32 0
  store i32 %133, i32* %137, align 4
  br label %138

138:                                              ; preds = %130, %79
  %139 = load i32, i32* @TRUE, align 4
  store i32 %139, i32* %3, align 4
  br label %140

140:                                              ; preds = %138, %99, %49
  %141 = load i32, i32* %3, align 4
  ret i32 %141
}

declare dso_local %struct.TYPE_21__* @RegionBelow(%struct.TYPE_21__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @VertEq(i32, i32) #1

declare dso_local i64 @VertLeq(i32, i32) #1

declare dso_local i64 @EdgeSign(i32, i32, i32) #1

declare dso_local %struct.TYPE_16__* @RegionAbove(%struct.TYPE_21__*) #1

declare dso_local %struct.TYPE_20__* @__gl_meshSplitEdge(%struct.TYPE_20__*) #1

declare dso_local i32 @longjmp(i32, i32) #1

declare dso_local i32 @__gl_meshSplice(%struct.TYPE_20__*, %struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
