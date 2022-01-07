; ModuleID = '/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_control_module.c_ngx_rtmp_control_record_handler.c'
source_filename = "/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_control_module.c_ngx_rtmp_control_record_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64 }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_13__ = type { i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32** }

@ngx_rtmp_core_module = common dso_local global i32 0, align 4
@ngx_rtmp_record_module = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@.str = private unnamed_addr constant [4 x i8] c"rec\00", align 1
@NGX_OK = common dso_local global i64 0, align 8
@NGX_CONF_UNSET_UINT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"Recorder not found\00", align 1
@ngx_rtmp_control_module = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"start\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"stop\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"Undefined method\00", align 1
@NGX_ERROR = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [15 x i8] c"Recorder error\00", align 1
@NGX_CONF_OK = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, i32*)* @ngx_rtmp_control_record_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ngx_rtmp_control_record_handler(i32* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_11__, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = load i32, i32* @ngx_rtmp_core_module, align 4
  %14 = call %struct.TYPE_12__* @ngx_rtmp_get_module_app_conf(i32* %12, i32 %13)
  store %struct.TYPE_12__* %14, %struct.TYPE_12__** %10, align 8
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 0
  %17 = load i32**, i32*** %16, align 8
  %18 = load i64, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @ngx_rtmp_record_module, i32 0, i32 0), align 8
  %19 = getelementptr inbounds i32*, i32** %17, i64 %18
  %20 = load i32*, i32** %19, align 8
  store i32* %20, i32** %11, align 8
  %21 = load i32*, i32** %4, align 8
  %22 = call i64 @ngx_http_arg(i32* %21, i32* bitcast ([4 x i8]* @.str to i32*), i32 3, %struct.TYPE_11__* %7)
  %23 = load i64, i64* @NGX_OK, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %2
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 0
  store i64 0, i64* %26, align 8
  br label %27

27:                                               ; preds = %25, %2
  %28 = load i32*, i32** %11, align 8
  %29 = call i64 @ngx_rtmp_record_find(i32* %28, %struct.TYPE_11__* %7)
  store i64 %29, i64* %8, align 8
  %30 = load i64, i64* %8, align 8
  %31 = load i64, i64* @NGX_CONF_UNSET_UINT, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8** %3, align 8
  br label %94

34:                                               ; preds = %27
  %35 = load i32*, i32** %4, align 8
  %36 = load i32, i32* @ngx_rtmp_control_module, align 4
  %37 = call %struct.TYPE_13__* @ngx_http_get_module_ctx(i32* %35, i32 %36)
  store %struct.TYPE_13__* %37, %struct.TYPE_13__** %9, align 8
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = sext i32 %41 to i64
  %43 = icmp eq i64 %42, 5
  br i1 %43, label %44, label %61

44:                                               ; preds = %34
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i64 @ngx_strncmp(i32 %48, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %52)
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %44
  %56 = load i32*, i32** %5, align 8
  %57 = load i64, i64* %8, align 8
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 0
  %60 = call i64 @ngx_rtmp_record_open(i32* %56, i64 %57, i32* %59)
  store i64 %60, i64* %6, align 8
  br label %87

61:                                               ; preds = %44, %34
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = sext i32 %65 to i64
  %67 = icmp eq i64 %66, 4
  br i1 %67, label %68, label %85

68:                                               ; preds = %61
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i64 @ngx_strncmp(i32 %72, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %76)
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %68
  %80 = load i32*, i32** %5, align 8
  %81 = load i64, i64* %8, align 8
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 0
  %84 = call i64 @ngx_rtmp_record_close(i32* %80, i64 %81, i32* %83)
  store i64 %84, i64* %6, align 8
  br label %86

85:                                               ; preds = %68, %61
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i8** %3, align 8
  br label %94

86:                                               ; preds = %79
  br label %87

87:                                               ; preds = %86, %55
  %88 = load i64, i64* %6, align 8
  %89 = load i64, i64* @NGX_ERROR, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %87
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i8** %3, align 8
  br label %94

92:                                               ; preds = %87
  %93 = load i8*, i8** @NGX_CONF_OK, align 8
  store i8* %93, i8** %3, align 8
  br label %94

94:                                               ; preds = %92, %91, %85, %33
  %95 = load i8*, i8** %3, align 8
  ret i8* %95
}

declare dso_local %struct.TYPE_12__* @ngx_rtmp_get_module_app_conf(i32*, i32) #1

declare dso_local i64 @ngx_http_arg(i32*, i32*, i32, %struct.TYPE_11__*) #1

declare dso_local i64 @ngx_rtmp_record_find(i32*, %struct.TYPE_11__*) #1

declare dso_local %struct.TYPE_13__* @ngx_http_get_module_ctx(i32*, i32) #1

declare dso_local i64 @ngx_strncmp(i32, i8*, i32) #1

declare dso_local i64 @ngx_rtmp_record_open(i32*, i64, i32*) #1

declare dso_local i64 @ngx_rtmp_record_close(i32*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
