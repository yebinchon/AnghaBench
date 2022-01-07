; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_command.c_mp_property_video_frame_info.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_command.c_mp_property_video_frame_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.m_property = type { i32 }
%struct.TYPE_2__ = type { i64 }
%struct.mp_image = type { i32, i32 }
%struct.m_sub_property = type { i8*, i32, i32 }

@M_PROPERTY_UNAVAILABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"I\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"P\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@__const.mp_property_video_frame_info.pict_types = private unnamed_addr constant [4 x i8*] [i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0)], align 16
@.str.3 = private unnamed_addr constant [13 x i8] c"picture-type\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"interlaced\00", align 1
@MP_IMGFIELD_INTERLACED = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [4 x i8] c"tff\00", align 1
@MP_IMGFIELD_TOP_FIRST = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [7 x i8] c"repeat\00", align 1
@MP_IMGFIELD_REPEAT_FIRST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.m_property*, i32, i8*)* @mp_property_video_frame_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mp_property_video_frame_info(i8* %0, %struct.m_property* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.m_property*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_2__*, align 8
  %11 = alloca %struct.mp_image*, align 8
  %12 = alloca [4 x i8*], align 16
  %13 = alloca i8*, align 8
  %14 = alloca [5 x %struct.m_sub_property], align 16
  store i8* %0, i8** %6, align 8
  store %struct.m_property* %1, %struct.m_property** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = bitcast i8* %15 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %16, %struct.TYPE_2__** %10, align 8
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %4
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = call %struct.mp_image* @vo_get_current_frame(i64 %24)
  br label %27

26:                                               ; preds = %4
  br label %27

27:                                               ; preds = %26, %21
  %28 = phi %struct.mp_image* [ %25, %21 ], [ null, %26 ]
  store %struct.mp_image* %28, %struct.mp_image** %11, align 8
  %29 = load %struct.mp_image*, %struct.mp_image** %11, align 8
  %30 = icmp ne %struct.mp_image* %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %27
  %32 = load i32, i32* @M_PROPERTY_UNAVAILABLE, align 4
  store i32 %32, i32* %5, align 4
  br label %114

33:                                               ; preds = %27
  %34 = bitcast [4 x i8*]* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %34, i8* align 16 bitcast ([4 x i8*]* @__const.mp_property_video_frame_info.pict_types to i8*), i64 32, i1 false)
  %35 = load %struct.mp_image*, %struct.mp_image** %11, align 8
  %36 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp sge i32 %37, 1
  br i1 %38, label %39, label %51

39:                                               ; preds = %33
  %40 = load %struct.mp_image*, %struct.mp_image** %11, align 8
  %41 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp sle i32 %42, 3
  br i1 %43, label %44, label %51

44:                                               ; preds = %39
  %45 = load %struct.mp_image*, %struct.mp_image** %11, align 8
  %46 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [4 x i8*], [4 x i8*]* %12, i64 0, i64 %48
  %50 = load i8*, i8** %49, align 8
  br label %52

51:                                               ; preds = %39, %33
  br label %52

52:                                               ; preds = %51, %44
  %53 = phi i8* [ %50, %44 ], [ null, %51 ]
  store i8* %53, i8** %13, align 8
  %54 = getelementptr inbounds [5 x %struct.m_sub_property], [5 x %struct.m_sub_property]* %14, i64 0, i64 0
  %55 = getelementptr inbounds %struct.m_sub_property, %struct.m_sub_property* %54, i32 0, i32 0
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i8** %55, align 16
  %56 = getelementptr inbounds %struct.m_sub_property, %struct.m_sub_property* %54, i32 0, i32 1
  %57 = load i8*, i8** %13, align 8
  %58 = icmp ne i8* %57, null
  %59 = xor i1 %58, true
  %60 = zext i1 %59 to i32
  store i32 %60, i32* %56, align 8
  %61 = getelementptr inbounds %struct.m_sub_property, %struct.m_sub_property* %54, i32 0, i32 2
  store i32 0, i32* %61, align 4
  %62 = getelementptr inbounds %struct.m_sub_property, %struct.m_sub_property* %54, i64 1
  %63 = getelementptr inbounds %struct.m_sub_property, %struct.m_sub_property* %62, i32 0, i32 0
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8** %63, align 16
  %64 = getelementptr inbounds %struct.m_sub_property, %struct.m_sub_property* %62, i32 0, i32 1
  %65 = load %struct.mp_image*, %struct.mp_image** %11, align 8
  %66 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @MP_IMGFIELD_INTERLACED, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  %71 = xor i1 %70, true
  %72 = xor i1 %71, true
  %73 = zext i1 %72 to i32
  %74 = call i32 @SUB_PROP_FLAG(i32 %73)
  store i32 %74, i32* %64, align 8
  %75 = getelementptr inbounds %struct.m_sub_property, %struct.m_sub_property* %62, i32 0, i32 2
  store i32 0, i32* %75, align 4
  %76 = getelementptr inbounds %struct.m_sub_property, %struct.m_sub_property* %62, i64 1
  %77 = getelementptr inbounds %struct.m_sub_property, %struct.m_sub_property* %76, i32 0, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8** %77, align 16
  %78 = getelementptr inbounds %struct.m_sub_property, %struct.m_sub_property* %76, i32 0, i32 1
  %79 = load %struct.mp_image*, %struct.mp_image** %11, align 8
  %80 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @MP_IMGFIELD_TOP_FIRST, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  %85 = xor i1 %84, true
  %86 = xor i1 %85, true
  %87 = zext i1 %86 to i32
  %88 = call i32 @SUB_PROP_FLAG(i32 %87)
  store i32 %88, i32* %78, align 8
  %89 = getelementptr inbounds %struct.m_sub_property, %struct.m_sub_property* %76, i32 0, i32 2
  store i32 0, i32* %89, align 4
  %90 = getelementptr inbounds %struct.m_sub_property, %struct.m_sub_property* %76, i64 1
  %91 = getelementptr inbounds %struct.m_sub_property, %struct.m_sub_property* %90, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8** %91, align 16
  %92 = getelementptr inbounds %struct.m_sub_property, %struct.m_sub_property* %90, i32 0, i32 1
  %93 = load %struct.mp_image*, %struct.mp_image** %11, align 8
  %94 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @MP_IMGFIELD_REPEAT_FIRST, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  %99 = xor i1 %98, true
  %100 = xor i1 %99, true
  %101 = zext i1 %100 to i32
  %102 = call i32 @SUB_PROP_FLAG(i32 %101)
  store i32 %102, i32* %92, align 8
  %103 = getelementptr inbounds %struct.m_sub_property, %struct.m_sub_property* %90, i32 0, i32 2
  store i32 0, i32* %103, align 4
  %104 = getelementptr inbounds %struct.m_sub_property, %struct.m_sub_property* %90, i64 1
  %105 = getelementptr inbounds %struct.m_sub_property, %struct.m_sub_property* %104, i32 0, i32 0
  store i8* null, i8** %105, align 16
  %106 = getelementptr inbounds %struct.m_sub_property, %struct.m_sub_property* %104, i32 0, i32 1
  store i32 0, i32* %106, align 8
  %107 = getelementptr inbounds %struct.m_sub_property, %struct.m_sub_property* %104, i32 0, i32 2
  store i32 0, i32* %107, align 4
  %108 = load %struct.mp_image*, %struct.mp_image** %11, align 8
  %109 = call i32 @talloc_free(%struct.mp_image* %108)
  %110 = getelementptr inbounds [5 x %struct.m_sub_property], [5 x %struct.m_sub_property]* %14, i64 0, i64 0
  %111 = load i32, i32* %8, align 4
  %112 = load i8*, i8** %9, align 8
  %113 = call i32 @m_property_read_sub(%struct.m_sub_property* %110, i32 %111, i8* %112)
  store i32 %113, i32* %5, align 4
  br label %114

114:                                              ; preds = %52, %31
  %115 = load i32, i32* %5, align 4
  ret i32 %115
}

declare dso_local %struct.mp_image* @vo_get_current_frame(i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @SUB_PROP_FLAG(i32) #1

declare dso_local i32 @talloc_free(%struct.mp_image*) #1

declare dso_local i32 @m_property_read_sub(%struct.m_sub_property*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
