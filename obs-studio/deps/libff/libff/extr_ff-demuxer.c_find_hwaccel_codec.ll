; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/libff/libff/extr_ff-demuxer.c_find_hwaccel_codec.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/libff/libff/extr_ff-demuxer.c_find_hwaccel_codec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64 }
%struct.TYPE_8__ = type { i64 }

@AV_PIX_FMT_VDA_VLD = common dso_local global i64 0, align 8
@AV_PIX_FMT_DXVA2_VLD = common dso_local global i64 0, align 8
@AV_PIX_FMT_VAAPI_VLD = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_7__* @find_hwaccel_codec(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %4, align 8
  br label %5

5:                                                ; preds = %37, %1
  %6 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %7 = call %struct.TYPE_7__* @av_hwaccel_next(%struct.TYPE_7__* %6)
  store %struct.TYPE_7__* %7, %struct.TYPE_7__** %4, align 8
  %8 = icmp ne %struct.TYPE_7__* %7, null
  br i1 %8, label %9, label %38

9:                                                ; preds = %5
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %12, %15
  br i1 %16, label %17, label %37

17:                                               ; preds = %9
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @AV_PIX_FMT_VDA_VLD, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %35, label %23

23:                                               ; preds = %17
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @AV_PIX_FMT_DXVA2_VLD, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %35, label %29

29:                                               ; preds = %23
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @AV_PIX_FMT_VAAPI_VLD, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %29, %23, %17
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  store %struct.TYPE_7__* %36, %struct.TYPE_7__** %2, align 8
  br label %39

37:                                               ; preds = %29, %9
  br label %5

38:                                               ; preds = %5
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %2, align 8
  br label %39

39:                                               ; preds = %38, %35
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  ret %struct.TYPE_7__* %40
}

declare dso_local %struct.TYPE_7__* @av_hwaccel_next(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
