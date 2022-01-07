; ModuleID = '/home/carl/AnghaBench/nginx/src/stream/extr_ngx_stream_log_module.c_ngx_stream_log_script_write.c'
source_filename = "/home/carl/AnghaBench/nginx/src/stream/extr_ngx_stream_log_module.c_ngx_stream_log_script_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32, i32 }
%struct.TYPE_23__ = type { %struct.TYPE_19__*, %struct.TYPE_18__* }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_24__ = type { i8*, i32 }
%struct.TYPE_25__ = type { i32, i64, i8*, i32, i32, i32, i32 }
%struct.TYPE_22__ = type { i32, i32, i32 }

@NGX_LOG_DEBUG_STREAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"stream log \22%s\22\00", align 1
@ngx_stream_log_module = common dso_local global i32 0, align 4
@NGX_OPEN_FILE_DIRECTIO_OFF = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i64 0, align 8
@NGX_LOG_CRIT = common dso_local global i32 0, align 4
@ngx_errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"%s \22%s\22 failed\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"stream log #%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_21__*, %struct.TYPE_23__*, i8**, i8*, i64)* @ngx_stream_log_script_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_stream_log_script_write(%struct.TYPE_21__* %0, %struct.TYPE_23__* %1, i8** %2, i8* %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_21__*, align 8
  %8 = alloca %struct.TYPE_23__*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_24__, align 8
  %14 = alloca %struct.TYPE_25__, align 8
  %15 = alloca %struct.TYPE_22__*, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %7, align 8
  store %struct.TYPE_23__* %1, %struct.TYPE_23__** %8, align 8
  store i8** %2, i8*** %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %16 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %17 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_19__*, %struct.TYPE_19__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32* @ngx_stream_script_run(%struct.TYPE_21__* %16, %struct.TYPE_24__* %13, i32 %21, i32 1, i32 %26)
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %5
  %30 = load i64, i64* %11, align 8
  store i64 %30, i64* %6, align 8
  br label %113

31:                                               ; preds = %5
  %32 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %13, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %13, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = sub nsw i32 %35, 1
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %33, i64 %37
  store i8 0, i8* %38, align 1
  %39 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %13, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = load i8**, i8*** %9, align 8
  store i8* %40, i8** %41, align 8
  %42 = load i32, i32* @NGX_LOG_DEBUG_STREAM, align 4
  %43 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_20__*, %struct.TYPE_20__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %13, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = call i32 @ngx_log_debug1(i32 %42, i32 %47, i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* %49)
  %51 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %52 = load i32, i32* @ngx_stream_log_module, align 4
  %53 = call %struct.TYPE_22__* @ngx_stream_get_module_srv_conf(%struct.TYPE_21__* %51, i32 %52)
  store %struct.TYPE_22__* %53, %struct.TYPE_22__** %15, align 8
  %54 = call i32 @ngx_memzero(%struct.TYPE_25__* %14, i32 40)
  %55 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %14, i32 0, i32 0
  store i32 1, i32* %55, align 8
  %56 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %57 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %14, i32 0, i32 6
  store i32 %58, i32* %59, align 4
  %60 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %61 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %14, i32 0, i32 5
  store i32 %62, i32* %63, align 8
  %64 = load i32, i32* @NGX_OPEN_FILE_DIRECTIO_OFF, align 4
  %65 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %14, i32 0, i32 4
  store i32 %64, i32* %65, align 4
  %66 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %67 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_20__*, %struct.TYPE_20__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i64 @ngx_open_cached_file(i32 %68, %struct.TYPE_24__* %13, %struct.TYPE_25__* %14, i32 %73)
  %75 = load i64, i64* @NGX_OK, align 8
  %76 = icmp ne i64 %74, %75
  br i1 %76, label %77, label %97

77:                                               ; preds = %31
  %78 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %14, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %77
  %82 = load i64, i64* %11, align 8
  store i64 %82, i64* %6, align 8
  br label %113

83:                                               ; preds = %77
  %84 = load i32, i32* @NGX_LOG_CRIT, align 4
  %85 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_20__*, %struct.TYPE_20__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @ngx_errno, align 4
  %91 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %14, i32 0, i32 3
  %92 = load i32, i32* %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %13, i32 0, i32 0
  %94 = load i8*, i8** %93, align 8
  %95 = call i32 @ngx_log_error(i32 %84, i32 %89, i32 %90, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %92, i8* %94)
  %96 = load i64, i64* %11, align 8
  store i64 %96, i64* %6, align 8
  br label %113

97:                                               ; preds = %31
  %98 = load i32, i32* @NGX_LOG_DEBUG_STREAM, align 4
  %99 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %99, i32 0, i32 0
  %101 = load %struct.TYPE_20__*, %struct.TYPE_20__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %14, i32 0, i32 2
  %105 = load i8*, i8** %104, align 8
  %106 = call i32 @ngx_log_debug1(i32 %98, i32 %103, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* %105)
  %107 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %14, i32 0, i32 2
  %108 = load i8*, i8** %107, align 8
  %109 = load i8*, i8** %10, align 8
  %110 = load i64, i64* %11, align 8
  %111 = call i64 @ngx_write_fd(i8* %108, i8* %109, i64 %110)
  store i64 %111, i64* %12, align 8
  %112 = load i64, i64* %12, align 8
  store i64 %112, i64* %6, align 8
  br label %113

113:                                              ; preds = %97, %83, %81, %29
  %114 = load i64, i64* %6, align 8
  ret i64 %114
}

declare dso_local i32* @ngx_stream_script_run(%struct.TYPE_21__*, %struct.TYPE_24__*, i32, i32, i32) #1

declare dso_local i32 @ngx_log_debug1(i32, i32, i32, i8*, i8*) #1

declare dso_local %struct.TYPE_22__* @ngx_stream_get_module_srv_conf(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @ngx_memzero(%struct.TYPE_25__*, i32) #1

declare dso_local i64 @ngx_open_cached_file(i32, %struct.TYPE_24__*, %struct.TYPE_25__*, i32) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, i32, i8*) #1

declare dso_local i64 @ngx_write_fd(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
