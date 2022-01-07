; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/win-capture/extr_duplicator-monitor-capture.c_get_monitor_props.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/win-capture/extr_duplicator-monitor-capture.c_get_monitor_props.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dstr = type { i32, i32 }
%struct.gs_monitor_info = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [25 x i8] c"%s %d: %ldx%ld @ %ld,%ld\00", align 1
@TEXT_MONITOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @get_monitor_props to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_monitor_props(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dstr, align 4
  %7 = alloca %struct.gs_monitor_info, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = bitcast %struct.dstr* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %8, i8 0, i64 8, i1 false)
  %9 = load i32, i32* %5, align 4
  %10 = call i32 @gs_get_duplicator_monitor_info(i32 %9, %struct.gs_monitor_info* %7)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %32

13:                                               ; preds = %2
  %14 = load i32, i32* @TEXT_MONITOR, align 4
  %15 = load i32, i32* %5, align 4
  %16 = add nsw i32 %15, 1
  %17 = getelementptr inbounds %struct.gs_monitor_info, %struct.gs_monitor_info* %7, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = getelementptr inbounds %struct.gs_monitor_info, %struct.gs_monitor_info* %7, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = getelementptr inbounds %struct.gs_monitor_info, %struct.gs_monitor_info* %7, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = getelementptr inbounds %struct.gs_monitor_info, %struct.gs_monitor_info* %7, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @dstr_catf(%struct.dstr* %6, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %16, i32 %18, i32 %20, i32 %22, i32 %24)
  %26 = load i32*, i32** %4, align 8
  %27 = getelementptr inbounds %struct.dstr, %struct.dstr* %6, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @obs_property_list_add_int(i32* %26, i32 %28, i32 %29)
  %31 = call i32 @dstr_free(%struct.dstr* %6)
  store i32 1, i32* %3, align 4
  br label %32

32:                                               ; preds = %13, %12
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @gs_get_duplicator_monitor_info(i32, %struct.gs_monitor_info*) #2

declare dso_local i32 @dstr_catf(%struct.dstr*, i8*, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @obs_property_list_add_int(i32*, i32, i32) #2

declare dso_local i32 @dstr_free(%struct.dstr*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
