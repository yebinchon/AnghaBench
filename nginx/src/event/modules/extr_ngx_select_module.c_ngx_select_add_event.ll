; ModuleID = '/home/carl/AnghaBench/nginx/src/event/modules/extr_ngx_select_module.c_ngx_select_add_event.c'
source_filename = "/home/carl/AnghaBench/nginx/src/event/modules/extr_ngx_select_module.c_ngx_select_add_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32, i64, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@NGX_LOG_DEBUG_EVENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"select add event fd:%d ev:%i\00", align 1
@NGX_INVALID_INDEX = common dso_local global i64 0, align 8
@NGX_LOG_ALERT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"select event fd:%d ev:%i is already set\00", align 1
@NGX_OK = common dso_local global i32 0, align 4
@NGX_READ_EVENT = common dso_local global i32 0, align 4
@NGX_WRITE_EVENT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"invalid select %s event fd:%d ev:%i\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@NGX_ERROR = common dso_local global i32 0, align 4
@master_read_fd_set = common dso_local global i32 0, align 4
@master_write_fd_set = common dso_local global i32 0, align 4
@max_fd = common dso_local global i32 0, align 4
@event_index = common dso_local global %struct.TYPE_5__** null, align 8
@nevents = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32, i32)* @ngx_select_add_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_select_add_event(%struct.TYPE_5__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 4
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  store %struct.TYPE_6__* %11, %struct.TYPE_6__** %8, align 8
  %12 = load i32, i32* @NGX_LOG_DEBUG_EVENT, align 4
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @ngx_log_debug2(i32 %12, i32 %15, i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %19)
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @NGX_INVALID_INDEX, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %37

26:                                               ; preds = %3
  %27 = load i32, i32* @NGX_LOG_ALERT, align 4
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %6, align 4
  %35 = call i32 (i32, i32, i32, i8*, ...) @ngx_log_error(i32 %27, i32 %30, i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %33, i32 %34)
  %36 = load i32, i32* @NGX_OK, align 4
  store i32 %36, i32* %4, align 4
  br label %117

37:                                               ; preds = %3
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @NGX_READ_EVENT, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %46

41:                                               ; preds = %37
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %55, label %46

46:                                               ; preds = %41, %37
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* @NGX_WRITE_EVENT, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %72

50:                                               ; preds = %46
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %72, label %55

55:                                               ; preds = %50, %41
  %56 = load i32, i32* @NGX_LOG_ALERT, align 4
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  %64 = zext i1 %63 to i64
  %65 = select i1 %63, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0)
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %6, align 4
  %70 = call i32 (i32, i32, i32, i8*, ...) @ngx_log_error(i32 %56, i32 %59, i32 0, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i8* %65, i32 %68, i32 %69)
  %71 = load i32, i32* @NGX_ERROR, align 4
  store i32 %71, i32* %4, align 4
  br label %117

72:                                               ; preds = %50, %46
  %73 = load i32, i32* %6, align 4
  %74 = load i32, i32* @NGX_READ_EVENT, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %81

76:                                               ; preds = %72
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @FD_SET(i32 %79, i32* @master_read_fd_set)
  br label %91

81:                                               ; preds = %72
  %82 = load i32, i32* %6, align 4
  %83 = load i32, i32* @NGX_WRITE_EVENT, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %90

85:                                               ; preds = %81
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @FD_SET(i32 %88, i32* @master_write_fd_set)
  br label %90

90:                                               ; preds = %85, %81
  br label %91

91:                                               ; preds = %90, %76
  %92 = load i32, i32* @max_fd, align 4
  %93 = icmp ne i32 %92, -1
  br i1 %93, label %94, label %104

94:                                               ; preds = %91
  %95 = load i32, i32* @max_fd, align 4
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = icmp slt i32 %95, %98
  br i1 %99, label %100, label %104

100:                                              ; preds = %94
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  store i32 %103, i32* @max_fd, align 4
  br label %104

104:                                              ; preds = %100, %94, %91
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 1
  store i32 1, i32* %106, align 8
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %108 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @event_index, align 8
  %109 = load i64, i64* @nevents, align 8
  %110 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %108, i64 %109
  store %struct.TYPE_5__* %107, %struct.TYPE_5__** %110, align 8
  %111 = load i64, i64* @nevents, align 8
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 0
  store i64 %111, i64* %113, align 8
  %114 = load i64, i64* @nevents, align 8
  %115 = add i64 %114, 1
  store i64 %115, i64* @nevents, align 8
  %116 = load i32, i32* @NGX_OK, align 4
  store i32 %116, i32* %4, align 4
  br label %117

117:                                              ; preds = %104, %55, %26
  %118 = load i32, i32* %4, align 4
  ret i32 %118
}

declare dso_local i32 @ngx_log_debug2(i32, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, ...) #1

declare dso_local i32 @FD_SET(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
