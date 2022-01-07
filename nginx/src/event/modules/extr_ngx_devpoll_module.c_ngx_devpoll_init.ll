; ModuleID = '/home/carl/AnghaBench/nginx/src/event/modules/extr_ngx_devpoll_module.c_ngx_devpoll_init.c'
source_filename = "/home/carl/AnghaBench/nginx/src/event/modules/extr_ngx_devpoll_module.c_ngx_devpoll_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }

@ngx_devpoll_module = common dso_local global i32 0, align 4
@dp = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"/dev/poll\00", align 1
@O_RDWR = common dso_local global i32 0, align 4
@NGX_LOG_EMERG = common dso_local global i32 0, align 4
@ngx_errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"open(/dev/poll) failed\00", align 1
@NGX_ERROR = common dso_local global i32 0, align 4
@max_changes = common dso_local global i32 0, align 4
@nchanges = common dso_local global i32 0, align 4
@change_list = common dso_local global i32* null, align 8
@NGX_LOG_ALERT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"write(/dev/poll) failed\00", align 1
@change_index = common dso_local global i32* null, align 8
@nevents = common dso_local global i32 0, align 4
@event_list = common dso_local global i32* null, align 8
@ngx_os_io = common dso_local global i32 0, align 4
@ngx_io = common dso_local global i32 0, align 4
@ngx_devpoll_module_ctx = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@ngx_event_actions = common dso_local global i32 0, align 4
@NGX_USE_LEVEL_EVENT = common dso_local global i32 0, align 4
@NGX_USE_FD_EVENT = common dso_local global i32 0, align 4
@ngx_event_flags = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32)* @ngx_devpoll_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_devpoll_init(%struct.TYPE_7__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @ngx_devpoll_module, align 4
  %12 = call %struct.TYPE_6__* @ngx_event_get_conf(i32 %10, i32 %11)
  store %struct.TYPE_6__* %12, %struct.TYPE_6__** %7, align 8
  %13 = load i32, i32* @dp, align 4
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %15, label %29

15:                                               ; preds = %2
  %16 = load i32, i32* @O_RDWR, align 4
  %17 = call i32 @open(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %16)
  store i32 %17, i32* @dp, align 4
  %18 = load i32, i32* @dp, align 4
  %19 = icmp eq i32 %18, -1
  br i1 %19, label %20, label %28

20:                                               ; preds = %15
  %21 = load i32, i32* @NGX_LOG_EMERG, align 4
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @ngx_errno, align 4
  %26 = call i32 @ngx_log_error(i32 %21, i32 %24, i32 %25, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %27 = load i32, i32* @NGX_ERROR, align 4
  store i32 %27, i32* %3, align 4
  br label %141

28:                                               ; preds = %15
  br label %29

29:                                               ; preds = %28, %2
  %30 = load i32, i32* @max_changes, align 4
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp slt i32 %30, %33
  br i1 %34, label %35, label %100

35:                                               ; preds = %29
  %36 = load i32, i32* @nchanges, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %57

38:                                               ; preds = %35
  %39 = load i32, i32* @nchanges, align 4
  %40 = sext i32 %39 to i64
  %41 = mul i64 %40, 4
  store i64 %41, i64* %6, align 8
  %42 = load i32, i32* @dp, align 4
  %43 = load i32*, i32** @change_list, align 8
  %44 = load i64, i64* %6, align 8
  %45 = call i64 @write(i32 %42, i32* %43, i64 %44)
  %46 = load i64, i64* %6, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %56

48:                                               ; preds = %38
  %49 = load i32, i32* @NGX_LOG_ALERT, align 4
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @ngx_errno, align 4
  %54 = call i32 @ngx_log_error(i32 %49, i32 %52, i32 %53, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %55 = load i32, i32* @NGX_ERROR, align 4
  store i32 %55, i32* %3, align 4
  br label %141

56:                                               ; preds = %38
  store i32 0, i32* @nchanges, align 4
  br label %57

57:                                               ; preds = %56, %35
  %58 = load i32*, i32** @change_list, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %60, label %63

60:                                               ; preds = %57
  %61 = load i32*, i32** @change_list, align 8
  %62 = call i32 @ngx_free(i32* %61)
  br label %63

63:                                               ; preds = %60, %57
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = sext i32 %66 to i64
  %68 = mul i64 4, %67
  %69 = trunc i64 %68 to i32
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32* @ngx_alloc(i32 %69, i32 %72)
  store i32* %73, i32** @change_list, align 8
  %74 = load i32*, i32** @change_list, align 8
  %75 = icmp eq i32* %74, null
  br i1 %75, label %76, label %78

76:                                               ; preds = %63
  %77 = load i32, i32* @NGX_ERROR, align 4
  store i32 %77, i32* %3, align 4
  br label %141

78:                                               ; preds = %63
  %79 = load i32*, i32** @change_index, align 8
  %80 = icmp ne i32* %79, null
  br i1 %80, label %81, label %84

81:                                               ; preds = %78
  %82 = load i32*, i32** @change_index, align 8
  %83 = call i32 @ngx_free(i32* %82)
  br label %84

84:                                               ; preds = %81, %78
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = sext i32 %87 to i64
  %89 = mul i64 8, %88
  %90 = trunc i64 %89 to i32
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32* @ngx_alloc(i32 %90, i32 %93)
  store i32* %94, i32** @change_index, align 8
  %95 = load i32*, i32** @change_index, align 8
  %96 = icmp eq i32* %95, null
  br i1 %96, label %97, label %99

97:                                               ; preds = %84
  %98 = load i32, i32* @NGX_ERROR, align 4
  store i32 %98, i32* %3, align 4
  br label %141

99:                                               ; preds = %84
  br label %100

100:                                              ; preds = %99, %29
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  store i32 %103, i32* @max_changes, align 4
  %104 = load i32, i32* @nevents, align 4
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = icmp slt i32 %104, %107
  br i1 %108, label %109, label %131

109:                                              ; preds = %100
  %110 = load i32*, i32** @event_list, align 8
  %111 = icmp ne i32* %110, null
  br i1 %111, label %112, label %115

112:                                              ; preds = %109
  %113 = load i32*, i32** @event_list, align 8
  %114 = call i32 @ngx_free(i32* %113)
  br label %115

115:                                              ; preds = %112, %109
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = sext i32 %118 to i64
  %120 = mul i64 4, %119
  %121 = trunc i64 %120 to i32
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = call i32* @ngx_alloc(i32 %121, i32 %124)
  store i32* %125, i32** @event_list, align 8
  %126 = load i32*, i32** @event_list, align 8
  %127 = icmp eq i32* %126, null
  br i1 %127, label %128, label %130

128:                                              ; preds = %115
  %129 = load i32, i32* @NGX_ERROR, align 4
  store i32 %129, i32* %3, align 4
  br label %141

130:                                              ; preds = %115
  br label %131

131:                                              ; preds = %130, %100
  %132 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  store i32 %134, i32* @nevents, align 4
  %135 = load i32, i32* @ngx_os_io, align 4
  store i32 %135, i32* @ngx_io, align 4
  %136 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @ngx_devpoll_module_ctx, i32 0, i32 0), align 4
  store i32 %136, i32* @ngx_event_actions, align 4
  %137 = load i32, i32* @NGX_USE_LEVEL_EVENT, align 4
  %138 = load i32, i32* @NGX_USE_FD_EVENT, align 4
  %139 = or i32 %137, %138
  store i32 %139, i32* @ngx_event_flags, align 4
  %140 = load i32, i32* @NGX_OK, align 4
  store i32 %140, i32* %3, align 4
  br label %141

141:                                              ; preds = %131, %128, %97, %76, %48, %20
  %142 = load i32, i32* %3, align 4
  ret i32 %142
}

declare dso_local %struct.TYPE_6__* @ngx_event_get_conf(i32, i32) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*) #1

declare dso_local i64 @write(i32, i32*, i64) #1

declare dso_local i32 @ngx_free(i32*) #1

declare dso_local i32* @ngx_alloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
