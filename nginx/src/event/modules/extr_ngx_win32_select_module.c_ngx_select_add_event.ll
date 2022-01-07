; ModuleID = '/home/carl/AnghaBench/nginx/src/event/modules/extr_ngx_win32_select_module.c_ngx_select_add_event.c'
source_filename = "/home/carl/AnghaBench/nginx/src/event/modules/extr_ngx_win32_select_module.c_ngx_select_add_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32, i32, i64, %struct.TYPE_6__* }
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
@max_read = common dso_local global i32 0, align 4
@FD_SETSIZE = common dso_local global i32 0, align 4
@max_write = common dso_local global i32 0, align 4
@NGX_LOG_ERR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [58 x i8] c"maximum number of descriptors supported by select() is %d\00", align 1
@master_read_fd_set = common dso_local global i32 0, align 4
@master_write_fd_set = common dso_local global i32 0, align 4
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
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
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
  br i1 %25, label %26, label %39

26:                                               ; preds = %3
  %27 = load i32, i32* @NGX_LOG_ALERT, align 4
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = sext i32 %33 to i64
  %35 = inttoptr i64 %34 to i8*
  %36 = load i32, i32* %6, align 4
  %37 = call i32 (i32, i32, i32, i8*, i8*, ...) @ngx_log_error(i32 %27, i32 %30, i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i8* %35, i32 %36)
  %38 = load i32, i32* @NGX_OK, align 4
  store i32 %38, i32* %4, align 4
  br label %136

39:                                               ; preds = %3
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @NGX_READ_EVENT, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %48

43:                                               ; preds = %39
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 3
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %57, label %48

48:                                               ; preds = %43, %39
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* @NGX_WRITE_EVENT, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %74

52:                                               ; preds = %48
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 3
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %74, label %57

57:                                               ; preds = %52, %43
  %58 = load i32, i32* @NGX_LOG_ALERT, align 4
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 3
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  %66 = zext i1 %65 to i64
  %67 = select i1 %65, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0)
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %6, align 4
  %72 = call i32 (i32, i32, i32, i8*, i8*, ...) @ngx_log_error(i32 %58, i32 %61, i32 0, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i8* %67, i32 %70, i32 %71)
  %73 = load i32, i32* @NGX_ERROR, align 4
  store i32 %73, i32* %4, align 4
  br label %136

74:                                               ; preds = %52, %48
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* @NGX_READ_EVENT, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %82

78:                                               ; preds = %74
  %79 = load i32, i32* @max_read, align 4
  %80 = load i32, i32* @FD_SETSIZE, align 4
  %81 = icmp sge i32 %79, %80
  br i1 %81, label %90, label %82

82:                                               ; preds = %78, %74
  %83 = load i32, i32* %6, align 4
  %84 = load i32, i32* @NGX_WRITE_EVENT, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %86, label %100

86:                                               ; preds = %82
  %87 = load i32, i32* @max_write, align 4
  %88 = load i32, i32* @FD_SETSIZE, align 4
  %89 = icmp sge i32 %87, %88
  br i1 %89, label %90, label %100

90:                                               ; preds = %86, %78
  %91 = load i32, i32* @NGX_LOG_ERR, align 4
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @FD_SETSIZE, align 4
  %96 = sext i32 %95 to i64
  %97 = inttoptr i64 %96 to i8*
  %98 = call i32 (i32, i32, i32, i8*, i8*, ...) @ngx_log_error(i32 %91, i32 %94, i32 0, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.5, i64 0, i64 0), i8* %97)
  %99 = load i32, i32* @NGX_ERROR, align 4
  store i32 %99, i32* %4, align 4
  br label %136

100:                                              ; preds = %86, %82
  %101 = load i32, i32* %6, align 4
  %102 = load i32, i32* @NGX_READ_EVENT, align 4
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %104, label %111

104:                                              ; preds = %100
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @FD_SET(i32 %107, i32* @master_read_fd_set)
  %109 = load i32, i32* @max_read, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* @max_read, align 4
  br label %123

111:                                              ; preds = %100
  %112 = load i32, i32* %6, align 4
  %113 = load i32, i32* @NGX_WRITE_EVENT, align 4
  %114 = icmp eq i32 %112, %113
  br i1 %114, label %115, label %122

115:                                              ; preds = %111
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @FD_SET(i32 %118, i32* @master_write_fd_set)
  %120 = load i32, i32* @max_write, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* @max_write, align 4
  br label %122

122:                                              ; preds = %115, %111
  br label %123

123:                                              ; preds = %122, %104
  %124 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 1
  store i32 1, i32* %125, align 8
  %126 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %127 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @event_index, align 8
  %128 = load i64, i64* @nevents, align 8
  %129 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %127, i64 %128
  store %struct.TYPE_5__* %126, %struct.TYPE_5__** %129, align 8
  %130 = load i64, i64* @nevents, align 8
  %131 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 0
  store i64 %130, i64* %132, align 8
  %133 = load i64, i64* @nevents, align 8
  %134 = add i64 %133, 1
  store i64 %134, i64* @nevents, align 8
  %135 = load i32, i32* @NGX_OK, align 4
  store i32 %135, i32* %4, align 4
  br label %136

136:                                              ; preds = %123, %90, %57, %26
  %137 = load i32, i32* %4, align 4
  ret i32 %137
}

declare dso_local i32 @ngx_log_debug2(i32, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, i8*, ...) #1

declare dso_local i32 @FD_SET(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
