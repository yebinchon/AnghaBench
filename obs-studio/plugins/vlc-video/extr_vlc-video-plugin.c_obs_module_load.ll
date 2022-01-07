; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/vlc-video/extr_vlc-video-plugin.c_obs_module_load.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/vlc-video/extr_vlc-video-plugin.c_obs_module_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"Couldn't find VLC installation, VLC video source disabled\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"VLC found, VLC video source enabled\00", align 1
@vlc_source_info = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @obs_module_load() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 (...) @load_libvlc_module()
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %0
  %5 = load i32, i32* @LOG_INFO, align 4
  %6 = call i32 @blog(i32 %5, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %1, align 4
  br label %15

7:                                                ; preds = %0
  %8 = call i32 (...) @load_vlc_funcs()
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %7
  store i32 1, i32* %1, align 4
  br label %15

11:                                               ; preds = %7
  %12 = load i32, i32* @LOG_INFO, align 4
  %13 = call i32 @blog(i32 %12, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %14 = call i32 @obs_register_source(i32* @vlc_source_info)
  store i32 1, i32* %1, align 4
  br label %15

15:                                               ; preds = %11, %10, %4
  %16 = load i32, i32* %1, align 4
  ret i32 %16
}

declare dso_local i32 @load_libvlc_module(...) #1

declare dso_local i32 @blog(i32, i8*) #1

declare dso_local i32 @load_vlc_funcs(...) #1

declare dso_local i32 @obs_register_source(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
