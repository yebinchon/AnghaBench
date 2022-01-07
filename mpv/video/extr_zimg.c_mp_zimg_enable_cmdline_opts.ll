; ModuleID = '/home/carl/AnghaBench/mpv/video/extr_zimg.c_mp_zimg_enable_cmdline_opts.c'
source_filename = "/home/carl/AnghaBench/mpv/video/extr_zimg.c_mp_zimg_enable_cmdline_opts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_zimg_context = type { i64 }
%struct.mpv_global = type { i32 }

@zimg_conf = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mp_zimg_enable_cmdline_opts(%struct.mp_zimg_context* %0, %struct.mpv_global* %1) #0 {
  %3 = alloca %struct.mp_zimg_context*, align 8
  %4 = alloca %struct.mpv_global*, align 8
  store %struct.mp_zimg_context* %0, %struct.mp_zimg_context** %3, align 8
  store %struct.mpv_global* %1, %struct.mpv_global** %4, align 8
  %5 = load %struct.mp_zimg_context*, %struct.mp_zimg_context** %3, align 8
  %6 = getelementptr inbounds %struct.mp_zimg_context, %struct.mp_zimg_context* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  br label %20

10:                                               ; preds = %2
  %11 = load %struct.mp_zimg_context*, %struct.mp_zimg_context** %3, align 8
  %12 = load %struct.mpv_global*, %struct.mpv_global** %4, align 8
  %13 = call i64 @m_config_cache_alloc(%struct.mp_zimg_context* %11, %struct.mpv_global* %12, i32* @zimg_conf)
  %14 = load %struct.mp_zimg_context*, %struct.mp_zimg_context** %3, align 8
  %15 = getelementptr inbounds %struct.mp_zimg_context, %struct.mp_zimg_context* %14, i32 0, i32 0
  store i64 %13, i64* %15, align 8
  %16 = load %struct.mp_zimg_context*, %struct.mp_zimg_context** %3, align 8
  %17 = call i32 @destroy_zimg(%struct.mp_zimg_context* %16)
  %18 = load %struct.mp_zimg_context*, %struct.mp_zimg_context** %3, align 8
  %19 = call i32 @mp_zimg_update_from_cmdline(%struct.mp_zimg_context* %18)
  br label %20

20:                                               ; preds = %10, %9
  ret void
}

declare dso_local i64 @m_config_cache_alloc(%struct.mp_zimg_context*, %struct.mpv_global*, i32*) #1

declare dso_local i32 @destroy_zimg(%struct.mp_zimg_context*) #1

declare dso_local i32 @mp_zimg_update_from_cmdline(%struct.mp_zimg_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
