; ModuleID = '/home/carl/AnghaBench/radare2/libr/bin/p/extr_bin_coff.c_r_coff_is_stripped.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/bin/p/extr_bin_coff.c_r_coff_is_stripped.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r_bin_coff_obj = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@COFF_FLAGS_TI_F_RELFLG = common dso_local global i32 0, align 4
@COFF_FLAGS_TI_F_LNNO = common dso_local global i32 0, align 4
@COFF_FLAGS_TI_F_LSYMS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.r_bin_coff_obj*)* @r_coff_is_stripped to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r_coff_is_stripped(%struct.r_bin_coff_obj* %0) #0 {
  %2 = alloca %struct.r_bin_coff_obj*, align 8
  store %struct.r_bin_coff_obj* %0, %struct.r_bin_coff_obj** %2, align 8
  %3 = load %struct.r_bin_coff_obj*, %struct.r_bin_coff_obj** %2, align 8
  %4 = getelementptr inbounds %struct.r_bin_coff_obj, %struct.r_bin_coff_obj* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @COFF_FLAGS_TI_F_RELFLG, align 4
  %8 = load i32, i32* @COFF_FLAGS_TI_F_LNNO, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @COFF_FLAGS_TI_F_LSYMS, align 4
  %11 = or i32 %9, %10
  %12 = and i32 %6, %11
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  ret i32 %16
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
