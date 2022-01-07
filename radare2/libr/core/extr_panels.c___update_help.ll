; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/extr_panels.c___update_help.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/extr_panels.c___update_help.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_10__*, %struct.TYPE_9__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i8*, i8* }

@.str = private unnamed_addr constant [5 x i8] c"Help\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Panels Window mode help\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"Window Mode Help\00", align 1
@help_msg_panels_window = common dso_local global i8** null, align 8
@.str.3 = private unnamed_addr constant [22 x i8] c"Panels Zoom mode help\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"Zoom Mode Help\00", align 1
@help_msg_panels_zoom = common dso_local global i8** null, align 8
@.str.5 = private unnamed_addr constant [24 x i8] c"Visual Ascii Art Panels\00", align 1
@help_msg_panels = common dso_local global i8** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__update_help(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8**, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  store i32 0, i32* %3, align 4
  br label %9

9:                                                ; preds = %77, %1
  %10 = load i32, i32* %3, align 4
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %80

15:                                               ; preds = %9
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %17 = load i32, i32* %3, align 4
  %18 = call %struct.TYPE_12__* @__get_panel(%struct.TYPE_11__* %16, i32 %17)
  store %struct.TYPE_12__* %18, %struct.TYPE_12__** %4, align 8
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = call i64 @r_str_endswith(i8* %23, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %76

26:                                               ; preds = %15
  %27 = call i32* @r_strbuf_new(i32* null)
  store i32* %27, i32** %5, align 8
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  switch i32 %30, label %35 [
    i32 129, label %31
    i32 128, label %33
  ]

31:                                               ; preds = %26
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i8** %6, align 8
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i8** %7, align 8
  %32 = load i8**, i8*** @help_msg_panels_window, align 8
  store i8** %32, i8*** %8, align 8
  br label %37

33:                                               ; preds = %26
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i8** %6, align 8
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i8** %7, align 8
  %34 = load i8**, i8*** @help_msg_panels_zoom, align 8
  store i8** %34, i8*** %8, align 8
  br label %37

35:                                               ; preds = %26
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i8** %6, align 8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  %36 = load i8**, i8*** @help_msg_panels, align 8
  store i8** %36, i8*** %8, align 8
  br label %37

37:                                               ; preds = %35, %33, %31
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 1
  %42 = load i8*, i8** %41, align 8
  %43 = load i8*, i8** %7, align 8
  %44 = call i8* @r_str_dup(i8* %42, i8* %43)
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 1
  store i8* %44, i8** %48, align 8
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = load i8*, i8** %7, align 8
  %55 = call i8* @r_str_dup(i8* %53, i8* %54)
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 0
  store i8* %55, i8** %59, align 8
  %60 = load i32*, i32** %5, align 8
  %61 = load i8*, i8** %6, align 8
  %62 = load i8**, i8*** %8, align 8
  %63 = call i32 @r_core_visual_append_help(i32* %60, i8* %61, i8** %62)
  %64 = load i32*, i32** %5, align 8
  %65 = icmp ne i32* %64, null
  br i1 %65, label %67, label %66

66:                                               ; preds = %37
  br label %80

67:                                               ; preds = %37
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %69 = load i32*, i32** %5, align 8
  %70 = call i32 @r_strbuf_drain(i32* %69)
  %71 = call i32 @__set_read_only(%struct.TYPE_12__* %68, i32 %70)
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 0
  store i32 1, i32* %75, align 4
  br label %76

76:                                               ; preds = %67, %15
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %3, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %3, align 4
  br label %9

80:                                               ; preds = %66, %9
  ret void
}

declare dso_local %struct.TYPE_12__* @__get_panel(%struct.TYPE_11__*, i32) #1

declare dso_local i64 @r_str_endswith(i8*, i8*) #1

declare dso_local i32* @r_strbuf_new(i32*) #1

declare dso_local i8* @r_str_dup(i8*, i8*) #1

declare dso_local i32 @r_core_visual_append_help(i32*, i8*, i8**) #1

declare dso_local i32 @__set_read_only(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @r_strbuf_drain(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
