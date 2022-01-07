; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/extr_panels.c___move_panel_to_up.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/extr_panels.c___move_panel_to_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, %struct.TYPE_15__** }
%struct.TYPE_15__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32, i32, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__move_panel_to_up(%struct.TYPE_16__* %0, %struct.TYPE_15__* %1, i32 %2) #0 {
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
  %21 = call i32 @__shrink_panels_backward(%struct.TYPE_16__* %19, i32 %20)
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %25, i64 0
  store %struct.TYPE_15__* %22, %struct.TYPE_15__** %26, align 8
  %27 = call i32 @r_cons_get_size(i32* %8)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %8, align 4
  %29 = sdiv i32 %28, 2
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %10, align 4
  %32 = sub nsw i32 %30, %31
  store i32 %32, i32* %11, align 4
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 0
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* %10, align 4
  %39 = sub nsw i32 %38, 1
  %40 = call i32 @__set_geometry(%struct.TYPE_17__* %36, i32 0, i32 1, i32 %37, i32 %39)
  store i32 1, i32* %12, align 4
  br label %41

41:                                               ; preds = %102, %3
  %42 = load i32, i32* %12, align 4
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp slt i32 %42, %45
  br i1 %46, label %47, label %105

47:                                               ; preds = %41
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %49 = load i32, i32* %12, align 4
  %50 = call %struct.TYPE_15__* @__get_panel(%struct.TYPE_14__* %48, i32 %49)
  store %struct.TYPE_15__* %50, %struct.TYPE_15__** %13, align 8
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %54, i32 0, i32 3
  %56 = load i64, i64* %55, align 8
  %57 = sitofp i64 %56 to double
  %58 = load i32, i32* %8, align 4
  %59 = sitofp i32 %58 to double
  %60 = fdiv double %57, %59
  %61 = load i32, i32* %11, align 4
  %62 = sitofp i32 %61 to double
  %63 = fmul double %60, %62
  %64 = load i32, i32* %10, align 4
  %65 = sitofp i32 %64 to double
  %66 = fadd double %63, %65
  %67 = fptosi double %66 to i32
  store i32 %67, i32* %14, align 4
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = sitofp i64 %73 to double
  %75 = load i32, i32* %8, align 4
  %76 = sitofp i32 %75 to double
  %77 = fdiv double %74, %76
  %78 = load i32, i32* %11, align 4
  %79 = sitofp i32 %78 to double
  %80 = fmul double %77, %79
  %81 = fadd double %80, 1.000000e+00
  %82 = fptosi double %81 to i32
  store i32 %82, i32* %15, align 4
  %83 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %84 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %88 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* %14, align 4
  %94 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %95 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %94, i32 0, i32 0
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* %15, align 4
  %101 = call i32 @__set_geometry(%struct.TYPE_17__* %86, i32 %92, i32 %93, i32 %99, i32 %100)
  br label %102

102:                                              ; preds = %47
  %103 = load i32, i32* %12, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %12, align 4
  br label %41

105:                                              ; preds = %41
  %106 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %107 = call i32 @__fix_layout(%struct.TYPE_16__* %106)
  %108 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %109 = call i32 @__set_curnode(%struct.TYPE_16__* %108, i32 0)
  ret void
}

declare dso_local i32 @__shrink_panels_backward(%struct.TYPE_16__*, i32) #1

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
