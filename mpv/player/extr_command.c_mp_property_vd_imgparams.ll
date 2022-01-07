; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_command.c_mp_property_vd_imgparams.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_command.c_mp_property_vd_imgparams.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.m_property = type { i32 }
%struct.TYPE_7__ = type { %struct.track***, %struct.vo_chain* }
%struct.track = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.mp_codec_params* }
%struct.mp_codec_params = type { i64, i64 }
%struct.vo_chain = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }
%struct.m_sub_property = type { i8*, i32 }

@M_PROPERTY_UNAVAILABLE = common dso_local global i32 0, align 4
@STREAM_VIDEO = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"h\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.m_property*, i32, i8*)* @mp_property_vd_imgparams to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mp_property_vd_imgparams(i8* %0, %struct.m_property* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.m_property*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca %struct.vo_chain*, align 8
  %12 = alloca %struct.track*, align 8
  %13 = alloca %struct.mp_codec_params*, align 8
  %14 = alloca [3 x %struct.m_sub_property], align 16
  store i8* %0, i8** %6, align 8
  store %struct.m_property* %1, %struct.m_property** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = bitcast i8* %15 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %16, %struct.TYPE_7__** %10, align 8
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 1
  %19 = load %struct.vo_chain*, %struct.vo_chain** %18, align 8
  store %struct.vo_chain* %19, %struct.vo_chain** %11, align 8
  %20 = load %struct.vo_chain*, %struct.vo_chain** %11, align 8
  %21 = icmp ne %struct.vo_chain* %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %4
  %23 = load i32, i32* @M_PROPERTY_UNAVAILABLE, align 4
  store i32 %23, i32* %5, align 4
  br label %104

24:                                               ; preds = %4
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load %struct.track***, %struct.track**** %26, align 8
  %28 = getelementptr inbounds %struct.track**, %struct.track*** %27, i64 0
  %29 = load %struct.track**, %struct.track*** %28, align 8
  %30 = load i64, i64* @STREAM_VIDEO, align 8
  %31 = getelementptr inbounds %struct.track*, %struct.track** %29, i64 %30
  %32 = load %struct.track*, %struct.track** %31, align 8
  store %struct.track* %32, %struct.track** %12, align 8
  %33 = load %struct.track*, %struct.track** %12, align 8
  %34 = icmp ne %struct.track* %33, null
  br i1 %34, label %35, label %46

35:                                               ; preds = %24
  %36 = load %struct.track*, %struct.track** %12, align 8
  %37 = getelementptr inbounds %struct.track, %struct.track* %36, i32 0, i32 0
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = icmp ne %struct.TYPE_5__* %38, null
  br i1 %39, label %40, label %46

40:                                               ; preds = %35
  %41 = load %struct.track*, %struct.track** %12, align 8
  %42 = getelementptr inbounds %struct.track, %struct.track* %41, i32 0, i32 0
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load %struct.mp_codec_params*, %struct.mp_codec_params** %44, align 8
  br label %47

46:                                               ; preds = %35, %24
  br label %47

47:                                               ; preds = %46, %40
  %48 = phi %struct.mp_codec_params* [ %45, %40 ], [ null, %46 ]
  store %struct.mp_codec_params* %48, %struct.mp_codec_params** %13, align 8
  %49 = load %struct.vo_chain*, %struct.vo_chain** %11, align 8
  %50 = getelementptr inbounds %struct.vo_chain, %struct.vo_chain* %49, i32 0, i32 0
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %66

56:                                               ; preds = %47
  %57 = load %struct.vo_chain*, %struct.vo_chain** %11, align 8
  %58 = getelementptr inbounds %struct.vo_chain, %struct.vo_chain* %57, i32 0, i32 0
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load i32, i32* %8, align 4
  %62 = load i8*, i8** %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = call i32 @property_imgparams(i64 %64, i32 %61, i8* %62)
  store i32 %65, i32* %5, align 4
  br label %104

66:                                               ; preds = %47
  %67 = load %struct.mp_codec_params*, %struct.mp_codec_params** %13, align 8
  %68 = icmp ne %struct.mp_codec_params* %67, null
  br i1 %68, label %69, label %101

69:                                               ; preds = %66
  %70 = load %struct.mp_codec_params*, %struct.mp_codec_params** %13, align 8
  %71 = getelementptr inbounds %struct.mp_codec_params, %struct.mp_codec_params* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %101

74:                                               ; preds = %69
  %75 = load %struct.mp_codec_params*, %struct.mp_codec_params** %13, align 8
  %76 = getelementptr inbounds %struct.mp_codec_params, %struct.mp_codec_params* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %101

79:                                               ; preds = %74
  %80 = getelementptr inbounds [3 x %struct.m_sub_property], [3 x %struct.m_sub_property]* %14, i64 0, i64 0
  %81 = getelementptr inbounds %struct.m_sub_property, %struct.m_sub_property* %80, i32 0, i32 0
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %81, align 16
  %82 = getelementptr inbounds %struct.m_sub_property, %struct.m_sub_property* %80, i32 0, i32 1
  %83 = load %struct.mp_codec_params*, %struct.mp_codec_params** %13, align 8
  %84 = getelementptr inbounds %struct.mp_codec_params, %struct.mp_codec_params* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = call i32 @SUB_PROP_INT(i64 %85)
  store i32 %86, i32* %82, align 8
  %87 = getelementptr inbounds %struct.m_sub_property, %struct.m_sub_property* %80, i64 1
  %88 = getelementptr inbounds %struct.m_sub_property, %struct.m_sub_property* %87, i32 0, i32 0
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8** %88, align 16
  %89 = getelementptr inbounds %struct.m_sub_property, %struct.m_sub_property* %87, i32 0, i32 1
  %90 = load %struct.mp_codec_params*, %struct.mp_codec_params** %13, align 8
  %91 = getelementptr inbounds %struct.mp_codec_params, %struct.mp_codec_params* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = call i32 @SUB_PROP_INT(i64 %92)
  store i32 %93, i32* %89, align 8
  %94 = getelementptr inbounds %struct.m_sub_property, %struct.m_sub_property* %87, i64 1
  %95 = getelementptr inbounds %struct.m_sub_property, %struct.m_sub_property* %94, i32 0, i32 0
  store i8* null, i8** %95, align 16
  %96 = getelementptr inbounds %struct.m_sub_property, %struct.m_sub_property* %94, i32 0, i32 1
  store i32 0, i32* %96, align 8
  %97 = getelementptr inbounds [3 x %struct.m_sub_property], [3 x %struct.m_sub_property]* %14, i64 0, i64 0
  %98 = load i32, i32* %8, align 4
  %99 = load i8*, i8** %9, align 8
  %100 = call i32 @m_property_read_sub(%struct.m_sub_property* %97, i32 %98, i8* %99)
  store i32 %100, i32* %5, align 4
  br label %104

101:                                              ; preds = %74, %69, %66
  br label %102

102:                                              ; preds = %101
  %103 = load i32, i32* @M_PROPERTY_UNAVAILABLE, align 4
  store i32 %103, i32* %5, align 4
  br label %104

104:                                              ; preds = %102, %79, %56, %22
  %105 = load i32, i32* %5, align 4
  ret i32 %105
}

declare dso_local i32 @property_imgparams(i64, i32, i8*) #1

declare dso_local i32 @SUB_PROP_INT(i64) #1

declare dso_local i32 @m_property_read_sub(%struct.m_sub_property*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
