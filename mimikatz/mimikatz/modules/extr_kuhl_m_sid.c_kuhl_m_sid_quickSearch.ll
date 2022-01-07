; ModuleID = '/home/carl/AnghaBench/mimikatz/mimikatz/modules/extr_kuhl_m_sid.c_kuhl_m_sid_quickSearch.c'
source_filename = "/home/carl/AnghaBench/mimikatz/mimikatz/modules/extr_kuhl_m_sid.c_kuhl_m_sid_quickSearch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i32] [i32 110, i32 97, i32 109, i32 101, i32 0], align 4
@.str.1 = private unnamed_addr constant [15 x i32] [i32 115, i32 65, i32 77, i32 65, i32 99, i32 99, i32 111, i32 117, i32 110, i32 116, i32 78, i32 97, i32 109, i32 101, i32 0], align 4
@.str.2 = private unnamed_addr constant [10 x i32] [i32 111, i32 98, i32 106, i32 101, i32 99, i32 116, i32 83, i32 105, i32 100, i32 0], align 4
@.str.3 = private unnamed_addr constant [11 x i32] [i32 115, i32 73, i32 68, i32 72, i32 105, i32 115, i32 116, i32 111, i32 114, i32 121, i32 0], align 4
@.str.4 = private unnamed_addr constant [11 x i32] [i32 111, i32 98, i32 106, i32 101, i32 99, i32 116, i32 71, i32 85, i32 73, i32 68, i32 0], align 4
@LDAP_SCOPE_SUBTREE = common dso_local global i32 0, align 4
@LDAP_SUCCESS = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [30 x i32] [i32 78, i32 111, i32 32, i32 114, i32 101, i32 115, i32 117, i32 108, i32 116, i32 33, i32 32, i32 45, i32 32, i32 102, i32 105, i32 108, i32 116, i32 101, i32 114, i32 32, i32 119, i32 97, i32 115, i32 32, i32 39, i32 37, i32 115, i32 39, i32 10, i32 0], align 4
@.str.6 = private unnamed_addr constant [61 x i32] [i32 78, i32 111, i32 116, i32 32, i32 117, i32 110, i32 105, i32 113, i32 117, i32 101, i32 32, i32 45, i32 32, i32 80, i32 108, i32 101, i32 97, i32 115, i32 101, i32 58, i32 32, i32 100, i32 111, i32 110, i32 39, i32 116, i32 32, i32 98, i32 114, i32 105, i32 99, i32 107, i32 32, i32 121, i32 111, i32 117, i32 114, i32 32, i32 65, i32 68, i32 33, i32 32, i32 45, i32 32, i32 102, i32 105, i32 108, i32 116, i32 101, i32 114, i32 32, i32 119, i32 97, i32 115, i32 32, i32 39, i32 37, i32 115, i32 39, i32 10, i32 0], align 4
@.str.7 = private unnamed_addr constant [25 x i32] [i32 108, i32 100, i32 97, i32 112, i32 95, i32 115, i32 101, i32 97, i32 114, i32 99, i32 104, i32 95, i32 115, i32 32, i32 48, i32 120, i32 37, i32 120, i32 32, i32 40, i32 37, i32 117, i32 41, i32 10, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kuhl_m_sid_quickSearch(i32 %0, i32** %1, i32 %2, i32 %3, i32* %4, i32** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32**, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca [6 x i8*], align 16
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  store i32 %0, i32* %7, align 4
  store i32** %1, i32*** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32** %5, i32*** %12, align 8
  %18 = load i32, i32* @FALSE, align 4
  store i32 %18, i32* %13, align 4
  %19 = bitcast [6 x i8*]* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %19, i8 0, i64 48, i1 false)
  %20 = bitcast i8* %19 to [6 x i8*]*
  %21 = getelementptr inbounds [6 x i8*], [6 x i8*]* %20, i32 0, i32 0
  store i8* bitcast ([5 x i32]* @.str to i8*), i8** %21, align 16
  %22 = getelementptr inbounds [6 x i8*], [6 x i8*]* %20, i32 0, i32 1
  store i8* bitcast ([15 x i32]* @.str.1 to i8*), i8** %22, align 8
  %23 = getelementptr inbounds [6 x i8*], [6 x i8*]* %20, i32 0, i32 2
  store i8* bitcast ([10 x i32]* @.str.2 to i8*), i8** %23, align 16
  %24 = getelementptr inbounds [6 x i8*], [6 x i8*]* %20, i32 0, i32 3
  store i8* bitcast ([11 x i32]* @.str.3 to i8*), i8** %24, align 8
  %25 = getelementptr inbounds [6 x i8*], [6 x i8*]* %20, i32 0, i32 4
  store i8* bitcast ([11 x i32]* @.str.4 to i8*), i8** %25, align 16
  %26 = load i32, i32* %7, align 4
  %27 = load i32**, i32*** %8, align 8
  %28 = call i8* @kuhl_m_sid_filterFromArgs(i32 %26, i32** %27)
  store i8* %28, i8** %17, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %103

30:                                               ; preds = %6
  %31 = load i32, i32* %10, align 4
  %32 = load i32*, i32** %11, align 8
  %33 = call i64 @kull_m_ldap_getLdapAndRootDN(i32 %31, i32* null, i32* %32, i8** %16)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %100

35:                                               ; preds = %30
  %36 = load i32**, i32*** %12, align 8
  store i32* null, i32** %36, align 8
  %37 = load i32*, i32** %11, align 8
  %38 = load i32, i32* %37, align 4
  %39 = load i8*, i8** %16, align 8
  %40 = load i32, i32* @LDAP_SCOPE_SUBTREE, align 4
  %41 = load i8*, i8** %17, align 8
  %42 = getelementptr inbounds [6 x i8*], [6 x i8*]* %15, i64 0, i64 0
  %43 = load i32, i32* @FALSE, align 4
  %44 = load i32**, i32*** %12, align 8
  %45 = call i64 @ldap_search_s(i32 %38, i8* %39, i32 %40, i8* %41, i8** %42, i32 %43, i32** %44)
  store i64 %45, i64* %14, align 8
  %46 = load i64, i64* %14, align 8
  %47 = load i64, i64* @LDAP_SUCCESS, align 8
  %48 = icmp eq i64 %46, %47
  %49 = zext i1 %48 to i32
  store i32 %49, i32* %13, align 4
  br i1 %48, label %50, label %72

50:                                               ; preds = %35
  %51 = load i32*, i32** %11, align 8
  %52 = load i32, i32* %51, align 4
  %53 = load i32**, i32*** %12, align 8
  %54 = load i32*, i32** %53, align 8
  %55 = call i32 @ldap_count_entries(i32 %52, i32* %54)
  switch i32 %55, label %62 [
    i32 0, label %56
    i32 1, label %61
  ]

56:                                               ; preds = %50
  %57 = load i32, i32* @FALSE, align 4
  store i32 %57, i32* %13, align 4
  %58 = load i8*, i8** %17, align 8
  %59 = ptrtoint i8* %58 to i64
  %60 = call i32 (i8*, i64, ...) @PRINT_ERROR(i8* bitcast ([30 x i32]* @.str.5 to i8*), i64 %59)
  br label %71

61:                                               ; preds = %50
  br label %71

62:                                               ; preds = %50
  %63 = load i32, i32* %9, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %62
  %66 = load i8*, i8** %17, align 8
  %67 = ptrtoint i8* %66 to i64
  %68 = call i32 (i8*, i64, ...) @PRINT_ERROR(i8* bitcast ([61 x i32]* @.str.6 to i8*), i64 %67)
  %69 = load i32, i32* @FALSE, align 4
  store i32 %69, i32* %13, align 4
  br label %70

70:                                               ; preds = %65, %62
  br label %71

71:                                               ; preds = %70, %61, %56
  br label %76

72:                                               ; preds = %35
  %73 = load i64, i64* %14, align 8
  %74 = load i64, i64* %14, align 8
  %75 = call i32 (i8*, i64, ...) @PRINT_ERROR(i8* bitcast ([25 x i32]* @.str.7 to i8*), i64 %73, i64 %74)
  br label %76

76:                                               ; preds = %72, %71
  %77 = load i32, i32* %13, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %76
  %80 = load i32*, i32** %11, align 8
  %81 = load i32, i32* %80, align 4
  %82 = load i32**, i32*** %12, align 8
  %83 = load i32*, i32** %82, align 8
  %84 = call i32 @kuhl_m_sid_displayMessage(i32 %81, i32* %83)
  br label %97

85:                                               ; preds = %76
  %86 = load i32**, i32*** %12, align 8
  %87 = load i32*, i32** %86, align 8
  %88 = icmp ne i32* %87, null
  br i1 %88, label %89, label %93

89:                                               ; preds = %85
  %90 = load i32**, i32*** %12, align 8
  %91 = load i32*, i32** %90, align 8
  %92 = call i32 @ldap_msgfree(i32* %91)
  br label %93

93:                                               ; preds = %89, %85
  %94 = load i32*, i32** %11, align 8
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @ldap_unbind(i32 %95)
  br label %97

97:                                               ; preds = %93, %79
  %98 = load i8*, i8** %16, align 8
  %99 = call i32 @LocalFree(i8* %98)
  br label %100

100:                                              ; preds = %97, %30
  %101 = load i8*, i8** %17, align 8
  %102 = call i32 @LocalFree(i8* %101)
  br label %103

103:                                              ; preds = %100, %6
  %104 = load i32, i32* %13, align 4
  ret i32 %104
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i8* @kuhl_m_sid_filterFromArgs(i32, i32**) #2

declare dso_local i64 @kull_m_ldap_getLdapAndRootDN(i32, i32*, i32*, i8**) #2

declare dso_local i64 @ldap_search_s(i32, i8*, i32, i8*, i8**, i32, i32**) #2

declare dso_local i32 @ldap_count_entries(i32, i32*) #2

declare dso_local i32 @PRINT_ERROR(i8*, i64, ...) #2

declare dso_local i32 @kuhl_m_sid_displayMessage(i32, i32*) #2

declare dso_local i32 @ldap_msgfree(i32*) #2

declare dso_local i32 @ldap_unbind(i32) #2

declare dso_local i32 @LocalFree(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
