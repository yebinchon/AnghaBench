; ModuleID = '/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_send.c_ngx_rtmp_append_amf.c'
source_filename = "/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_send.c_ngx_rtmp_append_amf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_10__ = type { i32*, i32*, i32, i32, i32* }

@ngx_rtmp_core_module = common dso_local global i32 0, align 4
@ngx_rtmp_alloc_amf_buf = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ngx_rtmp_append_amf(%struct.TYPE_9__* %0, i32** %1, i32** %2, i32* %3, i64 %4) #0 {
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_10__, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %6, align 8
  store i32** %1, i32*** %7, align 8
  store i32** %2, i32*** %8, align 8
  store i32* %3, i32** %9, align 8
  store i64 %4, i64* %10, align 8
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %15 = load i32, i32* @ngx_rtmp_core_module, align 4
  %16 = call i32* @ngx_rtmp_get_module_srv_conf(%struct.TYPE_9__* %14, i32 %15)
  store i32* %16, i32** %12, align 8
  %17 = call i32 @memset(%struct.TYPE_10__* %11, i32 0, i32 32)
  %18 = load i32*, i32** %12, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 4
  store i32* %18, i32** %19, align 8
  %20 = load i32, i32* @ngx_rtmp_alloc_amf_buf, align 4
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 3
  store i32 %20, i32* %21, align 4
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 2
  store i32 %26, i32* %27, align 8
  %28 = load i32**, i32*** %7, align 8
  %29 = icmp ne i32** %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %5
  %31 = load i32**, i32*** %7, align 8
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 1
  store i32* %32, i32** %33, align 8
  br label %34

34:                                               ; preds = %30, %5
  %35 = load i32**, i32*** %8, align 8
  %36 = icmp ne i32** %35, null
  br i1 %36, label %37, label %41

37:                                               ; preds = %34
  %38 = load i32**, i32*** %8, align 8
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  store i32* %39, i32** %40, align 8
  br label %41

41:                                               ; preds = %37, %34
  %42 = load i32*, i32** %9, align 8
  %43 = load i64, i64* %10, align 8
  %44 = call i32 @ngx_rtmp_amf_write(%struct.TYPE_10__* %11, i32* %42, i64 %43)
  store i32 %44, i32* %13, align 4
  %45 = load i32**, i32*** %7, align 8
  %46 = icmp ne i32** %45, null
  br i1 %46, label %47, label %51

47:                                               ; preds = %41
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = load i32**, i32*** %7, align 8
  store i32* %49, i32** %50, align 8
  br label %51

51:                                               ; preds = %47, %41
  %52 = load i32**, i32*** %8, align 8
  %53 = icmp ne i32** %52, null
  br i1 %53, label %54, label %58

54:                                               ; preds = %51
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = load i32**, i32*** %8, align 8
  store i32* %56, i32** %57, align 8
  br label %58

58:                                               ; preds = %54, %51
  %59 = load i32, i32* %13, align 4
  ret i32 %59
}

declare dso_local i32* @ngx_rtmp_get_module_srv_conf(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @memset(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @ngx_rtmp_amf_write(%struct.TYPE_10__*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
