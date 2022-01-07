; ModuleID = '/home/carl/AnghaBench/nginx/src/stream/extr_ngx_stream_geoip_module.c_ngx_stream_geoip_city_variable.c'
source_filename = "/home/carl/AnghaBench/nginx/src/stream/extr_ngx_stream_geoip_module.c_ngx_stream_geoip_city_variable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i64, i32, i32, i64, i32* }

@NGX_ERROR = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, %struct.TYPE_8__*, i64)* @ngx_stream_geoip_city_variable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_stream_geoip_city_variable(%struct.TYPE_9__* %0, %struct.TYPE_8__* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %12 = call i32* @ngx_stream_geoip_get_city_record(%struct.TYPE_9__* %11)
  store i32* %12, i32** %10, align 8
  %13 = load i32*, i32** %10, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  br label %68

16:                                               ; preds = %3
  %17 = load i32*, i32** %10, align 8
  %18 = bitcast i32* %17 to i8*
  %19 = load i64, i64* %7, align 8
  %20 = getelementptr inbounds i8, i8* %18, i64 %19
  %21 = bitcast i8* %20 to i8**
  %22 = load i8*, i8** %21, align 8
  store i8* %22, i8** %8, align 8
  %23 = load i8*, i8** %8, align 8
  %24 = icmp eq i8* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %16
  br label %65

26:                                               ; preds = %16
  %27 = load i8*, i8** %8, align 8
  %28 = call i64 @ngx_strlen(i8* %27)
  store i64 %28, i64* %9, align 8
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i64, i64* %9, align 8
  %35 = call i32* @ngx_pnalloc(i32 %33, i64 %34)
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 4
  store i32* %35, i32** %37, align 8
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 4
  %40 = load i32*, i32** %39, align 8
  %41 = icmp eq i32* %40, null
  br i1 %41, label %42, label %46

42:                                               ; preds = %26
  %43 = load i32*, i32** %10, align 8
  %44 = call i32 @GeoIPRecord_delete(i32* %43)
  %45 = load i32, i32* @NGX_ERROR, align 4
  store i32 %45, i32* %4, align 4
  br label %72

46:                                               ; preds = %26
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 4
  %49 = load i32*, i32** %48, align 8
  %50 = load i8*, i8** %8, align 8
  %51 = load i64, i64* %9, align 8
  %52 = call i32 @ngx_memcpy(i32* %49, i8* %50, i64 %51)
  %53 = load i64, i64* %9, align 8
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  store i64 %53, i64* %55, align 8
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 1
  store i32 1, i32* %57, align 8
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 3
  store i64 0, i64* %59, align 8
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 2
  store i32 0, i32* %61, align 4
  %62 = load i32*, i32** %10, align 8
  %63 = call i32 @GeoIPRecord_delete(i32* %62)
  %64 = load i32, i32* @NGX_OK, align 4
  store i32 %64, i32* %4, align 4
  br label %72

65:                                               ; preds = %25
  %66 = load i32*, i32** %10, align 8
  %67 = call i32 @GeoIPRecord_delete(i32* %66)
  br label %68

68:                                               ; preds = %65, %15
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 2
  store i32 1, i32* %70, align 4
  %71 = load i32, i32* @NGX_OK, align 4
  store i32 %71, i32* %4, align 4
  br label %72

72:                                               ; preds = %68, %46, %42
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

declare dso_local i32* @ngx_stream_geoip_get_city_record(%struct.TYPE_9__*) #1

declare dso_local i64 @ngx_strlen(i8*) #1

declare dso_local i32* @ngx_pnalloc(i32, i64) #1

declare dso_local i32 @GeoIPRecord_delete(i32*) #1

declare dso_local i32 @ngx_memcpy(i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
