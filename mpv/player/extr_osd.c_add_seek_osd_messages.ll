; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_osd.c_add_seek_osd_messages.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_osd.c_add_seek_osd_messages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPContext = type { i32, i32, i8*, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@OSD_SEEK_INFO_BAR = common dso_local global i32 0, align 4
@OSD_BAR_SEEK = common dso_local global i32 0, align 4
@OSD_SEEK_INFO_TEXT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@OSD_SEEK_INFO_CHAPTER_TEXT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"Chapter: %s\00", align 1
@OSD_SEEK_INFO_CURRENT_FILE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.MPContext*)* @add_seek_osd_messages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_seek_osd_messages(%struct.MPContext* %0) #0 {
  %2 = alloca %struct.MPContext*, align 8
  %3 = alloca double, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store %struct.MPContext* %0, %struct.MPContext** %2, align 8
  %6 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %7 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @OSD_SEEK_INFO_BAR, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %23

12:                                               ; preds = %1
  %13 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %14 = call double @get_current_pos_ratio(%struct.MPContext* %13, i32 0)
  store double %14, double* %3, align 8
  %15 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %16 = load i32, i32* @OSD_BAR_SEEK, align 4
  %17 = load double, double* %3, align 8
  %18 = call i32 @MPCLAMP(double %17, i32 0, i32 1)
  %19 = call i32 @set_osd_bar(%struct.MPContext* %15, i32 %16, i32 0, i32 1, i32 0, i32 %18)
  %20 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %21 = load i32, i32* @OSD_BAR_SEEK, align 4
  %22 = call i32 @set_osd_bar_chapters(%struct.MPContext* %20, i32 %21)
  br label %23

23:                                               ; preds = %12, %1
  %24 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %25 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @OSD_SEEK_INFO_TEXT, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %68

30:                                               ; preds = %23
  %31 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %32 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %31, i32 0, i32 4
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %30
  %36 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %37 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %36, i32 0, i32 3
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br label %42

42:                                               ; preds = %35, %30
  %43 = phi i1 [ false, %30 ], [ %41, %35 ]
  %44 = zext i1 %43 to i32
  store i32 %44, i32* %4, align 4
  %45 = load i32, i32* %4, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %67

47:                                               ; preds = %42
  %48 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %49 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %48, i32 0, i32 3
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 1
  br i1 %53, label %54, label %67

54:                                               ; preds = %47
  %55 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %56 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %57 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %56, i32 0, i32 3
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i64 (%struct.MPContext*, i32, i32, i8*, ...) @set_osd_msg(%struct.MPContext* %55, i32 1, i32 %60, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %54
  %64 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %65 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %64, i32 0, i32 1
  store i32 1, i32* %65, align 4
  br label %66

66:                                               ; preds = %63, %54
  br label %67

67:                                               ; preds = %66, %47, %42
  br label %68

68:                                               ; preds = %67, %23
  %69 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %70 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @OSD_SEEK_INFO_CHAPTER_TEXT, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %90

75:                                               ; preds = %68
  %76 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %77 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %78 = call i32 @get_current_chapter(%struct.MPContext* %77)
  %79 = call i8* @chapter_display_name(%struct.MPContext* %76, i32 %78)
  store i8* %79, i8** %5, align 8
  %80 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %81 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %82 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %81, i32 0, i32 3
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load i8*, i8** %5, align 8
  %87 = call i64 (%struct.MPContext*, i32, i32, i8*, ...) @set_osd_msg(%struct.MPContext* %80, i32 1, i32 %85, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %86)
  %88 = load i8*, i8** %5, align 8
  %89 = call i32 @talloc_free(i8* %88)
  br label %90

90:                                               ; preds = %75, %68
  %91 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %92 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @OSD_SEEK_INFO_CURRENT_FILE, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %114

97:                                               ; preds = %90
  %98 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %99 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %98, i32 0, i32 2
  %100 = load i8*, i8** %99, align 8
  %101 = icmp ne i8* %100, null
  br i1 %101, label %102, label %113

102:                                              ; preds = %97
  %103 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %104 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %105 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %104, i32 0, i32 3
  %106 = load %struct.TYPE_2__*, %struct.TYPE_2__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %110 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %109, i32 0, i32 2
  %111 = load i8*, i8** %110, align 8
  %112 = call i64 (%struct.MPContext*, i32, i32, i8*, ...) @set_osd_msg(%struct.MPContext* %103, i32 1, i32 %108, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %111)
  br label %113

113:                                              ; preds = %102, %97
  br label %114

114:                                              ; preds = %113, %90
  %115 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %116 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %115, i32 0, i32 0
  store i32 0, i32* %116, align 8
  ret void
}

declare dso_local double @get_current_pos_ratio(%struct.MPContext*, i32) #1

declare dso_local i32 @set_osd_bar(%struct.MPContext*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @MPCLAMP(double, i32, i32) #1

declare dso_local i32 @set_osd_bar_chapters(%struct.MPContext*, i32) #1

declare dso_local i64 @set_osd_msg(%struct.MPContext*, i32, i32, i8*, ...) #1

declare dso_local i8* @chapter_display_name(%struct.MPContext*, i32) #1

declare dso_local i32 @get_current_chapter(%struct.MPContext*) #1

declare dso_local i32 @talloc_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
