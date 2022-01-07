; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_drm_common.c_drm_validate_connector_opt.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_drm_common.c_drm_validate_connector_opt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_log = type { i32 }
%struct.m_option = type { i32 }
%struct.bstr = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"help\00", align 1
@M_OPT_EXIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mp_log*, %struct.m_option*, i32, i32)* @drm_validate_connector_opt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drm_validate_connector_opt(%struct.mp_log* %0, %struct.m_option* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bstr, align 4
  %7 = alloca %struct.bstr, align 4
  %8 = alloca %struct.mp_log*, align 8
  %9 = alloca %struct.m_option*, align 8
  %10 = getelementptr inbounds %struct.bstr, %struct.bstr* %6, i32 0, i32 0
  store i32 %2, i32* %10, align 4
  %11 = getelementptr inbounds %struct.bstr, %struct.bstr* %7, i32 0, i32 0
  store i32 %3, i32* %11, align 4
  store %struct.mp_log* %0, %struct.mp_log** %8, align 8
  store %struct.m_option* %1, %struct.m_option** %9, align 8
  %12 = getelementptr inbounds %struct.bstr, %struct.bstr* %7, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @bstr_equals0(i32 %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %4
  %17 = load %struct.mp_log*, %struct.mp_log** %8, align 8
  %18 = call i32 @kms_show_available_cards_and_connectors(%struct.mp_log* %17)
  %19 = load i32, i32* @M_OPT_EXIT, align 4
  store i32 %19, i32* %5, align 4
  br label %21

20:                                               ; preds = %4
  store i32 1, i32* %5, align 4
  br label %21

21:                                               ; preds = %20, %16
  %22 = load i32, i32* %5, align 4
  ret i32 %22
}

declare dso_local i64 @bstr_equals0(i32, i8*) #1

declare dso_local i32 @kms_show_available_cards_and_connectors(%struct.mp_log*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
