; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_misc.c_update_window_title.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_misc.c_update_window_title.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPContext = type { i8*, i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@VOCTRL_UPDATE_WINDOW_TITLE = common dso_local global i32 0, align 4
@AOCONTROL_UPDATE_STREAM_TITLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @update_window_title(%struct.MPContext* %0, i32 %1) #0 {
  %3 = alloca %struct.MPContext*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store %struct.MPContext* %0, %struct.MPContext** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %7 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %6, i32 0, i32 2
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %22, label %10

10:                                               ; preds = %2
  %11 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %12 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %22, label %15

15:                                               ; preds = %10
  %16 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %17 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = call i32 @talloc_free(i8* %18)
  %20 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %21 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %20, i32 0, i32 0
  store i8* null, i8** %21, align 8
  br label %81

22:                                               ; preds = %10, %2
  %23 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %24 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %25 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %24, i32 0, i32 3
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i8* @mp_property_expand_string(%struct.MPContext* %23, i32 %28)
  store i8* %29, i8** %5, align 8
  %30 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %31 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %44

34:                                               ; preds = %22
  %35 = load i32, i32* %4, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %44, label %37

37:                                               ; preds = %34
  %38 = load i8*, i8** %5, align 8
  %39 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %40 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = call i64 @strcmp(i8* %38, i8* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %78

44:                                               ; preds = %37, %34, %22
  %45 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %46 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = call i32 @talloc_free(i8* %47)
  %49 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %50 = load i8*, i8** %5, align 8
  %51 = call i8* @talloc_steal(%struct.MPContext* %49, i8* %50)
  %52 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %53 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %52, i32 0, i32 0
  store i8* %51, i8** %53, align 8
  %54 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %55 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %44
  %59 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %60 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = load i32, i32* @VOCTRL_UPDATE_WINDOW_TITLE, align 4
  %63 = load i8*, i8** %5, align 8
  %64 = call i32 @vo_control(i64 %61, i32 %62, i8* %63)
  br label %65

65:                                               ; preds = %58, %44
  %66 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %67 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %77

70:                                               ; preds = %65
  %71 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %72 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load i32, i32* @AOCONTROL_UPDATE_STREAM_TITLE, align 4
  %75 = load i8*, i8** %5, align 8
  %76 = call i32 @ao_control(i64 %73, i32 %74, i8* %75)
  br label %77

77:                                               ; preds = %70, %65
  br label %81

78:                                               ; preds = %37
  %79 = load i8*, i8** %5, align 8
  %80 = call i32 @talloc_free(i8* %79)
  br label %81

81:                                               ; preds = %15, %78, %77
  ret void
}

declare dso_local i32 @talloc_free(i8*) #1

declare dso_local i8* @mp_property_expand_string(%struct.MPContext*, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i8* @talloc_steal(%struct.MPContext*, i8*) #1

declare dso_local i32 @vo_control(i64, i32, i8*) #1

declare dso_local i32 @ao_control(i64, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
