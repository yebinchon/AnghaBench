; ModuleID = '/home/carl/AnghaBench/nginx/src/os/unix/extr_ngx_linux_sendfile_chain.c_ngx_linux_sendfile.c'
source_filename = "/home/carl/AnghaBench/nginx/src/os/unix/extr_ngx_linux_sendfile_chain.c_ngx_linux_sendfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, %struct.TYPE_11__*, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_15__ = type { i64, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_12__, i32, i64 }
%struct.TYPE_12__ = type { i32 }

@NGX_LOG_DEBUG_EVENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"sendfile: @%O %uz\00", align 1
@ngx_errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"sendfile() is not ready\00", align 1
@NGX_AGAIN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"sendfile() was interrupted\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"sendfile() failed\00", align 1
@NGX_ERROR = common dso_local global i32 0, align 4
@NGX_LOG_ALERT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [50 x i8] c"sendfile() reported that \22%s\22 was truncated at %O\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"sendfile: %z of %uz @%O\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, %struct.TYPE_15__*, i64)* @ngx_linux_sendfile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_linux_sendfile(%struct.TYPE_14__* %0, %struct.TYPE_15__* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %5, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %8, align 8
  br label %14

14:                                               ; preds = %47, %3
  %15 = load i32, i32* @NGX_LOG_DEBUG_EVENT, align 4
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* %7, align 8
  %23 = call i32 @ngx_log_debug2(i32 %15, i32 %18, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i64 %21, i64 %22)
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i64, i64* %7, align 8
  %33 = call i32 @sendfile(i32 %26, i32 %31, i64* %8, i64 %32)
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %9, align 4
  %35 = icmp eq i32 %34, -1
  br i1 %35, label %36, label %63

36:                                               ; preds = %14
  %37 = load i32, i32* @ngx_errno, align 4
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %10, align 4
  switch i32 %38, label %54 [
    i32 129, label %39
    i32 128, label %47
  ]

39:                                               ; preds = %36
  %40 = load i32, i32* @NGX_LOG_DEBUG_EVENT, align 4
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* %10, align 4
  %45 = call i32 @ngx_log_debug0(i32 %40, i32 %43, i32 %44, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %46 = load i32, i32* @NGX_AGAIN, align 4
  store i32 %46, i32* %4, align 4
  br label %94

47:                                               ; preds = %36
  %48 = load i32, i32* @NGX_LOG_DEBUG_EVENT, align 4
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* %10, align 4
  %53 = call i32 @ngx_log_debug0(i32 %48, i32 %51, i32 %52, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %14

54:                                               ; preds = %36
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 1
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 0
  store i32 1, i32* %58, align 4
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %60 = load i32, i32* %10, align 4
  %61 = call i32 @ngx_connection_error(%struct.TYPE_14__* %59, i32 %60, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %62 = load i32, i32* @NGX_ERROR, align 4
  store i32 %62, i32* %4, align 4
  br label %94

63:                                               ; preds = %14
  %64 = load i32, i32* %9, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %82

66:                                               ; preds = %63
  %67 = load i32, i32* @NGX_LOG_ALERT, align 4
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 1
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = call i32 @ngx_log_error(i32 %67, i32 %70, i32 0, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i64 0, i64 0), i32 %76, i64 %79)
  %81 = load i32, i32* @NGX_ERROR, align 4
  store i32 %81, i32* %4, align 4
  br label %94

82:                                               ; preds = %63
  %83 = load i32, i32* @NGX_LOG_DEBUG_EVENT, align 4
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* %9, align 4
  %88 = load i64, i64* %7, align 8
  %89 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = call i32 @ngx_log_debug3(i32 %83, i32 %86, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i32 %87, i64 %88, i64 %91)
  %93 = load i32, i32* %9, align 4
  store i32 %93, i32* %4, align 4
  br label %94

94:                                               ; preds = %82, %66, %54, %39
  %95 = load i32, i32* %4, align 4
  ret i32 %95
}

declare dso_local i32 @ngx_log_debug2(i32, i32, i32, i8*, i64, i64) #1

declare dso_local i32 @sendfile(i32, i32, i64*, i64) #1

declare dso_local i32 @ngx_log_debug0(i32, i32, i32, i8*) #1

declare dso_local i32 @ngx_connection_error(%struct.TYPE_14__*, i32, i8*) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, i32, i64) #1

declare dso_local i32 @ngx_log_debug3(i32, i32, i32, i8*, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
