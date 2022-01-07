; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/glu32/src/libtess/extr_sweep.c_CheckForRightSplice.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/glu32/src/libtess/extr_sweep.c_CheckForRightSplice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32, i32 }
%struct.TYPE_24__ = type { i32, %struct.TYPE_23__* }
%struct.TYPE_23__ = type { %struct.TYPE_23__*, i32, %struct.TYPE_25__*, i32 }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_21__ = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_22__*, %struct.TYPE_24__*)* @CheckForRightSplice to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CheckForRightSplice(%struct.TYPE_22__* %0, %struct.TYPE_24__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_22__*, align 8
  %5 = alloca %struct.TYPE_24__*, align 8
  %6 = alloca %struct.TYPE_24__*, align 8
  %7 = alloca %struct.TYPE_23__*, align 8
  %8 = alloca %struct.TYPE_23__*, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %4, align 8
  store %struct.TYPE_24__* %1, %struct.TYPE_24__** %5, align 8
  %9 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %10 = call %struct.TYPE_24__* @RegionBelow(%struct.TYPE_24__* %9)
  store %struct.TYPE_24__* %10, %struct.TYPE_24__** %6, align 8
  %11 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  store %struct.TYPE_23__* %13, %struct.TYPE_23__** %7, align 8
  %14 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  store %struct.TYPE_23__* %16, %struct.TYPE_23__** %8, align 8
  %17 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %17, i32 0, i32 2
  %19 = load %struct.TYPE_25__*, %struct.TYPE_25__** %18, align 8
  %20 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %20, i32 0, i32 2
  %22 = load %struct.TYPE_25__*, %struct.TYPE_25__** %21, align 8
  %23 = call i64 @VertLeq(%struct.TYPE_25__* %19, %struct.TYPE_25__* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %103

25:                                               ; preds = %2
  %26 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %29, i32 0, i32 2
  %31 = load %struct.TYPE_25__*, %struct.TYPE_25__** %30, align 8
  %32 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %32, i32 0, i32 2
  %34 = load %struct.TYPE_25__*, %struct.TYPE_25__** %33, align 8
  %35 = call i64 @EdgeSign(i32 %28, %struct.TYPE_25__* %31, %struct.TYPE_25__* %34)
  %36 = icmp sgt i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %25
  %38 = load i32, i32* @FALSE, align 4
  store i32 %38, i32* %3, align 4
  br label %149

39:                                               ; preds = %25
  %40 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %40, i32 0, i32 2
  %42 = load %struct.TYPE_25__*, %struct.TYPE_25__** %41, align 8
  %43 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %43, i32 0, i32 2
  %45 = load %struct.TYPE_25__*, %struct.TYPE_25__** %44, align 8
  %46 = call i32 @VertEq(%struct.TYPE_25__* %42, %struct.TYPE_25__* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %77, label %48

48:                                               ; preds = %39
  %49 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = call i32* @__gl_meshSplitEdge(i32 %51)
  %53 = icmp eq i32* %52, null
  br i1 %53, label %54, label %59

54:                                               ; preds = %48
  %55 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @longjmp(i32 %57, i32 1)
  br label %59

59:                                               ; preds = %54, %48
  %60 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %61 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_23__*, %struct.TYPE_23__** %62, align 8
  %64 = call i32 @__gl_meshSplice(%struct.TYPE_23__* %60, %struct.TYPE_23__* %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %71, label %66

66:                                               ; preds = %59
  %67 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @longjmp(i32 %69, i32 1)
  br label %71

71:                                               ; preds = %66, %59
  %72 = load i32, i32* @TRUE, align 4
  %73 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 8
  %75 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %75, i32 0, i32 0
  store i32 %72, i32* %76, align 8
  br label %102

77:                                               ; preds = %39
  %78 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %78, i32 0, i32 2
  %80 = load %struct.TYPE_25__*, %struct.TYPE_25__** %79, align 8
  %81 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %81, i32 0, i32 2
  %83 = load %struct.TYPE_25__*, %struct.TYPE_25__** %82, align 8
  %84 = icmp ne %struct.TYPE_25__* %80, %83
  br i1 %84, label %85, label %101

85:                                               ; preds = %77
  %86 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %89, i32 0, i32 2
  %91 = load %struct.TYPE_25__*, %struct.TYPE_25__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @pqDelete(i32 %88, i32 %93)
  %95 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %96 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %96, i32 0, i32 0
  %98 = load %struct.TYPE_23__*, %struct.TYPE_23__** %97, align 8
  %99 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %100 = call i32 @SpliceMergeVertices(%struct.TYPE_22__* %95, %struct.TYPE_23__* %98, %struct.TYPE_23__* %99)
  br label %101

101:                                              ; preds = %85, %77
  br label %102

102:                                              ; preds = %101, %71
  br label %147

103:                                              ; preds = %2
  %104 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %105 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %108 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %107, i32 0, i32 2
  %109 = load %struct.TYPE_25__*, %struct.TYPE_25__** %108, align 8
  %110 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %111 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %110, i32 0, i32 2
  %112 = load %struct.TYPE_25__*, %struct.TYPE_25__** %111, align 8
  %113 = call i64 @EdgeSign(i32 %106, %struct.TYPE_25__* %109, %struct.TYPE_25__* %112)
  %114 = icmp slt i64 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %103
  %116 = load i32, i32* @FALSE, align 4
  store i32 %116, i32* %3, align 4
  br label %149

117:                                              ; preds = %103
  %118 = load i32, i32* @TRUE, align 4
  %119 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %119, i32 0, i32 0
  store i32 %118, i32* %120, align 8
  %121 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %122 = call %struct.TYPE_21__* @RegionAbove(%struct.TYPE_24__* %121)
  %123 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %122, i32 0, i32 0
  store i32 %118, i32* %123, align 4
  %124 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %125 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = call i32* @__gl_meshSplitEdge(i32 %126)
  %128 = icmp eq i32* %127, null
  br i1 %128, label %129, label %134

129:                                              ; preds = %117
  %130 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @longjmp(i32 %132, i32 1)
  br label %134

134:                                              ; preds = %129, %117
  %135 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %136 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %135, i32 0, i32 0
  %137 = load %struct.TYPE_23__*, %struct.TYPE_23__** %136, align 8
  %138 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %139 = call i32 @__gl_meshSplice(%struct.TYPE_23__* %137, %struct.TYPE_23__* %138)
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %146, label %141

141:                                              ; preds = %134
  %142 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @longjmp(i32 %144, i32 1)
  br label %146

146:                                              ; preds = %141, %134
  br label %147

147:                                              ; preds = %146, %102
  %148 = load i32, i32* @TRUE, align 4
  store i32 %148, i32* %3, align 4
  br label %149

149:                                              ; preds = %147, %115, %37
  %150 = load i32, i32* %3, align 4
  ret i32 %150
}

declare dso_local %struct.TYPE_24__* @RegionBelow(%struct.TYPE_24__*) #1

declare dso_local i64 @VertLeq(%struct.TYPE_25__*, %struct.TYPE_25__*) #1

declare dso_local i64 @EdgeSign(i32, %struct.TYPE_25__*, %struct.TYPE_25__*) #1

declare dso_local i32 @VertEq(%struct.TYPE_25__*, %struct.TYPE_25__*) #1

declare dso_local i32* @__gl_meshSplitEdge(i32) #1

declare dso_local i32 @longjmp(i32, i32) #1

declare dso_local i32 @__gl_meshSplice(%struct.TYPE_23__*, %struct.TYPE_23__*) #1

declare dso_local i32 @pqDelete(i32, i32) #1

declare dso_local i32 @SpliceMergeVertices(%struct.TYPE_22__*, %struct.TYPE_23__*, %struct.TYPE_23__*) #1

declare dso_local %struct.TYPE_21__* @RegionAbove(%struct.TYPE_24__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
