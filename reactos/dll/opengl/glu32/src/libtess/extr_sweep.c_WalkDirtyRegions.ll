; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/glu32/src/libtess/extr_sweep.c_WalkDirtyRegions.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/glu32/src/libtess/extr_sweep.c_WalkDirtyRegions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i64, i32 }
%struct.TYPE_23__ = type { i64, %struct.TYPE_22__*, i64 }
%struct.TYPE_22__ = type { i64, i64 }

@FALSE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_21__*, %struct.TYPE_23__*)* @WalkDirtyRegions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @WalkDirtyRegions(%struct.TYPE_21__* %0, %struct.TYPE_23__* %1) #0 {
  %3 = alloca %struct.TYPE_21__*, align 8
  %4 = alloca %struct.TYPE_23__*, align 8
  %5 = alloca %struct.TYPE_23__*, align 8
  %6 = alloca %struct.TYPE_22__*, align 8
  %7 = alloca %struct.TYPE_22__*, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %3, align 8
  store %struct.TYPE_23__* %1, %struct.TYPE_23__** %4, align 8
  %8 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %9 = call %struct.TYPE_23__* @RegionBelow(%struct.TYPE_23__* %8)
  store %struct.TYPE_23__* %9, %struct.TYPE_23__** %5, align 8
  br label %10

10:                                               ; preds = %197, %2
  br label %11

11:                                               ; preds = %16, %10
  %12 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %11
  %17 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  store %struct.TYPE_23__* %17, %struct.TYPE_23__** %4, align 8
  %18 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %19 = call %struct.TYPE_23__* @RegionBelow(%struct.TYPE_23__* %18)
  store %struct.TYPE_23__* %19, %struct.TYPE_23__** %5, align 8
  br label %11

20:                                               ; preds = %11
  %21 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %38, label %25

25:                                               ; preds = %20
  %26 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  store %struct.TYPE_23__* %26, %struct.TYPE_23__** %5, align 8
  %27 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %28 = call %struct.TYPE_23__* @RegionAbove(%struct.TYPE_23__* %27)
  store %struct.TYPE_23__* %28, %struct.TYPE_23__** %4, align 8
  %29 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %30 = icmp eq %struct.TYPE_23__* %29, null
  br i1 %30, label %36, label %31

31:                                               ; preds = %25
  %32 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %31, %25
  br label %198

37:                                               ; preds = %31
  br label %38

38:                                               ; preds = %37, %20
  %39 = load i64, i64* @FALSE, align 8
  %40 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %40, i32 0, i32 2
  store i64 %39, i64* %41, align 8
  %42 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_22__*, %struct.TYPE_22__** %43, align 8
  store %struct.TYPE_22__* %44, %struct.TYPE_22__** %6, align 8
  %45 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_22__*, %struct.TYPE_22__** %46, align 8
  store %struct.TYPE_22__* %47, %struct.TYPE_22__** %7, align 8
  %48 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %50, %53
  br i1 %54, label %55, label %109

55:                                               ; preds = %38
  %56 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %57 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %58 = call i64 @CheckForLeftSplice(%struct.TYPE_21__* %56, %struct.TYPE_23__* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %108

60:                                               ; preds = %55
  %61 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %83

65:                                               ; preds = %60
  %66 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %67 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %68 = call i32 @DeleteRegion(%struct.TYPE_21__* %66, %struct.TYPE_23__* %67)
  %69 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %70 = call i32 @__gl_meshDelete(%struct.TYPE_22__* %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %77, label %72

72:                                               ; preds = %65
  %73 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @longjmp(i32 %75, i32 1)
  br label %77

77:                                               ; preds = %72, %65
  %78 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %79 = call %struct.TYPE_23__* @RegionBelow(%struct.TYPE_23__* %78)
  store %struct.TYPE_23__* %79, %struct.TYPE_23__** %5, align 8
  %80 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %80, i32 0, i32 1
  %82 = load %struct.TYPE_22__*, %struct.TYPE_22__** %81, align 8
  store %struct.TYPE_22__* %82, %struct.TYPE_22__** %7, align 8
  br label %107

83:                                               ; preds = %60
  %84 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %106

88:                                               ; preds = %83
  %89 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %90 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %91 = call i32 @DeleteRegion(%struct.TYPE_21__* %89, %struct.TYPE_23__* %90)
  %92 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %93 = call i32 @__gl_meshDelete(%struct.TYPE_22__* %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %100, label %95

95:                                               ; preds = %88
  %96 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @longjmp(i32 %98, i32 1)
  br label %100

100:                                              ; preds = %95, %88
  %101 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %102 = call %struct.TYPE_23__* @RegionAbove(%struct.TYPE_23__* %101)
  store %struct.TYPE_23__* %102, %struct.TYPE_23__** %4, align 8
  %103 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %103, i32 0, i32 1
  %105 = load %struct.TYPE_22__*, %struct.TYPE_22__** %104, align 8
  store %struct.TYPE_22__* %105, %struct.TYPE_22__** %6, align 8
  br label %106

106:                                              ; preds = %100, %83
  br label %107

107:                                              ; preds = %106, %77
  br label %108

108:                                              ; preds = %107, %55
  br label %109

109:                                              ; preds = %108, %38
  %110 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %114 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %112, %115
  br i1 %116, label %117, label %163

117:                                              ; preds = %109
  %118 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %122 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %120, %123
  br i1 %124, label %125, label %158

125:                                              ; preds = %117
  %126 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %158, label %130

130:                                              ; preds = %125
  %131 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %158, label %135

135:                                              ; preds = %130
  %136 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %137 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %140 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = icmp eq i64 %138, %141
  br i1 %142, label %151, label %143

143:                                              ; preds = %135
  %144 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %145 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %148 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = icmp eq i64 %146, %149
  br i1 %150, label %151, label %158

151:                                              ; preds = %143, %135
  %152 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %153 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %154 = call i64 @CheckForIntersect(%struct.TYPE_21__* %152, %struct.TYPE_23__* %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %157

156:                                              ; preds = %151
  br label %198

157:                                              ; preds = %151
  br label %162

158:                                              ; preds = %143, %130, %125, %117
  %159 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %160 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %161 = call i32 @CheckForRightSplice(%struct.TYPE_21__* %159, %struct.TYPE_23__* %160)
  br label %162

162:                                              ; preds = %158, %157
  br label %163

163:                                              ; preds = %162, %109
  %164 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %165 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %164, i32 0, i32 1
  %166 = load i64, i64* %165, align 8
  %167 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %168 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %167, i32 0, i32 1
  %169 = load i64, i64* %168, align 8
  %170 = icmp eq i64 %166, %169
  br i1 %170, label %171, label %197

171:                                              ; preds = %163
  %172 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %173 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %176 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = icmp eq i64 %174, %177
  br i1 %178, label %179, label %197

179:                                              ; preds = %171
  %180 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %181 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %182 = call i32 @AddWinding(%struct.TYPE_22__* %180, %struct.TYPE_22__* %181)
  %183 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %184 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %185 = call i32 @DeleteRegion(%struct.TYPE_21__* %183, %struct.TYPE_23__* %184)
  %186 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %187 = call i32 @__gl_meshDelete(%struct.TYPE_22__* %186)
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %194, label %189

189:                                              ; preds = %179
  %190 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %191 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 8
  %193 = call i32 @longjmp(i32 %192, i32 1)
  br label %194

194:                                              ; preds = %189, %179
  %195 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %196 = call %struct.TYPE_23__* @RegionAbove(%struct.TYPE_23__* %195)
  store %struct.TYPE_23__* %196, %struct.TYPE_23__** %4, align 8
  br label %197

197:                                              ; preds = %194, %171, %163
  br label %10

198:                                              ; preds = %156, %36
  ret void
}

declare dso_local %struct.TYPE_23__* @RegionBelow(%struct.TYPE_23__*) #1

declare dso_local %struct.TYPE_23__* @RegionAbove(%struct.TYPE_23__*) #1

declare dso_local i64 @CheckForLeftSplice(%struct.TYPE_21__*, %struct.TYPE_23__*) #1

declare dso_local i32 @DeleteRegion(%struct.TYPE_21__*, %struct.TYPE_23__*) #1

declare dso_local i32 @__gl_meshDelete(%struct.TYPE_22__*) #1

declare dso_local i32 @longjmp(i32, i32) #1

declare dso_local i64 @CheckForIntersect(%struct.TYPE_21__*, %struct.TYPE_23__*) #1

declare dso_local i32 @CheckForRightSplice(%struct.TYPE_21__*, %struct.TYPE_23__*) #1

declare dso_local i32 @AddWinding(%struct.TYPE_22__*, %struct.TYPE_22__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
