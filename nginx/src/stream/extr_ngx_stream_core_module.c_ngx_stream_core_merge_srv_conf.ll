; ModuleID = '/home/carl/AnghaBench/nginx/src/stream/extr_ngx_stream_core_module.c_ngx_stream_core_merge_srv_conf.c'
source_filename = "/home/carl/AnghaBench/nginx/src/stream/extr_ngx_stream_core_module.c_ngx_stream_core_merge_srv_conf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32*, i32, i32, i32*, i32*, i32 }

@NGX_CONF_ERROR = common dso_local global i8* null, align 8
@NGX_LOG_EMERG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"no handler for server in %s:%ui\00", align 1
@NGX_CONF_OK = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_8__*, i8*, i8*)* @ngx_stream_core_merge_srv_conf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ngx_stream_core_merge_srv_conf(%struct.TYPE_8__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %11, %struct.TYPE_7__** %8, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = bitcast i8* %12 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %13, %struct.TYPE_7__** %9, align 8
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 9
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 9
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @ngx_conf_merge_msec_value(i32 %16, i32 %19, i32 30000)
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 8
  %23 = load i32*, i32** %22, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %48

25:                                               ; preds = %3
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 8
  %28 = load i32*, i32** %27, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %42

30:                                               ; preds = %25
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %32 = call i32* @ngx_resolver_create(%struct.TYPE_8__* %31, i32* null, i32 0)
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 8
  store i32* %32, i32** %34, align 8
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 8
  %37 = load i32*, i32** %36, align 8
  %38 = icmp eq i32* %37, null
  br i1 %38, label %39, label %41

39:                                               ; preds = %30
  %40 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %40, i8** %4, align 8
  br label %120

41:                                               ; preds = %30
  br label %42

42:                                               ; preds = %41, %25
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 8
  %45 = load i32*, i32** %44, align 8
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 8
  store i32* %45, i32** %47, align 8
  br label %48

48:                                               ; preds = %42, %3
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 7
  %51 = load i32*, i32** %50, align 8
  %52 = icmp eq i32* %51, null
  br i1 %52, label %53, label %66

53:                                               ; preds = %48
  %54 = load i32, i32* @NGX_LOG_EMERG, align 4
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 6
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 5
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @ngx_log_error(i32 %54, i32 %57, i32 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %60, i32 %63)
  %65 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %65, i8** %4, align 8
  br label %120

66:                                               ; preds = %48
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 4
  %69 = load i32*, i32** %68, align 8
  %70 = icmp eq i32* %69, null
  br i1 %70, label %71, label %90

71:                                               ; preds = %66
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 4
  %74 = load i32*, i32** %73, align 8
  %75 = icmp ne i32* %74, null
  br i1 %75, label %76, label %82

76:                                               ; preds = %71
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 4
  %79 = load i32*, i32** %78, align 8
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 4
  store i32* %79, i32** %81, align 8
  br label %89

82:                                               ; preds = %71
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 4
  store i32* %86, i32** %88, align 8
  br label %89

89:                                               ; preds = %82, %76
  br label %90

90:                                               ; preds = %89, %66
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @ngx_conf_merge_msec_value(i32 %93, i32 %96, i32 30000)
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @ngx_conf_merge_value(i32 %100, i32 %103, i32 1)
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @ngx_conf_merge_size_value(i32 %107, i32 %110, i32 16384)
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @ngx_conf_merge_msec_value(i32 %114, i32 %117, i32 30000)
  %119 = load i8*, i8** @NGX_CONF_OK, align 8
  store i8* %119, i8** %4, align 8
  br label %120

120:                                              ; preds = %90, %53, %39
  %121 = load i8*, i8** %4, align 8
  ret i8* %121
}

declare dso_local i32 @ngx_conf_merge_msec_value(i32, i32, i32) #1

declare dso_local i32* @ngx_resolver_create(%struct.TYPE_8__*, i32*, i32) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @ngx_conf_merge_value(i32, i32, i32) #1

declare dso_local i32 @ngx_conf_merge_size_value(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
