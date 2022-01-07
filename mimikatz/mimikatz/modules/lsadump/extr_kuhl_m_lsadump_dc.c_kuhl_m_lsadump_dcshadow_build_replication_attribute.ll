; ModuleID = '/home/carl/AnghaBench/mimikatz/mimikatz/modules/lsadump/extr_kuhl_m_lsadump_dc.c_kuhl_m_lsadump_dcshadow_build_replication_attribute.c'
source_filename = "/home/carl/AnghaBench/mimikatz/mimikatz/modules/lsadump/extr_kuhl_m_lsadump_dc.c_kuhl_m_lsadump_dcshadow_build_replication_attribute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32* }

@.str = private unnamed_addr constant [12 x i8] c"attributeID\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"attributeSyntax\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"systemFlags\00", align 1
@__const.kuhl_m_lsadump_dcshadow_build_replication_attribute.szAttributes = private unnamed_addr constant [4 x i8*] [i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i8* null], align 16
@.str.3 = private unnamed_addr constant [53 x i32] [i32 40, i32 38, i32 40, i32 111, i32 98, i32 106, i32 101, i32 99, i32 116, i32 99, i32 108, i32 97, i32 115, i32 115, i32 61, i32 97, i32 116, i32 116, i32 114, i32 105, i32 98, i32 117, i32 116, i32 101, i32 83, i32 99, i32 104, i32 101, i32 109, i32 97, i32 41, i32 40, i32 108, i32 68, i32 65, i32 80, i32 68, i32 105, i32 115, i32 112, i32 108, i32 97, i32 121, i32 78, i32 97, i32 109, i32 101, i32 61, i32 37, i32 115, i32 41, i32 41, i32 0], align 4
@LDAP_SCOPE_SUBTREE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@LDAP_SUCCESS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [19 x i32] [i32 111, i32 105, i32 100, i32 32, i32 105, i32 115, i32 32, i32 105, i32 110, i32 118, i32 97, i32 108, i32 105, i32 100, i32 32, i32 37, i32 83, i32 10, i32 0], align 4
@.str.5 = private unnamed_addr constant [27 x i32] [i32 32, i32 70, i32 76, i32 65, i32 71, i32 95, i32 65, i32 84, i32 84, i32 82, i32 95, i32 78, i32 79, i32 84, i32 95, i32 82, i32 69, i32 80, i32 76, i32 73, i32 67, i32 65, i32 84, i32 69, i32 68, i32 10, i32 0], align 4
@.str.6 = private unnamed_addr constant [27 x i32] [i32 32, i32 70, i32 76, i32 65, i32 71, i32 95, i32 65, i32 84, i32 84, i32 82, i32 95, i32 73, i32 83, i32 95, i32 67, i32 79, i32 78, i32 83, i32 84, i32 82, i32 85, i32 67, i32 84, i32 69, i32 68, i32 10, i32 0], align 4
@.str.7 = private unnamed_addr constant [26 x i32] [i32 97, i32 116, i32 116, i32 114, i32 105, i32 98, i32 117, i32 116, i32 101, i32 32, i32 100, i32 111, i32 101, i32 115, i32 32, i32 110, i32 111, i32 116, i32 32, i32 101, i32 120, i32 105, i32 115, i32 116, i32 10, i32 0], align 4
@.str.8 = private unnamed_addr constant [25 x i32] [i32 108, i32 100, i32 97, i32 112, i32 95, i32 115, i32 101, i32 97, i32 114, i32 99, i32 104, i32 95, i32 115, i32 32, i32 48, i32 120, i32 37, i32 120, i32 32, i32 40, i32 37, i32 117, i32 41, i32 10, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kuhl_m_lsadump_dcshadow_build_replication_attribute(%struct.TYPE_8__* %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca [4 x i8*], align 16
  %9 = alloca i8**, align 8
  %10 = alloca i8**, align 8
  %11 = alloca %struct.TYPE_9__, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %4, align 8
  store i32* null, i32** %7, align 8
  %13 = bitcast [4 x i8*]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %13, i8* align 16 bitcast ([4 x i8*]* @__const.kuhl_m_lsadump_dcshadow_build_replication_attribute.szAttributes to i8*), i64 32, i1 false)
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  store i32 0, i32* %15, align 4
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @kull_m_string_sprintf(i32* %6, i8* bitcast ([53 x i32]* @.str.3 to i8*), i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %150

21:                                               ; preds = %2
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @LDAP_SCOPE_SUBTREE, align 4
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @FALSE, align 4
  %31 = call i32 @ldap_search_sW(i32 %24, i32 %27, i32 %28, i32 %29, i32* null, i32 %30, i32** %7)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @LDAP_SUCCESS, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %143

35:                                               ; preds = %21
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32*, i32** %7, align 8
  %40 = call i32 @ldap_count_entries(i32 %38, i32* %39)
  %41 = icmp eq i32 %40, 1
  br i1 %41, label %42, label %138

42:                                               ; preds = %35
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %42
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @LocalFree(i32 %50)
  br label %52

52:                                               ; preds = %47, %42
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32*, i32** %7, align 8
  %57 = getelementptr inbounds [4 x i8*], [4 x i8*]* %8, i64 0, i64 0
  %58 = load i8*, i8** %57, align 16
  %59 = call i32 @kuhl_m_lsadump_dcshadow_getSingleTextAttrA(i32 %55, i32* %56, i8* %58)
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32*, i32** %7, align 8
  %66 = getelementptr inbounds [4 x i8*], [4 x i8*]* %8, i64 0, i64 1
  %67 = load i8*, i8** %66, align 8
  %68 = call i8** @ldap_get_valuesA(i32 %64, i32* %65, i8* %67)
  store i8** %68, i8*** %9, align 8
  %69 = load i8**, i8*** %9, align 8
  %70 = icmp ne i8** %69, null
  br i1 %70, label %71, label %109

71:                                               ; preds = %52
  %72 = load i8**, i8*** %9, align 8
  %73 = load i8*, i8** %72, align 8
  %74 = call i64 @kull_m_asn1_DotVal2Eoid(i8* %73, %struct.TYPE_9__* %11)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %106

76:                                               ; preds = %71
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = icmp eq i32 %78, 3
  br i1 %79, label %80, label %99

80:                                               ; preds = %76
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 0
  %84 = load i32, i32* %83, align 4
  %85 = shl i32 %84, 16
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 1
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 1
  %89 = load i32, i32* %88, align 4
  %90 = shl i32 %89, 8
  %91 = add nsw i32 %85, %90
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 1
  %93 = load i32*, i32** %92, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 2
  %95 = load i32, i32* %94, align 4
  %96 = add nsw i32 %91, %95
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 0
  store i32 %96, i32* %98, align 4
  br label %102

99:                                               ; preds = %76
  %100 = load i8**, i8*** %9, align 8
  %101 = call i32 (i8*, ...) @PRINT_ERROR(i8* bitcast ([19 x i32]* @.str.4 to i8*), i8** %100)
  br label %102

102:                                              ; preds = %99, %80
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 1
  %104 = load i32*, i32** %103, align 8
  %105 = call i32 @kull_m_asn1_freeEnc(i32* %104)
  br label %106

106:                                              ; preds = %102, %71
  %107 = load i8**, i8*** %9, align 8
  %108 = call i32 @ldap_value_freeA(i8** %107)
  br label %109

109:                                              ; preds = %106, %52
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load i32*, i32** %7, align 8
  %114 = getelementptr inbounds [4 x i8*], [4 x i8*]* %8, i64 0, i64 2
  %115 = load i8*, i8** %114, align 16
  %116 = call i8** @ldap_get_valuesA(i32 %112, i32* %113, i8* %115)
  store i8** %116, i8*** %10, align 8
  %117 = load i8**, i8*** %10, align 8
  %118 = icmp ne i8** %117, null
  br i1 %118, label %119, label %137

119:                                              ; preds = %109
  %120 = load i8**, i8*** %10, align 8
  %121 = load i8*, i8** %120, align 8
  %122 = call i32 @strtoul(i8* %121, i32* null, i32 10)
  store i32 %122, i32* %12, align 4
  %123 = load i32, i32* %12, align 4
  %124 = and i32 %123, 1
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %119
  %127 = call i32 @kprintf(i8* bitcast ([27 x i32]* @.str.5 to i8*))
  br label %128

128:                                              ; preds = %126, %119
  %129 = load i32, i32* %12, align 4
  %130 = and i32 %129, 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %128
  %133 = call i32 @kprintf(i8* bitcast ([27 x i32]* @.str.6 to i8*))
  br label %134

134:                                              ; preds = %132, %128
  %135 = load i8**, i8*** %10, align 8
  %136 = call i32 @ldap_value_freeA(i8** %135)
  br label %137

137:                                              ; preds = %134, %109
  br label %140

138:                                              ; preds = %35
  %139 = call i32 (i8*, ...) @PRINT_ERROR(i8* bitcast ([26 x i32]* @.str.7 to i8*))
  br label %140

140:                                              ; preds = %138, %137
  %141 = load i32*, i32** %7, align 8
  %142 = call i32 @ldap_msgfree(i32* %141)
  br label %147

143:                                              ; preds = %21
  %144 = load i32, i32* %5, align 4
  %145 = load i32, i32* %5, align 4
  %146 = call i32 (i8*, ...) @PRINT_ERROR(i8* bitcast ([25 x i32]* @.str.8 to i8*), i32 %144, i32 %145)
  br label %147

147:                                              ; preds = %143, %140
  %148 = load i32, i32* %6, align 4
  %149 = call i32 @LocalFree(i32 %148)
  br label %150

150:                                              ; preds = %147, %2
  %151 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = icmp ne i32 %153, 0
  %155 = zext i1 %154 to i32
  ret i32 %155
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @kull_m_string_sprintf(i32*, i8*, i32) #2

declare dso_local i32 @ldap_search_sW(i32, i32, i32, i32, i32*, i32, i32**) #2

declare dso_local i32 @ldap_count_entries(i32, i32*) #2

declare dso_local i32 @LocalFree(i32) #2

declare dso_local i32 @kuhl_m_lsadump_dcshadow_getSingleTextAttrA(i32, i32*, i8*) #2

declare dso_local i8** @ldap_get_valuesA(i32, i32*, i8*) #2

declare dso_local i64 @kull_m_asn1_DotVal2Eoid(i8*, %struct.TYPE_9__*) #2

declare dso_local i32 @PRINT_ERROR(i8*, ...) #2

declare dso_local i32 @kull_m_asn1_freeEnc(i32*) #2

declare dso_local i32 @ldap_value_freeA(i8**) #2

declare dso_local i32 @strtoul(i8*, i32*, i32) #2

declare dso_local i32 @kprintf(i8*) #2

declare dso_local i32 @ldap_msgfree(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
