; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/extr_panels.c___update_disassembly_or_open.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/extr_panels.c___update_disassembly_or_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_18__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i32, i32, i32, i32 }

@PANEL_CMD_DISASSEMBLY = common dso_local global i32 0, align 4
@PANEL_TITLE_DISASSEMBLY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__update_disassembly_or_open(%struct.TYPE_19__* %0) #0 {
  %2 = alloca %struct.TYPE_19__*, align 8
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_18__*, align 8
  %16 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %2, align 8
  %17 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  store %struct.TYPE_17__* %19, %struct.TYPE_17__** %3, align 8
  store i32 1, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %20

20:                                               ; preds = %42, %1
  %21 = load i32, i32* %4, align 4
  %22 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp slt i32 %21, %24
  br i1 %25, label %26, label %45

26:                                               ; preds = %20
  %27 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %28 = load i32, i32* %4, align 4
  %29 = call %struct.TYPE_18__* @__get_panel(%struct.TYPE_17__* %27, i32 %28)
  store %struct.TYPE_18__* %29, %struct.TYPE_18__** %6, align 8
  %30 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %31 = load i32, i32* @PANEL_CMD_DISASSEMBLY, align 4
  %32 = call i64 @__check_panel_type(%struct.TYPE_18__* %30, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %26
  %35 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %36 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %37 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @__set_panel_addr(%struct.TYPE_19__* %35, %struct.TYPE_18__* %36, i32 %39)
  store i32 0, i32* %5, align 4
  br label %41

41:                                               ; preds = %34, %26
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %4, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %4, align 4
  br label %20

45:                                               ; preds = %20
  %46 = load i32, i32* %5, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %122

48:                                               ; preds = %45
  %49 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %50 = call %struct.TYPE_18__* @__get_panel(%struct.TYPE_17__* %49, i32 0)
  store %struct.TYPE_18__* %50, %struct.TYPE_18__** %7, align 8
  %51 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %8, align 4
  %57 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %9, align 4
  %63 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %10, align 4
  %69 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  store i32 %74, i32* %11, align 4
  %75 = load i32, i32* %8, align 4
  %76 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_16__*, %struct.TYPE_16__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = add nsw i32 %75, %81
  store i32 %82, i32* %12, align 4
  %83 = load i32, i32* %8, align 4
  %84 = load i32, i32* %10, align 4
  %85 = sdiv i32 %84, 2
  %86 = add nsw i32 %83, %85
  %87 = sub nsw i32 %86, 1
  store i32 %87, i32* %13, align 4
  %88 = load i32, i32* %12, align 4
  %89 = load i32, i32* %13, align 4
  %90 = sub nsw i32 %88, %89
  store i32 %90, i32* %14, align 4
  %91 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %92 = load i32, i32* @PANEL_TITLE_DISASSEMBLY, align 4
  %93 = load i32, i32* @PANEL_CMD_DISASSEMBLY, align 4
  %94 = call i32 @__insert_panel(%struct.TYPE_19__* %91, i32 0, i32 %92, i32 %93)
  %95 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %96 = call %struct.TYPE_18__* @__get_panel(%struct.TYPE_17__* %95, i32 0)
  store %struct.TYPE_18__* %96, %struct.TYPE_18__** %15, align 8
  %97 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %98 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %97, i32 0, i32 0
  %99 = load %struct.TYPE_16__*, %struct.TYPE_16__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %99, i32 0, i32 0
  %101 = load i32, i32* %8, align 4
  %102 = load i32, i32* %9, align 4
  %103 = load i32, i32* %10, align 4
  %104 = sdiv i32 %103, 2
  %105 = load i32, i32* %11, align 4
  %106 = call i32 @__set_geometry(%struct.TYPE_20__* %100, i32 %101, i32 %102, i32 %104, i32 %105)
  %107 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %108 = call %struct.TYPE_18__* @__get_panel(%struct.TYPE_17__* %107, i32 1)
  store %struct.TYPE_18__* %108, %struct.TYPE_18__** %16, align 8
  %109 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %110 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %109, i32 0, i32 0
  %111 = load %struct.TYPE_16__*, %struct.TYPE_16__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %111, i32 0, i32 0
  %113 = load i32, i32* %13, align 4
  %114 = load i32, i32* %9, align 4
  %115 = load i32, i32* %14, align 4
  %116 = load i32, i32* %11, align 4
  %117 = call i32 @__set_geometry(%struct.TYPE_20__* %112, i32 %113, i32 %114, i32 %115, i32 %116)
  %118 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %119 = call i32 @__set_cursor(%struct.TYPE_19__* %118, i32 0)
  %120 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %121 = call i32 @__set_curnode(%struct.TYPE_19__* %120, i32 0)
  br label %122

122:                                              ; preds = %48, %45
  %123 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %124 = call i32 @__set_refresh_all(%struct.TYPE_19__* %123, i32 0, i32 0)
  ret void
}

declare dso_local %struct.TYPE_18__* @__get_panel(%struct.TYPE_17__*, i32) #1

declare dso_local i64 @__check_panel_type(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @__set_panel_addr(%struct.TYPE_19__*, %struct.TYPE_18__*, i32) #1

declare dso_local i32 @__insert_panel(%struct.TYPE_19__*, i32, i32, i32) #1

declare dso_local i32 @__set_geometry(%struct.TYPE_20__*, i32, i32, i32, i32) #1

declare dso_local i32 @__set_cursor(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @__set_curnode(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @__set_refresh_all(%struct.TYPE_19__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
