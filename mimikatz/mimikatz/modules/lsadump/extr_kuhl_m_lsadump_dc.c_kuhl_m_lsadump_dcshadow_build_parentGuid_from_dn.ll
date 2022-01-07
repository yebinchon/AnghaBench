; ModuleID = '/home/carl/AnghaBench/mimikatz/mimikatz/modules/lsadump/extr_kuhl_m_lsadump_dc.c_kuhl_m_lsadump_dcshadow_build_parentGuid_from_dn.c'
source_filename = "/home/carl/AnghaBench/mimikatz/mimikatz/modules/lsadump/extr_kuhl_m_lsadump_dc.c_kuhl_m_lsadump_dcshadow_build_parentGuid_from_dn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i32] [i32 111, i32 98, i32 106, i32 101, i32 99, i32 116, i32 71, i32 85, i32 73, i32 68, i32 0], align 4
@__const.kuhl_m_lsadump_dcshadow_build_parentGuid_from_dn.replAttr = private unnamed_addr constant [2 x i8*] [i8* bitcast ([11 x i32]* @.str to i8*), i8* null], align 16
@.str.1 = private unnamed_addr constant [4 x i32] [i32 68, i32 67, i32 61, i32 0], align 4
@TRUE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i32] [i32 85, i32 110, i32 97, i32 98, i32 108, i32 101, i32 32, i32 116, i32 111, i32 32, i32 112, i32 97, i32 114, i32 115, i32 101, i32 32, i32 68, i32 78, i32 32, i32 40, i32 37, i32 115, i32 41, i32 10, i32 0], align 4
@LPTR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [2 x i32] [i32 44, i32 0], align 4
@LDAP_SCOPE_BASE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [16 x i32] [i32 40, i32 111, i32 98, i32 106, i32 101, i32 99, i32 116, i32 99, i32 108, i32 97, i32 115, i32 115, i32 61, i32 42, i32 41, i32 0], align 4
@LDAP_SUCCESS = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [26 x i32] [i32 80, i32 97, i32 114, i32 101, i32 110, i32 116, i32 32, i32 68, i32 78, i32 32, i32 40, i32 37, i32 115, i32 41, i32 32, i32 110, i32 111, i32 116, i32 32, i32 102, i32 111, i32 117, i32 110, i32 100, i32 10, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kuhl_m_lsadump_dcshadow_build_parentGuid_from_dn(i32 %0, i64 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8**, align 8
  %14 = alloca [2 x i8*], align 16
  %15 = alloca %struct.TYPE_4__**, align 8
  %16 = alloca i32*, align 8
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  %17 = load i32, i32* @FALSE, align 4
  store i32 %17, i32* %8, align 4
  %18 = bitcast [2 x i8*]* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %18, i8* align 16 bitcast ([2 x i8*]* @__const.kuhl_m_lsadump_dcshadow_build_parentGuid_from_dn.replAttr to i8*), i64 16, i1 false)
  store i32* null, i32** %16, align 8
  %19 = load i64, i64* %6, align 8
  %20 = call i64 @wcsncmp(i64 %19, i8* bitcast ([4 x i32]* @.str.1 to i8*), i32 3)
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %3
  %23 = load i32*, i32** %7, align 8
  %24 = call i32 @RtlZeroMemory(i32* %23, i32 4)
  %25 = load i32, i32* @TRUE, align 4
  store i32 %25, i32* %4, align 4
  br label %141

26:                                               ; preds = %3
  %27 = load i64, i64* %6, align 8
  %28 = call i8** @ldap_explode_dn(i64 %27, i32 0)
  store i8** %28, i8*** %13, align 8
  %29 = icmp eq i8** %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %26
  %31 = load i64, i64* %6, align 8
  %32 = call i32 @PRINT_ERROR(i8* bitcast ([25 x i32]* @.str.2 to i8*), i64 %31)
  %33 = load i32, i32* @FALSE, align 4
  store i32 %33, i32* %4, align 4
  br label %141

34:                                               ; preds = %26
  store i64 1, i64* %11, align 8
  store i64 1, i64* %12, align 8
  br label %35

35:                                               ; preds = %50, %34
  %36 = load i8**, i8*** %13, align 8
  %37 = load i64, i64* %12, align 8
  %38 = getelementptr inbounds i8*, i8** %36, i64 %37
  %39 = load i8*, i8** %38, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %53

41:                                               ; preds = %35
  %42 = load i8**, i8*** %13, align 8
  %43 = load i64, i64* %12, align 8
  %44 = getelementptr inbounds i8*, i8** %42, i64 %43
  %45 = load i8*, i8** %44, align 8
  %46 = call i64 @lstrlenW(i8* %45)
  %47 = add nsw i64 2, %46
  %48 = load i64, i64* %11, align 8
  %49 = add i64 %48, %47
  store i64 %49, i64* %11, align 8
  br label %50

50:                                               ; preds = %41
  %51 = load i64, i64* %12, align 8
  %52 = add i64 %51, 1
  store i64 %52, i64* %12, align 8
  br label %35

53:                                               ; preds = %35
  %54 = load i32, i32* @LPTR, align 4
  %55 = load i64, i64* %11, align 8
  %56 = mul i64 %55, 1
  %57 = call i64 @LocalAlloc(i32 %54, i64 %56)
  store i64 %57, i64* %9, align 8
  %58 = load i64, i64* %9, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %86

60:                                               ; preds = %53
  store i64 1, i64* %12, align 8
  br label %61

61:                                               ; preds = %82, %60
  %62 = load i8**, i8*** %13, align 8
  %63 = load i64, i64* %12, align 8
  %64 = getelementptr inbounds i8*, i8** %62, i64 %63
  %65 = load i8*, i8** %64, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %67, label %85

67:                                               ; preds = %61
  %68 = load i64, i64* %12, align 8
  %69 = icmp ugt i64 %68, 1
  br i1 %69, label %70, label %74

70:                                               ; preds = %67
  %71 = load i64, i64* %9, align 8
  %72 = load i64, i64* %11, align 8
  %73 = call i32 @wcscat_s(i64 %71, i64 %72, i8* bitcast ([2 x i32]* @.str.3 to i8*))
  br label %74

74:                                               ; preds = %70, %67
  %75 = load i64, i64* %9, align 8
  %76 = load i64, i64* %11, align 8
  %77 = load i8**, i8*** %13, align 8
  %78 = load i64, i64* %12, align 8
  %79 = getelementptr inbounds i8*, i8** %77, i64 %78
  %80 = load i8*, i8** %79, align 8
  %81 = call i32 @wcscat_s(i64 %75, i64 %76, i8* %80)
  br label %82

82:                                               ; preds = %74
  %83 = load i64, i64* %12, align 8
  %84 = add i64 %83, 1
  store i64 %84, i64* %12, align 8
  br label %61

85:                                               ; preds = %61
  br label %86

86:                                               ; preds = %85, %53
  %87 = load i8**, i8*** %13, align 8
  %88 = call i32 @ldap_value_free(i8** %87)
  %89 = load i64, i64* %9, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %93, label %91

91:                                               ; preds = %86
  %92 = load i32, i32* @FALSE, align 4
  store i32 %92, i32* %4, align 4
  br label %141

93:                                               ; preds = %86
  %94 = load i32, i32* %5, align 4
  %95 = load i64, i64* %9, align 8
  %96 = load i32, i32* @LDAP_SCOPE_BASE, align 4
  %97 = getelementptr inbounds [2 x i8*], [2 x i8*]* %14, i64 0, i64 0
  %98 = load i32, i32* @FALSE, align 4
  %99 = call i64 @ldap_search_s(i32 %94, i64 %95, i32 %96, i8* bitcast ([16 x i32]* @.str.4 to i8*), i8** %97, i32 %98, i32** %16)
  store i64 %99, i64* %10, align 8
  %100 = load i64, i64* %10, align 8
  %101 = load i64, i64* @LDAP_SUCCESS, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %134

103:                                              ; preds = %93
  %104 = load i32, i32* %5, align 4
  %105 = load i32*, i32** %16, align 8
  %106 = getelementptr inbounds [2 x i8*], [2 x i8*]* %14, i64 0, i64 0
  %107 = load i8*, i8** %106, align 16
  %108 = call %struct.TYPE_4__** @ldap_get_values_len(i32 %104, i32* %105, i8* %107)
  store %struct.TYPE_4__** %108, %struct.TYPE_4__*** %15, align 8
  %109 = icmp ne %struct.TYPE_4__** %108, null
  br i1 %109, label %110, label %131

110:                                              ; preds = %103
  %111 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %15, align 8
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = sext i32 %114 to i64
  %116 = icmp eq i64 %115, 4
  br i1 %116, label %117, label %131

117:                                              ; preds = %110
  %118 = load i32*, i32** %7, align 8
  %119 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %15, align 8
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %15, align 8
  %124 = load %struct.TYPE_4__*, %struct.TYPE_4__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @RtlCopyMemory(i32* %118, i32 %122, i32 %126)
  %128 = load i32, i32* @TRUE, align 4
  store i32 %128, i32* %8, align 4
  %129 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %15, align 8
  %130 = call i32 @ldap_value_free_len(%struct.TYPE_4__** %129)
  br label %131

131:                                              ; preds = %117, %110, %103
  %132 = load i32*, i32** %16, align 8
  %133 = call i32 @ldap_msgfree(i32* %132)
  br label %137

134:                                              ; preds = %93
  %135 = load i64, i64* %9, align 8
  %136 = call i32 @PRINT_ERROR(i8* bitcast ([26 x i32]* @.str.5 to i8*), i64 %135)
  br label %137

137:                                              ; preds = %134, %131
  %138 = load i64, i64* %9, align 8
  %139 = call i32 @LocalFree(i64 %138)
  %140 = load i32, i32* %8, align 4
  store i32 %140, i32* %4, align 4
  br label %141

141:                                              ; preds = %137, %91, %30, %22
  %142 = load i32, i32* %4, align 4
  ret i32 %142
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @wcsncmp(i64, i8*, i32) #2

declare dso_local i32 @RtlZeroMemory(i32*, i32) #2

declare dso_local i8** @ldap_explode_dn(i64, i32) #2

declare dso_local i32 @PRINT_ERROR(i8*, i64) #2

declare dso_local i64 @lstrlenW(i8*) #2

declare dso_local i64 @LocalAlloc(i32, i64) #2

declare dso_local i32 @wcscat_s(i64, i64, i8*) #2

declare dso_local i32 @ldap_value_free(i8**) #2

declare dso_local i64 @ldap_search_s(i32, i64, i32, i8*, i8**, i32, i32**) #2

declare dso_local %struct.TYPE_4__** @ldap_get_values_len(i32, i32*, i8*) #2

declare dso_local i32 @RtlCopyMemory(i32*, i32, i32) #2

declare dso_local i32 @ldap_value_free_len(%struct.TYPE_4__**) #2

declare dso_local i32 @ldap_msgfree(i32*) #2

declare dso_local i32 @LocalFree(i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
