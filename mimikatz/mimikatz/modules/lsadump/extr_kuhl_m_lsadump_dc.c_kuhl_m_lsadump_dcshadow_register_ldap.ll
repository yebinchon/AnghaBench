; ModuleID = '/home/carl/AnghaBench/mimikatz/mimikatz/modules/lsadump/extr_kuhl_m_lsadump_dc.c_kuhl_m_lsadump_dcshadow_register_ldap.c'
source_filename = "/home/carl/AnghaBench/mimikatz/mimikatz/modules/lsadump/extr_kuhl_m_lsadump_dc.c_kuhl_m_lsadump_dcshadow_register_ldap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8*, i8*, i8*, i32, i32, i32 }
%struct.TYPE_9__ = type { i8*, %struct.TYPE_7__, i8*, i32 }
%struct.TYPE_7__ = type { i8** }

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i32] [i32 115, i32 101, i32 114, i32 118, i32 101, i32 114, i32 0], align 4
@__const.kuhl_m_lsadump_dcshadow_register_ldap.szValsOC = private unnamed_addr constant [2 x i8*] [i8* bitcast ([7 x i32]* @.str to i8*), i8* null], align 16
@LDAP_MOD_ADD = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [12 x i32] [i32 111, i32 98, i32 106, i32 101, i32 99, i32 116, i32 67, i32 108, i32 97, i32 115, i32 115, i32 0], align 4
@.str.2 = private unnamed_addr constant [12 x i32] [i32 100, i32 78, i32 83, i32 72, i32 111, i32 115, i32 116, i32 78, i32 97, i32 109, i32 101, i32 0], align 4
@.str.3 = private unnamed_addr constant [16 x i32] [i32 115, i32 101, i32 114, i32 118, i32 101, i32 114, i32 82, i32 101, i32 102, i32 101, i32 114, i32 101, i32 110, i32 99, i32 101, i32 0], align 4
@.str.4 = private unnamed_addr constant [21 x i32] [i32 115, i32 101, i32 114, i32 118, i32 105, i32 99, i32 101, i32 80, i32 114, i32 105, i32 110, i32 99, i32 105, i32 112, i32 97, i32 108, i32 78, i32 97, i32 109, i32 101, i32 0], align 4
@.str.5 = private unnamed_addr constant [8 x i32] [i32 67, i32 78, i32 61, i32 37, i32 115, i32 37, i32 115, i32 0], align 4
@.str.6 = private unnamed_addr constant [9 x i32] [i32 71, i32 67, i32 47, i32 37, i32 115, i32 47, i32 37, i32 115, i32 0], align 4
@TRUE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [38 x i32] [i32 108, i32 100, i32 97, i32 112, i32 95, i32 109, i32 111, i32 100, i32 105, i32 102, i32 121, i32 95, i32 115, i32 32, i32 99, i32 111, i32 109, i32 112, i32 117, i32 116, i32 101, i32 114, i32 32, i32 83, i32 80, i32 78, i32 32, i32 48, i32 120, i32 37, i32 120, i32 32, i32 40, i32 37, i32 117, i32 41, i32 10, i32 0], align 4
@.str.8 = private unnamed_addr constant [38 x i32] [i32 108, i32 100, i32 97, i32 112, i32 95, i32 97, i32 100, i32 100, i32 95, i32 115, i32 32, i32 99, i32 111, i32 109, i32 112, i32 117, i32 116, i32 101, i32 114, i32 32, i32 111, i32 98, i32 106, i32 101, i32 99, i32 116, i32 32, i32 48, i32 120, i32 37, i32 120, i32 32, i32 40, i32 37, i32 117, i32 41, i32 10, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kuhl_m_lsadump_dcshadow_register_ldap(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__, align 8
  %6 = alloca %struct.TYPE_9__, align 8
  %7 = alloca %struct.TYPE_9__, align 8
  %8 = alloca [4 x %struct.TYPE_9__*], align 16
  %9 = alloca i8*, align 8
  %10 = alloca [2 x i8*], align 16
  %11 = alloca [2 x i8*], align 16
  %12 = alloca [2 x i8*], align 16
  %13 = alloca [2 x i8*], align 16
  %14 = alloca %struct.TYPE_9__, align 8
  %15 = alloca [2 x %struct.TYPE_9__*], align 16
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %16 = load i32, i32* @FALSE, align 4
  store i32 %16, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %17 = bitcast %struct.TYPE_9__* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %17, i8 0, i64 32, i1 false)
  %18 = bitcast %struct.TYPE_9__* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %18, i8 0, i64 32, i1 false)
  %19 = bitcast %struct.TYPE_9__* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %19, i8 0, i64 32, i1 false)
  %20 = getelementptr inbounds [4 x %struct.TYPE_9__*], [4 x %struct.TYPE_9__*]* %8, i64 0, i64 0
  store %struct.TYPE_9__* %5, %struct.TYPE_9__** %20, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %20, i64 1
  store %struct.TYPE_9__* %6, %struct.TYPE_9__** %21, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %21, i64 1
  store %struct.TYPE_9__* %7, %struct.TYPE_9__** %22, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %22, i64 1
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %23, align 8
  %24 = bitcast [2 x i8*]* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %24, i8* align 16 bitcast ([2 x i8*]* @__const.kuhl_m_lsadump_dcshadow_register_ldap.szValsOC to i8*), i64 16, i1 false)
  %25 = getelementptr inbounds [2 x i8*], [2 x i8*]* %11, i64 0, i64 0
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  store i8* %28, i8** %25, align 8
  %29 = getelementptr inbounds i8*, i8** %25, i64 1
  store i8* null, i8** %29, align 8
  %30 = getelementptr inbounds [2 x i8*], [2 x i8*]* %12, i64 0, i64 0
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 1
  %33 = load i8*, i8** %32, align 8
  store i8* %33, i8** %30, align 8
  %34 = getelementptr inbounds i8*, i8** %30, i64 1
  store i8* null, i8** %34, align 8
  %35 = bitcast [2 x i8*]* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %35, i8 0, i64 16, i1 false)
  %36 = bitcast %struct.TYPE_9__* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %36, i8 0, i64 32, i1 false)
  %37 = getelementptr inbounds [2 x %struct.TYPE_9__*], [2 x %struct.TYPE_9__*]* %15, i64 0, i64 0
  store %struct.TYPE_9__* %14, %struct.TYPE_9__** %37, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %37, i64 1
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %38, align 8
  %39 = load i8*, i8** @LDAP_MOD_ADD, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 2
  store i8* %39, i8** %40, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 0
  store i8* bitcast ([12 x i32]* @.str.1 to i8*), i8** %41, align 8
  %42 = getelementptr inbounds [2 x i8*], [2 x i8*]* %10, i64 0, i64 0
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  store i8** %42, i8*** %44, align 8
  %45 = load i8*, i8** @LDAP_MOD_ADD, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 2
  store i8* %45, i8** %46, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  store i8* bitcast ([12 x i32]* @.str.2 to i8*), i8** %47, align 8
  %48 = getelementptr inbounds [2 x i8*], [2 x i8*]* %11, i64 0, i64 0
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  store i8** %48, i8*** %50, align 8
  %51 = load i8*, i8** @LDAP_MOD_ADD, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 2
  store i8* %51, i8** %52, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  store i8* bitcast ([16 x i32]* @.str.3 to i8*), i8** %53, align 8
  %54 = getelementptr inbounds [2 x i8*], [2 x i8*]* %12, i64 0, i64 0
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  store i8** %54, i8*** %56, align 8
  %57 = load i8*, i8** @LDAP_MOD_ADD, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 2
  store i8* %57, i8** %58, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  store i8* bitcast ([21 x i32]* @.str.4 to i8*), i8** %59, align 8
  %60 = getelementptr inbounds [2 x i8*], [2 x i8*]* %13, i64 0, i64 0
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  store i8** %60, i8*** %62, align 8
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 2
  %65 = load i8*, i8** %64, align 8
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 5
  %68 = load i32, i32* %67, align 8
  %69 = call i64 @kull_m_string_sprintf(i8** %9, i8* bitcast ([8 x i32]* @.str.5 to i8*), i8* %65, i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %117

71:                                               ; preds = %1
  %72 = getelementptr inbounds [2 x i8*], [2 x i8*]* %13, i64 0, i64 0
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  %75 = load i8*, i8** %74, align 8
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 4
  %79 = call i64 @kull_m_string_sprintf(i8** %72, i8* bitcast ([9 x i32]* @.str.6 to i8*), i8* %75, i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %114

81:                                               ; preds = %71
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 8
  %85 = load i8*, i8** %9, align 8
  %86 = getelementptr inbounds [4 x %struct.TYPE_9__*], [4 x %struct.TYPE_9__*]* %8, i64 0, i64 0
  %87 = call i32 @ldap_add_s(i32 %84, i8* %85, %struct.TYPE_9__** %86)
  store i32 %87, i32* %4, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %106, label %89

89:                                               ; preds = %81
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 1
  %95 = load i8*, i8** %94, align 8
  %96 = getelementptr inbounds [2 x %struct.TYPE_9__*], [2 x %struct.TYPE_9__*]* %15, i64 0, i64 0
  %97 = call i32 @ldap_modify_s(i32 %92, i8* %95, %struct.TYPE_9__** %96)
  store i32 %97, i32* %4, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %101, label %99

99:                                               ; preds = %89
  %100 = load i32, i32* @TRUE, align 4
  store i32 %100, i32* %3, align 4
  br label %105

101:                                              ; preds = %89
  %102 = load i32, i32* %4, align 4
  %103 = load i32, i32* %4, align 4
  %104 = call i32 @PRINT_ERROR(i8* bitcast ([38 x i32]* @.str.7 to i8*), i32 %102, i32 %103)
  br label %105

105:                                              ; preds = %101, %99
  br label %110

106:                                              ; preds = %81
  %107 = load i32, i32* %4, align 4
  %108 = load i32, i32* %4, align 4
  %109 = call i32 @PRINT_ERROR(i8* bitcast ([38 x i32]* @.str.8 to i8*), i32 %107, i32 %108)
  br label %110

110:                                              ; preds = %106, %105
  %111 = getelementptr inbounds [2 x i8*], [2 x i8*]* %13, i64 0, i64 0
  %112 = load i8*, i8** %111, align 16
  %113 = call i32 @LocalFree(i8* %112)
  br label %114

114:                                              ; preds = %110, %71
  %115 = load i8*, i8** %9, align 8
  %116 = call i32 @LocalFree(i8* %115)
  br label %117

117:                                              ; preds = %114, %1
  %118 = load i32, i32* %3, align 4
  ret i32 %118
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @kull_m_string_sprintf(i8**, i8*, i8*, i32) #2

declare dso_local i32 @ldap_add_s(i32, i8*, %struct.TYPE_9__**) #2

declare dso_local i32 @ldap_modify_s(i32, i8*, %struct.TYPE_9__**) #2

declare dso_local i32 @PRINT_ERROR(i8*, i32, i32) #2

declare dso_local i32 @LocalFree(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
