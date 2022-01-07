; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/glu32/src/libtess/extr_sweep.c_AddRightEdges.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/glu32/src/libtess/extr_sweep.c_AddRightEdges.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { i32 }
%struct.TYPE_28__ = type { i64, i8*, i32, %struct.TYPE_25__* }
%struct.TYPE_25__ = type { %struct.TYPE_27__*, %struct.TYPE_27__* }
%struct.TYPE_27__ = type { i64, i64, i32, %struct.TYPE_27__*, i32, i32 }

@TRUE = common dso_local global i8* null, align 8
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_26__*, %struct.TYPE_28__*, %struct.TYPE_27__*, %struct.TYPE_27__*, %struct.TYPE_27__*, i64)* @AddRightEdges to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @AddRightEdges(%struct.TYPE_26__* %0, %struct.TYPE_28__* %1, %struct.TYPE_27__* %2, %struct.TYPE_27__* %3, %struct.TYPE_27__* %4, i64 %5) #0 {
  %7 = alloca %struct.TYPE_26__*, align 8
  %8 = alloca %struct.TYPE_28__*, align 8
  %9 = alloca %struct.TYPE_27__*, align 8
  %10 = alloca %struct.TYPE_27__*, align 8
  %11 = alloca %struct.TYPE_27__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_28__*, align 8
  %14 = alloca %struct.TYPE_28__*, align 8
  %15 = alloca %struct.TYPE_27__*, align 8
  %16 = alloca %struct.TYPE_27__*, align 8
  %17 = alloca i32, align 4
  store %struct.TYPE_26__* %0, %struct.TYPE_26__** %7, align 8
  store %struct.TYPE_28__* %1, %struct.TYPE_28__** %8, align 8
  store %struct.TYPE_27__* %2, %struct.TYPE_27__** %9, align 8
  store %struct.TYPE_27__* %3, %struct.TYPE_27__** %10, align 8
  store %struct.TYPE_27__* %4, %struct.TYPE_27__** %11, align 8
  store i64 %5, i64* %12, align 8
  %18 = load i8*, i8** @TRUE, align 8
  %19 = ptrtoint i8* %18 to i32
  store i32 %19, i32* %17, align 4
  %20 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  store %struct.TYPE_27__* %20, %struct.TYPE_27__** %15, align 8
  br label %21

21:                                               ; preds = %39, %6
  %22 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %23 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %26 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %25, i32 0, i32 5
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @VertLeq(i64 %24, i32 %27)
  %29 = call i32 @assert(i32 %28)
  %30 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %31 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %32 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %33 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @AddRegionBelow(%struct.TYPE_26__* %30, %struct.TYPE_28__* %31, i32 %34)
  %36 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %37 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %36, i32 0, i32 3
  %38 = load %struct.TYPE_27__*, %struct.TYPE_27__** %37, align 8
  store %struct.TYPE_27__* %38, %struct.TYPE_27__** %15, align 8
  br label %39

39:                                               ; preds = %21
  %40 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %41 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %42 = icmp ne %struct.TYPE_27__* %40, %41
  br i1 %42, label %21, label %43

43:                                               ; preds = %39
  %44 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %45 = icmp eq %struct.TYPE_27__* %44, null
  br i1 %45, label %46, label %53

46:                                               ; preds = %43
  %47 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %48 = call %struct.TYPE_28__* @RegionBelow(%struct.TYPE_28__* %47)
  %49 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %48, i32 0, i32 3
  %50 = load %struct.TYPE_25__*, %struct.TYPE_25__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_27__*, %struct.TYPE_27__** %51, align 8
  store %struct.TYPE_27__* %52, %struct.TYPE_27__** %11, align 8
  br label %53

53:                                               ; preds = %46, %43
  %54 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  store %struct.TYPE_28__* %54, %struct.TYPE_28__** %14, align 8
  %55 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  store %struct.TYPE_27__* %55, %struct.TYPE_27__** %16, align 8
  br label %56

56:                                               ; preds = %146, %53
  %57 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %58 = call %struct.TYPE_28__* @RegionBelow(%struct.TYPE_28__* %57)
  store %struct.TYPE_28__* %58, %struct.TYPE_28__** %13, align 8
  %59 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %60 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %59, i32 0, i32 3
  %61 = load %struct.TYPE_25__*, %struct.TYPE_25__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_27__*, %struct.TYPE_27__** %62, align 8
  store %struct.TYPE_27__* %63, %struct.TYPE_27__** %15, align 8
  %64 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %65 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.TYPE_27__*, %struct.TYPE_27__** %16, align 8
  %68 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %66, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %56
  br label %150

72:                                               ; preds = %56
  %73 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %74 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %73, i32 0, i32 3
  %75 = load %struct.TYPE_27__*, %struct.TYPE_27__** %74, align 8
  %76 = load %struct.TYPE_27__*, %struct.TYPE_27__** %16, align 8
  %77 = icmp ne %struct.TYPE_27__* %75, %76
  br i1 %77, label %78, label %103

78:                                               ; preds = %72
  %79 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %80 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %83 = call i32 @__gl_meshSplice(i32 %81, %struct.TYPE_27__* %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %90, label %85

85:                                               ; preds = %78
  %86 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @longjmp(i32 %88, i32 1)
  br label %90

90:                                               ; preds = %85, %78
  %91 = load %struct.TYPE_27__*, %struct.TYPE_27__** %16, align 8
  %92 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %95 = call i32 @__gl_meshSplice(i32 %93, %struct.TYPE_27__* %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %102, label %97

97:                                               ; preds = %90
  %98 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @longjmp(i32 %100, i32 1)
  br label %102

102:                                              ; preds = %97, %90
  br label %103

103:                                              ; preds = %102, %72
  %104 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %105 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %108 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = sub nsw i64 %106, %109
  %111 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %112 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %111, i32 0, i32 0
  store i64 %110, i64* %112, align 8
  %113 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %114 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %115 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = call i32 @IsWindingInside(%struct.TYPE_26__* %113, i64 %116)
  %118 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %119 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %118, i32 0, i32 2
  store i32 %117, i32* %119, align 8
  %120 = load i8*, i8** @TRUE, align 8
  %121 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %122 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %121, i32 0, i32 1
  store i8* %120, i8** %122, align 8
  %123 = load i32, i32* %17, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %146, label %125

125:                                              ; preds = %103
  %126 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %127 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %128 = call i64 @CheckForRightSplice(%struct.TYPE_26__* %126, %struct.TYPE_28__* %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %146

130:                                              ; preds = %125
  %131 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %132 = load %struct.TYPE_27__*, %struct.TYPE_27__** %16, align 8
  %133 = call i32 @AddWinding(%struct.TYPE_27__* %131, %struct.TYPE_27__* %132)
  %134 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %135 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %136 = call i32 @DeleteRegion(%struct.TYPE_26__* %134, %struct.TYPE_28__* %135)
  %137 = load %struct.TYPE_27__*, %struct.TYPE_27__** %16, align 8
  %138 = call i32 @__gl_meshDelete(%struct.TYPE_27__* %137)
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %145, label %140

140:                                              ; preds = %130
  %141 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %142 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @longjmp(i32 %143, i32 1)
  br label %145

145:                                              ; preds = %140, %130
  br label %146

146:                                              ; preds = %145, %125, %103
  %147 = load i32, i32* @FALSE, align 4
  store i32 %147, i32* %17, align 4
  %148 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  store %struct.TYPE_28__* %148, %struct.TYPE_28__** %14, align 8
  %149 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  store %struct.TYPE_27__* %149, %struct.TYPE_27__** %16, align 8
  br label %56

150:                                              ; preds = %71
  %151 = load i8*, i8** @TRUE, align 8
  %152 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %153 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %152, i32 0, i32 1
  store i8* %151, i8** %153, align 8
  %154 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %155 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %158 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %157, i32 0, i32 1
  %159 = load i64, i64* %158, align 8
  %160 = sub nsw i64 %156, %159
  %161 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %162 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = icmp eq i64 %160, %163
  %165 = zext i1 %164 to i32
  %166 = call i32 @assert(i32 %165)
  %167 = load i64, i64* %12, align 8
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %173

169:                                              ; preds = %150
  %170 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %171 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %172 = call i32 @WalkDirtyRegions(%struct.TYPE_26__* %170, %struct.TYPE_28__* %171)
  br label %173

173:                                              ; preds = %169, %150
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @VertLeq(i64, i32) #1

declare dso_local i32 @AddRegionBelow(%struct.TYPE_26__*, %struct.TYPE_28__*, i32) #1

declare dso_local %struct.TYPE_28__* @RegionBelow(%struct.TYPE_28__*) #1

declare dso_local i32 @__gl_meshSplice(i32, %struct.TYPE_27__*) #1

declare dso_local i32 @longjmp(i32, i32) #1

declare dso_local i32 @IsWindingInside(%struct.TYPE_26__*, i64) #1

declare dso_local i64 @CheckForRightSplice(%struct.TYPE_26__*, %struct.TYPE_28__*) #1

declare dso_local i32 @AddWinding(%struct.TYPE_27__*, %struct.TYPE_27__*) #1

declare dso_local i32 @DeleteRegion(%struct.TYPE_26__*, %struct.TYPE_28__*) #1

declare dso_local i32 @__gl_meshDelete(%struct.TYPE_27__*) #1

declare dso_local i32 @WalkDirtyRegions(%struct.TYPE_26__*, %struct.TYPE_28__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
