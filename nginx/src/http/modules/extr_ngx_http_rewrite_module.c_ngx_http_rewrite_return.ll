; ModuleID = '/home/carl/AnghaBench/nginx/src/http/modules/extr_ngx_http_rewrite_module.c_ngx_http_rewrite_return.c'
source_filename = "/home/carl/AnghaBench/nginx/src/http/modules/extr_ngx_http_rewrite_module.c_ngx_http_rewrite_return.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_13__*, i32 }
%struct.TYPE_13__ = type { i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, i32* }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i64, i32, i32*, %struct.TYPE_14__*, %struct.TYPE_17__*, i32 }

@NGX_CONF_ERROR = common dso_local global i8* null, align 8
@ngx_http_script_return_code = common dso_local global i32 0, align 4
@NGX_ERROR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"http://\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"https://\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"$scheme\00", align 1
@NGX_HTTP_MOVED_TEMPORARILY = common dso_local global i64 0, align 8
@NGX_LOG_EMERG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"invalid return code \22%V\22\00", align 1
@NGX_CONF_OK = common dso_local global i8* null, align 8
@NGX_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_17__*, i32*, i8*)* @ngx_http_rewrite_return to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ngx_http_rewrite_return(%struct.TYPE_17__* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca %struct.TYPE_14__*, align 8
  %12 = alloca %struct.TYPE_15__*, align 8
  %13 = alloca %struct.TYPE_15__, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = bitcast i8* %14 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %15, %struct.TYPE_16__** %8, align 8
  %16 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i32 0, i32 0
  %21 = call %struct.TYPE_15__* @ngx_http_script_start_code(i32 %18, i32* %20, i32 48)
  store %struct.TYPE_15__* %21, %struct.TYPE_15__** %12, align 8
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %23 = icmp eq %struct.TYPE_15__* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %3
  %25 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %25, i8** %4, align 8
  br label %127

26:                                               ; preds = %3
  %27 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %30, align 8
  store %struct.TYPE_14__* %31, %struct.TYPE_14__** %10, align 8
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %33 = call i32 @ngx_memzero(%struct.TYPE_15__* %32, i32 48)
  %34 = load i32, i32* @ngx_http_script_return_code, align 4
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %35, i32 0, i32 5
  store i32 %34, i32* %36, align 8
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i64 1
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  store i32* %40, i32** %9, align 8
  %41 = load i32*, i32** %9, align 8
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i64 1
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i64 @ngx_atoi(i32* %41, i32 %45)
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %48 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %47, i32 0, i32 0
  store i64 %46, i64* %48, align 8
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @NGX_ERROR, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %87

54:                                               ; preds = %26
  %55 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp eq i32 %59, 2
  br i1 %60, label %61, label %79

61:                                               ; preds = %54
  %62 = load i32*, i32** %9, align 8
  %63 = call i64 @ngx_strncmp(i32* %62, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 7)
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %73, label %65

65:                                               ; preds = %61
  %66 = load i32*, i32** %9, align 8
  %67 = call i64 @ngx_strncmp(i32* %66, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 8)
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %73, label %69

69:                                               ; preds = %65
  %70 = load i32*, i32** %9, align 8
  %71 = call i64 @ngx_strncmp(i32* %70, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 7)
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %69, %65, %61
  %74 = load i64, i64* @NGX_HTTP_MOVED_TEMPORARILY, align 8
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %75, i32 0, i32 0
  store i64 %74, i64* %76, align 8
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i64 1
  store %struct.TYPE_14__* %78, %struct.TYPE_14__** %11, align 8
  br label %86

79:                                               ; preds = %69, %54
  %80 = load i32, i32* @NGX_LOG_EMERG, align 4
  %81 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i64 1
  %84 = call i32 @ngx_conf_log_error(i32 %80, %struct.TYPE_17__* %81, i32 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), %struct.TYPE_14__* %83)
  %85 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %85, i8** %4, align 8
  br label %127

86:                                               ; preds = %73
  br label %111

87:                                               ; preds = %26
  %88 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %89 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = icmp ugt i64 %90, 999
  br i1 %91, label %92, label %99

92:                                               ; preds = %87
  %93 = load i32, i32* @NGX_LOG_EMERG, align 4
  %94 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i64 1
  %97 = call i32 @ngx_conf_log_error(i32 %93, %struct.TYPE_17__* %94, i32 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), %struct.TYPE_14__* %96)
  %98 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %98, i8** %4, align 8
  br label %127

99:                                               ; preds = %87
  %100 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %100, i32 0, i32 0
  %102 = load %struct.TYPE_13__*, %struct.TYPE_13__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = icmp eq i32 %104, 2
  br i1 %105, label %106, label %108

106:                                              ; preds = %99
  %107 = load i8*, i8** @NGX_CONF_OK, align 8
  store i8* %107, i8** %4, align 8
  br label %127

108:                                              ; preds = %99
  %109 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %110 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %109, i64 2
  store %struct.TYPE_14__* %110, %struct.TYPE_14__** %11, align 8
  br label %111

111:                                              ; preds = %108, %86
  %112 = call i32 @ngx_memzero(%struct.TYPE_15__* %13, i32 48)
  %113 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 4
  store %struct.TYPE_17__* %113, %struct.TYPE_17__** %114, align 8
  %115 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %116 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 3
  store %struct.TYPE_14__* %115, %struct.TYPE_14__** %116, align 8
  %117 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %118 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 2
  store i32* %118, i32** %119, align 8
  %120 = call i64 @ngx_http_compile_complex_value(%struct.TYPE_15__* %13)
  %121 = load i64, i64* @NGX_OK, align 8
  %122 = icmp ne i64 %120, %121
  br i1 %122, label %123, label %125

123:                                              ; preds = %111
  %124 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %124, i8** %4, align 8
  br label %127

125:                                              ; preds = %111
  %126 = load i8*, i8** @NGX_CONF_OK, align 8
  store i8* %126, i8** %4, align 8
  br label %127

127:                                              ; preds = %125, %123, %106, %92, %79, %24
  %128 = load i8*, i8** %4, align 8
  ret i8* %128
}

declare dso_local %struct.TYPE_15__* @ngx_http_script_start_code(i32, i32*, i32) #1

declare dso_local i32 @ngx_memzero(%struct.TYPE_15__*, i32) #1

declare dso_local i64 @ngx_atoi(i32*, i32) #1

declare dso_local i64 @ngx_strncmp(i32*, i8*, i32) #1

declare dso_local i32 @ngx_conf_log_error(i32, %struct.TYPE_17__*, i32, i8*, %struct.TYPE_14__*) #1

declare dso_local i64 @ngx_http_compile_complex_value(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
