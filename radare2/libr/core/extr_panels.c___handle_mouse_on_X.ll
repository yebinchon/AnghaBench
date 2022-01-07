; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/extr_panels.c___handle_mouse_on_X.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/extr_panels.c___handle_mouse_on_X.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_24__ = type { %struct.TYPE_22__* }
%struct.TYPE_22__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c" X \00", align 1
@PANEL_MODE_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_25__*, i32, i32)* @__handle_mouse_on_X to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__handle_mouse_on_X(%struct.TYPE_25__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_25__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_23__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_24__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %15 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_23__*, %struct.TYPE_23__** %16, align 8
  store %struct.TYPE_23__* %17, %struct.TYPE_23__** %8, align 8
  %18 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @__get_panel_idx_in_pos(%struct.TYPE_25__* %18, i32 %19, i32 %20)
  store i32 %21, i32* %9, align 4
  %22 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %23 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* %7, align 4
  %26 = call i8* @get_word_from_canvas(%struct.TYPE_25__* %22, %struct.TYPE_23__* %23, i32 %24, i32 %25)
  store i8* %26, i8** %10, align 8
  %27 = load i32, i32* %9, align 4
  %28 = icmp eq i32 %27, -1
  br i1 %28, label %29, label %30

29:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %115

30:                                               ; preds = %3
  %31 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %32 = load i32, i32* %9, align 4
  %33 = call %struct.TYPE_24__* @__get_panel(%struct.TYPE_23__* %31, i32 %32)
  store %struct.TYPE_24__* %33, %struct.TYPE_24__** %11, align 8
  %34 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %35 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_22__*, %struct.TYPE_22__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %39, 2
  store i32 %40, i32* %12, align 4
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* %12, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %112

44:                                               ; preds = %30
  %45 = load i8*, i8** %10, align 8
  %46 = call i64 @strcmp(i8* %45, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %112

48:                                               ; preds = %44
  %49 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %50 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_22__*, %struct.TYPE_22__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %13, align 4
  %55 = load i32, i32* %13, align 4
  %56 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %57 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_22__*, %struct.TYPE_22__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = add nsw i32 %55, %61
  store i32 %62, i32* %14, align 4
  %63 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %64 = load i32, i32* %9, align 4
  %65 = call i32 @__set_curnode(%struct.TYPE_25__* %63, i32 %64)
  %66 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %67 = call i32 @__set_refresh_all(%struct.TYPE_25__* %66, i32 1, i32 1)
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* %14, align 4
  %70 = sub nsw i32 %69, 13
  %71 = icmp sgt i32 %68, %70
  br i1 %71, label %72, label %81

72:                                               ; preds = %48
  %73 = load i32, i32* %6, align 4
  %74 = load i32, i32* %14, align 4
  %75 = icmp slt i32 %73, %74
  br i1 %75, label %76, label %81

76:                                               ; preds = %72
  %77 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %78 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %79 = call i32 @__get_cur_panel(%struct.TYPE_23__* %78)
  %80 = call i32 @__toggle_cache(%struct.TYPE_25__* %77, i32 %79)
  br label %107

81:                                               ; preds = %72, %48
  %82 = load i32, i32* %6, align 4
  %83 = load i32, i32* %13, align 4
  %84 = icmp sgt i32 %82, %83
  br i1 %84, label %85, label %95

85:                                               ; preds = %81
  %86 = load i32, i32* %6, align 4
  %87 = load i32, i32* %13, align 4
  %88 = add nsw i32 %87, 5
  %89 = icmp slt i32 %86, %88
  br i1 %89, label %90, label %95

90:                                               ; preds = %85
  %91 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %92 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %93 = load i32, i32* %9, align 4
  %94 = call i32 @__dismantle_del_panel(%struct.TYPE_25__* %91, %struct.TYPE_24__* %92, i32 %93)
  br label %106

95:                                               ; preds = %85, %81
  %96 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %97 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %98 = call %struct.TYPE_24__* @__get_panel(%struct.TYPE_23__* %97, i32 0)
  %99 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @__create_almighty(%struct.TYPE_25__* %96, %struct.TYPE_24__* %98, i32 %101)
  %103 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %104 = load i32, i32* @PANEL_MODE_DEFAULT, align 4
  %105 = call i32 @__set_mode(%struct.TYPE_25__* %103, i32 %104)
  br label %106

106:                                              ; preds = %95, %90
  br label %107

107:                                              ; preds = %106, %76
  %108 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %109 = call i32 @__set_refresh_all(%struct.TYPE_25__* %108, i32 0, i32 0)
  %110 = load i8*, i8** %10, align 8
  %111 = call i32 @free(i8* %110)
  store i32 1, i32* %4, align 4
  br label %115

112:                                              ; preds = %44, %30
  %113 = load i8*, i8** %10, align 8
  %114 = call i32 @free(i8* %113)
  store i32 0, i32* %4, align 4
  br label %115

115:                                              ; preds = %112, %107, %29
  %116 = load i32, i32* %4, align 4
  ret i32 %116
}

declare dso_local i32 @__get_panel_idx_in_pos(%struct.TYPE_25__*, i32, i32) #1

declare dso_local i8* @get_word_from_canvas(%struct.TYPE_25__*, %struct.TYPE_23__*, i32, i32) #1

declare dso_local %struct.TYPE_24__* @__get_panel(%struct.TYPE_23__*, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @__set_curnode(%struct.TYPE_25__*, i32) #1

declare dso_local i32 @__set_refresh_all(%struct.TYPE_25__*, i32, i32) #1

declare dso_local i32 @__toggle_cache(%struct.TYPE_25__*, i32) #1

declare dso_local i32 @__get_cur_panel(%struct.TYPE_23__*) #1

declare dso_local i32 @__dismantle_del_panel(%struct.TYPE_25__*, %struct.TYPE_24__*, i32) #1

declare dso_local i32 @__create_almighty(%struct.TYPE_25__*, %struct.TYPE_24__*, i32) #1

declare dso_local i32 @__set_mode(%struct.TYPE_25__*, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
