; ModuleID = '/home/carl/AnghaBench/mimikatz/mimikatz/modules/extr_kuhl_m_busylight.c_kuhl_m_busylight_single.c'
source_filename = "/home/carl/AnghaBench/mimikatz/mimikatz/modules/extr_kuhl_m_busylight.c_kuhl_m_busylight_single.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8*, i8*, i8* }
%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_7__, i32, i32, i32, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32, i32, i32 }

@BUSYLIGHT_MEDIA_MUTE = common dso_local global i32 0, align 4
@BUSYLIGHT_COLOR_CYAN = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@isBusyLight = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i32] [i32 115, i32 111, i32 117, i32 110, i32 100, i32 0], align 4
@BUSYLIGHT_MEDIA_SOUND_OPENOFFICE = common dso_local global i32 0, align 4
@BUSYLIGHT_MEDIA_JINGLE_IM2 = common dso_local global i32 0, align 4
@BUSYLIGHT_MEDIA_VOLUME_4_MEDIUM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i32] [i32 99, i32 111, i32 108, i32 111, i32 114, i32 0], align 4
@kuhl_m_busylight_devices = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i32] [i32 78, i32 111, i32 32, i32 66, i32 117, i32 115, i32 121, i32 76, i32 105, i32 103, i32 104, i32 116, i32 10, i32 0], align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kuhl_m_busylight_single(i32 %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_6__, align 8
  store i32 %0, i32* %3, align 4
  store i32** %1, i32*** %4, align 8
  %8 = bitcast %struct.TYPE_6__* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %8, i8 0, i64 64, i1 false)
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 1
  store i32 1, i32* %9, align 4
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 3
  store i32 1, i32* %10, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 5
  %12 = load i32, i32* @BUSYLIGHT_MEDIA_MUTE, align 4
  store i32 %12, i32* %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 2
  %14 = bitcast %struct.TYPE_7__* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %14, i8* align 8 bitcast (%struct.TYPE_7__* @BUSYLIGHT_COLOR_CYAN to i8*), i64 24, i1 false)
  %15 = load i64, i64* @isBusyLight, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %62

17:                                               ; preds = %2
  %18 = load i32, i32* %3, align 4
  %19 = load i32**, i32*** %4, align 8
  %20 = call i64 @kull_m_string_args_byName(i32 %18, i32** %19, i8* bitcast ([6 x i32]* @.str to i8*), i32* null, i32* null)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = load i32, i32* @BUSYLIGHT_MEDIA_SOUND_OPENOFFICE, align 4
  br label %26

24:                                               ; preds = %17
  %25 = load i32, i32* @BUSYLIGHT_MEDIA_JINGLE_IM2, align 4
  br label %26

26:                                               ; preds = %24, %22
  %27 = phi i32 [ %23, %22 ], [ %25, %24 ]
  %28 = load i32, i32* @BUSYLIGHT_MEDIA_VOLUME_4_MEDIUM, align 4
  %29 = call i32 @BUSYLIGHT_MEDIA(i32 %27, i32 %28)
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 3
  store i32 %29, i32* %30, align 8
  %31 = load i32, i32* %3, align 4
  %32 = load i32**, i32*** %4, align 8
  %33 = call i64 @kull_m_string_args_byName(i32 %31, i32** %32, i8* bitcast ([6 x i32]* @.str.1 to i8*), i32* %5, i32* null)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %58

35:                                               ; preds = %26
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @wcstoul(i32 %36, i32* null, i32 0)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = and i32 %38, 16711680
  %40 = ashr i32 %39, 16
  %41 = sext i32 %40 to i64
  %42 = inttoptr i64 %41 to i8*
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 2
  store i8* %42, i8** %44, align 8
  %45 = load i32, i32* %6, align 4
  %46 = and i32 %45, 65280
  %47 = ashr i32 %46, 8
  %48 = sext i32 %47 to i64
  %49 = inttoptr i64 %48 to i8*
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 1
  store i8* %49, i8** %51, align 8
  %52 = load i32, i32* %6, align 4
  %53 = and i32 %52, 255
  %54 = sext i32 %53 to i64
  %55 = inttoptr i64 %54 to i8*
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  store i8* %55, i8** %57, align 8
  br label %58

58:                                               ; preds = %35, %26
  %59 = load i32, i32* @kuhl_m_busylight_devices, align 4
  %60 = load i32, i32* @TRUE, align 4
  %61 = call i32 @kull_m_busylight_request_send(i32 %59, %struct.TYPE_6__* %7, i32 1, i32 %60)
  br label %64

62:                                               ; preds = %2
  %63 = call i32 @PRINT_ERROR(i8* bitcast ([14 x i32]* @.str.2 to i8*))
  br label %64

64:                                               ; preds = %62, %58
  %65 = load i32, i32* @STATUS_SUCCESS, align 4
  ret i32 %65
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @BUSYLIGHT_MEDIA(i32, i32) #2

declare dso_local i64 @kull_m_string_args_byName(i32, i32**, i8*, i32*, i32*) #2

declare dso_local i32 @wcstoul(i32, i32*, i32) #2

declare dso_local i32 @kull_m_busylight_request_send(i32, %struct.TYPE_6__*, i32, i32) #2

declare dso_local i32 @PRINT_ERROR(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
