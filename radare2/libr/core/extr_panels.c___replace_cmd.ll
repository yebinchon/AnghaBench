; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/extr_panels.c___replace_cmd.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/extr_panels.c___replace_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, i32* }
%struct.TYPE_19__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32, i8*, i8* }

@RPanelModel = common dso_local global i32 0, align 4
@PANEL_TYPE_DEFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__replace_cmd(%struct.TYPE_20__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_19__*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %9, i32 0, i32 1
  %11 = load i32*, i32** %10, align 8
  store i32* %11, i32** %7, align 8
  %12 = load i32*, i32** %7, align 8
  %13 = call %struct.TYPE_19__* @__get_cur_panel(i32* %12)
  store %struct.TYPE_19__* %13, %struct.TYPE_19__** %8, align 8
  %14 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %15 = call i32 @__free_panel_model(%struct.TYPE_19__* %14)
  %16 = load i32, i32* @RPanelModel, align 4
  %17 = call %struct.TYPE_18__* @R_NEW0(i32 %16)
  %18 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %18, i32 0, i32 0
  store %struct.TYPE_18__* %17, %struct.TYPE_18__** %19, align 8
  %20 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_18__*, %struct.TYPE_18__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %22, i32 0, i32 2
  %24 = load i8*, i8** %23, align 8
  %25 = load i8*, i8** %5, align 8
  %26 = call i8* @r_str_dup(i8* %24, i8* %25)
  %27 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_18__*, %struct.TYPE_18__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %29, i32 0, i32 2
  store i8* %26, i8** %30, align 8
  %31 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_18__*, %struct.TYPE_18__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %33, i32 0, i32 1
  %35 = load i8*, i8** %34, align 8
  %36 = load i8*, i8** %6, align 8
  %37 = call i8* @r_str_dup(i8* %35, i8* %36)
  %38 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_18__*, %struct.TYPE_18__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %40, i32 0, i32 1
  store i8* %37, i8** %41, align 8
  %42 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %43 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %44 = call i32 @__set_cmd_str_cache(%struct.TYPE_20__* %42, %struct.TYPE_19__* %43, i32* null)
  %45 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %46 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %47 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @__set_panel_addr(%struct.TYPE_20__* %45, %struct.TYPE_19__* %46, i32 %49)
  %51 = load i32, i32* @PANEL_TYPE_DEFAULT, align 4
  %52 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_18__*, %struct.TYPE_18__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %54, i32 0, i32 0
  store i32 %51, i32* %55, align 8
  %56 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %57 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %58 = call i32 @__set_dcb(%struct.TYPE_20__* %56, %struct.TYPE_19__* %57)
  %59 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %60 = call i32 @__set_pcb(%struct.TYPE_19__* %59)
  %61 = load i32*, i32** %7, align 8
  %62 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %63 = call i32 @__set_rcb(i32* %61, %struct.TYPE_19__* %62)
  %64 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %65 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %66 = call i32 @__cache_white_list(%struct.TYPE_20__* %64, %struct.TYPE_19__* %65)
  %67 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %68 = call i32 @__set_refresh_all(%struct.TYPE_20__* %67, i32 0, i32 1)
  ret void
}

declare dso_local %struct.TYPE_19__* @__get_cur_panel(i32*) #1

declare dso_local i32 @__free_panel_model(%struct.TYPE_19__*) #1

declare dso_local %struct.TYPE_18__* @R_NEW0(i32) #1

declare dso_local i8* @r_str_dup(i8*, i8*) #1

declare dso_local i32 @__set_cmd_str_cache(%struct.TYPE_20__*, %struct.TYPE_19__*, i32*) #1

declare dso_local i32 @__set_panel_addr(%struct.TYPE_20__*, %struct.TYPE_19__*, i32) #1

declare dso_local i32 @__set_dcb(%struct.TYPE_20__*, %struct.TYPE_19__*) #1

declare dso_local i32 @__set_pcb(%struct.TYPE_19__*) #1

declare dso_local i32 @__set_rcb(i32*, %struct.TYPE_19__*) #1

declare dso_local i32 @__cache_white_list(%struct.TYPE_20__*, %struct.TYPE_19__*) #1

declare dso_local i32 @__set_refresh_all(%struct.TYPE_20__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
