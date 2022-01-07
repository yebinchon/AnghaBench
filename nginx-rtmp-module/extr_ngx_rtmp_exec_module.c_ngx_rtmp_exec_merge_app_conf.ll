; ModuleID = '/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_exec_module.c_ngx_rtmp_exec_merge_app_conf.c'
source_filename = "/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_exec_module.c_ngx_rtmp_exec_merge_app_conf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32, i32*, %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { i64 }

@NGX_RTMP_EXEC_MAX = common dso_local global i64 0, align 8
@NGX_OK = common dso_local global i64 0, align 8
@NGX_CONF_ERROR = common dso_local global i8* null, align 8
@NGX_RTMP_EXEC_PULL = common dso_local global i64 0, align 8
@NGX_CONF_OK = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_7__*, i8*, i8*)* @ngx_rtmp_exec_merge_app_conf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ngx_rtmp_exec_merge_app_conf(%struct.TYPE_7__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %12, %struct.TYPE_6__** %8, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = bitcast i8* %13 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %14, %struct.TYPE_6__** %9, align 8
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @ngx_conf_merge_value(i32 %17, i32 %20, i32 1)
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @ngx_conf_merge_uint_value(i32 %24, i32 %27, i32 1024)
  store i64 0, i64* %10, align 8
  br label %29

29:                                               ; preds = %64, %3
  %30 = load i64, i64* %10, align 8
  %31 = load i64, i64* @NGX_RTMP_EXEC_MAX, align 8
  %32 = icmp ult i64 %30, %31
  br i1 %32, label %33, label %67

33:                                               ; preds = %29
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 3
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %35, align 8
  %37 = load i64, i64* %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i64 %37
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 3
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %40, align 8
  %42 = load i64, i64* %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i64 %42
  %44 = call i64 @ngx_rtmp_exec_merge_confs(%struct.TYPE_8__* %38, %struct.TYPE_8__* %43)
  %45 = load i64, i64* @NGX_OK, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %33
  %48 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %48, i8** %4, align 8
  br label %98

49:                                               ; preds = %33
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 3
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %51, align 8
  %53 = load i64, i64* %10, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %49
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 1
  store i32 1, i32* %60, align 4
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 1
  store i32 1, i32* %62, align 4
  br label %63

63:                                               ; preds = %58, %49
  br label %64

64:                                               ; preds = %63
  %65 = load i64, i64* %10, align 8
  %66 = add i64 %65, 1
  store i64 %66, i64* %10, align 8
  br label %29

67:                                               ; preds = %29
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 3
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %69, align 8
  %71 = load i64, i64* @NGX_RTMP_EXEC_PULL, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp sgt i64 %74, 0
  br i1 %75, label %76, label %96

76:                                               ; preds = %67
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = sext i32 %82 to i64
  %84 = mul i64 8, %83
  %85 = trunc i64 %84 to i32
  %86 = call i32* @ngx_pcalloc(i32 %79, i32 %85)
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 2
  store i32* %86, i32** %88, align 8
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 2
  %91 = load i32*, i32** %90, align 8
  %92 = icmp eq i32* %91, null
  br i1 %92, label %93, label %95

93:                                               ; preds = %76
  %94 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %94, i8** %4, align 8
  br label %98

95:                                               ; preds = %76
  br label %96

96:                                               ; preds = %95, %67
  %97 = load i8*, i8** @NGX_CONF_OK, align 8
  store i8* %97, i8** %4, align 8
  br label %98

98:                                               ; preds = %96, %93, %47
  %99 = load i8*, i8** %4, align 8
  ret i8* %99
}

declare dso_local i32 @ngx_conf_merge_value(i32, i32, i32) #1

declare dso_local i32 @ngx_conf_merge_uint_value(i32, i32, i32) #1

declare dso_local i64 @ngx_rtmp_exec_merge_confs(%struct.TYPE_8__*, %struct.TYPE_8__*) #1

declare dso_local i32* @ngx_pcalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
