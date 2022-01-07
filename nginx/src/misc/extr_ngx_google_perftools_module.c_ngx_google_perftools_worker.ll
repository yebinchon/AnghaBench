; ModuleID = '/home/carl/AnghaBench/nginx/src/misc/extr_ngx_google_perftools_module.c_ngx_google_perftools_worker.c'
source_filename = "/home/carl/AnghaBench/nginx/src/misc/extr_ngx_google_perftools_module.c_ngx_google_perftools_worker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }

@ngx_google_perftools_module = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i32 0, align 4
@NGX_INT_T_LEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [11 x i8] c"CPUPROFILE\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"%V.%d%Z\00", align 1
@ngx_pid = common dso_local global i32 0, align 4
@NGX_LOG_CRIT = common dso_local global i32 0, align 4
@ngx_errno = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"ProfilerStart(%s) failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*)* @ngx_google_perftools_worker to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_google_perftools_worker(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @ngx_google_perftools_module, align 4
  %10 = call i64 @ngx_get_conf(i32 %8, i32 %9)
  %11 = inttoptr i64 %10 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %11, %struct.TYPE_5__** %5, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* @NGX_OK, align 4
  store i32 %18, i32* %2, align 4
  br label %63

19:                                               ; preds = %1
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @NGX_INT_T_LEN, align 8
  %25 = add nsw i64 %23, %24
  %26 = add nsw i64 %25, 2
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32* @ngx_alloc(i64 %26, i32 %29)
  store i32* %30, i32** %4, align 8
  %31 = load i32*, i32** %4, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %19
  %34 = load i32, i32* @NGX_OK, align 4
  store i32 %34, i32* %2, align 4
  br label %63

35:                                               ; preds = %19
  %36 = call i64 @getenv(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %35
  %39 = call i32 (...) @ProfilerStop()
  br label %40

40:                                               ; preds = %38, %35
  %41 = load i32*, i32** %4, align 8
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i32, i32* @ngx_pid, align 4
  %45 = call i32 @ngx_sprintf(i32* %41, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_7__* %43, i32 %44)
  %46 = load i32*, i32** %4, align 8
  %47 = call i64 @ProfilerStart(i32* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %40
  %50 = call i32 (...) @ProfilerRegisterThread()
  br label %59

51:                                               ; preds = %40
  %52 = load i32, i32* @NGX_LOG_CRIT, align 4
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @ngx_errno, align 4
  %57 = load i32*, i32** %4, align 8
  %58 = call i32 @ngx_log_error(i32 %52, i32 %55, i32 %56, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32* %57)
  br label %59

59:                                               ; preds = %51, %49
  %60 = load i32*, i32** %4, align 8
  %61 = call i32 @ngx_free(i32* %60)
  %62 = load i32, i32* @NGX_OK, align 4
  store i32 %62, i32* %2, align 4
  br label %63

63:                                               ; preds = %59, %33, %17
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local i64 @ngx_get_conf(i32, i32) #1

declare dso_local i32* @ngx_alloc(i64, i32) #1

declare dso_local i64 @getenv(i8*) #1

declare dso_local i32 @ProfilerStop(...) #1

declare dso_local i32 @ngx_sprintf(i32*, i8*, %struct.TYPE_7__*, i32) #1

declare dso_local i64 @ProfilerStart(i32*) #1

declare dso_local i32 @ProfilerRegisterThread(...) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, i32*) #1

declare dso_local i32 @ngx_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
