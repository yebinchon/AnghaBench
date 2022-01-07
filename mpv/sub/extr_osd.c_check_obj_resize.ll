; ModuleID = '/home/carl/AnghaBench/mpv/sub/extr_osd.c_check_obj_resize.c'
source_filename = "/home/carl/AnghaBench/mpv/sub/extr_osd.c_check_obj_resize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.osd_state = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.osd_object = type { %struct.mp_osd_res }
%struct.mp_osd_res = type { i32 }

@MP_EVENT_WIN_RESIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.osd_state*, i32, %struct.osd_object*)* @check_obj_resize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_obj_resize(%struct.osd_state* %0, i32 %1, %struct.osd_object* %2) #0 {
  %4 = alloca %struct.mp_osd_res, align 4
  %5 = alloca %struct.osd_state*, align 8
  %6 = alloca %struct.osd_object*, align 8
  %7 = getelementptr inbounds %struct.mp_osd_res, %struct.mp_osd_res* %4, i32 0, i32 0
  store i32 %1, i32* %7, align 4
  store %struct.osd_state* %0, %struct.osd_state** %5, align 8
  store %struct.osd_object* %2, %struct.osd_object** %6, align 8
  %8 = load %struct.osd_object*, %struct.osd_object** %6, align 8
  %9 = getelementptr inbounds %struct.osd_object, %struct.osd_object* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.mp_osd_res, %struct.mp_osd_res* %4, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = getelementptr inbounds %struct.mp_osd_res, %struct.mp_osd_res* %9, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @osd_res_equals(i32 %11, i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %29, label %16

16:                                               ; preds = %3
  %17 = load %struct.osd_object*, %struct.osd_object** %6, align 8
  %18 = getelementptr inbounds %struct.osd_object, %struct.osd_object* %17, i32 0, i32 0
  %19 = bitcast %struct.mp_osd_res* %18 to i8*
  %20 = bitcast %struct.mp_osd_res* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %19, i8* align 4 %20, i64 4, i1 false)
  %21 = load %struct.osd_state*, %struct.osd_state** %5, align 8
  %22 = getelementptr inbounds %struct.osd_state, %struct.osd_state* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @mp_client_api_get_core(i32 %25)
  %27 = load i32, i32* @MP_EVENT_WIN_RESIZE, align 4
  %28 = call i32 @mp_client_broadcast_event(i32 %26, i32 %27, i32* null)
  br label %29

29:                                               ; preds = %16, %3
  ret void
}

declare dso_local i32 @osd_res_equals(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @mp_client_broadcast_event(i32, i32, i32*) #1

declare dso_local i32 @mp_client_api_get_core(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
