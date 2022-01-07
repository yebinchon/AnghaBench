; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/glu32/src/libtess/extr_mesh.c___gl_meshUnion.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/glu32/src/libtess/extr_mesh.c___gl_meshUnion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { %struct.TYPE_21__, %struct.TYPE_19__, %struct.TYPE_22__ }
%struct.TYPE_21__ = type { %struct.TYPE_18__*, %struct.TYPE_21__* }
%struct.TYPE_18__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { %struct.TYPE_21__* }
%struct.TYPE_19__ = type { %struct.TYPE_15__*, %struct.TYPE_19__* }
%struct.TYPE_15__ = type { %struct.TYPE_19__* }
%struct.TYPE_22__ = type { %struct.TYPE_14__*, %struct.TYPE_22__* }
%struct.TYPE_14__ = type { %struct.TYPE_22__* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_20__* @__gl_meshUnion(%struct.TYPE_20__* %0, %struct.TYPE_20__* %1) #0 {
  %3 = alloca %struct.TYPE_20__*, align 8
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca %struct.TYPE_22__*, align 8
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca %struct.TYPE_21__*, align 8
  %8 = alloca %struct.TYPE_22__*, align 8
  %9 = alloca %struct.TYPE_19__*, align 8
  %10 = alloca %struct.TYPE_21__*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %3, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %4, align 8
  %11 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %11, i32 0, i32 2
  store %struct.TYPE_22__* %12, %struct.TYPE_22__** %5, align 8
  %13 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %13, i32 0, i32 1
  store %struct.TYPE_19__* %14, %struct.TYPE_19__** %6, align 8
  %15 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %15, i32 0, i32 0
  store %struct.TYPE_21__* %16, %struct.TYPE_21__** %7, align 8
  %17 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %17, i32 0, i32 2
  store %struct.TYPE_22__* %18, %struct.TYPE_22__** %8, align 8
  %19 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %19, i32 0, i32 1
  store %struct.TYPE_19__* %20, %struct.TYPE_19__** %9, align 8
  %21 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %21, i32 0, i32 0
  store %struct.TYPE_21__* %22, %struct.TYPE_21__** %10, align 8
  %23 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_22__*, %struct.TYPE_22__** %24, align 8
  %26 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %27 = icmp ne %struct.TYPE_22__* %25, %26
  br i1 %27, label %28, label %53

28:                                               ; preds = %2
  %29 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_22__*, %struct.TYPE_22__** %30, align 8
  %32 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 0
  store %struct.TYPE_22__* %31, %struct.TYPE_22__** %35, align 8
  %36 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %37, align 8
  %39 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_22__*, %struct.TYPE_22__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %41, i32 0, i32 0
  store %struct.TYPE_14__* %38, %struct.TYPE_14__** %42, align 8
  %43 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %44 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 0
  store %struct.TYPE_22__* %43, %struct.TYPE_22__** %47, align 8
  %48 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %49, align 8
  %51 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %51, i32 0, i32 0
  store %struct.TYPE_14__* %50, %struct.TYPE_14__** %52, align 8
  br label %53

53:                                               ; preds = %28, %2
  %54 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %54, i32 0, i32 1
  %56 = load %struct.TYPE_19__*, %struct.TYPE_19__** %55, align 8
  %57 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %58 = icmp ne %struct.TYPE_19__* %56, %57
  br i1 %58, label %59, label %84

59:                                               ; preds = %53
  %60 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %60, i32 0, i32 1
  %62 = load %struct.TYPE_19__*, %struct.TYPE_19__** %61, align 8
  %63 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %65, i32 0, i32 0
  store %struct.TYPE_19__* %62, %struct.TYPE_19__** %66, align 8
  %67 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %68, align 8
  %70 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %71 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %70, i32 0, i32 1
  %72 = load %struct.TYPE_19__*, %struct.TYPE_19__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %72, i32 0, i32 0
  store %struct.TYPE_15__* %69, %struct.TYPE_15__** %73, align 8
  %74 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %75 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %76 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 0
  store %struct.TYPE_19__* %74, %struct.TYPE_19__** %78, align 8
  %79 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %80, align 8
  %82 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %82, i32 0, i32 0
  store %struct.TYPE_15__* %81, %struct.TYPE_15__** %83, align 8
  br label %84

84:                                               ; preds = %59, %53
  %85 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %86 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %85, i32 0, i32 1
  %87 = load %struct.TYPE_21__*, %struct.TYPE_21__** %86, align 8
  %88 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %89 = icmp ne %struct.TYPE_21__* %87, %88
  br i1 %89, label %90, label %131

90:                                               ; preds = %84
  %91 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %92 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %91, i32 0, i32 1
  %93 = load %struct.TYPE_21__*, %struct.TYPE_21__** %92, align 8
  %94 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %94, i32 0, i32 0
  %96 = load %struct.TYPE_18__*, %struct.TYPE_18__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %96, i32 0, i32 0
  %98 = load %struct.TYPE_17__*, %struct.TYPE_17__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_16__*, %struct.TYPE_16__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %100, i32 0, i32 0
  store %struct.TYPE_21__* %93, %struct.TYPE_21__** %101, align 8
  %102 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %103 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %102, i32 0, i32 0
  %104 = load %struct.TYPE_18__*, %struct.TYPE_18__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %104, i32 0, i32 0
  %106 = load %struct.TYPE_17__*, %struct.TYPE_17__** %105, align 8
  %107 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %108 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %107, i32 0, i32 1
  %109 = load %struct.TYPE_21__*, %struct.TYPE_21__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %109, i32 0, i32 0
  %111 = load %struct.TYPE_18__*, %struct.TYPE_18__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %111, i32 0, i32 0
  store %struct.TYPE_17__* %106, %struct.TYPE_17__** %112, align 8
  %113 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %114 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %115 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %114, i32 0, i32 0
  %116 = load %struct.TYPE_18__*, %struct.TYPE_18__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %116, i32 0, i32 0
  %118 = load %struct.TYPE_17__*, %struct.TYPE_17__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %118, i32 0, i32 0
  %120 = load %struct.TYPE_16__*, %struct.TYPE_16__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %120, i32 0, i32 0
  store %struct.TYPE_21__* %113, %struct.TYPE_21__** %121, align 8
  %122 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %123 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %122, i32 0, i32 0
  %124 = load %struct.TYPE_18__*, %struct.TYPE_18__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %124, i32 0, i32 0
  %126 = load %struct.TYPE_17__*, %struct.TYPE_17__** %125, align 8
  %127 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %128 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %127, i32 0, i32 0
  %129 = load %struct.TYPE_18__*, %struct.TYPE_18__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %129, i32 0, i32 0
  store %struct.TYPE_17__* %126, %struct.TYPE_17__** %130, align 8
  br label %131

131:                                              ; preds = %90, %84
  %132 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %133 = call i32 @memFree(%struct.TYPE_20__* %132)
  %134 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  ret %struct.TYPE_20__* %134
}

declare dso_local i32 @memFree(%struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
