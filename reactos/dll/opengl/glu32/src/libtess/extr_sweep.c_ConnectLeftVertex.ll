; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/glu32/src/libtess/extr_sweep.c_ConnectLeftVertex.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/glu32/src/libtess/extr_sweep.c_ConnectLeftVertex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_30__ = type { i32, i32 }
%struct.TYPE_29__ = type { %struct.TYPE_33__* }
%struct.TYPE_33__ = type { %struct.TYPE_31__* }
%struct.TYPE_31__ = type { %struct.TYPE_31__*, %struct.TYPE_31__*, %struct.TYPE_33__*, i32, i32 }
%struct.TYPE_32__ = type { i64, i64, %struct.TYPE_31__* }

@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_30__*, %struct.TYPE_29__*)* @ConnectLeftVertex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ConnectLeftVertex(%struct.TYPE_30__* %0, %struct.TYPE_29__* %1) #0 {
  %3 = alloca %struct.TYPE_30__*, align 8
  %4 = alloca %struct.TYPE_29__*, align 8
  %5 = alloca %struct.TYPE_32__*, align 8
  %6 = alloca %struct.TYPE_32__*, align 8
  %7 = alloca %struct.TYPE_32__*, align 8
  %8 = alloca %struct.TYPE_31__*, align 8
  %9 = alloca %struct.TYPE_31__*, align 8
  %10 = alloca %struct.TYPE_31__*, align 8
  %11 = alloca %struct.TYPE_32__, align 8
  %12 = alloca %struct.TYPE_31__*, align 8
  store %struct.TYPE_30__* %0, %struct.TYPE_30__** %3, align 8
  store %struct.TYPE_29__* %1, %struct.TYPE_29__** %4, align 8
  %13 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_33__*, %struct.TYPE_33__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_31__*, %struct.TYPE_31__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %11, i32 0, i32 2
  store %struct.TYPE_31__* %17, %struct.TYPE_31__** %18, align 8
  %19 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @dictSearch(i32 %21, %struct.TYPE_32__* %11)
  %23 = call i64 @dictKey(i32 %22)
  %24 = inttoptr i64 %23 to %struct.TYPE_32__*
  store %struct.TYPE_32__* %24, %struct.TYPE_32__** %5, align 8
  %25 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %26 = call %struct.TYPE_32__* @RegionBelow(%struct.TYPE_32__* %25)
  store %struct.TYPE_32__* %26, %struct.TYPE_32__** %6, align 8
  %27 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %27, i32 0, i32 2
  %29 = load %struct.TYPE_31__*, %struct.TYPE_31__** %28, align 8
  store %struct.TYPE_31__* %29, %struct.TYPE_31__** %8, align 8
  %30 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %30, i32 0, i32 2
  %32 = load %struct.TYPE_31__*, %struct.TYPE_31__** %31, align 8
  store %struct.TYPE_31__* %32, %struct.TYPE_31__** %9, align 8
  %33 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %37 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @EdgeSign(i32 %35, %struct.TYPE_29__* %36, i32 %39)
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %2
  %43 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %44 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %45 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %46 = call i32 @ConnectLeftDegenerate(%struct.TYPE_30__* %43, %struct.TYPE_32__* %44, %struct.TYPE_29__* %45)
  br label %150

47:                                               ; preds = %2
  %48 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = call i64 @VertLeq(i32 %50, i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %47
  %57 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  br label %60

58:                                               ; preds = %47
  %59 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  br label %60

60:                                               ; preds = %58, %56
  %61 = phi %struct.TYPE_32__* [ %57, %56 ], [ %59, %58 ]
  store %struct.TYPE_32__* %61, %struct.TYPE_32__** %7, align 8
  %62 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %71, label %66

66:                                               ; preds = %60
  %67 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %139

71:                                               ; preds = %66, %60
  %72 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %73 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %74 = icmp eq %struct.TYPE_32__* %72, %73
  br i1 %74, label %75, label %93

75:                                               ; preds = %71
  %76 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_33__*, %struct.TYPE_33__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_31__*, %struct.TYPE_31__** %79, align 8
  %81 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %81, i32 0, i32 2
  %83 = load %struct.TYPE_33__*, %struct.TYPE_33__** %82, align 8
  %84 = call %struct.TYPE_31__* @__gl_meshConnect(%struct.TYPE_31__* %80, %struct.TYPE_33__* %83)
  store %struct.TYPE_31__* %84, %struct.TYPE_31__** %10, align 8
  %85 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %86 = icmp eq %struct.TYPE_31__* %85, null
  br i1 %86, label %87, label %92

87:                                               ; preds = %75
  %88 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @longjmp(i32 %90, i32 1)
  br label %92

92:                                               ; preds = %87, %75
  br label %112

93:                                               ; preds = %71
  %94 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %95 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %94, i32 0, i32 1
  %96 = load %struct.TYPE_31__*, %struct.TYPE_31__** %95, align 8
  %97 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %97, i32 0, i32 0
  %99 = load %struct.TYPE_33__*, %struct.TYPE_33__** %98, align 8
  %100 = call %struct.TYPE_31__* @__gl_meshConnect(%struct.TYPE_31__* %96, %struct.TYPE_33__* %99)
  store %struct.TYPE_31__* %100, %struct.TYPE_31__** %12, align 8
  %101 = load %struct.TYPE_31__*, %struct.TYPE_31__** %12, align 8
  %102 = icmp eq %struct.TYPE_31__* %101, null
  br i1 %102, label %103, label %108

103:                                              ; preds = %93
  %104 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @longjmp(i32 %106, i32 1)
  br label %108

108:                                              ; preds = %103, %93
  %109 = load %struct.TYPE_31__*, %struct.TYPE_31__** %12, align 8
  %110 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %109, i32 0, i32 0
  %111 = load %struct.TYPE_31__*, %struct.TYPE_31__** %110, align 8
  store %struct.TYPE_31__* %111, %struct.TYPE_31__** %10, align 8
  br label %112

112:                                              ; preds = %108, %92
  %113 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %114 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %128

117:                                              ; preds = %112
  %118 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %119 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %120 = call i32 @FixUpperEdge(%struct.TYPE_32__* %118, %struct.TYPE_31__* %119)
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %127, label %122

122:                                              ; preds = %117
  %123 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %124 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @longjmp(i32 %125, i32 1)
  br label %127

127:                                              ; preds = %122, %117
  br label %135

128:                                              ; preds = %112
  %129 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %130 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %131 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %132 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %133 = call i32 @AddRegionBelow(%struct.TYPE_30__* %130, %struct.TYPE_32__* %131, %struct.TYPE_31__* %132)
  %134 = call i32 @ComputeWinding(%struct.TYPE_30__* %129, i32 %133)
  br label %135

135:                                              ; preds = %128, %127
  %136 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %137 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %138 = call i32 @SweepEvent(%struct.TYPE_30__* %136, %struct.TYPE_29__* %137)
  br label %150

139:                                              ; preds = %66
  %140 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %141 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %142 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %142, i32 0, i32 0
  %144 = load %struct.TYPE_33__*, %struct.TYPE_33__** %143, align 8
  %145 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %146 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %145, i32 0, i32 0
  %147 = load %struct.TYPE_33__*, %struct.TYPE_33__** %146, align 8
  %148 = load i32, i32* @TRUE, align 4
  %149 = call i32 @AddRightEdges(%struct.TYPE_30__* %140, %struct.TYPE_32__* %141, %struct.TYPE_33__* %144, %struct.TYPE_33__* %147, i32* null, i32 %148)
  br label %150

150:                                              ; preds = %42, %139, %135
  ret void
}

declare dso_local i64 @dictKey(i32) #1

declare dso_local i32 @dictSearch(i32, %struct.TYPE_32__*) #1

declare dso_local %struct.TYPE_32__* @RegionBelow(%struct.TYPE_32__*) #1

declare dso_local i64 @EdgeSign(i32, %struct.TYPE_29__*, i32) #1

declare dso_local i32 @ConnectLeftDegenerate(%struct.TYPE_30__*, %struct.TYPE_32__*, %struct.TYPE_29__*) #1

declare dso_local i64 @VertLeq(i32, i32) #1

declare dso_local %struct.TYPE_31__* @__gl_meshConnect(%struct.TYPE_31__*, %struct.TYPE_33__*) #1

declare dso_local i32 @longjmp(i32, i32) #1

declare dso_local i32 @FixUpperEdge(%struct.TYPE_32__*, %struct.TYPE_31__*) #1

declare dso_local i32 @ComputeWinding(%struct.TYPE_30__*, i32) #1

declare dso_local i32 @AddRegionBelow(%struct.TYPE_30__*, %struct.TYPE_32__*, %struct.TYPE_31__*) #1

declare dso_local i32 @SweepEvent(%struct.TYPE_30__*, %struct.TYPE_29__*) #1

declare dso_local i32 @AddRightEdges(%struct.TYPE_30__*, %struct.TYPE_32__*, %struct.TYPE_33__*, %struct.TYPE_33__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
