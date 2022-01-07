; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-ffmpeg/extr_jim-nvenc.c_nvenc_update.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-ffmpeg/extr_jim-nvenc.c_nvenc_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 (i32, %struct.TYPE_8__*)* }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32 }
%struct.nvenc_data = type { i32, i32, %struct.TYPE_7__, i64 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"bitrate\00", align 1
@NV_ENC_RECONFIGURE_PARAMS_VER = common dso_local global i32 0, align 4
@nv = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*)* @nvenc_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvenc_update(i8* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.nvenc_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_8__, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.nvenc_data*
  store %struct.nvenc_data* %10, %struct.nvenc_data** %6, align 8
  %11 = load %struct.nvenc_data*, %struct.nvenc_data** %6, align 8
  %12 = getelementptr inbounds %struct.nvenc_data, %struct.nvenc_data* %11, i32 0, i32 3
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %49

15:                                               ; preds = %2
  %16 = load i32*, i32** %5, align 8
  %17 = call i64 @obs_data_get_int(i32* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = mul nsw i32 %19, 1000
  %21 = load %struct.nvenc_data*, %struct.nvenc_data** %6, align 8
  %22 = getelementptr inbounds %struct.nvenc_data, %struct.nvenc_data* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  store i32 %20, i32* %24, align 8
  %25 = load i32, i32* %7, align 4
  %26 = mul nsw i32 %25, 1000
  %27 = load %struct.nvenc_data*, %struct.nvenc_data** %6, align 8
  %28 = getelementptr inbounds %struct.nvenc_data, %struct.nvenc_data* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 1
  store i32 %26, i32* %30, align 4
  %31 = bitcast %struct.TYPE_8__* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %31, i8 0, i64 20, i1 false)
  %32 = load i32, i32* @NV_ENC_RECONFIGURE_PARAMS_VER, align 4
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 3
  store i32 %32, i32* %33, align 4
  %34 = load %struct.nvenc_data*, %struct.nvenc_data** %6, align 8
  %35 = getelementptr inbounds %struct.nvenc_data, %struct.nvenc_data* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 2
  store i32 %36, i32* %37, align 4
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  store i32 1, i32* %38, align 4
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 1
  store i32 1, i32* %39, align 4
  %40 = load i32 (i32, %struct.TYPE_8__*)*, i32 (i32, %struct.TYPE_8__*)** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @nv, i32 0, i32 0), align 8
  %41 = load %struct.nvenc_data*, %struct.nvenc_data** %6, align 8
  %42 = getelementptr inbounds %struct.nvenc_data, %struct.nvenc_data* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 %40(i32 %43, %struct.TYPE_8__* %8)
  %45 = call i64 @NV_FAILED(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %15
  store i32 0, i32* %3, align 4
  br label %50

48:                                               ; preds = %15
  br label %49

49:                                               ; preds = %48, %2
  store i32 1, i32* %3, align 4
  br label %50

50:                                               ; preds = %49, %47
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i64 @obs_data_get_int(i32*, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i64 @NV_FAILED(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
