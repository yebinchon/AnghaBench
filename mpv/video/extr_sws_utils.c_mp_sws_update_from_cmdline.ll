; ModuleID = '/home/carl/AnghaBench/mpv/video/extr_sws_utils.c_mp_sws_update_from_cmdline.c'
source_filename = "/home/carl/AnghaBench/mpv/video/extr_sws_utils.c_mp_sws_update_from_cmdline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_sws_context = type { i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.sws_opts* }
%struct.sws_opts = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32 }

@SWS_PRINT_INFO = common dso_local global i32 0, align 4
@mp_sws_hq_flags = common dso_local global i32 0, align 4
@SWS_BITEXACT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mp_sws_context*)* @mp_sws_update_from_cmdline to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mp_sws_update_from_cmdline(%struct.mp_sws_context* %0) #0 {
  %2 = alloca %struct.mp_sws_context*, align 8
  %3 = alloca %struct.sws_opts*, align 8
  store %struct.mp_sws_context* %0, %struct.mp_sws_context** %2, align 8
  %4 = load %struct.mp_sws_context*, %struct.mp_sws_context** %2, align 8
  %5 = getelementptr inbounds %struct.mp_sws_context, %struct.mp_sws_context* %4, i32 0, i32 4
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = call i32 @m_config_cache_update(%struct.TYPE_2__* %6)
  %8 = load %struct.mp_sws_context*, %struct.mp_sws_context** %2, align 8
  %9 = getelementptr inbounds %struct.mp_sws_context, %struct.mp_sws_context* %8, i32 0, i32 4
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.sws_opts*, %struct.sws_opts** %11, align 8
  store %struct.sws_opts* %12, %struct.sws_opts** %3, align 8
  %13 = load %struct.mp_sws_context*, %struct.mp_sws_context** %2, align 8
  %14 = getelementptr inbounds %struct.mp_sws_context, %struct.mp_sws_context* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @sws_freeFilter(i32 %15)
  %17 = load %struct.sws_opts*, %struct.sws_opts** %3, align 8
  %18 = getelementptr inbounds %struct.sws_opts, %struct.sws_opts* %17, i32 0, i32 9
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.sws_opts*, %struct.sws_opts** %3, align 8
  %21 = getelementptr inbounds %struct.sws_opts, %struct.sws_opts* %20, i32 0, i32 8
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.sws_opts*, %struct.sws_opts** %3, align 8
  %24 = getelementptr inbounds %struct.sws_opts, %struct.sws_opts* %23, i32 0, i32 7
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.sws_opts*, %struct.sws_opts** %3, align 8
  %27 = getelementptr inbounds %struct.sws_opts, %struct.sws_opts* %26, i32 0, i32 6
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.sws_opts*, %struct.sws_opts** %3, align 8
  %30 = getelementptr inbounds %struct.sws_opts, %struct.sws_opts* %29, i32 0, i32 5
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.sws_opts*, %struct.sws_opts** %3, align 8
  %33 = getelementptr inbounds %struct.sws_opts, %struct.sws_opts* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @sws_getDefaultFilter(i32 %19, i32 %22, i32 %25, i32 %28, i32 %31, i32 %34, i32 0)
  %36 = load %struct.mp_sws_context*, %struct.mp_sws_context** %2, align 8
  %37 = getelementptr inbounds %struct.mp_sws_context, %struct.mp_sws_context* %36, i32 0, i32 3
  store i32 %35, i32* %37, align 4
  %38 = load %struct.mp_sws_context*, %struct.mp_sws_context** %2, align 8
  %39 = getelementptr inbounds %struct.mp_sws_context, %struct.mp_sws_context* %38, i32 0, i32 0
  store i32 1, i32* %39, align 8
  %40 = load i32, i32* @SWS_PRINT_INFO, align 4
  %41 = load %struct.mp_sws_context*, %struct.mp_sws_context** %2, align 8
  %42 = getelementptr inbounds %struct.mp_sws_context, %struct.mp_sws_context* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 8
  %43 = load %struct.sws_opts*, %struct.sws_opts** %3, align 8
  %44 = getelementptr inbounds %struct.sws_opts, %struct.sws_opts* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.mp_sws_context*, %struct.mp_sws_context** %2, align 8
  %47 = getelementptr inbounds %struct.mp_sws_context, %struct.mp_sws_context* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = or i32 %48, %45
  store i32 %49, i32* %47, align 8
  %50 = load %struct.sws_opts*, %struct.sws_opts** %3, align 8
  %51 = getelementptr inbounds %struct.sws_opts, %struct.sws_opts* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %60, label %54

54:                                               ; preds = %1
  %55 = load i32, i32* @mp_sws_hq_flags, align 4
  %56 = load %struct.mp_sws_context*, %struct.mp_sws_context** %2, align 8
  %57 = getelementptr inbounds %struct.mp_sws_context, %struct.mp_sws_context* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = or i32 %58, %55
  store i32 %59, i32* %57, align 8
  br label %60

60:                                               ; preds = %54, %1
  %61 = load %struct.sws_opts*, %struct.sws_opts** %3, align 8
  %62 = getelementptr inbounds %struct.sws_opts, %struct.sws_opts* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %60
  %66 = load i32, i32* @SWS_BITEXACT, align 4
  %67 = load %struct.mp_sws_context*, %struct.mp_sws_context** %2, align 8
  %68 = getelementptr inbounds %struct.mp_sws_context, %struct.mp_sws_context* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = or i32 %69, %66
  store i32 %70, i32* %68, align 8
  br label %71

71:                                               ; preds = %65, %60
  %72 = load %struct.sws_opts*, %struct.sws_opts** %3, align 8
  %73 = getelementptr inbounds %struct.sws_opts, %struct.sws_opts* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.mp_sws_context*, %struct.mp_sws_context** %2, align 8
  %76 = getelementptr inbounds %struct.mp_sws_context, %struct.mp_sws_context* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 4
  ret void
}

declare dso_local i32 @m_config_cache_update(%struct.TYPE_2__*) #1

declare dso_local i32 @sws_freeFilter(i32) #1

declare dso_local i32 @sws_getDefaultFilter(i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
