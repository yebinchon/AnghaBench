; ModuleID = '/home/carl/AnghaBench/mimikatz/mimikatz/modules/lsadump/extr_kuhl_m_lsadump_dc.c_kuhl_m_lsadump_dcshadow_lingering_propagate.c'
source_filename = "/home/carl/AnghaBench/mimikatz/mimikatz/modules/lsadump/extr_kuhl_m_lsadump_dc.c_kuhl_m_lsadump_dcshadow_lingering_propagate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32, i32, i32 }

@.str = private unnamed_addr constant [12 x i32] [i32 100, i32 78, i32 83, i32 72, i32 111, i32 115, i32 116, i32 78, i32 97, i32 109, i32 101, i32 0], align 4
@__const.kuhl_m_lsadump_dcshadow_lingering_propagate.szAttributes = private unnamed_addr constant [2 x i8*] [i8* bitcast ([12 x i32]* @.str to i8*), i8* null], align 16
@LDAP_SCOPE_SUBTREE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i32] [i32 40, i32 111, i32 98, i32 106, i32 101, i32 99, i32 116, i32 67, i32 108, i32 97, i32 115, i32 115, i32 61, i32 110, i32 84, i32 68, i32 83, i32 68, i32 83, i32 65, i32 41, i32 0], align 4
@FALSE = common dso_local global i32 0, align 4
@LDAP_SUCCESS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [5 x i32] [i32 44, i32 67, i32 78, i32 61, i32 0], align 4
@LDAP_SCOPE_BASE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i32] [i32 32, i32 32, i32 42, i32 32, i32 37, i32 115, i32 10, i32 0], align 4
@.str.4 = private unnamed_addr constant [36 x i32] [i32 116, i32 114, i32 105, i32 103, i32 103, i32 101, i32 114, i32 32, i32 108, i32 105, i32 110, i32 103, i32 101, i32 114, i32 105, i32 110, i32 103, i32 32, i32 102, i32 111, i32 114, i32 32, i32 37, i32 115, i32 32, i32 48, i32 120, i32 37, i32 120, i32 32, i32 40, i32 37, i32 117, i32 41, i32 10, i32 0], align 4
@.str.5 = private unnamed_addr constant [24 x i32] [i32 108, i32 100, i32 97, i32 112, i32 95, i32 99, i32 111, i32 110, i32 110, i32 101, i32 99, i32 116, i32 32, i32 48, i32 120, i32 37, i32 120, i32 32, i32 40, i32 37, i32 117, i32 41, i32 10, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @kuhl_m_lsadump_dcshadow_lingering_propagate(%struct.TYPE_3__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca [2 x i8*], align 16
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32* null, i32** %6, align 8
  %14 = bitcast [2 x i8*]* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %14, i8* align 16 bitcast ([2 x i8*]* @__const.kuhl_m_lsadump_dcshadow_lingering_propagate.szAttributes to i8*), i64 16, i1 false)
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = load i32, i32* @LDAP_SCOPE_SUBTREE, align 4
  %22 = load i32, i32* @FALSE, align 4
  %23 = call i64 @ldap_search_s(i32 %17, i8* %20, i32 %21, i8* bitcast ([22 x i32]* @.str.1 to i8*), i8** null, i32 %22, i32** %6)
  store i64 %23, i64* %5, align 8
  %24 = load i64, i64* %5, align 8
  %25 = load i64, i64* @LDAP_SUCCESS, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %112

27:                                               ; preds = %2
  %28 = load i32*, i32** %6, align 8
  store i32* %28, i32** %7, align 8
  br label %29

29:                                               ; preds = %103, %27
  %30 = load i32*, i32** %7, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %109

32:                                               ; preds = %29
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load i32*, i32** %7, align 8
  %37 = call i8* @ldap_get_dn(i32 %35, i32* %36)
  store i8* %37, i8** %9, align 8
  %38 = load i8*, i8** %9, align 8
  %39 = call i8* @wcsstr(i8* %38, i8* bitcast ([5 x i32]* @.str.2 to i8*))
  %40 = getelementptr inbounds i8, i8* %39, i64 1
  store i8* %40, i8** %10, align 8
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load i8*, i8** %10, align 8
  %45 = load i32, i32* @LDAP_SCOPE_BASE, align 4
  %46 = getelementptr inbounds [2 x i8*], [2 x i8*]* %13, i64 0, i64 0
  %47 = load i32, i32* @FALSE, align 4
  %48 = call i64 @ldap_search_s(i32 %43, i8* %44, i32 %45, i8* null, i8** %46, i32 %47, i32** %8)
  store i64 %48, i64* %5, align 8
  %49 = load i64, i64* %5, align 8
  %50 = load i64, i64* @LDAP_SUCCESS, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %103

52:                                               ; preds = %32
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load i32*, i32** %8, align 8
  %57 = getelementptr inbounds [2 x i8*], [2 x i8*]* %13, i64 0, i64 0
  %58 = load i8*, i8** %57, align 16
  %59 = call i8* @kuhl_m_lsadump_dcshadow_getSingleTextAttr(i32 %55, i32* %56, i8* %58)
  store i8* %59, i8** %11, align 8
  %60 = load i8*, i8** %11, align 8
  %61 = icmp ne i8* %60, null
  br i1 %61, label %62, label %100

62:                                               ; preds = %52
  %63 = load i8*, i8** %11, align 8
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 8
  %67 = call i64 @_wcsicmp(i8* %63, i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %100

69:                                               ; preds = %62
  %70 = load i8*, i8** %11, align 8
  %71 = call i32 @kprintf(i8* bitcast ([8 x i32]* @.str.3 to i8*), i8* %70)
  %72 = load i8*, i8** %11, align 8
  %73 = call i64 @kuhl_m_lsadump_dcshadow_init_ldap(i8* %72, i32** %12)
  store i64 %73, i64* %5, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %93, label %75

75:                                               ; preds = %69
  %76 = load i32*, i32** %12, align 8
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = load i8*, i8** %4, align 8
  %81 = call i64 @kuhl_m_lsadump_dcshadow_lingering_trigger(i32* %76, i32 %79, i8* %80)
  store i64 %81, i64* %5, align 8
  %82 = load i64, i64* %5, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %75
  %85 = load i8*, i8** %11, align 8
  %86 = ptrtoint i8* %85 to i64
  %87 = load i64, i64* %5, align 8
  %88 = load i64, i64* %5, align 8
  %89 = call i32 (i8*, i64, i64, ...) @PRINT_ERROR(i8* bitcast ([36 x i32]* @.str.4 to i8*), i64 %86, i64 %87, i64 %88)
  br label %90

90:                                               ; preds = %84, %75
  %91 = load i32*, i32** %12, align 8
  %92 = call i32 @ldap_unbind(i32* %91)
  br label %97

93:                                               ; preds = %69
  %94 = load i64, i64* %5, align 8
  %95 = load i64, i64* %5, align 8
  %96 = call i32 (i8*, i64, i64, ...) @PRINT_ERROR(i8* bitcast ([24 x i32]* @.str.5 to i8*), i64 %94, i64 %95)
  br label %97

97:                                               ; preds = %93, %90
  %98 = load i8*, i8** %11, align 8
  %99 = call i32 @LocalFree(i8* %98)
  br label %100

100:                                              ; preds = %97, %62, %52
  %101 = load i32*, i32** %8, align 8
  %102 = call i32 @ldap_msgfree(i32* %101)
  br label %103

103:                                              ; preds = %100, %32
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = load i32*, i32** %7, align 8
  %108 = call i32* @ldap_next_entry(i32 %106, i32* %107)
  store i32* %108, i32** %7, align 8
  br label %29

109:                                              ; preds = %29
  %110 = load i32*, i32** %6, align 8
  %111 = call i32 @ldap_msgfree(i32* %110)
  br label %112

112:                                              ; preds = %109, %2
  %113 = load i64, i64* %5, align 8
  ret i64 %113
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @ldap_search_s(i32, i8*, i32, i8*, i8**, i32, i32**) #2

declare dso_local i8* @ldap_get_dn(i32, i32*) #2

declare dso_local i8* @wcsstr(i8*, i8*) #2

declare dso_local i8* @kuhl_m_lsadump_dcshadow_getSingleTextAttr(i32, i32*, i8*) #2

declare dso_local i64 @_wcsicmp(i8*, i32) #2

declare dso_local i32 @kprintf(i8*, i8*) #2

declare dso_local i64 @kuhl_m_lsadump_dcshadow_init_ldap(i8*, i32**) #2

declare dso_local i64 @kuhl_m_lsadump_dcshadow_lingering_trigger(i32*, i32, i8*) #2

declare dso_local i32 @PRINT_ERROR(i8*, i64, i64, ...) #2

declare dso_local i32 @ldap_unbind(i32*) #2

declare dso_local i32 @LocalFree(i8*) #2

declare dso_local i32 @ldap_msgfree(i32*) #2

declare dso_local i32* @ldap_next_entry(i32, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
