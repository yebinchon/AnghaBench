; ModuleID = '/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_mp4_module.c_ngx_rtmp_mp4_seek_track.c'
source_filename = "/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_mp4_module.c_ngx_rtmp_mp4_seek_track.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }

@NGX_OK = common dso_local global i64 0, align 8
@NGX_ERROR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, %struct.TYPE_11__*, i64)* @ngx_rtmp_mp4_seek_track to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_rtmp_mp4_seek_track(i32* %0, %struct.TYPE_11__* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %10 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 0
  store %struct.TYPE_12__* %10, %struct.TYPE_12__** %8, align 8
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %12 = call i32 @ngx_memzero(%struct.TYPE_12__* %11, i32 4)
  %13 = load i32*, i32** %5, align 8
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %16 = load i64, i64* %7, align 8
  %17 = call i32 @ngx_rtmp_mp4_from_rtmp_timestamp(%struct.TYPE_11__* %15, i64 %16)
  %18 = call i64 @ngx_rtmp_mp4_seek_time(i32* %13, %struct.TYPE_11__* %14, i32 %17)
  %19 = load i64, i64* @NGX_OK, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %45, label %21

21:                                               ; preds = %3
  %22 = load i32*, i32** %5, align 8
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %24 = call i64 @ngx_rtmp_mp4_seek_key(i32* %22, %struct.TYPE_11__* %23)
  %25 = load i64, i64* @NGX_OK, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %45, label %27

27:                                               ; preds = %21
  %28 = load i32*, i32** %5, align 8
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %30 = call i64 @ngx_rtmp_mp4_seek_chunk(i32* %28, %struct.TYPE_11__* %29)
  %31 = load i64, i64* @NGX_OK, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %45, label %33

33:                                               ; preds = %27
  %34 = load i32*, i32** %5, align 8
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %36 = call i64 @ngx_rtmp_mp4_seek_size(i32* %34, %struct.TYPE_11__* %35)
  %37 = load i64, i64* @NGX_OK, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %45, label %39

39:                                               ; preds = %33
  %40 = load i32*, i32** %5, align 8
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %42 = call i64 @ngx_rtmp_mp4_seek_delay(i32* %40, %struct.TYPE_11__* %41)
  %43 = load i64, i64* @NGX_OK, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %39, %33, %27, %21, %3
  %46 = load i64, i64* @NGX_ERROR, align 8
  store i64 %46, i64* %4, align 8
  br label %51

47:                                               ; preds = %39
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 0
  store i32 1, i32* %49, align 4
  %50 = load i64, i64* @NGX_OK, align 8
  store i64 %50, i64* %4, align 8
  br label %51

51:                                               ; preds = %47, %45
  %52 = load i64, i64* %4, align 8
  ret i64 %52
}

declare dso_local i32 @ngx_memzero(%struct.TYPE_12__*, i32) #1

declare dso_local i64 @ngx_rtmp_mp4_seek_time(i32*, %struct.TYPE_11__*, i32) #1

declare dso_local i32 @ngx_rtmp_mp4_from_rtmp_timestamp(%struct.TYPE_11__*, i64) #1

declare dso_local i64 @ngx_rtmp_mp4_seek_key(i32*, %struct.TYPE_11__*) #1

declare dso_local i64 @ngx_rtmp_mp4_seek_chunk(i32*, %struct.TYPE_11__*) #1

declare dso_local i64 @ngx_rtmp_mp4_seek_size(i32*, %struct.TYPE_11__*) #1

declare dso_local i64 @ngx_rtmp_mp4_seek_delay(i32*, %struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
