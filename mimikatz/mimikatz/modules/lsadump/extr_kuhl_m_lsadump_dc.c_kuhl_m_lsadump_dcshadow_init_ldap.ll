; ModuleID = '/home/carl/AnghaBench/mimikatz/mimikatz/modules/lsadump/extr_kuhl_m_lsadump_dc.c_kuhl_m_lsadump_dcshadow_init_ldap.c'
source_filename = "/home/carl/AnghaBench/mimikatz/mimikatz/modules/lsadump/extr_kuhl_m_lsadump_dc.c_kuhl_m_lsadump_dcshadow_init_ldap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LDAP_VERSION3 = common dso_local global i32 0, align 4
@LDAP_OPT_PROTOCOL_VERSION = common dso_local global i32 0, align 4
@LDAP_OPT_SIGN = common dso_local global i32 0, align 4
@LDAP_OPT_ON = common dso_local global i8* null, align 8
@LDAP_AUTH_NEGOTIATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kuhl_m_lsadump_dcshadow_init_ldap(i32 %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32** %1, i32*** %4, align 8
  store i32 0, i32* %5, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call i32* @ldap_init(i32 %8, i32 389)
  store i32* %9, i32** %6, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %40

11:                                               ; preds = %2
  %12 = load i32, i32* @LDAP_VERSION3, align 4
  store i32 %12, i32* %7, align 4
  %13 = load i32*, i32** %6, align 8
  %14 = load i32, i32* @LDAP_OPT_PROTOCOL_VERSION, align 4
  %15 = bitcast i32* %7 to i8*
  %16 = call i32 @ldap_set_option(i32* %13, i32 %14, i8* %15)
  %17 = load i32*, i32** %6, align 8
  %18 = load i32, i32* @LDAP_OPT_SIGN, align 4
  %19 = load i8*, i8** @LDAP_OPT_ON, align 8
  %20 = call i32 @ldap_set_option(i32* %17, i32 %18, i8* %19)
  %21 = load i32*, i32** %6, align 8
  %22 = call i32 @ldap_connect(i32* %21, i32* null)
  store i32 %22, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %36, label %24

24:                                               ; preds = %11
  %25 = load i32*, i32** %6, align 8
  %26 = load i32, i32* @LDAP_AUTH_NEGOTIATE, align 4
  %27 = call i32 @ldap_bind_s(i32* %25, i32* null, i32* null, i32 %26)
  store i32 %27, i32* %5, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %24
  %30 = load i32*, i32** %6, align 8
  %31 = load i32**, i32*** %4, align 8
  store i32* %30, i32** %31, align 8
  br label %35

32:                                               ; preds = %24
  %33 = load i32*, i32** %6, align 8
  %34 = call i32 @ldap_unbind(i32* %33)
  br label %35

35:                                               ; preds = %32, %29
  br label %39

36:                                               ; preds = %11
  %37 = load i32*, i32** %6, align 8
  %38 = call i32 @ldap_unbind(i32* %37)
  br label %39

39:                                               ; preds = %36, %35
  br label %40

40:                                               ; preds = %39, %2
  %41 = load i32, i32* %5, align 4
  ret i32 %41
}

declare dso_local i32* @ldap_init(i32, i32) #1

declare dso_local i32 @ldap_set_option(i32*, i32, i8*) #1

declare dso_local i32 @ldap_connect(i32*, i32*) #1

declare dso_local i32 @ldap_bind_s(i32*, i32*, i32*, i32) #1

declare dso_local i32 @ldap_unbind(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
