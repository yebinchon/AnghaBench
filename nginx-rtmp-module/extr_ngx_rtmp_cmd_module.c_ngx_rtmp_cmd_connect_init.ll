; ModuleID = '/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_cmd_module.c_ngx_rtmp_cmd_connect_init.c'
source_filename = "/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_cmd_module.c_ngx_rtmp_cmd_connect_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i8*, i8*, i8*, i8*, i8, i8, i8*, i8, i8, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }

@ngx_rtmp_cmd_connect_init.v = internal global %struct.TYPE_11__ zeroinitializer, align 8
@ngx_rtmp_cmd_connect_init.in_cmd = internal global [8 x i8] c"\81\81\81\81\83\83\81\83", align 1
@ngx_rtmp_cmd_connect_init.in_elts = internal global [2 x i8] c"\83\82", align 1
@NGX_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"/_definst_\00", align 1
@NGX_LOG_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [125 x i8] c"connect: app='%s' args='%s' flashver='%s' swf_url='%s' tc_url='%s' page_url='%s' acodecs=%uD vcodecs=%uD object_encoding=%ui\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i32*, i32*)* @ngx_rtmp_cmd_connect_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_rtmp_cmd_connect_init(%struct.TYPE_10__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = call i32 @ngx_memzero(%struct.TYPE_11__* @ngx_rtmp_cmd_connect_init.v, i32 56)
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %11 = load i32*, i32** %7, align 8
  %12 = call i64 @ngx_rtmp_receive_amf(%struct.TYPE_10__* %10, i32* %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @ngx_rtmp_cmd_connect_init.in_elts, i64 0, i64 0), i32 2)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i32, i32* @NGX_ERROR, align 4
  store i32 %15, i32* %4, align 4
  br label %75

16:                                               ; preds = %3
  %17 = load i8*, i8** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @ngx_rtmp_cmd_connect_init.v, i32 0, i32 0), align 8
  %18 = call i64 @ngx_strlen(i8* %17)
  store i64 %18, i64* %8, align 8
  %19 = load i64, i64* %8, align 8
  %20 = icmp ugt i64 %19, 10
  br i1 %20, label %21, label %33

21:                                               ; preds = %16
  %22 = load i8*, i8** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @ngx_rtmp_cmd_connect_init.v, i32 0, i32 0), align 8
  %23 = load i64, i64* %8, align 8
  %24 = getelementptr inbounds i8, i8* %22, i64 %23
  %25 = getelementptr inbounds i8, i8* %24, i64 -10
  %26 = call i32 @ngx_memcmp(i8* %25, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 10)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %21
  %29 = load i8*, i8** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @ngx_rtmp_cmd_connect_init.v, i32 0, i32 0), align 8
  %30 = load i64, i64* %8, align 8
  %31 = sub i64 %30, 10
  %32 = getelementptr inbounds i8, i8* %29, i64 %31
  store i8 0, i8* %32, align 1
  br label %50

33:                                               ; preds = %21, %16
  %34 = load i64, i64* %8, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %49

36:                                               ; preds = %33
  %37 = load i8*, i8** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @ngx_rtmp_cmd_connect_init.v, i32 0, i32 0), align 8
  %38 = load i64, i64* %8, align 8
  %39 = sub i64 %38, 1
  %40 = getelementptr inbounds i8, i8* %37, i64 %39
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %42, 47
  br i1 %43, label %44, label %49

44:                                               ; preds = %36
  %45 = load i8*, i8** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @ngx_rtmp_cmd_connect_init.v, i32 0, i32 0), align 8
  %46 = load i64, i64* %8, align 8
  %47 = sub i64 %46, 1
  %48 = getelementptr inbounds i8, i8* %45, i64 %47
  store i8 0, i8* %48, align 1
  br label %49

49:                                               ; preds = %44, %36, %33
  br label %50

50:                                               ; preds = %49, %28
  %51 = load i8*, i8** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @ngx_rtmp_cmd_connect_init.v, i32 0, i32 0), align 8
  %52 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @ngx_rtmp_cmd_connect_init.v, i32 0, i32 9), align 4
  %53 = call i32 @ngx_rtmp_cmd_fill_args(i8* %51, i32 %52)
  %54 = load i32, i32* @NGX_LOG_INFO, align 4
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i8*, i8** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @ngx_rtmp_cmd_connect_init.v, i32 0, i32 0), align 8
  %61 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @ngx_rtmp_cmd_connect_init.v, i32 0, i32 9), align 4
  %62 = load i8*, i8** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @ngx_rtmp_cmd_connect_init.v, i32 0, i32 1), align 8
  %63 = load i8*, i8** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @ngx_rtmp_cmd_connect_init.v, i32 0, i32 2), align 8
  %64 = load i8*, i8** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @ngx_rtmp_cmd_connect_init.v, i32 0, i32 3), align 8
  %65 = load i8*, i8** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @ngx_rtmp_cmd_connect_init.v, i32 0, i32 6), align 8
  %66 = load i8, i8* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @ngx_rtmp_cmd_connect_init.v, i32 0, i32 4), align 8
  %67 = sext i8 %66 to i32
  %68 = load i8, i8* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @ngx_rtmp_cmd_connect_init.v, i32 0, i32 5), align 1
  %69 = sext i8 %68 to i32
  %70 = load i8, i8* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @ngx_rtmp_cmd_connect_init.v, i32 0, i32 7), align 8
  %71 = sext i8 %70 to i32
  %72 = call i32 @ngx_log_error(i32 %54, i32 %59, i32 0, i8* getelementptr inbounds ([125 x i8], [125 x i8]* @.str.1, i64 0, i64 0), i8* %60, i32 %61, i8* %62, i8* %63, i8* %64, i8* %65, i32 %67, i32 %69, i32 %71)
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %74 = call i32 @ngx_rtmp_connect(%struct.TYPE_10__* %73, %struct.TYPE_11__* @ngx_rtmp_cmd_connect_init.v)
  store i32 %74, i32* %4, align 4
  br label %75

75:                                               ; preds = %50, %14
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

declare dso_local i32 @ngx_memzero(%struct.TYPE_11__*, i32) #1

declare dso_local i64 @ngx_rtmp_receive_amf(%struct.TYPE_10__*, i32*, i8*, i32) #1

declare dso_local i64 @ngx_strlen(i8*) #1

declare dso_local i32 @ngx_memcmp(i8*, i8*, i32) #1

declare dso_local i32 @ngx_rtmp_cmd_fill_args(i8*, i32) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, i8*, i32, i8*, i8*, i8*, i8*, i32, i32, i32) #1

declare dso_local i32 @ngx_rtmp_connect(%struct.TYPE_10__*, %struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
