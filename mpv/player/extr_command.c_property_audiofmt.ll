; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_command.c_property_audiofmt.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_command.c_property_audiofmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_aframe = type { i32 }
%struct.mp_chmap = type { i32, i32 }
%struct.m_sub_property = type { i8*, i32 }

@M_PROPERTY_UNAVAILABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"samplerate\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"channel-count\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"channels\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"hr-channels\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"format\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mp_aframe*, i32, i8*)* @property_audiofmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @property_audiofmt(%struct.mp_aframe* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mp_aframe*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.mp_chmap, align 4
  %9 = alloca [6 x %struct.m_sub_property], align 16
  store %struct.mp_aframe* %0, %struct.mp_aframe** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %10 = load %struct.mp_aframe*, %struct.mp_aframe** %5, align 8
  %11 = icmp ne %struct.mp_aframe* %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %3
  %13 = load %struct.mp_aframe*, %struct.mp_aframe** %5, align 8
  %14 = call i32 @mp_aframe_config_is_valid(%struct.mp_aframe* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %12, %3
  %17 = load i32, i32* @M_PROPERTY_UNAVAILABLE, align 4
  store i32 %17, i32* %4, align 4
  br label %58

18:                                               ; preds = %12
  %19 = bitcast %struct.mp_chmap* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %19, i8 0, i64 8, i1 false)
  %20 = load %struct.mp_aframe*, %struct.mp_aframe** %5, align 8
  %21 = call i32 @mp_aframe_get_chmap(%struct.mp_aframe* %20, %struct.mp_chmap* %8)
  %22 = getelementptr inbounds [6 x %struct.m_sub_property], [6 x %struct.m_sub_property]* %9, i64 0, i64 0
  %23 = getelementptr inbounds %struct.m_sub_property, %struct.m_sub_property* %22, i32 0, i32 0
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8** %23, align 16
  %24 = getelementptr inbounds %struct.m_sub_property, %struct.m_sub_property* %22, i32 0, i32 1
  %25 = load %struct.mp_aframe*, %struct.mp_aframe** %5, align 8
  %26 = call i32 @mp_aframe_get_rate(%struct.mp_aframe* %25)
  %27 = call i32 @SUB_PROP_INT(i32 %26)
  store i32 %27, i32* %24, align 8
  %28 = getelementptr inbounds %struct.m_sub_property, %struct.m_sub_property* %22, i64 1
  %29 = getelementptr inbounds %struct.m_sub_property, %struct.m_sub_property* %28, i32 0, i32 0
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8** %29, align 16
  %30 = getelementptr inbounds %struct.m_sub_property, %struct.m_sub_property* %28, i32 0, i32 1
  %31 = getelementptr inbounds %struct.mp_chmap, %struct.mp_chmap* %8, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @SUB_PROP_INT(i32 %32)
  store i32 %33, i32* %30, align 8
  %34 = getelementptr inbounds %struct.m_sub_property, %struct.m_sub_property* %28, i64 1
  %35 = getelementptr inbounds %struct.m_sub_property, %struct.m_sub_property* %34, i32 0, i32 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8** %35, align 16
  %36 = getelementptr inbounds %struct.m_sub_property, %struct.m_sub_property* %34, i32 0, i32 1
  %37 = call i32 @mp_chmap_to_str(%struct.mp_chmap* %8)
  %38 = call i32 @SUB_PROP_STR(i32 %37)
  store i32 %38, i32* %36, align 8
  %39 = getelementptr inbounds %struct.m_sub_property, %struct.m_sub_property* %34, i64 1
  %40 = getelementptr inbounds %struct.m_sub_property, %struct.m_sub_property* %39, i32 0, i32 0
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8** %40, align 16
  %41 = getelementptr inbounds %struct.m_sub_property, %struct.m_sub_property* %39, i32 0, i32 1
  %42 = call i32 @mp_chmap_to_str_hr(%struct.mp_chmap* %8)
  %43 = call i32 @SUB_PROP_STR(i32 %42)
  store i32 %43, i32* %41, align 8
  %44 = getelementptr inbounds %struct.m_sub_property, %struct.m_sub_property* %39, i64 1
  %45 = getelementptr inbounds %struct.m_sub_property, %struct.m_sub_property* %44, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8** %45, align 16
  %46 = getelementptr inbounds %struct.m_sub_property, %struct.m_sub_property* %44, i32 0, i32 1
  %47 = load %struct.mp_aframe*, %struct.mp_aframe** %5, align 8
  %48 = call i32 @mp_aframe_get_format(%struct.mp_aframe* %47)
  %49 = call i32 @af_fmt_to_str(i32 %48)
  %50 = call i32 @SUB_PROP_STR(i32 %49)
  store i32 %50, i32* %46, align 8
  %51 = getelementptr inbounds %struct.m_sub_property, %struct.m_sub_property* %44, i64 1
  %52 = getelementptr inbounds %struct.m_sub_property, %struct.m_sub_property* %51, i32 0, i32 0
  store i8* null, i8** %52, align 16
  %53 = getelementptr inbounds %struct.m_sub_property, %struct.m_sub_property* %51, i32 0, i32 1
  store i32 0, i32* %53, align 8
  %54 = getelementptr inbounds [6 x %struct.m_sub_property], [6 x %struct.m_sub_property]* %9, i64 0, i64 0
  %55 = load i32, i32* %6, align 4
  %56 = load i8*, i8** %7, align 8
  %57 = call i32 @m_property_read_sub(%struct.m_sub_property* %54, i32 %55, i8* %56)
  store i32 %57, i32* %4, align 4
  br label %58

58:                                               ; preds = %18, %16
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local i32 @mp_aframe_config_is_valid(%struct.mp_aframe*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @mp_aframe_get_chmap(%struct.mp_aframe*, %struct.mp_chmap*) #1

declare dso_local i32 @SUB_PROP_INT(i32) #1

declare dso_local i32 @mp_aframe_get_rate(%struct.mp_aframe*) #1

declare dso_local i32 @SUB_PROP_STR(i32) #1

declare dso_local i32 @mp_chmap_to_str(%struct.mp_chmap*) #1

declare dso_local i32 @mp_chmap_to_str_hr(%struct.mp_chmap*) #1

declare dso_local i32 @af_fmt_to_str(i32) #1

declare dso_local i32 @mp_aframe_get_format(%struct.mp_aframe*) #1

declare dso_local i32 @m_property_read_sub(%struct.m_sub_property*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
