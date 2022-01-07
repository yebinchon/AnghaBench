; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_vo.c_init_best_video_out.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_vo.c_init_best_video_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vo_driver = type { i64 }
%struct.vo = type { i32 }
%struct.mpv_global = type { i32 }
%struct.vo_extra = type { i32 }
%struct.mp_vo_opts = type { %struct.m_obj_settings* }
%struct.m_obj_settings = type { i8* }

@vo_sub_opts = common dso_local global i32 0, align 4
@video_out_drivers = common dso_local global %struct.vo_driver** null, align 8
@video_out_null = common dso_local global %struct.vo_driver zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.vo* @init_best_video_out(%struct.mpv_global* %0, %struct.vo_extra* %1) #0 {
  %3 = alloca %struct.mpv_global*, align 8
  %4 = alloca %struct.vo_extra*, align 8
  %5 = alloca %struct.mp_vo_opts*, align 8
  %6 = alloca %struct.m_obj_settings*, align 8
  %7 = alloca %struct.vo*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.vo_driver*, align 8
  store %struct.mpv_global* %0, %struct.mpv_global** %3, align 8
  store %struct.vo_extra* %1, %struct.vo_extra** %4, align 8
  %12 = load %struct.mpv_global*, %struct.mpv_global** %3, align 8
  %13 = call %struct.mp_vo_opts* @mp_get_config_group(i32* null, %struct.mpv_global* %12, i32* @vo_sub_opts)
  store %struct.mp_vo_opts* %13, %struct.mp_vo_opts** %5, align 8
  %14 = load %struct.mp_vo_opts*, %struct.mp_vo_opts** %5, align 8
  %15 = getelementptr inbounds %struct.mp_vo_opts, %struct.mp_vo_opts* %14, i32 0, i32 0
  %16 = load %struct.m_obj_settings*, %struct.m_obj_settings** %15, align 8
  store %struct.m_obj_settings* %16, %struct.m_obj_settings** %6, align 8
  store %struct.vo* null, %struct.vo** %7, align 8
  %17 = load %struct.m_obj_settings*, %struct.m_obj_settings** %6, align 8
  %18 = icmp ne %struct.m_obj_settings* %17, null
  br i1 %18, label %19, label %74

19:                                               ; preds = %2
  %20 = load %struct.m_obj_settings*, %struct.m_obj_settings** %6, align 8
  %21 = getelementptr inbounds %struct.m_obj_settings, %struct.m_obj_settings* %20, i64 0
  %22 = getelementptr inbounds %struct.m_obj_settings, %struct.m_obj_settings* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %74

25:                                               ; preds = %19
  store i32 0, i32* %8, align 4
  br label %26

26:                                               ; preds = %70, %25
  %27 = load %struct.m_obj_settings*, %struct.m_obj_settings** %6, align 8
  %28 = load i32, i32* %8, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.m_obj_settings, %struct.m_obj_settings* %27, i64 %29
  %31 = getelementptr inbounds %struct.m_obj_settings, %struct.m_obj_settings* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %73

34:                                               ; preds = %26
  %35 = load %struct.m_obj_settings*, %struct.m_obj_settings** %6, align 8
  %36 = load i32, i32* %8, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.m_obj_settings, %struct.m_obj_settings* %35, i64 %37
  %39 = getelementptr inbounds %struct.m_obj_settings, %struct.m_obj_settings* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = call i64 @strlen(i8* %40)
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %34
  br label %75

44:                                               ; preds = %34
  %45 = load %struct.m_obj_settings*, %struct.m_obj_settings** %6, align 8
  %46 = load i32, i32* %8, align 4
  %47 = add nsw i32 %46, 1
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.m_obj_settings, %struct.m_obj_settings* %45, i64 %48
  %50 = getelementptr inbounds %struct.m_obj_settings, %struct.m_obj_settings* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = icmp ne i8* %51, null
  %53 = xor i1 %52, true
  %54 = xor i1 %53, true
  %55 = zext i1 %54 to i32
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* %9, align 4
  %57 = load %struct.mpv_global*, %struct.mpv_global** %3, align 8
  %58 = load %struct.vo_extra*, %struct.vo_extra** %4, align 8
  %59 = load %struct.m_obj_settings*, %struct.m_obj_settings** %6, align 8
  %60 = load i32, i32* %8, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.m_obj_settings, %struct.m_obj_settings* %59, i64 %61
  %63 = getelementptr inbounds %struct.m_obj_settings, %struct.m_obj_settings* %62, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8
  %65 = call %struct.vo* @vo_create(i32 %56, %struct.mpv_global* %57, %struct.vo_extra* %58, i8* %64)
  store %struct.vo* %65, %struct.vo** %7, align 8
  %66 = load %struct.vo*, %struct.vo** %7, align 8
  %67 = icmp ne %struct.vo* %66, null
  br i1 %67, label %68, label %69

68:                                               ; preds = %44
  br label %108

69:                                               ; preds = %44
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %8, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %8, align 4
  br label %26

73:                                               ; preds = %26
  br label %108

74:                                               ; preds = %19, %2
  br label %75

75:                                               ; preds = %74, %43
  store i32 0, i32* %10, align 4
  br label %76

76:                                               ; preds = %104, %75
  %77 = load %struct.vo_driver**, %struct.vo_driver*** @video_out_drivers, align 8
  %78 = load i32, i32* %10, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.vo_driver*, %struct.vo_driver** %77, i64 %79
  %81 = load %struct.vo_driver*, %struct.vo_driver** %80, align 8
  %82 = icmp ne %struct.vo_driver* %81, null
  br i1 %82, label %83, label %107

83:                                               ; preds = %76
  %84 = load %struct.vo_driver**, %struct.vo_driver*** @video_out_drivers, align 8
  %85 = load i32, i32* %10, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.vo_driver*, %struct.vo_driver** %84, i64 %86
  %88 = load %struct.vo_driver*, %struct.vo_driver** %87, align 8
  store %struct.vo_driver* %88, %struct.vo_driver** %11, align 8
  %89 = load %struct.vo_driver*, %struct.vo_driver** %11, align 8
  %90 = icmp eq %struct.vo_driver* %89, @video_out_null
  br i1 %90, label %91, label %92

91:                                               ; preds = %83
  br label %107

92:                                               ; preds = %83
  %93 = load %struct.mpv_global*, %struct.mpv_global** %3, align 8
  %94 = load %struct.vo_extra*, %struct.vo_extra** %4, align 8
  %95 = load %struct.vo_driver*, %struct.vo_driver** %11, align 8
  %96 = getelementptr inbounds %struct.vo_driver, %struct.vo_driver* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = inttoptr i64 %97 to i8*
  %99 = call %struct.vo* @vo_create(i32 1, %struct.mpv_global* %93, %struct.vo_extra* %94, i8* %98)
  store %struct.vo* %99, %struct.vo** %7, align 8
  %100 = load %struct.vo*, %struct.vo** %7, align 8
  %101 = icmp ne %struct.vo* %100, null
  br i1 %101, label %102, label %103

102:                                              ; preds = %92
  br label %108

103:                                              ; preds = %92
  br label %104

104:                                              ; preds = %103
  %105 = load i32, i32* %10, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %10, align 4
  br label %76

107:                                              ; preds = %91, %76
  br label %108

108:                                              ; preds = %107, %102, %73, %68
  %109 = load %struct.mp_vo_opts*, %struct.mp_vo_opts** %5, align 8
  %110 = call i32 @talloc_free(%struct.mp_vo_opts* %109)
  %111 = load %struct.vo*, %struct.vo** %7, align 8
  ret %struct.vo* %111
}

declare dso_local %struct.mp_vo_opts* @mp_get_config_group(i32*, %struct.mpv_global*, i32*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local %struct.vo* @vo_create(i32, %struct.mpv_global*, %struct.vo_extra*, i8*) #1

declare dso_local i32 @talloc_free(%struct.mp_vo_opts*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
