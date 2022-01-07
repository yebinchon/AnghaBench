; ModuleID = '/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_play_module.c_ngx_rtmp_play_open.c'
source_filename = "/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_play_module.c_ngx_rtmp_play_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_20__ = type { i64, i32, %struct.TYPE_21__, %struct.TYPE_17__ }
%struct.TYPE_21__ = type { i32, i32, %struct.TYPE_19__* }
%struct.TYPE_17__ = type { i64 }

@ngx_rtmp_play_module = common dso_local global i32 0, align 4
@NGX_INVALID_FILE = common dso_local global i64 0, align 8
@NGX_ERROR = common dso_local global i64 0, align 8
@NGX_RTMP_MSID = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"NetStream.Play.Start\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"Start video on demand\00", align 1
@ngx_rtmp_play_send = common dso_local global i32 0, align 4
@NGX_CONF_UNSET_UINT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_19__*, double)* @ngx_rtmp_play_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_rtmp_play_open(%struct.TYPE_19__* %0, double %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca double, align 8
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca %struct.TYPE_21__*, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %4, align 8
  store double %1, double* %5, align 8
  %9 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %10 = load i32, i32* @ngx_rtmp_play_module, align 4
  %11 = call %struct.TYPE_20__* @ngx_rtmp_get_module_ctx(%struct.TYPE_19__* %9, i32 %10)
  store %struct.TYPE_20__* %11, %struct.TYPE_20__** %6, align 8
  %12 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %12, i32 0, i32 3
  %14 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @NGX_INVALID_FILE, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i64, i64* @NGX_ERROR, align 8
  store i64 %19, i64* %3, align 8
  br label %112

20:                                               ; preds = %2
  %21 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %22 = load i32, i32* @NGX_RTMP_MSID, align 4
  %23 = call i64 @ngx_rtmp_send_stream_begin(%struct.TYPE_19__* %21, i32 %22)
  %24 = load i64, i64* @NGX_OK, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = load i64, i64* @NGX_ERROR, align 8
  store i64 %27, i64* %3, align 8
  br label %112

28:                                               ; preds = %20
  %29 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %30 = call i64 @ngx_rtmp_send_status(%struct.TYPE_19__* %29, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %31 = load i64, i64* @NGX_OK, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load i64, i64* @NGX_ERROR, align 8
  store i64 %34, i64* %3, align 8
  br label %112

35:                                               ; preds = %28
  %36 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %37 = call i64 @ngx_rtmp_play_join(%struct.TYPE_19__* %36)
  %38 = load i64, i64* @NGX_OK, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = load i64, i64* @NGX_ERROR, align 8
  store i64 %41, i64* %3, align 8
  br label %112

42:                                               ; preds = %35
  %43 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %43, i32 0, i32 2
  store %struct.TYPE_21__* %44, %struct.TYPE_21__** %7, align 8
  %45 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %46 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %46, i32 0, i32 2
  store %struct.TYPE_19__* %45, %struct.TYPE_19__** %47, align 8
  %48 = load i32, i32* @ngx_rtmp_play_send, align 4
  %49 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  %51 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_18__*, %struct.TYPE_18__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  %58 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %59 = call i32 @ngx_rtmp_send_recorded(%struct.TYPE_19__* %58, i32 1)
  %60 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %61 = call i64 @ngx_rtmp_send_sample_access(%struct.TYPE_19__* %60)
  %62 = load i64, i64* @NGX_OK, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %42
  %65 = load i64, i64* @NGX_ERROR, align 8
  store i64 %65, i64* %3, align 8
  br label %112

66:                                               ; preds = %42
  %67 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %68 = call i64 @ngx_rtmp_play_do_init(%struct.TYPE_19__* %67)
  %69 = load i64, i64* @NGX_OK, align 8
  %70 = icmp ne i64 %68, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %66
  %72 = load i64, i64* @NGX_ERROR, align 8
  store i64 %72, i64* %3, align 8
  br label %112

73:                                               ; preds = %66
  %74 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @NGX_CONF_UNSET_UINT, align 8
  %78 = icmp ne i64 %76, %77
  br i1 %78, label %79, label %83

79:                                               ; preds = %73
  %80 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  br label %92

83:                                               ; preds = %73
  %84 = load double, double* %5, align 8
  %85 = fcmp olt double %84, 0.000000e+00
  br i1 %85, label %86, label %87

86:                                               ; preds = %83
  br label %90

87:                                               ; preds = %83
  %88 = load double, double* %5, align 8
  %89 = fptosi double %88 to i64
  br label %90

90:                                               ; preds = %87, %86
  %91 = phi i64 [ 0, %86 ], [ %89, %87 ]
  br label %92

92:                                               ; preds = %90, %79
  %93 = phi i64 [ %82, %79 ], [ %91, %90 ]
  store i64 %93, i64* %8, align 8
  %94 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %95 = load i64, i64* %8, align 8
  %96 = call i64 @ngx_rtmp_play_do_seek(%struct.TYPE_19__* %94, i64 %95)
  %97 = load i64, i64* @NGX_OK, align 8
  %98 = icmp ne i64 %96, %97
  br i1 %98, label %99, label %101

99:                                               ; preds = %92
  %100 = load i64, i64* @NGX_ERROR, align 8
  store i64 %100, i64* %3, align 8
  br label %112

101:                                              ; preds = %92
  %102 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %103 = call i64 @ngx_rtmp_play_do_start(%struct.TYPE_19__* %102)
  %104 = load i64, i64* @NGX_OK, align 8
  %105 = icmp ne i64 %103, %104
  br i1 %105, label %106, label %108

106:                                              ; preds = %101
  %107 = load i64, i64* @NGX_ERROR, align 8
  store i64 %107, i64* %3, align 8
  br label %112

108:                                              ; preds = %101
  %109 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %109, i32 0, i32 1
  store i32 1, i32* %110, align 8
  %111 = load i64, i64* @NGX_OK, align 8
  store i64 %111, i64* %3, align 8
  br label %112

112:                                              ; preds = %108, %106, %99, %71, %64, %40, %33, %26, %18
  %113 = load i64, i64* %3, align 8
  ret i64 %113
}

declare dso_local %struct.TYPE_20__* @ngx_rtmp_get_module_ctx(%struct.TYPE_19__*, i32) #1

declare dso_local i64 @ngx_rtmp_send_stream_begin(%struct.TYPE_19__*, i32) #1

declare dso_local i64 @ngx_rtmp_send_status(%struct.TYPE_19__*, i8*, i8*, i8*) #1

declare dso_local i64 @ngx_rtmp_play_join(%struct.TYPE_19__*) #1

declare dso_local i32 @ngx_rtmp_send_recorded(%struct.TYPE_19__*, i32) #1

declare dso_local i64 @ngx_rtmp_send_sample_access(%struct.TYPE_19__*) #1

declare dso_local i64 @ngx_rtmp_play_do_init(%struct.TYPE_19__*) #1

declare dso_local i64 @ngx_rtmp_play_do_seek(%struct.TYPE_19__*, i64) #1

declare dso_local i64 @ngx_rtmp_play_do_start(%struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
