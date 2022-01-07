; ModuleID = '/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_cmd_module.c_ngx_rtmp_cmd_publish_init.c'
source_filename = "/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_cmd_module.c_ngx_rtmp_cmd_publish_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, i32, i32 }
%struct.TYPE_14__ = type { i32, i32, i32*, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }

@ngx_rtmp_cmd_publish_init.v = internal global %struct.TYPE_13__ zeroinitializer, align 4
@ngx_rtmp_cmd_publish_init.in_elts = internal global [4 x %struct.TYPE_14__] [%struct.TYPE_14__ { i32 131, i32 128, i32* null, i32 0 }, %struct.TYPE_14__ { i32 132, i32 128, i32* null, i32 0 }, %struct.TYPE_14__ { i32 129, i32 128, i32* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.TYPE_13__* @ngx_rtmp_cmd_publish_init.v to i8*), i64 12) to i32*), i32 4 }, %struct.TYPE_14__ { i32 131, i32 128, i32* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.TYPE_13__* @ngx_rtmp_cmd_publish_init.v to i8*), i64 4) to i32*), i32 4 }], align 16
@NGX_ERROR = common dso_local global i32 0, align 4
@NGX_LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"publish: name='%s' args='%s' type=%s silent=%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, i32*, i32*)* @ngx_rtmp_cmd_publish_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_rtmp_cmd_publish_init(%struct.TYPE_12__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %8 = call i32 @ngx_memzero(%struct.TYPE_13__* @ngx_rtmp_cmd_publish_init.v, i32 16)
  %9 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %10 = load i32*, i32** %7, align 8
  %11 = call i64 @ngx_rtmp_receive_amf(%struct.TYPE_12__* %9, i32* %10, %struct.TYPE_14__* getelementptr inbounds ([4 x %struct.TYPE_14__], [4 x %struct.TYPE_14__]* @ngx_rtmp_cmd_publish_init.in_elts, i64 0, i64 0), i32 4)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = load i32, i32* @NGX_ERROR, align 4
  store i32 %14, i32* %4, align 4
  br label %32

15:                                               ; preds = %3
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @ngx_rtmp_cmd_publish_init.v, i32 0, i32 3), align 4
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @ngx_rtmp_cmd_publish_init.v, i32 0, i32 2), align 4
  %18 = call i32 @ngx_rtmp_cmd_fill_args(i32 %16, i32 %17)
  %19 = load i32, i32* @NGX_LOG_INFO, align 4
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @ngx_rtmp_cmd_publish_init.v, i32 0, i32 3), align 4
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @ngx_rtmp_cmd_publish_init.v, i32 0, i32 2), align 4
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @ngx_rtmp_cmd_publish_init.v, i32 0, i32 1), align 4
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @ngx_rtmp_cmd_publish_init.v, i32 0, i32 0), align 4
  %29 = call i32 @ngx_log_error(i32 %19, i32 %24, i32 0, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %26, i32 %27, i32 %28)
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %31 = call i32 @ngx_rtmp_publish(%struct.TYPE_12__* %30, %struct.TYPE_13__* @ngx_rtmp_cmd_publish_init.v)
  store i32 %31, i32* %4, align 4
  br label %32

32:                                               ; preds = %15, %13
  %33 = load i32, i32* %4, align 4
  ret i32 %33
}

declare dso_local i32 @ngx_memzero(%struct.TYPE_13__*, i32) #1

declare dso_local i64 @ngx_rtmp_receive_amf(%struct.TYPE_12__*, i32*, %struct.TYPE_14__*, i32) #1

declare dso_local i32 @ngx_rtmp_cmd_fill_args(i32, i32) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @ngx_rtmp_publish(%struct.TYPE_12__*, %struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
