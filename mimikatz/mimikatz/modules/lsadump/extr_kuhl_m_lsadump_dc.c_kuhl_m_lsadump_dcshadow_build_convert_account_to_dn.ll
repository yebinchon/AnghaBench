; ModuleID = '/home/carl/AnghaBench/mimikatz/mimikatz/modules/lsadump/extr_kuhl_m_lsadump_dc.c_kuhl_m_lsadump_dcshadow_build_convert_account_to_dn.c'
source_filename = "/home/carl/AnghaBench/mimikatz/mimikatz/modules/lsadump/extr_kuhl_m_lsadump_dc.c_kuhl_m_lsadump_dcshadow_build_convert_account_to_dn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i32] [i32 40, i32 115, i32 65, i32 77, i32 65, i32 99, i32 99, i32 111, i32 117, i32 110, i32 116, i32 78, i32 97, i32 109, i32 101, i32 61, i32 37, i32 115, i32 41, i32 0], align 4
@LDAP_SCOPE_SUBTREE = common dso_local global i32 0, align 4
@LDAP_SUCCESS = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kuhl_m_lsadump_dcshadow_build_convert_account_to_dn(i32 %0, i32 %1, %struct.TYPE_3__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %6, align 8
  %12 = load i32, i32* @FALSE, align 4
  store i32 %12, i32* %7, align 4
  store i32* null, i32** %9, align 8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @kull_m_string_sprintf(i32* %10, i8* bitcast ([20 x i32]* @.str to i8*), i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %52

18:                                               ; preds = %3
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @LDAP_SCOPE_SUBTREE, align 4
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* @FALSE, align 4
  %24 = call i64 @ldap_search_s(i32 %19, i32 %20, i32 %21, i32 %22, i32* null, i32 %23, i32** %9)
  store i64 %24, i64* %8, align 8
  %25 = load i64, i64* %8, align 8
  %26 = load i64, i64* @LDAP_SUCCESS, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %49

28:                                               ; preds = %18
  %29 = load i32, i32* %4, align 4
  %30 = load i32*, i32** %9, align 8
  %31 = call i32 @ldap_get_dnW(i32 %29, i32* %30)
  store i32 %31, i32* %11, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %46

33:                                               ; preds = %28
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @LocalFree(i32 %36)
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %11, align 4
  %41 = call i64 @kull_m_string_copy(i32* %39, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %33
  %44 = load i32, i32* @TRUE, align 4
  store i32 %44, i32* %7, align 4
  br label %45

45:                                               ; preds = %43, %33
  br label %46

46:                                               ; preds = %45, %28
  %47 = load i32*, i32** %9, align 8
  %48 = call i32 @ldap_msgfree(i32* %47)
  br label %49

49:                                               ; preds = %46, %18
  %50 = load i32, i32* %10, align 4
  %51 = call i32 @LocalFree(i32 %50)
  br label %52

52:                                               ; preds = %49, %3
  %53 = load i32, i32* %7, align 4
  ret i32 %53
}

declare dso_local i64 @kull_m_string_sprintf(i32*, i8*, i32) #1

declare dso_local i64 @ldap_search_s(i32, i32, i32, i32, i32*, i32, i32**) #1

declare dso_local i32 @ldap_get_dnW(i32, i32*) #1

declare dso_local i32 @LocalFree(i32) #1

declare dso_local i64 @kull_m_string_copy(i32*, i32) #1

declare dso_local i32 @ldap_msgfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
