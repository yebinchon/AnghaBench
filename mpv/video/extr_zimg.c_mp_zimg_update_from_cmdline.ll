; ModuleID = '/home/carl/AnghaBench/mpv/video/extr_zimg.c_mp_zimg_update_from_cmdline.c'
source_filename = "/home/carl/AnghaBench/mpv/video/extr_zimg.c_mp_zimg_update_from_cmdline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_zimg_context = type { %struct.zimg_opts, %struct.TYPE_2__* }
%struct.zimg_opts = type { i32 }
%struct.TYPE_2__ = type { %struct.zimg_opts* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mp_zimg_context*)* @mp_zimg_update_from_cmdline to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mp_zimg_update_from_cmdline(%struct.mp_zimg_context* %0) #0 {
  %2 = alloca %struct.mp_zimg_context*, align 8
  %3 = alloca %struct.zimg_opts*, align 8
  store %struct.mp_zimg_context* %0, %struct.mp_zimg_context** %2, align 8
  %4 = load %struct.mp_zimg_context*, %struct.mp_zimg_context** %2, align 8
  %5 = getelementptr inbounds %struct.mp_zimg_context, %struct.mp_zimg_context* %4, i32 0, i32 1
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = call i32 @m_config_cache_update(%struct.TYPE_2__* %6)
  %8 = load %struct.mp_zimg_context*, %struct.mp_zimg_context** %2, align 8
  %9 = getelementptr inbounds %struct.mp_zimg_context, %struct.mp_zimg_context* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.zimg_opts*, %struct.zimg_opts** %11, align 8
  store %struct.zimg_opts* %12, %struct.zimg_opts** %3, align 8
  %13 = load %struct.mp_zimg_context*, %struct.mp_zimg_context** %2, align 8
  %14 = getelementptr inbounds %struct.mp_zimg_context, %struct.mp_zimg_context* %13, i32 0, i32 0
  %15 = load %struct.zimg_opts*, %struct.zimg_opts** %3, align 8
  %16 = bitcast %struct.zimg_opts* %14 to i8*
  %17 = bitcast %struct.zimg_opts* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %16, i8* align 4 %17, i64 4, i1 false)
  ret void
}

declare dso_local i32 @m_config_cache_update(%struct.TYPE_2__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
