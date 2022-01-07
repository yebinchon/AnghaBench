; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_command.c_mp_property_playlist_pos_x.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_command.c_mp_property_playlist_pos_x.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.m_property = type { i32 }
%struct.TYPE_3__ = type { %struct.playlist* }
%struct.playlist = type { i32, i32 }
%struct.playlist_entry = type { i32 }
%struct.m_option = type { i32, i32, i32, i32 }

@M_PROPERTY_UNAVAILABLE = common dso_local global i32 0, align 4
@M_PROPERTY_OK = common dso_local global i32 0, align 4
@M_PROPERTY_ERROR = common dso_local global i32 0, align 4
@CONF_RANGE = common dso_local global i32 0, align 4
@CONF_TYPE_INT = common dso_local global i32 0, align 4
@M_PROPERTY_NOT_IMPLEMENTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.m_property*, i32, i8*, i32)* @mp_property_playlist_pos_x to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mp_property_playlist_pos_x(i8* %0, %struct.m_property* %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.m_property*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_3__*, align 8
  %13 = alloca %struct.playlist*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.playlist_entry*, align 8
  %17 = alloca %struct.m_option, align 4
  store i8* %0, i8** %7, align 8
  store %struct.m_property* %1, %struct.m_property** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %18 = load i8*, i8** %7, align 8
  %19 = bitcast i8* %18 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %19, %struct.TYPE_3__** %12, align 8
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load %struct.playlist*, %struct.playlist** %21, align 8
  store %struct.playlist* %22, %struct.playlist** %13, align 8
  %23 = load %struct.playlist*, %struct.playlist** %13, align 8
  %24 = getelementptr inbounds %struct.playlist, %struct.playlist* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %5
  %28 = load i32, i32* @M_PROPERTY_UNAVAILABLE, align 4
  store i32 %28, i32* %6, align 4
  br label %86

29:                                               ; preds = %5
  %30 = load i32, i32* %9, align 4
  switch i32 %30, label %84 [
    i32 130, label %31
    i32 128, label %48
    i32 129, label %66
  ]

31:                                               ; preds = %29
  %32 = load %struct.playlist*, %struct.playlist** %13, align 8
  %33 = load %struct.playlist*, %struct.playlist** %13, align 8
  %34 = getelementptr inbounds %struct.playlist, %struct.playlist* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @playlist_entry_to_index(%struct.playlist* %32, i32 %35)
  store i32 %36, i32* %14, align 4
  %37 = load i32, i32* %14, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %31
  %40 = load i32, i32* @M_PROPERTY_UNAVAILABLE, align 4
  store i32 %40, i32* %6, align 4
  br label %86

41:                                               ; preds = %31
  %42 = load i32, i32* %14, align 4
  %43 = load i32, i32* %11, align 4
  %44 = add nsw i32 %42, %43
  %45 = load i8*, i8** %10, align 8
  %46 = bitcast i8* %45 to i32*
  store i32 %44, i32* %46, align 4
  %47 = load i32, i32* @M_PROPERTY_OK, align 4
  store i32 %47, i32* %6, align 4
  br label %86

48:                                               ; preds = %29
  %49 = load i8*, i8** %10, align 8
  %50 = bitcast i8* %49 to i32*
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %11, align 4
  %53 = sub nsw i32 %51, %52
  store i32 %53, i32* %15, align 4
  %54 = load %struct.playlist*, %struct.playlist** %13, align 8
  %55 = load i32, i32* %15, align 4
  %56 = call %struct.playlist_entry* @playlist_entry_from_index(%struct.playlist* %54, i32 %55)
  store %struct.playlist_entry* %56, %struct.playlist_entry** %16, align 8
  %57 = load %struct.playlist_entry*, %struct.playlist_entry** %16, align 8
  %58 = icmp ne %struct.playlist_entry* %57, null
  br i1 %58, label %61, label %59

59:                                               ; preds = %48
  %60 = load i32, i32* @M_PROPERTY_ERROR, align 4
  store i32 %60, i32* %6, align 4
  br label %86

61:                                               ; preds = %48
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %63 = load %struct.playlist_entry*, %struct.playlist_entry** %16, align 8
  %64 = call i32 @mp_set_playlist_entry(%struct.TYPE_3__* %62, %struct.playlist_entry* %63)
  %65 = load i32, i32* @M_PROPERTY_OK, align 4
  store i32 %65, i32* %6, align 4
  br label %86

66:                                               ; preds = %29
  %67 = getelementptr inbounds %struct.m_option, %struct.m_option* %17, i32 0, i32 0
  %68 = load i32, i32* %11, align 4
  store i32 %68, i32* %67, align 4
  %69 = getelementptr inbounds %struct.m_option, %struct.m_option* %17, i32 0, i32 1
  %70 = load %struct.playlist*, %struct.playlist** %13, align 8
  %71 = call i32 @playlist_entry_count(%struct.playlist* %70)
  %72 = sub nsw i32 %71, 1
  %73 = load i32, i32* %11, align 4
  %74 = add nsw i32 %72, %73
  store i32 %74, i32* %69, align 4
  %75 = getelementptr inbounds %struct.m_option, %struct.m_option* %17, i32 0, i32 2
  %76 = load i32, i32* @CONF_RANGE, align 4
  store i32 %76, i32* %75, align 4
  %77 = getelementptr inbounds %struct.m_option, %struct.m_option* %17, i32 0, i32 3
  %78 = load i32, i32* @CONF_TYPE_INT, align 4
  store i32 %78, i32* %77, align 4
  %79 = load i8*, i8** %10, align 8
  %80 = bitcast i8* %79 to %struct.m_option*
  %81 = bitcast %struct.m_option* %80 to i8*
  %82 = bitcast %struct.m_option* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %81, i8* align 4 %82, i64 16, i1 false)
  %83 = load i32, i32* @M_PROPERTY_OK, align 4
  store i32 %83, i32* %6, align 4
  br label %86

84:                                               ; preds = %29
  %85 = load i32, i32* @M_PROPERTY_NOT_IMPLEMENTED, align 4
  store i32 %85, i32* %6, align 4
  br label %86

86:                                               ; preds = %84, %66, %61, %59, %41, %39, %27
  %87 = load i32, i32* %6, align 4
  ret i32 %87
}

declare dso_local i32 @playlist_entry_to_index(%struct.playlist*, i32) #1

declare dso_local %struct.playlist_entry* @playlist_entry_from_index(%struct.playlist*, i32) #1

declare dso_local i32 @mp_set_playlist_entry(%struct.TYPE_3__*, %struct.playlist_entry*) #1

declare dso_local i32 @playlist_entry_count(%struct.playlist*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
