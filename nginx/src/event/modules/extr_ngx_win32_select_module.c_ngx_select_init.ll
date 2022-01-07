; ModuleID = '/home/carl/AnghaBench/nginx/src/event/modules/extr_ngx_win32_select_module.c_ngx_select_init.c'
source_filename = "/home/carl/AnghaBench/nginx/src/event/modules/extr_ngx_win32_select_module.c_ngx_select_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@event_index = common dso_local global i32** null, align 8
@master_read_fd_set = common dso_local global i32 0, align 4
@master_write_fd_set = common dso_local global i32 0, align 4
@nevents = common dso_local global i32 0, align 4
@ngx_process = common dso_local global i64 0, align 8
@NGX_PROCESS_WORKER = common dso_local global i64 0, align 8
@NGX_ERROR = common dso_local global i32 0, align 4
@ngx_os_io = common dso_local global i32 0, align 4
@ngx_io = common dso_local global i32 0, align 4
@ngx_select_module_ctx = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@ngx_event_actions = common dso_local global i32 0, align 4
@NGX_USE_LEVEL_EVENT = common dso_local global i32 0, align 4
@ngx_event_flags = common dso_local global i32 0, align 4
@max_read = common dso_local global i64 0, align 8
@max_write = common dso_local global i64 0, align 8
@NGX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32)* @ngx_select_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_select_init(%struct.TYPE_6__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32**, i32*** @event_index, align 8
  %8 = icmp eq i32** %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = call i32 @FD_ZERO(i32* @master_read_fd_set)
  %11 = call i32 @FD_ZERO(i32* @master_write_fd_set)
  store i32 0, i32* @nevents, align 4
  br label %12

12:                                               ; preds = %9, %2
  %13 = load i64, i64* @ngx_process, align 8
  %14 = load i64, i64* @NGX_PROCESS_WORKER, align 8
  %15 = icmp sge i64 %13, %14
  br i1 %15, label %31, label %16

16:                                               ; preds = %12
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 2
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = icmp eq %struct.TYPE_5__* %19, null
  br i1 %20, label %31, label %21

21:                                               ; preds = %16
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 2
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp slt i32 %26, %29
  br i1 %30, label %31, label %61

31:                                               ; preds = %21, %16, %12
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = sext i32 %34 to i64
  %36 = mul i64 16, %35
  %37 = trunc i64 %36 to i32
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32** @ngx_alloc(i32 %37, i32 %40)
  store i32** %41, i32*** %6, align 8
  %42 = load i32**, i32*** %6, align 8
  %43 = icmp eq i32** %42, null
  br i1 %43, label %44, label %46

44:                                               ; preds = %31
  %45 = load i32, i32* @NGX_ERROR, align 4
  store i32 %45, i32* %3, align 4
  br label %66

46:                                               ; preds = %31
  %47 = load i32**, i32*** @event_index, align 8
  %48 = icmp ne i32** %47, null
  br i1 %48, label %49, label %59

49:                                               ; preds = %46
  %50 = load i32**, i32*** %6, align 8
  %51 = load i32**, i32*** @event_index, align 8
  %52 = load i32, i32* @nevents, align 4
  %53 = sext i32 %52 to i64
  %54 = mul i64 8, %53
  %55 = trunc i64 %54 to i32
  %56 = call i32 @ngx_memcpy(i32** %50, i32** %51, i32 %55)
  %57 = load i32**, i32*** @event_index, align 8
  %58 = call i32 @ngx_free(i32** %57)
  br label %59

59:                                               ; preds = %49, %46
  %60 = load i32**, i32*** %6, align 8
  store i32** %60, i32*** @event_index, align 8
  br label %61

61:                                               ; preds = %59, %21
  %62 = load i32, i32* @ngx_os_io, align 4
  store i32 %62, i32* @ngx_io, align 4
  %63 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ngx_select_module_ctx, i32 0, i32 0), align 4
  store i32 %63, i32* @ngx_event_actions, align 4
  %64 = load i32, i32* @NGX_USE_LEVEL_EVENT, align 4
  store i32 %64, i32* @ngx_event_flags, align 4
  store i64 0, i64* @max_read, align 8
  store i64 0, i64* @max_write, align 8
  %65 = load i32, i32* @NGX_OK, align 4
  store i32 %65, i32* %3, align 4
  br label %66

66:                                               ; preds = %61, %44
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i32 @FD_ZERO(i32*) #1

declare dso_local i32** @ngx_alloc(i32, i32) #1

declare dso_local i32 @ngx_memcpy(i32**, i32**, i32) #1

declare dso_local i32 @ngx_free(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
