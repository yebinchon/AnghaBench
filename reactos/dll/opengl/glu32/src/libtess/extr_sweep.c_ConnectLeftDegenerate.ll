; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/glu32/src/libtess/extr_sweep.c_ConnectLeftDegenerate.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/glu32/src/libtess/extr_sweep.c_ConnectLeftDegenerate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_29__ = type { i32 }
%struct.TYPE_31__ = type { i64, %struct.TYPE_30__* }
%struct.TYPE_30__ = type { %struct.TYPE_30__*, %struct.TYPE_30__*, %struct.TYPE_30__*, i32, i32 }
%struct.TYPE_28__ = type { i32 }

@TOLERANCE_NONZERO = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_29__*, %struct.TYPE_31__*, %struct.TYPE_28__*)* @ConnectLeftDegenerate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ConnectLeftDegenerate(%struct.TYPE_29__* %0, %struct.TYPE_31__* %1, %struct.TYPE_28__* %2) #0 {
  %4 = alloca %struct.TYPE_29__*, align 8
  %5 = alloca %struct.TYPE_31__*, align 8
  %6 = alloca %struct.TYPE_28__*, align 8
  %7 = alloca %struct.TYPE_30__*, align 8
  %8 = alloca %struct.TYPE_30__*, align 8
  %9 = alloca %struct.TYPE_30__*, align 8
  %10 = alloca %struct.TYPE_30__*, align 8
  %11 = alloca %struct.TYPE_31__*, align 8
  store %struct.TYPE_29__* %0, %struct.TYPE_29__** %4, align 8
  store %struct.TYPE_31__* %1, %struct.TYPE_31__** %5, align 8
  store %struct.TYPE_28__* %2, %struct.TYPE_28__** %6, align 8
  %12 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_30__*, %struct.TYPE_30__** %13, align 8
  store %struct.TYPE_30__* %14, %struct.TYPE_30__** %7, align 8
  %15 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %19 = call i64 @VertEq(i32 %17, %struct.TYPE_28__* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %3
  %22 = load i32, i32* @TOLERANCE_NONZERO, align 4
  %23 = call i32 @assert(i32 %22)
  %24 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %25 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %26 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @SpliceMergeVertices(%struct.TYPE_29__* %24, %struct.TYPE_30__* %25, i32 %28)
  br label %151

30:                                               ; preds = %3
  %31 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %35 = call i64 @VertEq(i32 %33, %struct.TYPE_28__* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %84, label %37

37:                                               ; preds = %30
  %38 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %38, i32 0, i32 2
  %40 = load %struct.TYPE_30__*, %struct.TYPE_30__** %39, align 8
  %41 = call i32* @__gl_meshSplitEdge(%struct.TYPE_30__* %40)
  %42 = icmp eq i32* %41, null
  br i1 %42, label %43, label %48

43:                                               ; preds = %37
  %44 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @longjmp(i32 %46, i32 1)
  br label %48

48:                                               ; preds = %43, %37
  %49 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %68

53:                                               ; preds = %48
  %54 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_30__*, %struct.TYPE_30__** %55, align 8
  %57 = call i32 @__gl_meshDelete(%struct.TYPE_30__* %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %64, label %59

59:                                               ; preds = %53
  %60 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @longjmp(i32 %62, i32 1)
  br label %64

64:                                               ; preds = %59, %53
  %65 = load i64, i64* @FALSE, align 8
  %66 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %66, i32 0, i32 0
  store i64 %65, i64* %67, align 8
  br label %68

68:                                               ; preds = %64, %48
  %69 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %73 = call i32 @__gl_meshSplice(i32 %71, %struct.TYPE_30__* %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %80, label %75

75:                                               ; preds = %68
  %76 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @longjmp(i32 %78, i32 1)
  br label %80

80:                                               ; preds = %75, %68
  %81 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %82 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %83 = call i32 @SweepEvent(%struct.TYPE_29__* %81, %struct.TYPE_28__* %82)
  br label %151

84:                                               ; preds = %30
  %85 = load i32, i32* @TOLERANCE_NONZERO, align 4
  %86 = call i32 @assert(i32 %85)
  %87 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %88 = call %struct.TYPE_31__* @TopRightRegion(%struct.TYPE_31__* %87)
  store %struct.TYPE_31__* %88, %struct.TYPE_31__** %5, align 8
  %89 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %90 = call %struct.TYPE_31__* @RegionBelow(%struct.TYPE_31__* %89)
  store %struct.TYPE_31__* %90, %struct.TYPE_31__** %11, align 8
  %91 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %92 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %91, i32 0, i32 1
  %93 = load %struct.TYPE_30__*, %struct.TYPE_30__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %93, i32 0, i32 2
  %95 = load %struct.TYPE_30__*, %struct.TYPE_30__** %94, align 8
  store %struct.TYPE_30__* %95, %struct.TYPE_30__** %9, align 8
  %96 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %97 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %96, i32 0, i32 0
  %98 = load %struct.TYPE_30__*, %struct.TYPE_30__** %97, align 8
  store %struct.TYPE_30__* %98, %struct.TYPE_30__** %10, align 8
  store %struct.TYPE_30__* %98, %struct.TYPE_30__** %8, align 8
  %99 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %100 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %124

103:                                              ; preds = %84
  %104 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %105 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %106 = icmp ne %struct.TYPE_30__* %104, %105
  %107 = zext i1 %106 to i32
  %108 = call i32 @assert(i32 %107)
  %109 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %110 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %111 = call i32 @DeleteRegion(%struct.TYPE_29__* %109, %struct.TYPE_31__* %110)
  %112 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %113 = call i32 @__gl_meshDelete(%struct.TYPE_30__* %112)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %120, label %115

115:                                              ; preds = %103
  %116 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @longjmp(i32 %118, i32 1)
  br label %120

120:                                              ; preds = %115, %103
  %121 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %122 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %121, i32 0, i32 1
  %123 = load %struct.TYPE_30__*, %struct.TYPE_30__** %122, align 8
  store %struct.TYPE_30__* %123, %struct.TYPE_30__** %9, align 8
  br label %124

124:                                              ; preds = %120, %84
  %125 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %129 = call i32 @__gl_meshSplice(i32 %127, %struct.TYPE_30__* %128)
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %136, label %131

131:                                              ; preds = %124
  %132 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @longjmp(i32 %134, i32 1)
  br label %136

136:                                              ; preds = %131, %124
  %137 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %138 = call i32 @EdgeGoesLeft(%struct.TYPE_30__* %137)
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %141, label %140

140:                                              ; preds = %136
  store %struct.TYPE_30__* null, %struct.TYPE_30__** %8, align 8
  br label %141

141:                                              ; preds = %140, %136
  %142 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %143 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %144 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %145 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %144, i32 0, i32 0
  %146 = load %struct.TYPE_30__*, %struct.TYPE_30__** %145, align 8
  %147 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %148 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %149 = load i32, i32* @TRUE, align 4
  %150 = call i32 @AddRightEdges(%struct.TYPE_29__* %142, %struct.TYPE_31__* %143, %struct.TYPE_30__* %146, %struct.TYPE_30__* %147, %struct.TYPE_30__* %148, i32 %149)
  br label %151

151:                                              ; preds = %141, %80, %21
  ret void
}

declare dso_local i64 @VertEq(i32, %struct.TYPE_28__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @SpliceMergeVertices(%struct.TYPE_29__*, %struct.TYPE_30__*, i32) #1

declare dso_local i32* @__gl_meshSplitEdge(%struct.TYPE_30__*) #1

declare dso_local i32 @longjmp(i32, i32) #1

declare dso_local i32 @__gl_meshDelete(%struct.TYPE_30__*) #1

declare dso_local i32 @__gl_meshSplice(i32, %struct.TYPE_30__*) #1

declare dso_local i32 @SweepEvent(%struct.TYPE_29__*, %struct.TYPE_28__*) #1

declare dso_local %struct.TYPE_31__* @TopRightRegion(%struct.TYPE_31__*) #1

declare dso_local %struct.TYPE_31__* @RegionBelow(%struct.TYPE_31__*) #1

declare dso_local i32 @DeleteRegion(%struct.TYPE_29__*, %struct.TYPE_31__*) #1

declare dso_local i32 @EdgeGoesLeft(%struct.TYPE_30__*) #1

declare dso_local i32 @AddRightEdges(%struct.TYPE_29__*, %struct.TYPE_31__*, %struct.TYPE_30__*, %struct.TYPE_30__*, %struct.TYPE_30__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
