; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/extr_panels.c___handle_mouse_on_top.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/extr_panels.c___handle_mouse_on_top.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, %struct.TYPE_14__** }
%struct.TYPE_14__ = type { i32, i32 (%struct.TYPE_17__*)*, %struct.TYPE_14__** }

@menus = common dso_local global i8** null, align 8
@PANEL_MODE_MENU = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"Tab\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__handle_mouse_on_top(%struct.TYPE_17__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_15__*, align 8
  %12 = alloca %struct.TYPE_14__*, align 8
  %13 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %14 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  store %struct.TYPE_16__* %16, %struct.TYPE_16__** %8, align 8
  %17 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* %7, align 4
  %21 = call i8* @get_word_from_canvas(%struct.TYPE_17__* %17, %struct.TYPE_16__* %18, i32 %19, i32 %20)
  store i8* %21, i8** %9, align 8
  store i32 0, i32* %10, align 4
  br label %22

22:                                               ; preds = %77, %3
  %23 = load i32, i32* %10, align 4
  %24 = load i8**, i8*** @menus, align 8
  %25 = call i32 @COUNT(i8** %24)
  %26 = icmp slt i32 %23, %25
  br i1 %26, label %27, label %80

27:                                               ; preds = %22
  %28 = load i8*, i8** %9, align 8
  %29 = load i8**, i8*** @menus, align 8
  %30 = load i32, i32* %10, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8*, i8** %29, i64 %31
  %33 = load i8*, i8** %32, align 8
  %34 = call i32 @strcmp(i8* %28, i8* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %76, label %36

36:                                               ; preds = %27
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %38 = load i32, i32* @PANEL_MODE_MENU, align 4
  %39 = call i32 @__set_mode(%struct.TYPE_17__* %37, i32 %38)
  %40 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %41 = call i32 @__clear_panels_menu(%struct.TYPE_17__* %40)
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_15__*, %struct.TYPE_15__** %43, align 8
  store %struct.TYPE_15__* %44, %struct.TYPE_15__** %11, align 8
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %46, align 8
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = sub nsw i32 %50, 1
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %47, i64 %52
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %53, align 8
  store %struct.TYPE_14__* %54, %struct.TYPE_14__** %12, align 8
  %55 = load i32, i32* %10, align 4
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 2
  %60 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %59, align 8
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %60, i64 %64
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %65, align 8
  store %struct.TYPE_14__* %66, %struct.TYPE_14__** %13, align 8
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 1
  %69 = load i32 (%struct.TYPE_17__*)*, i32 (%struct.TYPE_17__*)** %68, align 8
  %70 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %71 = call i32 %69(%struct.TYPE_17__* %70)
  %72 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %73 = call i32 @__set_refresh_all(%struct.TYPE_17__* %72, i32 0, i32 0)
  %74 = load i8*, i8** %9, align 8
  %75 = call i32 @free(i8* %74)
  store i32 1, i32* %4, align 4
  br label %119

76:                                               ; preds = %27
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %10, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %10, align 4
  br label %22

80:                                               ; preds = %22
  %81 = load i8*, i8** %9, align 8
  %82 = call i32 @strcmp(i8* %81, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %89, label %84

84:                                               ; preds = %80
  %85 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %86 = call i32 @__handle_tab_new(%struct.TYPE_17__* %85)
  %87 = load i8*, i8** %9, align 8
  %88 = call i32 @free(i8* %87)
  store i32 1, i32* %4, align 4
  br label %119

89:                                               ; preds = %80
  %90 = load i8*, i8** %9, align 8
  %91 = getelementptr inbounds i8, i8* %90, i64 0
  %92 = load i8, i8* %91, align 1
  %93 = sext i8 %92 to i32
  %94 = icmp eq i32 %93, 91
  br i1 %94, label %95, label %108

95:                                               ; preds = %89
  %96 = load i8*, i8** %9, align 8
  %97 = getelementptr inbounds i8, i8* %96, i64 1
  %98 = load i8, i8* %97, align 1
  %99 = sext i8 %98 to i32
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %108

101:                                              ; preds = %95
  %102 = load i8*, i8** %9, align 8
  %103 = getelementptr inbounds i8, i8* %102, i64 2
  %104 = load i8, i8* %103, align 1
  %105 = sext i8 %104 to i32
  %106 = icmp eq i32 %105, 93
  br i1 %106, label %107, label %108

107:                                              ; preds = %101
  store i32 1, i32* %4, align 4
  br label %119

108:                                              ; preds = %101, %95, %89
  %109 = load i8*, i8** %9, align 8
  %110 = call i64 @atoi(i8* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %118

112:                                              ; preds = %108
  %113 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %114 = load i8*, i8** %9, align 8
  %115 = getelementptr inbounds i8, i8* %114, i64 0
  %116 = load i8, i8* %115, align 1
  %117 = call i32 @__handle_tab_nth(%struct.TYPE_17__* %113, i8 signext %116)
  store i32 1, i32* %4, align 4
  br label %119

118:                                              ; preds = %108
  store i32 0, i32* %4, align 4
  br label %119

119:                                              ; preds = %118, %112, %107, %84, %36
  %120 = load i32, i32* %4, align 4
  ret i32 %120
}

declare dso_local i8* @get_word_from_canvas(%struct.TYPE_17__*, %struct.TYPE_16__*, i32, i32) #1

declare dso_local i32 @COUNT(i8**) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @__set_mode(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @__clear_panels_menu(%struct.TYPE_17__*) #1

declare dso_local i32 @__set_refresh_all(%struct.TYPE_17__*, i32, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @__handle_tab_new(%struct.TYPE_17__*) #1

declare dso_local i64 @atoi(i8*) #1

declare dso_local i32 @__handle_tab_nth(%struct.TYPE_17__*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
