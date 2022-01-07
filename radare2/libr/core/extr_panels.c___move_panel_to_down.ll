; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/extr_panels.c___move_panel_to_down.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/extr_panels.c___move_panel_to_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, %struct.TYPE_15__** }
%struct.TYPE_15__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32, i32, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__move_panel_to_down(%struct.TYPE_16__* %0, %struct.TYPE_15__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_15__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %4, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %5, align 8
  store i32 %2, i32* %6, align 4
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  store %struct.TYPE_14__* %18, %struct.TYPE_14__** %7, align 8
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @__shrink_panels_forward(%struct.TYPE_16__* %19, i32 %20)
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %24, align 8
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = sub nsw i32 %28, 1
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %25, i64 %30
  store %struct.TYPE_15__* %22, %struct.TYPE_15__** %31, align 8
  %32 = call i32 @r_cons_get_size(i32* %8)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %8, align 4
  %34 = sdiv i32 %33, 2
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* %10, align 4
  %37 = sub nsw i32 %35, %36
  store i32 %37, i32* %11, align 4
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 0
  %42 = load i32, i32* %10, align 4
  %43 = sub nsw i32 %42, 1
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* %10, align 4
  %46 = sub nsw i32 %45, 1
  %47 = call i32 @__set_geometry(%struct.TYPE_17__* %41, i32 0, i32 %43, i32 %44, i32 %46)
  store i32 0, i32* %12, align 4
  br label %48

48:                                               ; preds = %108, %3
  %49 = load i32, i32* %12, align 4
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = sub nsw i32 %52, 1
  %54 = icmp slt i32 %49, %53
  br i1 %54, label %55, label %111

55:                                               ; preds = %48
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %57 = load i32, i32* %12, align 4
  %58 = call %struct.TYPE_15__* @__get_panel(%struct.TYPE_14__* %56, i32 %57)
  store %struct.TYPE_15__* %58, %struct.TYPE_15__** %13, align 8
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %62, i32 0, i32 3
  %64 = load i64, i64* %63, align 8
  %65 = sitofp i64 %64 to double
  %66 = load i32, i32* %8, align 4
  %67 = sitofp i32 %66 to double
  %68 = fdiv double %65, %67
  %69 = load i32, i32* %11, align 4
  %70 = sitofp i32 %69 to double
  %71 = fmul double %68, %70
  %72 = fadd double %71, 1.000000e+00
  %73 = fptosi double %72 to i32
  store i32 %73, i32* %14, align 4
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = sitofp i64 %79 to double
  %81 = load i32, i32* %8, align 4
  %82 = sitofp i32 %81 to double
  %83 = fdiv double %80, %82
  %84 = load i32, i32* %11, align 4
  %85 = sitofp i32 %84 to double
  %86 = fmul double %83, %85
  %87 = fadd double %86, 1.000000e+00
  %88 = fptosi double %87 to i32
  store i32 %88, i32* %15, align 4
  %89 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %90 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %94 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_13__*, %struct.TYPE_13__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* %14, align 4
  %100 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %101 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %100, i32 0, i32 0
  %102 = load %struct.TYPE_13__*, %struct.TYPE_13__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* %15, align 4
  %107 = call i32 @__set_geometry(%struct.TYPE_17__* %92, i32 %98, i32 %99, i32 %105, i32 %106)
  br label %108

108:                                              ; preds = %55
  %109 = load i32, i32* %12, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %12, align 4
  br label %48

111:                                              ; preds = %48
  %112 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %113 = call i32 @__fix_layout(%struct.TYPE_16__* %112)
  %114 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %115 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %116 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = sub nsw i32 %117, 1
  %119 = call i32 @__set_curnode(%struct.TYPE_16__* %114, i32 %118)
  ret void
}

declare dso_local i32 @__shrink_panels_forward(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @r_cons_get_size(i32*) #1

declare dso_local i32 @__set_geometry(%struct.TYPE_17__*, i32, i32, i32, i32) #1

declare dso_local %struct.TYPE_15__* @__get_panel(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @__fix_layout(%struct.TYPE_16__*) #1

declare dso_local i32 @__set_curnode(%struct.TYPE_16__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
