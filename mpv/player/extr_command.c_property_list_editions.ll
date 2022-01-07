; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_command.c_property_list_editions.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_command.c_property_list_editions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.m_property = type { i32 }
%struct.TYPE_3__ = type { %struct.demuxer* }
%struct.demuxer = type { i32, i32, %struct.demux_edition* }
%struct.demux_edition = type { i32 }

@M_PROPERTY_UNAVAILABLE = common dso_local global i32 0, align 4
@M_PROPERTY_PRINT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"No editions.\00", align 1
@list_current = common dso_local global i32 0, align 4
@list_normal = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"%d: \00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"title\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"unnamed\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"'%s'\0A\00", align 1
@M_PROPERTY_OK = common dso_local global i32 0, align 4
@get_edition_entry = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.m_property*, i32, i8*)* @property_list_editions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @property_list_editions(i8* %0, %struct.m_property* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.m_property*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_3__*, align 8
  %11 = alloca %struct.demuxer*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.demux_edition*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.demux_edition*, align 8
  %18 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store %struct.m_property* %1, %struct.m_property** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = bitcast i8* %19 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %20, %struct.TYPE_3__** %10, align 8
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load %struct.demuxer*, %struct.demuxer** %22, align 8
  store %struct.demuxer* %23, %struct.demuxer** %11, align 8
  %24 = load %struct.demuxer*, %struct.demuxer** %11, align 8
  %25 = icmp ne %struct.demuxer* %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %4
  %27 = load i32, i32* @M_PROPERTY_UNAVAILABLE, align 4
  store i32 %27, i32* %5, align 4
  br label %99

28:                                               ; preds = %4
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @M_PROPERTY_PRINT, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %90

32:                                               ; preds = %28
  store i8* null, i8** %12, align 8
  %33 = load %struct.demuxer*, %struct.demuxer** %11, align 8
  %34 = getelementptr inbounds %struct.demuxer, %struct.demuxer* %33, i32 0, i32 2
  %35 = load %struct.demux_edition*, %struct.demux_edition** %34, align 8
  store %struct.demux_edition* %35, %struct.demux_edition** %13, align 8
  %36 = load %struct.demuxer*, %struct.demuxer** %11, align 8
  %37 = getelementptr inbounds %struct.demuxer, %struct.demuxer* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  store i32 %38, i32* %14, align 4
  %39 = load %struct.demuxer*, %struct.demuxer** %11, align 8
  %40 = getelementptr inbounds %struct.demuxer, %struct.demuxer* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %15, align 4
  %42 = load i32, i32* %14, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %32
  %45 = load i8*, i8** %12, align 8
  %46 = call i8* (i8*, i8*, ...) @talloc_asprintf_append(i8* %45, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i8* %46, i8** %12, align 8
  br label %47

47:                                               ; preds = %44, %32
  store i32 0, i32* %16, align 4
  br label %48

48:                                               ; preds = %82, %47
  %49 = load i32, i32* %16, align 4
  %50 = load i32, i32* %14, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %85

52:                                               ; preds = %48
  %53 = load %struct.demux_edition*, %struct.demux_edition** %13, align 8
  %54 = load i32, i32* %16, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.demux_edition, %struct.demux_edition* %53, i64 %55
  store %struct.demux_edition* %56, %struct.demux_edition** %17, align 8
  %57 = load i8*, i8** %12, align 8
  %58 = load i32, i32* %16, align 4
  %59 = load i32, i32* %15, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %52
  %62 = load i32, i32* @list_current, align 4
  br label %65

63:                                               ; preds = %52
  %64 = load i32, i32* @list_normal, align 4
  br label %65

65:                                               ; preds = %63, %61
  %66 = phi i32 [ %62, %61 ], [ %64, %63 ]
  %67 = call i8* @talloc_strdup_append(i8* %57, i32 %66)
  store i8* %67, i8** %12, align 8
  %68 = load i8*, i8** %12, align 8
  %69 = load i32, i32* %16, align 4
  %70 = call i8* (i8*, i8*, ...) @talloc_asprintf_append(i8* %68, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %69)
  store i8* %70, i8** %12, align 8
  %71 = load %struct.demux_edition*, %struct.demux_edition** %17, align 8
  %72 = getelementptr inbounds %struct.demux_edition, %struct.demux_edition* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i8* @mp_tags_get_str(i32 %73, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  store i8* %74, i8** %18, align 8
  %75 = load i8*, i8** %18, align 8
  %76 = icmp ne i8* %75, null
  br i1 %76, label %78, label %77

77:                                               ; preds = %65
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8** %18, align 8
  br label %78

78:                                               ; preds = %77, %65
  %79 = load i8*, i8** %12, align 8
  %80 = load i8*, i8** %18, align 8
  %81 = call i8* (i8*, i8*, ...) @talloc_asprintf_append(i8* %79, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* %80)
  store i8* %81, i8** %12, align 8
  br label %82

82:                                               ; preds = %78
  %83 = load i32, i32* %16, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %16, align 4
  br label %48

85:                                               ; preds = %48
  %86 = load i8*, i8** %12, align 8
  %87 = load i8*, i8** %9, align 8
  %88 = bitcast i8* %87 to i8**
  store i8* %86, i8** %88, align 8
  %89 = load i32, i32* @M_PROPERTY_OK, align 4
  store i32 %89, i32* %5, align 4
  br label %99

90:                                               ; preds = %28
  %91 = load i32, i32* %8, align 4
  %92 = load i8*, i8** %9, align 8
  %93 = load %struct.demuxer*, %struct.demuxer** %11, align 8
  %94 = getelementptr inbounds %struct.demuxer, %struct.demuxer* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @get_edition_entry, align 4
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %98 = call i32 @m_property_read_list(i32 %91, i8* %92, i32 %95, i32 %96, %struct.TYPE_3__* %97)
  store i32 %98, i32* %5, align 4
  br label %99

99:                                               ; preds = %90, %85, %26
  %100 = load i32, i32* %5, align 4
  ret i32 %100
}

declare dso_local i8* @talloc_asprintf_append(i8*, i8*, ...) #1

declare dso_local i8* @talloc_strdup_append(i8*, i32) #1

declare dso_local i8* @mp_tags_get_str(i32, i8*) #1

declare dso_local i32 @m_property_read_list(i32, i8*, i32, i32, %struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
