; ModuleID = '/home/carl/AnghaBench/mimikatz/mimikatz/modules/lsadump/extr_kuhl_m_lsadump_dc.c_kuhl_m_lsadump_dcsync_descrTrust.c'
source_filename = "/home/carl/AnghaBench/mimikatz/mimikatz/modules/lsadump/extr_kuhl_m_lsadump_dc.c_kuhl_m_lsadump_dcsync_descrTrust.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i64, i64 }

@.str = private unnamed_addr constant [36 x i32] [i32 42, i32 42, i32 32, i32 84, i32 82, i32 85, i32 83, i32 84, i32 69, i32 68, i32 32, i32 68, i32 79, i32 77, i32 65, i32 73, i32 78, i32 32, i32 45, i32 32, i32 65, i32 110, i32 116, i32 105, i32 115, i32 111, i32 99, i32 105, i32 97, i32 108, i32 32, i32 42, i32 42, i32 10, i32 10, i32 0], align 4
@szOID_ANSI_trustPartner = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i32] [i32 80, i32 97, i32 114, i32 116, i32 110, i32 101, i32 114, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 58, i32 32, i32 37, i32 119, i32 90, i32 10, i32 0], align 4
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kuhl_m_lsadump_dcsync_descrTrust(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_8__, align 8
  %10 = alloca %struct.TYPE_8__, align 8
  %11 = alloca %struct.TYPE_8__, align 8
  %12 = alloca %struct.TYPE_8__, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = call i32 (i8*, ...) @kprintf(i8* bitcast ([36 x i32]* @.str to i8*))
  %14 = load i32*, i32** %4, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = load i32, i32* @szOID_ANSI_trustPartner, align 4
  %17 = call i64 @kull_m_rpc_drsr_findMonoAttr(i32* %14, i32* %15, i32 %16, i64* %7, i64* %8)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %50

19:                                               ; preds = %3
  %20 = load i64, i64* %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 1
  store i64 %20, i64* %21, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 2
  store i64 %20, i64* %22, align 8
  %23 = load i64, i64* %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  store i64 %23, i64* %24, align 8
  %25 = call i32 (i8*, ...) @kprintf(i8* bitcast ([28 x i32]* @.str.1 to i8*), %struct.TYPE_8__* %9)
  %26 = load i32, i32* @TRUE, align 4
  %27 = call i32 @RtlUpcaseUnicodeString(%struct.TYPE_8__* %11, %struct.TYPE_8__* %9, i32 %26)
  %28 = call i64 @NT_SUCCESS(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %49

30:                                               ; preds = %19
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @RtlInitUnicodeString(%struct.TYPE_8__* %10, i32 %31)
  %33 = load i32, i32* @TRUE, align 4
  %34 = call i32 @RtlUpcaseUnicodeString(%struct.TYPE_8__* %12, %struct.TYPE_8__* %10, i32 %33)
  %35 = call i64 @NT_SUCCESS(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %47

37:                                               ; preds = %30
  %38 = load i32*, i32** %4, align 8
  %39 = load i32*, i32** %5, align 8
  %40 = load i32, i32* @TRUE, align 4
  %41 = call i32 @kuhl_m_lsadump_dcsync_descrTrustAuthentication(i32* %38, i32* %39, %struct.TYPE_8__* %12, %struct.TYPE_8__* %11, i32 %40)
  %42 = load i32*, i32** %4, align 8
  %43 = load i32*, i32** %5, align 8
  %44 = load i32, i32* @FALSE, align 4
  %45 = call i32 @kuhl_m_lsadump_dcsync_descrTrustAuthentication(i32* %42, i32* %43, %struct.TYPE_8__* %12, %struct.TYPE_8__* %11, i32 %44)
  %46 = call i32 @RtlFreeUnicodeString(%struct.TYPE_8__* %12)
  br label %47

47:                                               ; preds = %37, %30
  %48 = call i32 @RtlFreeUnicodeString(%struct.TYPE_8__* %11)
  br label %49

49:                                               ; preds = %47, %19
  br label %50

50:                                               ; preds = %49, %3
  ret void
}

declare dso_local i32 @kprintf(i8*, ...) #1

declare dso_local i64 @kull_m_rpc_drsr_findMonoAttr(i32*, i32*, i32, i64*, i64*) #1

declare dso_local i64 @NT_SUCCESS(i32) #1

declare dso_local i32 @RtlUpcaseUnicodeString(%struct.TYPE_8__*, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @RtlInitUnicodeString(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @kuhl_m_lsadump_dcsync_descrTrustAuthentication(i32*, i32*, %struct.TYPE_8__*, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @RtlFreeUnicodeString(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
