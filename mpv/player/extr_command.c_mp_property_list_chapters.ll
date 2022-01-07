; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_command.c_mp_property_list_chapters.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_command.c_mp_property_list_chapters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.m_property = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.mpv_node = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"No chapters.\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@list_current = common dso_local global i8* null, align 8
@list_normal = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [9 x i8] c"   %s%s\0A\00", align 1
@M_PROPERTY_OK = common dso_local global i32 0, align 4
@get_chapter_entry = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.m_property*, i32, i8*)* @mp_property_list_chapters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mp_property_list_chapters(i8* %0, %struct.m_property* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.m_property*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca double, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca %struct.mpv_node*, align 8
  store i8* %0, i8** %6, align 8
  store %struct.m_property* %1, %struct.m_property** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = bitcast i8* %20 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %21, %struct.TYPE_8__** %10, align 8
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %23 = call i32 @get_chapter_count(%struct.TYPE_8__* %22)
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %8, align 4
  switch i32 %24, label %89 [
    i32 129, label %25
    i32 128, label %83
  ]

25:                                               ; preds = %4
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %32 = call i32 @get_current_chapter(%struct.TYPE_8__* %31)
  br label %34

33:                                               ; preds = %25
  br label %34

34:                                               ; preds = %33, %30
  %35 = phi i32 [ %32, %30 ], [ -1, %33 ]
  store i32 %35, i32* %12, align 4
  store i8* null, i8** %13, align 8
  %36 = load i32, i32* %11, align 4
  %37 = icmp slt i32 %36, 1
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = load i8*, i8** %13, align 8
  %40 = call i8* (i8*, i8*, ...) @talloc_asprintf_append(i8* %39, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i8* %40, i8** %13, align 8
  br label %41

41:                                               ; preds = %38, %34
  store i32 0, i32* %14, align 4
  br label %42

42:                                               ; preds = %75, %41
  %43 = load i32, i32* %14, align 4
  %44 = load i32, i32* %11, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %78

46:                                               ; preds = %42
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %48 = load i32, i32* %14, align 4
  %49 = call i8* @chapter_display_name(%struct.TYPE_8__* %47, i32 %48)
  store i8* %49, i8** %15, align 8
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %51 = load i32, i32* %14, align 4
  %52 = call double @chapter_start_time(%struct.TYPE_8__* %50, i32 %51)
  store double %52, double* %16, align 8
  %53 = load double, double* %16, align 8
  %54 = call i8* @mp_format_time(double %53, i32 0)
  store i8* %54, i8** %17, align 8
  %55 = load i8*, i8** %13, align 8
  %56 = load i8*, i8** %17, align 8
  %57 = call i8* (i8*, i8*, ...) @talloc_asprintf_append(i8* %55, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %56)
  store i8* %57, i8** %13, align 8
  %58 = load i8*, i8** %17, align 8
  %59 = call i32 @talloc_free(i8* %58)
  %60 = load i32, i32* %14, align 4
  %61 = load i32, i32* %12, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %46
  %64 = load i8*, i8** @list_current, align 8
  br label %67

65:                                               ; preds = %46
  %66 = load i8*, i8** @list_normal, align 8
  br label %67

67:                                               ; preds = %65, %63
  %68 = phi i8* [ %64, %63 ], [ %66, %65 ]
  store i8* %68, i8** %18, align 8
  %69 = load i8*, i8** %13, align 8
  %70 = load i8*, i8** %18, align 8
  %71 = load i8*, i8** %15, align 8
  %72 = call i8* (i8*, i8*, ...) @talloc_asprintf_append(i8* %69, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* %70, i8* %71)
  store i8* %72, i8** %13, align 8
  %73 = load i8*, i8** %15, align 8
  %74 = call i32 @talloc_free(i8* %73)
  br label %75

75:                                               ; preds = %67
  %76 = load i32, i32* %14, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %14, align 4
  br label %42

78:                                               ; preds = %42
  %79 = load i8*, i8** %13, align 8
  %80 = load i8*, i8** %9, align 8
  %81 = bitcast i8* %80 to i8**
  store i8* %79, i8** %81, align 8
  %82 = load i32, i32* @M_PROPERTY_OK, align 4
  store i32 %82, i32* %5, align 4
  br label %96

83:                                               ; preds = %4
  %84 = load i8*, i8** %9, align 8
  %85 = bitcast i8* %84 to %struct.mpv_node*
  store %struct.mpv_node* %85, %struct.mpv_node** %19, align 8
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %87 = load %struct.mpv_node*, %struct.mpv_node** %19, align 8
  %88 = call i32 @parse_node_chapters(%struct.TYPE_8__* %86, %struct.mpv_node* %87)
  store i32 %88, i32* %5, align 4
  br label %96

89:                                               ; preds = %4
  %90 = load i32, i32* %8, align 4
  %91 = load i8*, i8** %9, align 8
  %92 = load i32, i32* %11, align 4
  %93 = load i32, i32* @get_chapter_entry, align 4
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %95 = call i32 @m_property_read_list(i32 %90, i8* %91, i32 %92, i32 %93, %struct.TYPE_8__* %94)
  store i32 %95, i32* %5, align 4
  br label %96

96:                                               ; preds = %89, %83, %78
  %97 = load i32, i32* %5, align 4
  ret i32 %97
}

declare dso_local i32 @get_chapter_count(%struct.TYPE_8__*) #1

declare dso_local i32 @get_current_chapter(%struct.TYPE_8__*) #1

declare dso_local i8* @talloc_asprintf_append(i8*, i8*, ...) #1

declare dso_local i8* @chapter_display_name(%struct.TYPE_8__*, i32) #1

declare dso_local double @chapter_start_time(%struct.TYPE_8__*, i32) #1

declare dso_local i8* @mp_format_time(double, i32) #1

declare dso_local i32 @talloc_free(i8*) #1

declare dso_local i32 @parse_node_chapters(%struct.TYPE_8__*, %struct.mpv_node*) #1

declare dso_local i32 @m_property_read_list(i32, i8*, i32, i32, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
