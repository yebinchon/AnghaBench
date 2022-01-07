; ModuleID = '/home/carl/AnghaBench/mimikatz/mimikatz/modules/lsadump/extr_kuhl_m_lsadump_dc.c_kuhl_m_lsadump_dcsync_descrObject.c'
source_filename = "/home/carl/AnghaBench/mimikatz/mimikatz/modules/lsadump/extr_kuhl_m_lsadump_dc.c_kuhl_m_lsadump_dcsync_descrObject.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [25 x i32] [i32 10, i32 79, i32 98, i32 106, i32 101, i32 99, i32 116, i32 32, i32 82, i32 68, i32 78, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 58, i32 32, i32 0], align 4
@szOID_ANSI_name = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i32] [i32 10, i32 0], align 4
@szOID_ANSI_sAMAccountName = common dso_local global i32 0, align 4
@szOID_ANSI_trustPartner = common dso_local global i32 0, align 4
@szOID_ANSI_currentValue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kuhl_m_lsadump_dcsync_descrObject(i32* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load i32*, i32** %5, align 8
  %10 = load i32*, i32** %6, align 8
  %11 = load i32, i32* @szOID_ANSI_name, align 4
  %12 = load i32, i32* @TRUE, align 4
  %13 = call i32 @kull_m_rpc_drsr_findPrintMonoAttr(i8* bitcast ([25 x i32]* @.str to i8*), i32* %9, i32* %10, i32 %11, i32 %12)
  %14 = call i32 @kprintf(i8* bitcast ([2 x i32]* @.str.1 to i8*))
  %15 = load i32*, i32** %5, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = load i32, i32* @szOID_ANSI_sAMAccountName, align 4
  %18 = call i64 @kull_m_rpc_drsr_findMonoAttr(i32* %15, i32* %16, i32 %17, i32* null, i32* null)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %4
  %21 = load i32*, i32** %5, align 8
  %22 = load i32*, i32** %6, align 8
  %23 = call i32 @kuhl_m_lsadump_dcsync_descrUser(i32* %21, i32* %22)
  br label %48

24:                                               ; preds = %4
  %25 = load i32*, i32** %5, align 8
  %26 = load i32*, i32** %6, align 8
  %27 = load i32, i32* @szOID_ANSI_trustPartner, align 4
  %28 = call i64 @kull_m_rpc_drsr_findMonoAttr(i32* %25, i32* %26, i32 %27, i32* null, i32* null)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %24
  %31 = load i32*, i32** %5, align 8
  %32 = load i32*, i32** %6, align 8
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @kuhl_m_lsadump_dcsync_descrTrust(i32* %31, i32* %32, i32 %33)
  br label %47

35:                                               ; preds = %24
  %36 = load i32*, i32** %5, align 8
  %37 = load i32*, i32** %6, align 8
  %38 = load i32, i32* @szOID_ANSI_currentValue, align 4
  %39 = call i64 @kull_m_rpc_drsr_findMonoAttr(i32* %36, i32* %37, i32 %38, i32* null, i32* null)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %35
  %42 = load i32*, i32** %5, align 8
  %43 = load i32*, i32** %6, align 8
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @kuhl_m_lsadump_dcsync_descrSecret(i32* %42, i32* %43, i32 %44)
  br label %46

46:                                               ; preds = %41, %35
  br label %47

47:                                               ; preds = %46, %30
  br label %48

48:                                               ; preds = %47, %20
  ret void
}

declare dso_local i32 @kull_m_rpc_drsr_findPrintMonoAttr(i8*, i32*, i32*, i32, i32) #1

declare dso_local i32 @kprintf(i8*) #1

declare dso_local i64 @kull_m_rpc_drsr_findMonoAttr(i32*, i32*, i32, i32*, i32*) #1

declare dso_local i32 @kuhl_m_lsadump_dcsync_descrUser(i32*, i32*) #1

declare dso_local i32 @kuhl_m_lsadump_dcsync_descrTrust(i32*, i32*, i32) #1

declare dso_local i32 @kuhl_m_lsadump_dcsync_descrSecret(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
