; ModuleID = '/home/carl/AnghaBench/mimikatz/mimikatz/modules/kerberos/extr_kuhl_m_kerberos.c_kuhl_m_kerberos_init.c'
source_filename = "/home/carl/AnghaBench/mimikatz/mimikatz/modules/kerberos/extr_kuhl_m_kerberos.c_kuhl_m_kerberos_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g_hLSA = common dso_local global i32 0, align 4
@kerberosPackageName = common dso_local global i32 0, align 4
@g_AuthenticationPackageId_Kerberos = common dso_local global i32 0, align 4
@g_isAuthPackageKerberos = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kuhl_m_kerberos_init() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 @LsaConnectUntrusted(i32* @g_hLSA)
  store i32 %2, i32* %1, align 4
  %3 = load i32, i32* %1, align 4
  %4 = call i64 @NT_SUCCESS(i32 %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %11

6:                                                ; preds = %0
  %7 = load i32, i32* @g_hLSA, align 4
  %8 = call i32 @LsaLookupAuthenticationPackage(i32 %7, i32* @kerberosPackageName, i32* @g_AuthenticationPackageId_Kerberos)
  store i32 %8, i32* %1, align 4
  %9 = load i32, i32* %1, align 4
  %10 = call i64 @NT_SUCCESS(i32 %9)
  store i64 %10, i64* @g_isAuthPackageKerberos, align 8
  br label %11

11:                                               ; preds = %6, %0
  %12 = load i32, i32* %1, align 4
  ret i32 %12
}

declare dso_local i32 @LsaConnectUntrusted(i32*) #1

declare dso_local i64 @NT_SUCCESS(i32) #1

declare dso_local i32 @LsaLookupAuthenticationPackage(i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
