; ModuleID = '/home/carl/AnghaBench/nginx/src/event/modules/extr_ngx_kqueue_module.c_ngx_kqueue_del_event.c'
source_filename = "/home/carl/AnghaBench/nginx/src/event/modules/extr_ngx_kqueue_module.c_ngx_kqueue_del_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32, i64, i32, i32, i64 }

@nchanges = common dso_local global i64 0, align 8
@change_list = common dso_local global %struct.TYPE_6__* null, align 8
@NGX_LOG_DEBUG_EVENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"kevent deleted: %d: ft:%i\00", align 1
@NGX_OK = common dso_local global i32 0, align 4
@NGX_CLOSE_EVENT = common dso_local global i32 0, align 4
@NGX_DISABLE_EVENT = common dso_local global i32 0, align 4
@EV_DELETE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32, i32)* @ngx_kqueue_del_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_kqueue_del_event(%struct.TYPE_5__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 4
  store i64 0, i64* %11, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  store i32 0, i32* %13, align 8
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @nchanges, align 8
  %18 = icmp ult i64 %16, %17
  br i1 %18, label %19, label %74

19:                                               ; preds = %3
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** @change_list, align 8
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = and i64 %26, -2
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %29 = ptrtoint %struct.TYPE_5__* %28 to i64
  %30 = icmp eq i64 %27, %29
  br i1 %30, label %31, label %74

31:                                               ; preds = %19
  %32 = load i32, i32* @NGX_LOG_DEBUG_EVENT, align 4
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @ngx_event_ident(i32 %38)
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @ngx_log_debug2(i32 %32, i32 %35, i32 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %39, i32 %40)
  %42 = load i64, i64* @nchanges, align 8
  %43 = add i64 %42, -1
  store i64 %43, i64* @nchanges, align 8
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @nchanges, align 8
  %48 = icmp ult i64 %46, %47
  br i1 %48, label %49, label %72

49:                                               ; preds = %31
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** @change_list, align 8
  %51 = load i64, i64* @nchanges, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = and i64 %54, -2
  %56 = inttoptr i64 %55 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %56, %struct.TYPE_5__** %9, align 8
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** @change_list, align 8
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i64 %60
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** @change_list, align 8
  %63 = load i64, i64* @nchanges, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i64 %63
  %65 = bitcast %struct.TYPE_6__* %61 to i8*
  %66 = bitcast %struct.TYPE_6__* %64 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %65, i8* align 8 %66, i64 8, i1 false)
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 1
  store i64 %69, i64* %71, align 8
  br label %72

72:                                               ; preds = %49, %31
  %73 = load i32, i32* @NGX_OK, align 4
  store i32 %73, i32* %4, align 4
  br label %99

74:                                               ; preds = %19, %3
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* @NGX_CLOSE_EVENT, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %74
  %80 = load i32, i32* @NGX_OK, align 4
  store i32 %80, i32* %4, align 4
  br label %99

81:                                               ; preds = %74
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* @NGX_DISABLE_EVENT, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %81
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 0
  store i32 1, i32* %88, align 8
  br label %93

89:                                               ; preds = %81
  %90 = load i32, i32* @EV_DELETE, align 4
  %91 = load i32, i32* %7, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %7, align 4
  br label %93

93:                                               ; preds = %89, %86
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %95 = load i32, i32* %6, align 4
  %96 = load i32, i32* %7, align 4
  %97 = call i32 @ngx_kqueue_set_event(%struct.TYPE_5__* %94, i32 %95, i32 %96)
  store i32 %97, i32* %8, align 4
  %98 = load i32, i32* %8, align 4
  store i32 %98, i32* %4, align 4
  br label %99

99:                                               ; preds = %93, %79, %72
  %100 = load i32, i32* %4, align 4
  ret i32 %100
}

declare dso_local i32 @ngx_log_debug2(i32, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @ngx_event_ident(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ngx_kqueue_set_event(%struct.TYPE_5__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
