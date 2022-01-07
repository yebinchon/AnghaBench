; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/extr_panels.c___activate_cursor.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/extr_panels.c___activate_cursor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { %struct.TYPE_18__*, i32* }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_20__ = type { %struct.TYPE_19__*, %struct.TYPE_17__* }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_17__ = type { i32 }

@.str = private unnamed_addr constant [61 x i8] c"You need to turn off cache to use cursor. Turn off now?(Y/n)\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Cache is off and cursor is on\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"You can always toggle cache by '&' key\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"Cursor is not available for the current panel.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__activate_cursor(%struct.TYPE_21__* %0) #0 {
  %2 = alloca %struct.TYPE_21__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_20__*, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %2, align 8
  %5 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %5, i32 0, i32 1
  %7 = load i32*, i32** %6, align 8
  store i32* %7, i32** %3, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = call %struct.TYPE_20__* @__get_cur_panel(i32* %8)
  store %struct.TYPE_20__* %9, %struct.TYPE_20__** %4, align 8
  %10 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %11 = call i64 @__is_normal_cursor_type(%struct.TYPE_20__* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %1
  %14 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %15 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %16 = call i64 @__is_abnormal_cursor_type(%struct.TYPE_21__* %14, %struct.TYPE_20__* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %74

18:                                               ; preds = %13, %1
  %19 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %59

25:                                               ; preds = %18
  %26 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %27 = call i64 @__show_status_yesno(%struct.TYPE_21__* %26, i32 1, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0))
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %55

29:                                               ; preds = %25
  %30 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_17__*, %struct.TYPE_17__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %32, i32 0, i32 0
  store i32 0, i32* %33, align 4
  %34 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %35 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %36 = call i32 @__set_cmd_str_cache(%struct.TYPE_21__* %34, %struct.TYPE_20__* %35, i32* null)
  %37 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %38 = call i32 @__show_status(%struct.TYPE_21__* %37, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %39 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %40 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_18__*, %struct.TYPE_18__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  %46 = xor i1 %45, true
  %47 = zext i1 %46 to i32
  %48 = call i32 @__set_cursor(%struct.TYPE_21__* %39, i32 %47)
  %49 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_19__*, %struct.TYPE_19__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %51, i32 0, i32 0
  store i32 1, i32* %52, align 4
  %53 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %54 = call i32 @__reset_scroll_pos(%struct.TYPE_20__* %53)
  br label %58

55:                                               ; preds = %25
  %56 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %57 = call i32 @__show_status(%struct.TYPE_21__* %56, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  br label %58

58:                                               ; preds = %55, %29
  br label %77

59:                                               ; preds = %18
  %60 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %61 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_18__*, %struct.TYPE_18__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %65, 0
  %67 = xor i1 %66, true
  %68 = zext i1 %67 to i32
  %69 = call i32 @__set_cursor(%struct.TYPE_21__* %60, i32 %68)
  %70 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_19__*, %struct.TYPE_19__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %72, i32 0, i32 0
  store i32 1, i32* %73, align 4
  br label %77

74:                                               ; preds = %13
  %75 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %76 = call i32 @__show_status(%struct.TYPE_21__* %75, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0))
  br label %77

77:                                               ; preds = %58, %74, %59
  ret void
}

declare dso_local %struct.TYPE_20__* @__get_cur_panel(i32*) #1

declare dso_local i64 @__is_normal_cursor_type(%struct.TYPE_20__*) #1

declare dso_local i64 @__is_abnormal_cursor_type(%struct.TYPE_21__*, %struct.TYPE_20__*) #1

declare dso_local i64 @__show_status_yesno(%struct.TYPE_21__*, i32, i8*) #1

declare dso_local i32 @__set_cmd_str_cache(%struct.TYPE_21__*, %struct.TYPE_20__*, i32*) #1

declare dso_local i32 @__show_status(%struct.TYPE_21__*, i8*) #1

declare dso_local i32 @__set_cursor(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @__reset_scroll_pos(%struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
