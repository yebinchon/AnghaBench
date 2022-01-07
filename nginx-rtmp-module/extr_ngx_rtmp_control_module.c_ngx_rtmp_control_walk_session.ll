; ModuleID = '/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_control_module.c_ngx_rtmp_control_walk_session.c'
source_filename = "/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_control_module.c_ngx_rtmp_control_walk_session.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64, i32 }
%struct.TYPE_14__ = type { i32, i32 }

@NGX_CONF_OK = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [5 x i8] c"addr\00", align 1
@NGX_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"clientid\00", align 1
@ngx_rtmp_control_module = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"allocation error\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, %struct.TYPE_13__*)* @ngx_rtmp_control_walk_session to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ngx_rtmp_control_walk_session(i32* %0, %struct.TYPE_13__* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca %struct.TYPE_11__, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca %struct.TYPE_11__, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca %struct.TYPE_12__**, align 8
  %11 = alloca %struct.TYPE_14__*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %5, align 8
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  store %struct.TYPE_12__* %14, %struct.TYPE_12__** %9, align 8
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %16 = icmp eq %struct.TYPE_12__* %15, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %2
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %21 = icmp eq %struct.TYPE_10__* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %17, %2
  %23 = load i8*, i8** @NGX_CONF_OK, align 8
  store i8* %23, i8** %3, align 8
  br label %108

24:                                               ; preds = %17
  %25 = load i32*, i32** %4, align 8
  %26 = call i64 @ngx_http_arg(i32* %25, i32* bitcast ([5 x i8]* @.str to i32*), i32 4, %struct.TYPE_11__* %6)
  %27 = load i64, i64* @NGX_OK, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %53

29:                                               ; preds = %24
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 1
  store %struct.TYPE_11__* %33, %struct.TYPE_11__** %7, align 8
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %36, %38
  br i1 %39, label %50, label %40

40:                                               ; preds = %29
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = call i64 @ngx_strncmp(i32 %43, i32 %45, i64 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %40, %29
  %51 = load i8*, i8** @NGX_CONF_OK, align 8
  store i8* %51, i8** %3, align 8
  br label %108

52:                                               ; preds = %40
  br label %53

53:                                               ; preds = %52, %24
  %54 = load i32*, i32** %4, align 8
  %55 = call i64 @ngx_http_arg(i32* %54, i32* bitcast ([9 x i8]* @.str.1 to i32*), i32 8, %struct.TYPE_11__* %8)
  %56 = load i64, i64* @NGX_OK, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %73

58:                                               ; preds = %53
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = call i64 @ngx_atoi(i32 %65, i64 %67)
  %69 = icmp ne i64 %63, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %58
  %71 = load i8*, i8** @NGX_CONF_OK, align 8
  store i8* %71, i8** %3, align 8
  br label %108

72:                                               ; preds = %58
  br label %73

73:                                               ; preds = %72, %53
  %74 = load i32*, i32** %4, align 8
  %75 = load i32, i32* @ngx_rtmp_control_module, align 4
  %76 = call %struct.TYPE_14__* @ngx_http_get_module_ctx(i32* %74, i32 %75)
  store %struct.TYPE_14__* %76, %struct.TYPE_14__** %11, align 8
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  switch i32 %79, label %97 [
    i32 129, label %80
    i32 128, label %88
    i32 130, label %96
  ]

80:                                               ; preds = %73
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %87, label %85

85:                                               ; preds = %80
  %86 = load i8*, i8** @NGX_CONF_OK, align 8
  store i8* %86, i8** %3, align 8
  br label %108

87:                                               ; preds = %80
  br label %97

88:                                               ; preds = %73
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %88
  %94 = load i8*, i8** @NGX_CONF_OK, align 8
  store i8* %94, i8** %3, align 8
  br label %108

95:                                               ; preds = %88
  br label %97

96:                                               ; preds = %73
  br label %97

97:                                               ; preds = %73, %96, %95, %87
  %98 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %99 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %98, i32 0, i32 1
  %100 = call %struct.TYPE_12__** @ngx_array_push(i32* %99)
  store %struct.TYPE_12__** %100, %struct.TYPE_12__*** %10, align 8
  %101 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %10, align 8
  %102 = icmp eq %struct.TYPE_12__** %101, null
  br i1 %102, label %103, label %104

103:                                              ; preds = %97
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i8** %3, align 8
  br label %108

104:                                              ; preds = %97
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %106 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %10, align 8
  store %struct.TYPE_12__* %105, %struct.TYPE_12__** %106, align 8
  %107 = load i8*, i8** @NGX_CONF_OK, align 8
  store i8* %107, i8** %3, align 8
  br label %108

108:                                              ; preds = %104, %103, %93, %85, %70, %50, %22
  %109 = load i8*, i8** %3, align 8
  ret i8* %109
}

declare dso_local i64 @ngx_http_arg(i32*, i32*, i32, %struct.TYPE_11__*) #1

declare dso_local i64 @ngx_strncmp(i32, i32, i64) #1

declare dso_local i64 @ngx_atoi(i32, i64) #1

declare dso_local %struct.TYPE_14__* @ngx_http_get_module_ctx(i32*, i32) #1

declare dso_local %struct.TYPE_12__** @ngx_array_push(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
