; ModuleID = '/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_control_module.c_ngx_rtmp_control_walk.c'
source_filename = "/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_control_module.c_ngx_rtmp_control_walk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64, i32** }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64, i32** }

@ngx_rtmp_core_main_conf = common dso_local global %struct.TYPE_12__* null, align 8
@.str = private unnamed_addr constant [4 x i8] c"srv\00", align 1
@NGX_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"Server index out of range\00", align 1
@NGX_CONF_OK = common dso_local global i8* null, align 8
@ngx_rtmp_control_module = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, i8* (i32*, i32*)*)* @ngx_rtmp_control_walk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ngx_rtmp_control_walk(i32* %0, i8* (i32*, i32*)* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8* (i32*, i32*)*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca %struct.TYPE_11__, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32**, align 8
  %12 = alloca %struct.TYPE_13__*, align 8
  %13 = alloca i32**, align 8
  store i32* %0, i32** %4, align 8
  store i8* (i32*, i32*)* %1, i8* (i32*, i32*)** %5, align 8
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** @ngx_rtmp_core_main_conf, align 8
  store %struct.TYPE_12__* %14, %struct.TYPE_12__** %6, align 8
  store i64 0, i64* %8, align 8
  %15 = load i32*, i32** %4, align 8
  %16 = call i64 @ngx_http_arg(i32* %15, i32* bitcast ([4 x i8]* @.str to i32*), i32 3, %struct.TYPE_11__* %7)
  %17 = load i64, i64* @NGX_OK, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %25

19:                                               ; preds = %2
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @ngx_atoi(i32 %21, i32 %23)
  store i64 %24, i64* %8, align 8
  br label %25

25:                                               ; preds = %19, %2
  %26 = load i64, i64* %8, align 8
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp sge i64 %26, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8** %3, align 8
  br label %84

33:                                               ; preds = %25
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 1
  %37 = load i32**, i32*** %36, align 8
  store i32** %37, i32*** %13, align 8
  %38 = load i64, i64* %8, align 8
  %39 = load i32**, i32*** %13, align 8
  %40 = getelementptr inbounds i32*, i32** %39, i64 %38
  store i32** %40, i32*** %13, align 8
  %41 = load i32*, i32** %4, align 8
  %42 = load i32**, i32*** %13, align 8
  %43 = load i32*, i32** %42, align 8
  %44 = call i8* @ngx_rtmp_control_walk_server(i32* %41, i32* %43)
  store i8* %44, i8** %10, align 8
  %45 = load i8*, i8** %10, align 8
  %46 = load i8*, i8** @NGX_CONF_OK, align 8
  %47 = icmp ne i8* %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %33
  %49 = load i8*, i8** %10, align 8
  store i8* %49, i8** %3, align 8
  br label %84

50:                                               ; preds = %33
  %51 = load i32*, i32** %4, align 8
  %52 = load i32, i32* @ngx_rtmp_control_module, align 4
  %53 = call %struct.TYPE_13__* @ngx_http_get_module_ctx(i32* %51, i32 %52)
  store %struct.TYPE_13__* %53, %struct.TYPE_13__** %12, align 8
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 1
  %57 = load i32**, i32*** %56, align 8
  store i32** %57, i32*** %11, align 8
  store i64 0, i64* %9, align 8
  br label %58

58:                                               ; preds = %79, %50
  %59 = load i64, i64* %9, align 8
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp slt i64 %59, %63
  br i1 %64, label %65, label %82

65:                                               ; preds = %58
  %66 = load i8* (i32*, i32*)*, i8* (i32*, i32*)** %5, align 8
  %67 = load i32*, i32** %4, align 8
  %68 = load i32**, i32*** %11, align 8
  %69 = load i64, i64* %9, align 8
  %70 = getelementptr inbounds i32*, i32** %68, i64 %69
  %71 = load i32*, i32** %70, align 8
  %72 = call i8* %66(i32* %67, i32* %71)
  store i8* %72, i8** %10, align 8
  %73 = load i8*, i8** %10, align 8
  %74 = load i8*, i8** @NGX_CONF_OK, align 8
  %75 = icmp ne i8* %73, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %65
  %77 = load i8*, i8** %10, align 8
  store i8* %77, i8** %3, align 8
  br label %84

78:                                               ; preds = %65
  br label %79

79:                                               ; preds = %78
  %80 = load i64, i64* %9, align 8
  %81 = add nsw i64 %80, 1
  store i64 %81, i64* %9, align 8
  br label %58

82:                                               ; preds = %58
  %83 = load i8*, i8** @NGX_CONF_OK, align 8
  store i8* %83, i8** %3, align 8
  br label %84

84:                                               ; preds = %82, %76, %48, %32
  %85 = load i8*, i8** %3, align 8
  ret i8* %85
}

declare dso_local i64 @ngx_http_arg(i32*, i32*, i32, %struct.TYPE_11__*) #1

declare dso_local i64 @ngx_atoi(i32, i32) #1

declare dso_local i8* @ngx_rtmp_control_walk_server(i32*, i32*) #1

declare dso_local %struct.TYPE_13__* @ngx_http_get_module_ctx(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
