; ModuleID = '/home/carl/AnghaBench/nginx/src/os/win32/extr_ngx_process_cycle.c_ngx_cache_manager_process_handler.c'
source_filename = "/home/carl/AnghaBench/nginx/src/os/win32/extr_ngx_process_cycle.c_ngx_cache_manager_process_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, %struct.TYPE_5__** }
%struct.TYPE_5__ = type { i32 (i32)*, i32 }

@ngx_cycle = common dso_local global %struct.TYPE_6__* null, align 8
@ngx_cache_manager_event = common dso_local global i32 0, align 4
@WAIT_TIMEOUT = common dso_local global i64 0, align 8
@NGX_LOG_DEBUG_CORE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"cache manager WaitForSingleObject: %ul\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @ngx_cache_manager_process_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ngx_cache_manager_process_handler() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__**, align 8
  store i32 3600000, i32* %3, align 4
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ngx_cycle, align 8
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  %9 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %8, align 8
  store %struct.TYPE_5__** %9, %struct.TYPE_5__*** %5, align 8
  store i64 0, i64* %2, align 8
  br label %10

10:                                               ; preds = %50, %0
  %11 = load i64, i64* %2, align 8
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ngx_cycle, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ult i64 %11, %15
  br i1 %16, label %17, label %53

17:                                               ; preds = %10
  %18 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %5, align 8
  %19 = load i64, i64* %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %18, i64 %19
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32 (i32)*, i32 (i32)** %22, align 8
  %24 = icmp ne i32 (i32)* %23, null
  br i1 %24, label %25, label %49

25:                                               ; preds = %17
  %26 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %5, align 8
  %27 = load i64, i64* %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %26, i64 %27
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i32 (i32)*, i32 (i32)** %30, align 8
  %32 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %5, align 8
  %33 = load i64, i64* %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %32, i64 %33
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = call i32 %31(i32 %37)
  store i32 %38, i32* %4, align 4
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* %3, align 4
  %41 = icmp sle i32 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %25
  %43 = load i32, i32* %4, align 4
  br label %46

44:                                               ; preds = %25
  %45 = load i32, i32* %3, align 4
  br label %46

46:                                               ; preds = %44, %42
  %47 = phi i32 [ %43, %42 ], [ %45, %44 ]
  store i32 %47, i32* %3, align 4
  %48 = call i32 (...) @ngx_time_update()
  br label %49

49:                                               ; preds = %46, %17
  br label %50

50:                                               ; preds = %49
  %51 = load i64, i64* %2, align 8
  %52 = add i64 %51, 1
  store i64 %52, i64* %2, align 8
  br label %10

53:                                               ; preds = %10
  %54 = load i32, i32* %3, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %53
  store i32 1, i32* %3, align 4
  br label %57

57:                                               ; preds = %56, %53
  %58 = load i32, i32* @ngx_cache_manager_event, align 4
  %59 = load i32, i32* %3, align 4
  %60 = sext i32 %59 to i64
  %61 = call i64 @WaitForSingleObject(i32 %58, i64 %60)
  store i64 %61, i64* %1, align 8
  %62 = load i64, i64* %1, align 8
  %63 = load i64, i64* @WAIT_TIMEOUT, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %73

65:                                               ; preds = %57
  %66 = call i32 (...) @ngx_time_update()
  %67 = load i32, i32* @NGX_LOG_DEBUG_CORE, align 4
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ngx_cycle, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i64, i64* %1, align 8
  %72 = call i32 @ngx_log_debug1(i32 %67, i32 %70, i32 0, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i64 %71)
  br label %73

73:                                               ; preds = %65, %57
  ret void
}

declare dso_local i32 @ngx_time_update(...) #1

declare dso_local i64 @WaitForSingleObject(i32, i64) #1

declare dso_local i32 @ngx_log_debug1(i32, i32, i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
