; ModuleID = '/home/carl/AnghaBench/mpv/filters/extr_f_output_chain.c_destroy_user.c'
source_filename = "/home/carl/AnghaBench/mpv/filters/extr_f_output_chain.c_destroy_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.m_option = type { i32* }
%struct.mp_filter = type { %struct.mp_user_filter* }
%struct.mp_user_filter = type { i32 }

@m_option_type_obj_settings_list = common dso_local global i32 0, align 4
@__const.destroy_user.dummy = private unnamed_addr constant %struct.m_option { i32* @m_option_type_obj_settings_list }, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mp_filter*)* @destroy_user to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @destroy_user(%struct.mp_filter* %0) #0 {
  %2 = alloca %struct.mp_filter*, align 8
  %3 = alloca %struct.mp_user_filter*, align 8
  %4 = alloca %struct.m_option, align 8
  store %struct.mp_filter* %0, %struct.mp_filter** %2, align 8
  %5 = load %struct.mp_filter*, %struct.mp_filter** %2, align 8
  %6 = getelementptr inbounds %struct.mp_filter, %struct.mp_filter* %5, i32 0, i32 0
  %7 = load %struct.mp_user_filter*, %struct.mp_user_filter** %6, align 8
  store %struct.mp_user_filter* %7, %struct.mp_user_filter** %3, align 8
  %8 = bitcast %struct.m_option* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %8, i8* align 8 bitcast (%struct.m_option* @__const.destroy_user.dummy to i8*), i64 8, i1 false)
  %9 = load %struct.mp_user_filter*, %struct.mp_user_filter** %3, align 8
  %10 = getelementptr inbounds %struct.mp_user_filter, %struct.mp_user_filter* %9, i32 0, i32 0
  %11 = call i32 @m_option_free(%struct.m_option* %4, i32* %10)
  %12 = load %struct.mp_filter*, %struct.mp_filter** %2, align 8
  %13 = call i32 @mp_filter_free_children(%struct.mp_filter* %12)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @m_option_free(%struct.m_option*, i32*) #2

declare dso_local i32 @mp_filter_free_children(%struct.mp_filter*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
