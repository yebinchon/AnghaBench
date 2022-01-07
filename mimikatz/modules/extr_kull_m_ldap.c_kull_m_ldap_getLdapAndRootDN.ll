; ModuleID = '/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_ldap.c_kull_m_ldap_getLdapAndRootDN.c'
source_filename = "/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_ldap.c_kull_m_ldap_getLdapAndRootDN.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@LDAP_PORT = common dso_local global i32 0, align 4
@LDAP_AUTH_NEGOTIATE = common dso_local global i32 0, align 4
@LDAP_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i32] [i32 108, i32 100, i32 97, i32 112, i32 95, i32 98, i32 105, i32 110, i32 100, i32 95, i32 115, i32 32, i32 48, i32 120, i32 37, i32 120, i32 32, i32 40, i32 37, i32 117, i32 41, i32 10, i32 0], align 4
@.str.1 = private unnamed_addr constant [11 x i32] [i32 108, i32 100, i32 97, i32 112, i32 95, i32 105, i32 110, i32 105, i32 116, i32 10, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kull_m_ldap_getLdapAndRootDN(i64 %0, i64 %1, i32* %2, i64* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  store i64* %3, i64** %8, align 8
  %11 = load i32, i32* @FALSE, align 4
  store i32 %11, i32* %9, align 4
  %12 = load i64, i64* %5, align 8
  %13 = load i32, i32* @LDAP_PORT, align 4
  %14 = call i32 @ldap_init(i64 %12, i32 %13)
  %15 = load i32*, i32** %7, align 8
  store i32 %14, i32* %15, align 4
  %16 = icmp ne i32 %14, 0
  br i1 %16, label %17, label %52

17:                                               ; preds = %4
  %18 = load i64, i64* %6, align 8
  %19 = load i32*, i32** %7, align 8
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @kull_m_ldap_getRootDomainNamingContext(i64 %18, i32 %20)
  %22 = load i64*, i64** %8, align 8
  store i64 %21, i64* %22, align 8
  %23 = icmp ne i64 %21, 0
  br i1 %23, label %24, label %44

24:                                               ; preds = %17
  %25 = load i32*, i32** %7, align 8
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @LDAP_AUTH_NEGOTIATE, align 4
  %28 = call i64 @ldap_bind_s(i32 %26, i32* null, i32* null, i32 %27)
  store i64 %28, i64* %10, align 8
  %29 = load i64, i64* %10, align 8
  %30 = load i64, i64* @LDAP_SUCCESS, align 8
  %31 = icmp eq i64 %29, %30
  %32 = zext i1 %31 to i32
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %43, label %35

35:                                               ; preds = %24
  %36 = load i64, i64* %10, align 8
  %37 = load i64, i64* %10, align 8
  %38 = call i32 (i8*, ...) @PRINT_ERROR(i8* bitcast ([23 x i32]* @.str to i8*), i64 %36, i64 %37)
  %39 = load i64*, i64** %8, align 8
  %40 = load i64, i64* %39, align 8
  %41 = call i64 @LocalFree(i64 %40)
  %42 = load i64*, i64** %8, align 8
  store i64 %41, i64* %42, align 8
  br label %43

43:                                               ; preds = %35, %24
  br label %44

44:                                               ; preds = %43, %17
  %45 = load i32, i32* %9, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %44
  %48 = load i32*, i32** %7, align 8
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @ldap_unbind(i32 %49)
  br label %51

51:                                               ; preds = %47, %44
  br label %54

52:                                               ; preds = %4
  %53 = call i32 (i8*, ...) @PRINT_ERROR(i8* bitcast ([11 x i32]* @.str.1 to i8*))
  br label %54

54:                                               ; preds = %52, %51
  %55 = load i32, i32* %9, align 4
  ret i32 %55
}

declare dso_local i32 @ldap_init(i64, i32) #1

declare dso_local i64 @kull_m_ldap_getRootDomainNamingContext(i64, i32) #1

declare dso_local i64 @ldap_bind_s(i32, i32*, i32*, i32) #1

declare dso_local i32 @PRINT_ERROR(i8*, ...) #1

declare dso_local i64 @LocalFree(i64) #1

declare dso_local i32 @ldap_unbind(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
