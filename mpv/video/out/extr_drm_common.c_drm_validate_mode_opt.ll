; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_drm_common.c_drm_validate_mode_opt.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_drm_common.c_drm_validate_mode_opt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_log = type { i32 }
%struct.m_option = type { i32 }
%struct.bstr = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"help\00", align 1
@M_OPT_EXIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [104 x i8] c"Invalid value for option drm-mode. Must be a positive number, a string of the format WxH[@R] or 'help'\0A\00", align 1
@M_OPT_INVALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mp_log*, %struct.m_option*, i32, i32)* @drm_validate_mode_opt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drm_validate_mode_opt(%struct.mp_log* %0, %struct.m_option* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bstr, align 4
  %7 = alloca %struct.bstr, align 4
  %8 = alloca %struct.mp_log*, align 8
  %9 = alloca %struct.m_option*, align 8
  %10 = alloca i8*, align 8
  %11 = getelementptr inbounds %struct.bstr, %struct.bstr* %6, i32 0, i32 0
  store i32 %2, i32* %11, align 4
  %12 = getelementptr inbounds %struct.bstr, %struct.bstr* %7, i32 0, i32 0
  store i32 %3, i32* %12, align 4
  store %struct.mp_log* %0, %struct.mp_log** %8, align 8
  store %struct.m_option* %1, %struct.m_option** %9, align 8
  %13 = getelementptr inbounds %struct.bstr, %struct.bstr* %7, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @bstr_equals0(i32 %14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %4
  %18 = load %struct.mp_log*, %struct.mp_log** %8, align 8
  %19 = call i32 @kms_show_available_cards_connectors_and_modes(%struct.mp_log* %18)
  %20 = load i32, i32* @M_OPT_EXIT, align 4
  store i32 %20, i32* %5, align 4
  br label %37

21:                                               ; preds = %4
  %22 = getelementptr inbounds %struct.bstr, %struct.bstr* %7, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i8* @bstrto0(i32* null, i32 %23)
  store i8* %24, i8** %10, align 8
  %25 = load i8*, i8** %10, align 8
  %26 = call i32 @parse_mode_spec(i8* %25, i32* null)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %21
  %29 = load %struct.mp_log*, %struct.mp_log** %8, align 8
  %30 = call i32 @mp_fatal(%struct.mp_log* %29, i8* getelementptr inbounds ([104 x i8], [104 x i8]* @.str.1, i64 0, i64 0))
  %31 = load i8*, i8** %10, align 8
  %32 = call i32 @talloc_free(i8* %31)
  %33 = load i32, i32* @M_OPT_INVALID, align 4
  store i32 %33, i32* %5, align 4
  br label %37

34:                                               ; preds = %21
  %35 = load i8*, i8** %10, align 8
  %36 = call i32 @talloc_free(i8* %35)
  store i32 1, i32* %5, align 4
  br label %37

37:                                               ; preds = %34, %28, %17
  %38 = load i32, i32* %5, align 4
  ret i32 %38
}

declare dso_local i64 @bstr_equals0(i32, i8*) #1

declare dso_local i32 @kms_show_available_cards_connectors_and_modes(%struct.mp_log*) #1

declare dso_local i8* @bstrto0(i32*, i32) #1

declare dso_local i32 @parse_mode_spec(i8*, i32*) #1

declare dso_local i32 @mp_fatal(%struct.mp_log*, i8*) #1

declare dso_local i32 @talloc_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
