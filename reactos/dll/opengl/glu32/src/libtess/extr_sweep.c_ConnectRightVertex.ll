; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/glu32/src/libtess/extr_sweep.c_ConnectRightVertex.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/glu32/src/libtess/extr_sweep.c_ConnectRightVertex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_32__ = type { i32, i32 }
%struct.TYPE_34__ = type { %struct.TYPE_33__* }
%struct.TYPE_33__ = type { i64, %struct.TYPE_31__*, %struct.TYPE_33__*, i32, %struct.TYPE_33__*, i32 }
%struct.TYPE_31__ = type { %struct.TYPE_30__* }
%struct.TYPE_30__ = type { i8* }

@FALSE = common dso_local global i8* null, align 8
@TRUE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_32__*, %struct.TYPE_34__*, %struct.TYPE_33__*)* @ConnectRightVertex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ConnectRightVertex(%struct.TYPE_32__* %0, %struct.TYPE_34__* %1, %struct.TYPE_33__* %2) #0 {
  %4 = alloca %struct.TYPE_32__*, align 8
  %5 = alloca %struct.TYPE_34__*, align 8
  %6 = alloca %struct.TYPE_33__*, align 8
  %7 = alloca %struct.TYPE_33__*, align 8
  %8 = alloca %struct.TYPE_33__*, align 8
  %9 = alloca %struct.TYPE_34__*, align 8
  %10 = alloca %struct.TYPE_33__*, align 8
  %11 = alloca %struct.TYPE_33__*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_32__* %0, %struct.TYPE_32__** %4, align 8
  store %struct.TYPE_34__* %1, %struct.TYPE_34__** %5, align 8
  store %struct.TYPE_33__* %2, %struct.TYPE_33__** %6, align 8
  %13 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %13, i32 0, i32 2
  %15 = load %struct.TYPE_33__*, %struct.TYPE_33__** %14, align 8
  store %struct.TYPE_33__* %15, %struct.TYPE_33__** %8, align 8
  %16 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %17 = call %struct.TYPE_34__* @RegionBelow(%struct.TYPE_34__* %16)
  store %struct.TYPE_34__* %17, %struct.TYPE_34__** %9, align 8
  %18 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_33__*, %struct.TYPE_33__** %19, align 8
  store %struct.TYPE_33__* %20, %struct.TYPE_33__** %10, align 8
  %21 = load %struct.TYPE_34__*, %struct.TYPE_34__** %9, align 8
  %22 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_33__*, %struct.TYPE_33__** %22, align 8
  store %struct.TYPE_33__* %23, %struct.TYPE_33__** %11, align 8
  %24 = load i8*, i8** @FALSE, align 8
  %25 = ptrtoint i8* %24 to i32
  store i32 %25, i32* %12, align 4
  %26 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %27 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.TYPE_33__*, %struct.TYPE_33__** %11, align 8
  %30 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %28, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %3
  %34 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %35 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %36 = call i32 @CheckForIntersect(%struct.TYPE_32__* %34, %struct.TYPE_34__* %35)
  br label %37

37:                                               ; preds = %33, %3
  %38 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %38, i32 0, i32 5
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @VertEq(i32 %40, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %80

46:                                               ; preds = %37
  %47 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %47, i32 0, i32 4
  %49 = load %struct.TYPE_33__*, %struct.TYPE_33__** %48, align 8
  %50 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %51 = call i32 @__gl_meshSplice(%struct.TYPE_33__* %49, %struct.TYPE_33__* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %58, label %53

53:                                               ; preds = %46
  %54 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @longjmp(i32 %56, i32 1)
  br label %58

58:                                               ; preds = %53, %46
  %59 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %60 = call %struct.TYPE_34__* @TopLeftRegion(%struct.TYPE_34__* %59)
  store %struct.TYPE_34__* %60, %struct.TYPE_34__** %5, align 8
  %61 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %62 = icmp eq %struct.TYPE_34__* %61, null
  br i1 %62, label %63, label %68

63:                                               ; preds = %58
  %64 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @longjmp(i32 %66, i32 1)
  br label %68

68:                                               ; preds = %63, %58
  %69 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %70 = call %struct.TYPE_34__* @RegionBelow(%struct.TYPE_34__* %69)
  %71 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_33__*, %struct.TYPE_33__** %71, align 8
  store %struct.TYPE_33__* %72, %struct.TYPE_33__** %8, align 8
  %73 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %74 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %75 = call %struct.TYPE_34__* @RegionBelow(%struct.TYPE_34__* %74)
  %76 = load %struct.TYPE_34__*, %struct.TYPE_34__** %9, align 8
  %77 = call %struct.TYPE_33__* @FinishLeftRegions(%struct.TYPE_32__* %73, %struct.TYPE_34__* %75, %struct.TYPE_34__* %76)
  %78 = load i8*, i8** @TRUE, align 8
  %79 = ptrtoint i8* %78 to i32
  store i32 %79, i32* %12, align 4
  br label %80

80:                                               ; preds = %68, %37
  %81 = load %struct.TYPE_33__*, %struct.TYPE_33__** %11, align 8
  %82 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %81, i32 0, i32 5
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i64 @VertEq(i32 %83, i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %107

89:                                               ; preds = %80
  %90 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %91 = load %struct.TYPE_33__*, %struct.TYPE_33__** %11, align 8
  %92 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %91, i32 0, i32 4
  %93 = load %struct.TYPE_33__*, %struct.TYPE_33__** %92, align 8
  %94 = call i32 @__gl_meshSplice(%struct.TYPE_33__* %90, %struct.TYPE_33__* %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %101, label %96

96:                                               ; preds = %89
  %97 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @longjmp(i32 %99, i32 1)
  br label %101

101:                                              ; preds = %96, %89
  %102 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %103 = load %struct.TYPE_34__*, %struct.TYPE_34__** %9, align 8
  %104 = call %struct.TYPE_33__* @FinishLeftRegions(%struct.TYPE_32__* %102, %struct.TYPE_34__* %103, %struct.TYPE_34__* null)
  store %struct.TYPE_33__* %104, %struct.TYPE_33__** %6, align 8
  %105 = load i8*, i8** @TRUE, align 8
  %106 = ptrtoint i8* %105 to i32
  store i32 %106, i32* %12, align 4
  br label %107

107:                                              ; preds = %101, %80
  %108 = load i32, i32* %12, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %120

110:                                              ; preds = %107
  %111 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %112 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %113 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %113, i32 0, i32 2
  %115 = load %struct.TYPE_33__*, %struct.TYPE_33__** %114, align 8
  %116 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %117 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %118 = load i8*, i8** @TRUE, align 8
  %119 = call i32 @AddRightEdges(%struct.TYPE_32__* %111, %struct.TYPE_34__* %112, %struct.TYPE_33__* %115, %struct.TYPE_33__* %116, %struct.TYPE_33__* %117, i8* %118)
  br label %170

120:                                              ; preds = %107
  %121 = load %struct.TYPE_33__*, %struct.TYPE_33__** %11, align 8
  %122 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %121, i32 0, i32 5
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %125 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %124, i32 0, i32 5
  %126 = load i32, i32* %125, align 8
  %127 = call i64 @VertLeq(i32 %123, i32 %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %133

129:                                              ; preds = %120
  %130 = load %struct.TYPE_33__*, %struct.TYPE_33__** %11, align 8
  %131 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %130, i32 0, i32 4
  %132 = load %struct.TYPE_33__*, %struct.TYPE_33__** %131, align 8
  store %struct.TYPE_33__* %132, %struct.TYPE_33__** %7, align 8
  br label %135

133:                                              ; preds = %120
  %134 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  store %struct.TYPE_33__* %134, %struct.TYPE_33__** %7, align 8
  br label %135

135:                                              ; preds = %133, %129
  %136 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %137 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %136, i32 0, i32 3
  %138 = load i32, i32* %137, align 8
  %139 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %140 = call %struct.TYPE_33__* @__gl_meshConnect(i32 %138, %struct.TYPE_33__* %139)
  store %struct.TYPE_33__* %140, %struct.TYPE_33__** %7, align 8
  %141 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %142 = icmp eq %struct.TYPE_33__* %141, null
  br i1 %142, label %143, label %148

143:                                              ; preds = %135
  %144 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %145 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @longjmp(i32 %146, i32 1)
  br label %148

148:                                              ; preds = %143, %135
  %149 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %150 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %151 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %152 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %153 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %152, i32 0, i32 2
  %154 = load %struct.TYPE_33__*, %struct.TYPE_33__** %153, align 8
  %155 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %156 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %155, i32 0, i32 2
  %157 = load %struct.TYPE_33__*, %struct.TYPE_33__** %156, align 8
  %158 = load i8*, i8** @FALSE, align 8
  %159 = call i32 @AddRightEdges(%struct.TYPE_32__* %149, %struct.TYPE_34__* %150, %struct.TYPE_33__* %151, %struct.TYPE_33__* %154, %struct.TYPE_33__* %157, i8* %158)
  %160 = load i8*, i8** @TRUE, align 8
  %161 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %162 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %161, i32 0, i32 1
  %163 = load %struct.TYPE_31__*, %struct.TYPE_31__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %163, i32 0, i32 0
  %165 = load %struct.TYPE_30__*, %struct.TYPE_30__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %165, i32 0, i32 0
  store i8* %160, i8** %166, align 8
  %167 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %168 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %169 = call i32 @WalkDirtyRegions(%struct.TYPE_32__* %167, %struct.TYPE_34__* %168)
  br label %170

170:                                              ; preds = %148, %110
  ret void
}

declare dso_local %struct.TYPE_34__* @RegionBelow(%struct.TYPE_34__*) #1

declare dso_local i32 @CheckForIntersect(%struct.TYPE_32__*, %struct.TYPE_34__*) #1

declare dso_local i64 @VertEq(i32, i32) #1

declare dso_local i32 @__gl_meshSplice(%struct.TYPE_33__*, %struct.TYPE_33__*) #1

declare dso_local i32 @longjmp(i32, i32) #1

declare dso_local %struct.TYPE_34__* @TopLeftRegion(%struct.TYPE_34__*) #1

declare dso_local %struct.TYPE_33__* @FinishLeftRegions(%struct.TYPE_32__*, %struct.TYPE_34__*, %struct.TYPE_34__*) #1

declare dso_local i32 @AddRightEdges(%struct.TYPE_32__*, %struct.TYPE_34__*, %struct.TYPE_33__*, %struct.TYPE_33__*, %struct.TYPE_33__*, i8*) #1

declare dso_local i64 @VertLeq(i32, i32) #1

declare dso_local %struct.TYPE_33__* @__gl_meshConnect(i32, %struct.TYPE_33__*) #1

declare dso_local i32 @WalkDirtyRegions(%struct.TYPE_32__*, %struct.TYPE_34__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
