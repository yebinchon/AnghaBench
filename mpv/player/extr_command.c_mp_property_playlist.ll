; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_command.c_mp_property_playlist.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_command.c_mp_property_playlist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.m_property = type { i32 }
%struct.TYPE_3__ = type { %struct.playlist* }
%struct.playlist = type { %struct.playlist_entry*, %struct.playlist_entry* }
%struct.playlist_entry = type { i8*, i8*, %struct.playlist_entry* }
%struct.get_playlist_ctx = type { %struct.TYPE_3__* }

@M_PROPERTY_PRINT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@list_current = common dso_local global i8* null, align 8
@list_normal = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"%s%s\0A\00", align 1
@M_PROPERTY_OK = common dso_local global i32 0, align 4
@get_playlist_entry = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.m_property*, i32, i8*)* @mp_property_playlist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mp_property_playlist(i8* %0, %struct.m_property* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.m_property*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_3__*, align 8
  %11 = alloca %struct.playlist*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.playlist_entry*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca %struct.get_playlist_ctx, align 8
  store i8* %0, i8** %6, align 8
  store %struct.m_property* %1, %struct.m_property** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = bitcast i8* %18 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %19, %struct.TYPE_3__** %10, align 8
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* @M_PROPERTY_PRINT, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %93

23:                                               ; preds = %4
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load %struct.playlist*, %struct.playlist** %25, align 8
  store %struct.playlist* %26, %struct.playlist** %11, align 8
  %27 = call i8* @talloc_strdup(i32* null, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  store i8* %27, i8** %12, align 8
  %28 = load %struct.playlist*, %struct.playlist** %11, align 8
  %29 = getelementptr inbounds %struct.playlist, %struct.playlist* %28, i32 0, i32 1
  %30 = load %struct.playlist_entry*, %struct.playlist_entry** %29, align 8
  store %struct.playlist_entry* %30, %struct.playlist_entry** %13, align 8
  br label %31

31:                                               ; preds = %77, %23
  %32 = load %struct.playlist_entry*, %struct.playlist_entry** %13, align 8
  %33 = icmp ne %struct.playlist_entry* %32, null
  br i1 %33, label %34, label %81

34:                                               ; preds = %31
  %35 = load %struct.playlist_entry*, %struct.playlist_entry** %13, align 8
  %36 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  store i8* %37, i8** %14, align 8
  %38 = load i8*, i8** %14, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %61, label %40

40:                                               ; preds = %34
  %41 = load %struct.playlist_entry*, %struct.playlist_entry** %13, align 8
  %42 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %41, i32 0, i32 1
  %43 = load i8*, i8** %42, align 8
  store i8* %43, i8** %14, align 8
  %44 = load i8*, i8** %14, align 8
  %45 = call i32 @bstr0(i8* %44)
  %46 = call i32 @mp_is_url(i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %60, label %48

48:                                               ; preds = %40
  %49 = load %struct.playlist_entry*, %struct.playlist_entry** %13, align 8
  %50 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %49, i32 0, i32 1
  %51 = load i8*, i8** %50, align 8
  %52 = call i8* @mp_basename(i8* %51)
  store i8* %52, i8** %15, align 8
  %53 = load i8*, i8** %15, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 0
  %55 = load i8, i8* %54, align 1
  %56 = icmp ne i8 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %48
  %58 = load i8*, i8** %15, align 8
  store i8* %58, i8** %14, align 8
  br label %59

59:                                               ; preds = %57, %48
  br label %60

60:                                               ; preds = %59, %40
  br label %61

61:                                               ; preds = %60, %34
  %62 = load %struct.playlist*, %struct.playlist** %11, align 8
  %63 = getelementptr inbounds %struct.playlist, %struct.playlist* %62, i32 0, i32 0
  %64 = load %struct.playlist_entry*, %struct.playlist_entry** %63, align 8
  %65 = load %struct.playlist_entry*, %struct.playlist_entry** %13, align 8
  %66 = icmp eq %struct.playlist_entry* %64, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %61
  %68 = load i8*, i8** @list_current, align 8
  br label %71

69:                                               ; preds = %61
  %70 = load i8*, i8** @list_normal, align 8
  br label %71

71:                                               ; preds = %69, %67
  %72 = phi i8* [ %68, %67 ], [ %70, %69 ]
  store i8* %72, i8** %16, align 8
  %73 = load i8*, i8** %12, align 8
  %74 = load i8*, i8** %16, align 8
  %75 = load i8*, i8** %14, align 8
  %76 = call i8* @talloc_asprintf_append(i8* %73, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %74, i8* %75)
  store i8* %76, i8** %12, align 8
  br label %77

77:                                               ; preds = %71
  %78 = load %struct.playlist_entry*, %struct.playlist_entry** %13, align 8
  %79 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %78, i32 0, i32 2
  %80 = load %struct.playlist_entry*, %struct.playlist_entry** %79, align 8
  store %struct.playlist_entry* %80, %struct.playlist_entry** %13, align 8
  br label %31

81:                                               ; preds = %31
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %83 = load i8*, i8** %12, align 8
  %84 = load %struct.playlist*, %struct.playlist** %11, align 8
  %85 = load %struct.playlist*, %struct.playlist** %11, align 8
  %86 = getelementptr inbounds %struct.playlist, %struct.playlist* %85, i32 0, i32 0
  %87 = load %struct.playlist_entry*, %struct.playlist_entry** %86, align 8
  %88 = call i32 @playlist_entry_to_index(%struct.playlist* %84, %struct.playlist_entry* %87)
  %89 = call i8* @cut_osd_list(%struct.TYPE_3__* %82, i8* %83, i32 %88)
  %90 = load i8*, i8** %9, align 8
  %91 = bitcast i8* %90 to i8**
  store i8* %89, i8** %91, align 8
  %92 = load i32, i32* @M_PROPERTY_OK, align 4
  store i32 %92, i32* %5, align 4
  br label %104

93:                                               ; preds = %4
  %94 = getelementptr inbounds %struct.get_playlist_ctx, %struct.get_playlist_ctx* %17, i32 0, i32 0
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  store %struct.TYPE_3__* %95, %struct.TYPE_3__** %94, align 8
  %96 = load i32, i32* %8, align 4
  %97 = load i8*, i8** %9, align 8
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 0
  %100 = load %struct.playlist*, %struct.playlist** %99, align 8
  %101 = call i32 @playlist_entry_count(%struct.playlist* %100)
  %102 = load i32, i32* @get_playlist_entry, align 4
  %103 = call i32 @m_property_read_list(i32 %96, i8* %97, i32 %101, i32 %102, %struct.get_playlist_ctx* %17)
  store i32 %103, i32* %5, align 4
  br label %104

104:                                              ; preds = %93, %81
  %105 = load i32, i32* %5, align 4
  ret i32 %105
}

declare dso_local i8* @talloc_strdup(i32*, i8*) #1

declare dso_local i32 @mp_is_url(i32) #1

declare dso_local i32 @bstr0(i8*) #1

declare dso_local i8* @mp_basename(i8*) #1

declare dso_local i8* @talloc_asprintf_append(i8*, i8*, i8*, i8*) #1

declare dso_local i8* @cut_osd_list(%struct.TYPE_3__*, i8*, i32) #1

declare dso_local i32 @playlist_entry_to_index(%struct.playlist*, %struct.playlist_entry*) #1

declare dso_local i32 @m_property_read_list(i32, i8*, i32, i32, %struct.get_playlist_ctx*) #1

declare dso_local i32 @playlist_entry_count(%struct.playlist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
