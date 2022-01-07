; ModuleID = '/home/carl/AnghaBench/nginx/src/core/extr_ngx_thread_pool.c_ngx_thread_pool_init.c'
source_filename = "/home/carl/AnghaBench/nginx/src/core/extr_ngx_thread_pool.c_ngx_thread_pool_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32*, i32, i32, i32 }

@ngx_notify = common dso_local global i32* null, align 8
@NGX_LOG_ALERT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"the configured event method cannot be used with thread pools\00", align 1
@NGX_ERROR = common dso_local global i64 0, align 8
@NGX_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"pthread_attr_init() failed\00", align 1
@PTHREAD_CREATE_DETACHED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"pthread_attr_setdetachstate() failed\00", align 1
@ngx_thread_pool_cycle = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"pthread_create() failed\00", align 1
@PTHREAD_STACK_MIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_4__*, i32*, i32*)* @ngx_thread_pool_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_thread_pool_init(%struct.TYPE_4__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load i32*, i32** @ngx_notify, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %3
  %15 = load i32, i32* @NGX_LOG_ALERT, align 4
  %16 = load i32*, i32** %6, align 8
  %17 = call i32 @ngx_log_error(i32 %15, i32* %16, i32 0, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0))
  %18 = load i64, i64* @NGX_ERROR, align 8
  store i64 %18, i64* %4, align 8
  br label %94

19:                                               ; preds = %3
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 4
  %22 = call i32 @ngx_thread_pool_queue_init(i32* %21)
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 2
  %25 = load i32*, i32** %6, align 8
  %26 = call i64 @ngx_thread_mutex_create(i32* %24, i32* %25)
  %27 = load i64, i64* @NGX_OK, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %19
  %30 = load i64, i64* @NGX_ERROR, align 8
  store i64 %30, i64* %4, align 8
  br label %94

31:                                               ; preds = %19
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 3
  %34 = load i32*, i32** %6, align 8
  %35 = call i64 @ngx_thread_cond_create(i32* %33, i32* %34)
  %36 = load i64, i64* @NGX_OK, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %31
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 2
  %41 = load i32*, i32** %6, align 8
  %42 = call i32 @ngx_thread_mutex_destroy(i32* %40, i32* %41)
  %43 = load i64, i64* @NGX_ERROR, align 8
  store i64 %43, i64* %4, align 8
  br label %94

44:                                               ; preds = %31
  %45 = load i32*, i32** %6, align 8
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  store i32* %45, i32** %47, align 8
  %48 = call i32 @pthread_attr_init(i32* %11)
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %8, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %44
  %52 = load i32, i32* @NGX_LOG_ALERT, align 4
  %53 = load i32*, i32** %6, align 8
  %54 = load i32, i32* %8, align 4
  %55 = call i32 @ngx_log_error(i32 %52, i32* %53, i32 %54, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %56 = load i64, i64* @NGX_ERROR, align 8
  store i64 %56, i64* %4, align 8
  br label %94

57:                                               ; preds = %44
  %58 = load i32, i32* @PTHREAD_CREATE_DETACHED, align 4
  %59 = call i32 @pthread_attr_setdetachstate(i32* %11, i32 %58)
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %8, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %57
  %63 = load i32, i32* @NGX_LOG_ALERT, align 4
  %64 = load i32*, i32** %6, align 8
  %65 = load i32, i32* %8, align 4
  %66 = call i32 @ngx_log_error(i32 %63, i32* %64, i32 %65, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  %67 = load i64, i64* @NGX_ERROR, align 8
  store i64 %67, i64* %4, align 8
  br label %94

68:                                               ; preds = %57
  store i64 0, i64* %10, align 8
  br label %69

69:                                               ; preds = %88, %68
  %70 = load i64, i64* %10, align 8
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp slt i64 %70, %73
  br i1 %74, label %75, label %91

75:                                               ; preds = %69
  %76 = load i32, i32* @ngx_thread_pool_cycle, align 4
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %78 = call i32 @pthread_create(i32* %9, i32* %11, i32 %76, %struct.TYPE_4__* %77)
  store i32 %78, i32* %8, align 4
  %79 = load i32, i32* %8, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %75
  %82 = load i32, i32* @NGX_LOG_ALERT, align 4
  %83 = load i32*, i32** %6, align 8
  %84 = load i32, i32* %8, align 4
  %85 = call i32 @ngx_log_error(i32 %82, i32* %83, i32 %84, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %86 = load i64, i64* @NGX_ERROR, align 8
  store i64 %86, i64* %4, align 8
  br label %94

87:                                               ; preds = %75
  br label %88

88:                                               ; preds = %87
  %89 = load i64, i64* %10, align 8
  %90 = add nsw i64 %89, 1
  store i64 %90, i64* %10, align 8
  br label %69

91:                                               ; preds = %69
  %92 = call i32 @pthread_attr_destroy(i32* %11)
  %93 = load i64, i64* @NGX_OK, align 8
  store i64 %93, i64* %4, align 8
  br label %94

94:                                               ; preds = %91, %81, %62, %51, %38, %29, %14
  %95 = load i64, i64* %4, align 8
  ret i64 %95
}

declare dso_local i32 @ngx_log_error(i32, i32*, i32, i8*) #1

declare dso_local i32 @ngx_thread_pool_queue_init(i32*) #1

declare dso_local i64 @ngx_thread_mutex_create(i32*, i32*) #1

declare dso_local i64 @ngx_thread_cond_create(i32*, i32*) #1

declare dso_local i32 @ngx_thread_mutex_destroy(i32*, i32*) #1

declare dso_local i32 @pthread_attr_init(i32*) #1

declare dso_local i32 @pthread_attr_setdetachstate(i32*, i32) #1

declare !callback !2 dso_local i32 @pthread_create(i32*, i32*, i32, %struct.TYPE_4__*) #1

declare dso_local i32 @pthread_attr_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
