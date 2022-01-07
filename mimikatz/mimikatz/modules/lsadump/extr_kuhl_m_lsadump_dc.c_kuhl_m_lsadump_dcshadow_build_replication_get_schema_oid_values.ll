; ModuleID = '/home/carl/AnghaBench/mimikatz/mimikatz/modules/lsadump/extr_kuhl_m_lsadump_dc.c_kuhl_m_lsadump_dcshadow_build_replication_get_schema_oid_values.c'
source_filename = "/home/carl/AnghaBench/mimikatz/mimikatz/modules/lsadump/extr_kuhl_m_lsadump_dc.c_kuhl_m_lsadump_dcshadow_build_replication_get_schema_oid_values.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i8**, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i32] [i32 103, i32 111, i32 118, i32 101, i32 114, i32 110, i32 115, i32 73, i32 68, i32 0], align 4
@__const.kuhl_m_lsadump_dcshadow_build_replication_get_schema_oid_values.szAttributes = private unnamed_addr constant [2 x i8*] [i8* bitcast ([10 x i32]* @.str to i8*), i8* null], align 16
@.str.1 = private unnamed_addr constant [49 x i32] [i32 40, i32 38, i32 40, i32 111, i32 98, i32 106, i32 101, i32 99, i32 116, i32 67, i32 108, i32 97, i32 115, i32 115, i32 61, i32 99, i32 108, i32 97, i32 115, i32 115, i32 83, i32 99, i32 104, i32 101, i32 109, i32 97, i32 41, i32 40, i32 108, i32 68, i32 65, i32 80, i32 68, i32 105, i32 115, i32 112, i32 108, i32 97, i32 121, i32 78, i32 97, i32 109, i32 101, i32 61, i32 37, i32 115, i32 41, i32 41, i32 0], align 4
@LDAP_SCOPE_ONELEVEL = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i32] [i32 111, i32 98, i32 106, i32 101, i32 99, i32 116, i32 67, i32 108, i32 97, i32 115, i32 115, i32 32, i32 37, i32 115, i32 32, i32 110, i32 111, i32 116, i32 32, i32 102, i32 111, i32 117, i32 110, i32 100, i32 32, i32 105, i32 110, i32 32, i32 65, i32 68, i32 10, i32 0], align 4
@.str.3 = private unnamed_addr constant [39 x i32] [i32 111, i32 98, i32 106, i32 101, i32 99, i32 116, i32 67, i32 108, i32 97, i32 115, i32 115, i32 32, i32 110, i32 111, i32 116, i32 32, i32 102, i32 111, i32 117, i32 110, i32 100, i32 32, i32 105, i32 110, i32 32, i32 65, i32 68, i32 32, i32 48, i32 120, i32 37, i32 120, i32 32, i32 40, i32 37, i32 117, i32 41, i32 10, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kuhl_m_lsadump_dcshadow_build_replication_get_schema_oid_values(%struct.TYPE_8__* %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca [2 x i8*], align 16
  %11 = alloca i32*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %4, align 8
  %12 = load i32, i32* @FALSE, align 4
  store i32 %12, i32* %5, align 4
  %13 = bitcast [2 x i8*]* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %13, i8* align 16 bitcast ([2 x i8*]* @__const.kuhl_m_lsadump_dcshadow_build_replication_get_schema_oid_values.szAttributes to i8*), i64 16, i1 false)
  store i32* null, i32** %11, align 8
  store i64 0, i64* %6, align 8
  br label %14

14:                                               ; preds = %98, %2
  %15 = load i64, i64* %6, align 8
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ult i64 %15, %19
  br i1 %20, label %21, label %101

21:                                               ; preds = %14
  %22 = load i32, i32* @FALSE, align 4
  store i32 %22, i32* %5, align 4
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i8**, i8*** %24, align 8
  %26 = load i64, i64* %6, align 8
  %27 = getelementptr inbounds i8*, i8** %25, i64 %26
  %28 = load i8*, i8** %27, align 8
  %29 = call i64 @kull_m_string_sprintf(i8** %8, i8* bitcast ([49 x i32]* @.str.1 to i8*), i8* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %93

31:                                               ; preds = %21
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @LDAP_SCOPE_ONELEVEL, align 4
  %39 = load i8*, i8** %8, align 8
  %40 = getelementptr inbounds [2 x i8*], [2 x i8*]* %10, i64 0, i64 0
  %41 = load i32, i32* @FALSE, align 4
  %42 = call i64 @ldap_search_s(i32 %34, i32 %37, i32 %38, i8* %39, i8** %40, i32 %41, i32** %11)
  store i64 %42, i64* %7, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %88, label %44

44:                                               ; preds = %31
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32*, i32** %11, align 8
  %49 = call i32 @ldap_count_entries(i32 %47, i32* %48)
  %50 = icmp eq i32 %49, 1
  br i1 %50, label %51, label %77

51:                                               ; preds = %44
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32*, i32** %11, align 8
  %56 = getelementptr inbounds [2 x i8*], [2 x i8*]* %10, i64 0, i64 0
  %57 = load i8*, i8** %56, align 16
  %58 = call i8* @kuhl_m_lsadump_dcshadow_getSingleTextAttr(i32 %54, i32* %55, i8* %57)
  store i8* %58, i8** %9, align 8
  %59 = load i8*, i8** %9, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %61, label %76

61:                                               ; preds = %51
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = load i8**, i8*** %63, align 8
  %65 = load i64, i64* %6, align 8
  %66 = getelementptr inbounds i8*, i8** %64, i64 %65
  %67 = load i8*, i8** %66, align 8
  %68 = call i32 @LocalFree(i8* %67)
  %69 = load i8*, i8** %9, align 8
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = load i8**, i8*** %71, align 8
  %73 = load i64, i64* %6, align 8
  %74 = getelementptr inbounds i8*, i8** %72, i64 %73
  store i8* %69, i8** %74, align 8
  %75 = load i32, i32* @TRUE, align 4
  store i32 %75, i32* %5, align 4
  br label %76

76:                                               ; preds = %61, %51
  br label %85

77:                                               ; preds = %44
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 0
  %80 = load i8**, i8*** %79, align 8
  %81 = load i64, i64* %6, align 8
  %82 = getelementptr inbounds i8*, i8** %80, i64 %81
  %83 = load i8*, i8** %82, align 8
  %84 = call i32 (i8*, ...) @PRINT_ERROR(i8* bitcast ([32 x i32]* @.str.2 to i8*), i8* %83)
  br label %85

85:                                               ; preds = %77, %76
  %86 = load i32*, i32** %11, align 8
  %87 = call i32 @ldap_msgfree(i32* %86)
  br label %92

88:                                               ; preds = %31
  %89 = load i64, i64* %7, align 8
  %90 = load i64, i64* %7, align 8
  %91 = call i32 (i8*, ...) @PRINT_ERROR(i8* bitcast ([39 x i32]* @.str.3 to i8*), i64 %89, i64 %90)
  br label %92

92:                                               ; preds = %88, %85
  br label %93

93:                                               ; preds = %92, %21
  %94 = load i32, i32* %5, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %97, label %96

96:                                               ; preds = %93
  br label %101

97:                                               ; preds = %93
  br label %98

98:                                               ; preds = %97
  %99 = load i64, i64* %6, align 8
  %100 = add i64 %99, 1
  store i64 %100, i64* %6, align 8
  br label %14

101:                                              ; preds = %96, %14
  %102 = load i32, i32* %5, align 4
  ret i32 %102
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @kull_m_string_sprintf(i8**, i8*, i8*) #2

declare dso_local i64 @ldap_search_s(i32, i32, i32, i8*, i8**, i32, i32**) #2

declare dso_local i32 @ldap_count_entries(i32, i32*) #2

declare dso_local i8* @kuhl_m_lsadump_dcshadow_getSingleTextAttr(i32, i32*, i8*) #2

declare dso_local i32 @LocalFree(i8*) #2

declare dso_local i32 @PRINT_ERROR(i8*, ...) #2

declare dso_local i32 @ldap_msgfree(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
