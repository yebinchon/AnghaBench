; ModuleID = '/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_control_module.c_ngx_rtmp_control_walk_app.c'
source_filename = "/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_control_module.c_ngx_rtmp_control_walk_app.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64 }
%struct.TYPE_12__ = type { %struct.TYPE_11__** }
%struct.TYPE_11__ = type { i64, %struct.TYPE_10__** }
%struct.TYPE_10__ = type { i32, %struct.TYPE_10__* }
%struct.TYPE_9__ = type { i64, i32 }

@ngx_rtmp_live_module = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@.str = private unnamed_addr constant [5 x i8] c"name\00", align 1
@NGX_OK = common dso_local global i64 0, align 8
@NGX_CONF_OK = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, %struct.TYPE_12__*)* @ngx_rtmp_control_walk_app to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ngx_rtmp_control_walk_app(i32* %0, %struct.TYPE_12__* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_9__, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca %struct.TYPE_11__*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %5, align 8
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %13, align 8
  %15 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @ngx_rtmp_live_module, i32 0, i32 0), align 8
  %16 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %14, i64 %15
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  store %struct.TYPE_11__* %17, %struct.TYPE_11__** %11, align 8
  %18 = load i32*, i32** %4, align 8
  %19 = call i64 @ngx_http_arg(i32* %18, i32* bitcast ([5 x i8]* @.str to i32*), i32 4, %struct.TYPE_9__* %7)
  %20 = load i64, i64* @NGX_OK, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %59

22:                                               ; preds = %2
  store i64 0, i64* %9, align 8
  br label %23

23:                                               ; preds = %54, %22
  %24 = load i64, i64* %9, align 8
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ult i64 %24, %27
  br i1 %28, label %29, label %57

29:                                               ; preds = %23
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %31, align 8
  %33 = load i64, i64* %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %32, i64 %33
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %34, align 8
  store %struct.TYPE_10__* %35, %struct.TYPE_10__** %10, align 8
  br label %36

36:                                               ; preds = %49, %29
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %38 = icmp ne %struct.TYPE_10__* %37, null
  br i1 %38, label %39, label %53

39:                                               ; preds = %36
  %40 = load i32*, i32** %4, align 8
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %42 = call i8* @ngx_rtmp_control_walk_stream(i32* %40, %struct.TYPE_10__* %41)
  store i8* %42, i8** %8, align 8
  %43 = load i8*, i8** %8, align 8
  %44 = load i8*, i8** @NGX_CONF_OK, align 8
  %45 = icmp ne i8* %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %39
  %47 = load i8*, i8** %8, align 8
  store i8* %47, i8** %3, align 8
  br label %113

48:                                               ; preds = %39
  br label %49

49:                                               ; preds = %48
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %51, align 8
  store %struct.TYPE_10__* %52, %struct.TYPE_10__** %10, align 8
  br label %36

53:                                               ; preds = %36
  br label %54

54:                                               ; preds = %53
  %55 = load i64, i64* %9, align 8
  %56 = add i64 %55, 1
  store i64 %56, i64* %9, align 8
  br label %23

57:                                               ; preds = %23
  %58 = load i8*, i8** @NGX_CONF_OK, align 8
  store i8* %58, i8** %3, align 8
  br label %113

59:                                               ; preds = %2
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 1
  %62 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = call i64 @ngx_hash_key(i32 %64, i64 %66)
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = urem i64 %67, %70
  %72 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %62, i64 %71
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %72, align 8
  store %struct.TYPE_10__* %73, %struct.TYPE_10__** %10, align 8
  br label %74

74:                                               ; preds = %107, %59
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %76 = icmp ne %struct.TYPE_10__* %75, null
  br i1 %76, label %77, label %111

77:                                               ; preds = %74
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i64 @ngx_strlen(i32 %80)
  store i64 %81, i64* %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* %6, align 8
  %85 = icmp ne i64 %83, %84
  br i1 %85, label %96, label %86

86:                                               ; preds = %77
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = call i64 @ngx_strncmp(i32 %88, i32 %91, i64 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %86, %77
  br label %107

97:                                               ; preds = %86
  %98 = load i32*, i32** %4, align 8
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %100 = call i8* @ngx_rtmp_control_walk_stream(i32* %98, %struct.TYPE_10__* %99)
  store i8* %100, i8** %8, align 8
  %101 = load i8*, i8** %8, align 8
  %102 = load i8*, i8** @NGX_CONF_OK, align 8
  %103 = icmp ne i8* %101, %102
  br i1 %103, label %104, label %106

104:                                              ; preds = %97
  %105 = load i8*, i8** %8, align 8
  store i8* %105, i8** %3, align 8
  br label %113

106:                                              ; preds = %97
  br label %107

107:                                              ; preds = %106, %96
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 1
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %109, align 8
  store %struct.TYPE_10__* %110, %struct.TYPE_10__** %10, align 8
  br label %74

111:                                              ; preds = %74
  %112 = load i8*, i8** @NGX_CONF_OK, align 8
  store i8* %112, i8** %3, align 8
  br label %113

113:                                              ; preds = %111, %104, %57, %46
  %114 = load i8*, i8** %3, align 8
  ret i8* %114
}

declare dso_local i64 @ngx_http_arg(i32*, i32*, i32, %struct.TYPE_9__*) #1

declare dso_local i8* @ngx_rtmp_control_walk_stream(i32*, %struct.TYPE_10__*) #1

declare dso_local i64 @ngx_hash_key(i32, i64) #1

declare dso_local i64 @ngx_strlen(i32) #1

declare dso_local i64 @ngx_strncmp(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
