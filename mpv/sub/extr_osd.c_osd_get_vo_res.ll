; ModuleID = '/home/carl/AnghaBench/mpv/sub/extr_osd.c_osd_get_vo_res.c'
source_filename = "/home/carl/AnghaBench/mpv/sub/extr_osd.c_osd_get_vo_res.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.osd_state = type { i32, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { %struct.mp_osd_res }
%struct.mp_osd_res = type { i32 }

@OSDTYPE_OSD = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @osd_get_vo_res(%struct.osd_state* %0) #0 {
  %2 = alloca %struct.mp_osd_res, align 4
  %3 = alloca %struct.osd_state*, align 8
  store %struct.osd_state* %0, %struct.osd_state** %3, align 8
  %4 = load %struct.osd_state*, %struct.osd_state** %3, align 8
  %5 = getelementptr inbounds %struct.osd_state, %struct.osd_state* %4, i32 0, i32 0
  %6 = call i32 @pthread_mutex_lock(i32* %5)
  %7 = load %struct.osd_state*, %struct.osd_state** %3, align 8
  %8 = getelementptr inbounds %struct.osd_state, %struct.osd_state* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %8, align 8
  %10 = load i64, i64* @OSDTYPE_OSD, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %9, i64 %10
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = bitcast %struct.mp_osd_res* %2 to i8*
  %15 = bitcast %struct.mp_osd_res* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %14, i8* align 4 %15, i64 4, i1 false)
  %16 = load %struct.osd_state*, %struct.osd_state** %3, align 8
  %17 = getelementptr inbounds %struct.osd_state, %struct.osd_state* %16, i32 0, i32 0
  %18 = call i32 @pthread_mutex_unlock(i32* %17)
  %19 = getelementptr inbounds %struct.mp_osd_res, %struct.mp_osd_res* %2, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  ret i32 %20
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
