; ModuleID = '/home/carl/AnghaBench/mpv/video/out/hwdec/extr_hwdec_vaapi.c_try_format_config.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/hwdec/extr_hwdec_vaapi.c_try_format_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ra_hwdec = type { %struct.priv_owner* }
%struct.priv_owner = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i64* }

@.str = private unnamed_addr constant [48 x i8] c"failed to retrieve libavutil frame constraints\0A\00", align 1
@AV_PIX_FMT_NONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ra_hwdec*, i32*)* @try_format_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @try_format_config(%struct.ra_hwdec* %0, i32* %1) #0 {
  %3 = alloca %struct.ra_hwdec*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.priv_owner*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32, align 4
  store %struct.ra_hwdec* %0, %struct.ra_hwdec** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load %struct.ra_hwdec*, %struct.ra_hwdec** %3, align 8
  %9 = getelementptr inbounds %struct.ra_hwdec, %struct.ra_hwdec* %8, i32 0, i32 0
  %10 = load %struct.priv_owner*, %struct.priv_owner** %9, align 8
  store %struct.priv_owner* %10, %struct.priv_owner** %5, align 8
  %11 = load %struct.priv_owner*, %struct.priv_owner** %5, align 8
  %12 = getelementptr inbounds %struct.priv_owner, %struct.priv_owner* %11, i32 0, i32 0
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32*, i32** %4, align 8
  %17 = call %struct.TYPE_6__* @av_hwdevice_get_hwframe_constraints(i32 %15, i32* %16)
  store %struct.TYPE_6__* %17, %struct.TYPE_6__** %6, align 8
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %19 = icmp ne %struct.TYPE_6__* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %2
  %21 = load %struct.ra_hwdec*, %struct.ra_hwdec** %3, align 8
  %22 = call i32 @MP_WARN(%struct.ra_hwdec* %21, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  br label %56

23:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %24

24:                                               ; preds = %51, %23
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i64*, i64** %26, align 8
  %28 = icmp ne i64* %27, null
  br i1 %28, label %29, label %39

29:                                               ; preds = %24
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i64*, i64** %31, align 8
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i64, i64* %32, i64 %34
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @AV_PIX_FMT_NONE, align 8
  %38 = icmp ne i64 %36, %37
  br label %39

39:                                               ; preds = %29, %24
  %40 = phi i1 [ false, %24 ], [ %38, %29 ]
  br i1 %40, label %41, label %54

41:                                               ; preds = %39
  %42 = load %struct.ra_hwdec*, %struct.ra_hwdec** %3, align 8
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i64*, i64** %44, align 8
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i64, i64* %45, i64 %47
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @try_format_pixfmt(%struct.ra_hwdec* %42, i64 %49)
  br label %51

51:                                               ; preds = %41
  %52 = load i32, i32* %7, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %7, align 4
  br label %24

54:                                               ; preds = %39
  %55 = call i32 @av_hwframe_constraints_free(%struct.TYPE_6__** %6)
  br label %56

56:                                               ; preds = %54, %20
  ret void
}

declare dso_local %struct.TYPE_6__* @av_hwdevice_get_hwframe_constraints(i32, i32*) #1

declare dso_local i32 @MP_WARN(%struct.ra_hwdec*, i8*) #1

declare dso_local i32 @try_format_pixfmt(%struct.ra_hwdec*, i64) #1

declare dso_local i32 @av_hwframe_constraints_free(%struct.TYPE_6__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
