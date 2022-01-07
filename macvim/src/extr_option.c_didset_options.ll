; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_option.c_didset_options.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_option.c_didset_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@p_bkc = common dso_local global i32 0, align 4
@p_bkc_values = common dso_local global i32 0, align 4
@bkc_flags = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@p_dy = common dso_local global i32 0, align 4
@p_dy_values = common dso_local global i32 0, align 4
@dy_flags = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@cmp_flags = common dso_local global i32 0, align 4
@curwin = common dso_local global %struct.TYPE_2__* null, align 8
@fdo_flags = common dso_local global i32 0, align 4
@fuoptions_bgcolor = common dso_local global i32 0, align 4
@fuoptions_flags = common dso_local global i32 0, align 4
@p_cmp = common dso_local global i32 0, align 4
@p_cmp_values = common dso_local global i32 0, align 4
@p_fdo = common dso_local global i32 0, align 4
@p_fdo_values = common dso_local global i32 0, align 4
@p_fuoptions = common dso_local global i32 0, align 4
@p_ssop = common dso_local global i32 0, align 4
@p_ssop_values = common dso_local global i32 0, align 4
@p_tbis = common dso_local global i32 0, align 4
@p_tbis_values = common dso_local global i32 0, align 4
@p_toolbar = common dso_local global i32 0, align 4
@p_toolbar_values = common dso_local global i32 0, align 4
@p_ttym = common dso_local global i32 0, align 4
@p_ttym_values = common dso_local global i32 0, align 4
@p_ve = common dso_local global i32 0, align 4
@p_ve_values = common dso_local global i32 0, align 4
@p_vop = common dso_local global i32 0, align 4
@ssop_flags = common dso_local global i32 0, align 4
@tbis_flags = common dso_local global i32 0, align 4
@toolbar_flags = common dso_local global i32 0, align 4
@ttym_flags = common dso_local global i32 0, align 4
@ve_flags = common dso_local global i32 0, align 4
@vop_flags = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @didset_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @didset_options() #0 {
  %1 = call i32 (...) @init_chartab()
  %2 = load i32, i32* @p_bkc, align 4
  %3 = load i32, i32* @p_bkc_values, align 4
  %4 = load i32, i32* @TRUE, align 4
  %5 = call i32 @opt_strings_flags(i32 %2, i32 %3, i32* @bkc_flags, i32 %4)
  %6 = load i32, i32* @p_dy, align 4
  %7 = load i32, i32* @p_dy_values, align 4
  %8 = load i32, i32* @TRUE, align 4
  %9 = call i32 @opt_strings_flags(i32 %6, i32 %7, i32* @dy_flags, i32 %8)
  ret void
}

declare dso_local i32 @init_chartab(...) #1

declare dso_local i32 @opt_strings_flags(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
