; ModuleID = '/home/carl/AnghaBench/mimikatz/mimilib/sekurlsadbg/extr_kuhl_m_sekurlsa_packages.c_kuhl_m_sekurlsa_msv_helper.c'
source_filename = "/home/carl/AnghaBench/mimikatz/mimilib/sekurlsadbg/extr_kuhl_m_sekurlsa_packages.c_kuhl_m_sekurlsa_msv_helper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NtBuildNumber = common dso_local global i64 0, align 8
@KULL_M_WIN_BUILD_10_1507 = common dso_local global i64 0, align 8
@msv1_0_primaryHelper = common dso_local global i32* null, align 8
@KULL_M_WIN_BUILD_10_1511 = common dso_local global i64 0, align 8
@KULL_M_WIN_BUILD_10_1607 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @kuhl_m_sekurlsa_msv_helper() #0 {
  %1 = alloca i32*, align 8
  %2 = load i64, i64* @NtBuildNumber, align 8
  %3 = load i64, i64* @KULL_M_WIN_BUILD_10_1507, align 8
  %4 = icmp slt i64 %2, %3
  br i1 %4, label %5, label %8

5:                                                ; preds = %0
  %6 = load i32*, i32** @msv1_0_primaryHelper, align 8
  %7 = getelementptr inbounds i32, i32* %6, i64 0
  store i32* %7, i32** %1, align 8
  br label %27

8:                                                ; preds = %0
  %9 = load i64, i64* @NtBuildNumber, align 8
  %10 = load i64, i64* @KULL_M_WIN_BUILD_10_1511, align 8
  %11 = icmp slt i64 %9, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %8
  %13 = load i32*, i32** @msv1_0_primaryHelper, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 1
  store i32* %14, i32** %1, align 8
  br label %26

15:                                               ; preds = %8
  %16 = load i64, i64* @NtBuildNumber, align 8
  %17 = load i64, i64* @KULL_M_WIN_BUILD_10_1607, align 8
  %18 = icmp slt i64 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = load i32*, i32** @msv1_0_primaryHelper, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 2
  store i32* %21, i32** %1, align 8
  br label %25

22:                                               ; preds = %15
  %23 = load i32*, i32** @msv1_0_primaryHelper, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 3
  store i32* %24, i32** %1, align 8
  br label %25

25:                                               ; preds = %22, %19
  br label %26

26:                                               ; preds = %25, %12
  br label %27

27:                                               ; preds = %26, %5
  %28 = load i32*, i32** %1, align 8
  ret i32* %28
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
