; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/extr_panels.c___default_panel_print.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/extr_panels.c___default_panel_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.TYPE_17__*, i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_18__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32 (%struct.TYPE_19__*, %struct.TYPE_18__*)*, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__default_panel_print(%struct.TYPE_19__* %0, %struct.TYPE_18__* %1) #0 {
  %3 = alloca %struct.TYPE_19__*, align 8
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %3, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %4, align 8
  %6 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %6, i32 0, i32 0
  %8 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = call %struct.TYPE_18__* @__get_cur_panel(i32 %14)
  %16 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %17 = icmp eq %struct.TYPE_18__* %15, %16
  %18 = zext i1 %17 to i32
  %19 = and i32 %11, %18
  %20 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %22, i32 0, i32 0
  store i32 %19, i32* %23, align 4
  %24 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %2
  %31 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %32 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %33 = call i32 @__update_help_contents(%struct.TYPE_19__* %31, %struct.TYPE_18__* %32)
  %34 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %35 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %36 = call i32 @__update_help_title(%struct.TYPE_19__* %34, %struct.TYPE_18__* %35)
  br label %57

37:                                               ; preds = %2
  %38 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %56

44:                                               ; preds = %37
  %45 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %47, i32 0, i32 0
  %49 = load i32 (%struct.TYPE_19__*, %struct.TYPE_18__*)*, i32 (%struct.TYPE_19__*, %struct.TYPE_18__*)** %48, align 8
  %50 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %51 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %52 = call i32 %49(%struct.TYPE_19__* %50, %struct.TYPE_18__* %51)
  %53 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %54 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %55 = call i32 @__update_panel_title(%struct.TYPE_19__* %53, %struct.TYPE_18__* %54)
  br label %56

56:                                               ; preds = %44, %37
  br label %57

57:                                               ; preds = %56, %30
  %58 = load i32, i32* %5, align 4
  %59 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_17__*, %struct.TYPE_17__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %61, i32 0, i32 0
  store i32 %58, i32* %62, align 4
  ret void
}

declare dso_local %struct.TYPE_18__* @__get_cur_panel(i32) #1

declare dso_local i32 @__update_help_contents(%struct.TYPE_19__*, %struct.TYPE_18__*) #1

declare dso_local i32 @__update_help_title(%struct.TYPE_19__*, %struct.TYPE_18__*) #1

declare dso_local i32 @__update_panel_title(%struct.TYPE_19__*, %struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
