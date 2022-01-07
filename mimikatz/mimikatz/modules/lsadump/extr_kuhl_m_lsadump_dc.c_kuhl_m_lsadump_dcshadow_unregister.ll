; ModuleID = '/home/carl/AnghaBench/mimikatz/mimikatz/modules/lsadump/extr_kuhl_m_lsadump_dc.c_kuhl_m_lsadump_dcshadow_unregister.c'
source_filename = "/home/carl/AnghaBench/mimikatz/mimikatz/modules/lsadump/extr_kuhl_m_lsadump_dc.c_kuhl_m_lsadump_dcshadow_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i8*, %struct.TYPE_6__, i32, i32 }
%struct.TYPE_6__ = type { i8** }

@FALSE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [12 x i32] [i32 67, i32 78, i32 61, i32 83, i32 105, i32 116, i32 101, i32 115, i32 44, i32 37, i32 115, i32 0], align 4
@.str.1 = private unnamed_addr constant [40 x i32] [i32 40, i32 38, i32 40, i32 111, i32 98, i32 106, i32 101, i32 99, i32 116, i32 67, i32 108, i32 97, i32 115, i32 115, i32 61, i32 115, i32 101, i32 114, i32 118, i32 101, i32 114, i32 41, i32 40, i32 100, i32 78, i32 83, i32 72, i32 111, i32 115, i32 116, i32 78, i32 97, i32 109, i32 101, i32 61, i32 37, i32 115, i32 41, i32 41, i32 0], align 4
@LDAP_SCOPE_SUBTREE = common dso_local global i32 0, align 4
@LDAP_SUCCESS = common dso_local global i64 0, align 8
@LDAP_SCOPE_ONELEVEL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i32] [i32 40, i32 110, i32 97, i32 109, i32 101, i32 61, i32 78, i32 84, i32 68, i32 83, i32 32, i32 83, i32 101, i32 116, i32 116, i32 105, i32 110, i32 103, i32 115, i32 41, i32 0], align 4
@.str.3 = private unnamed_addr constant [28 x i32] [i32 108, i32 100, i32 97, i32 112, i32 95, i32 100, i32 101, i32 108, i32 101, i32 116, i32 101, i32 95, i32 115, i32 32, i32 37, i32 115, i32 32, i32 48, i32 120, i32 37, i32 120, i32 32, i32 40, i32 37, i32 117, i32 41, i32 10, i32 0], align 4
@TRUE = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [25 x i32] [i32 108, i32 100, i32 97, i32 112, i32 95, i32 115, i32 101, i32 97, i32 114, i32 99, i32 104, i32 95, i32 115, i32 32, i32 48, i32 120, i32 37, i32 120, i32 32, i32 40, i32 37, i32 117, i32 41, i32 10, i32 0], align 4
@.str.5 = private unnamed_addr constant [29 x i32] [i32 108, i32 100, i32 97, i32 112, i32 95, i32 99, i32 111, i32 117, i32 110, i32 116, i32 95, i32 101, i32 110, i32 116, i32 114, i32 105, i32 101, i32 115, i32 32, i32 105, i32 115, i32 32, i32 78, i32 79, i32 84, i32 32, i32 49, i32 10, i32 0], align 4
@LDAP_MOD_DELETE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [21 x i32] [i32 115, i32 101, i32 114, i32 118, i32 105, i32 99, i32 101, i32 80, i32 114, i32 105, i32 110, i32 99, i32 105, i32 112, i32 97, i32 108, i32 78, i32 97, i32 109, i32 101, i32 0], align 4
@.str.7 = private unnamed_addr constant [9 x i32] [i32 71, i32 67, i32 47, i32 37, i32 115, i32 47, i32 37, i32 115, i32 0], align 4
@.str.8 = private unnamed_addr constant [38 x i32] [i32 108, i32 100, i32 97, i32 112, i32 95, i32 109, i32 111, i32 100, i32 105, i32 102, i32 121, i32 95, i32 115, i32 32, i32 99, i32 111, i32 109, i32 112, i32 117, i32 116, i32 101, i32 114, i32 32, i32 83, i32 80, i32 78, i32 32, i32 48, i32 120, i32 37, i32 120, i32 32, i32 40, i32 37, i32 117, i32 41, i32 10, i32 0], align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@STATUS_UNSUCCESSFUL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kuhl_m_lsadump_dcshadow_unregister(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca [2 x i8*], align 16
  %12 = alloca %struct.TYPE_8__, align 8
  %13 = alloca [2 x %struct.TYPE_8__*], align 16
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %14 = load i64, i64* @FALSE, align 8
  store i64 %14, i64* %3, align 8
  store i64 0, i64* %4, align 8
  %15 = bitcast [2 x i8*]* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %15, i8 0, i64 16, i1 false)
  %16 = bitcast %struct.TYPE_8__* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %16, i8 0, i64 24, i1 false)
  %17 = getelementptr inbounds [2 x %struct.TYPE_8__*], [2 x %struct.TYPE_8__*]* %13, i64 0, i64 0
  store %struct.TYPE_8__* %12, %struct.TYPE_8__** %17, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %17, i64 1
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %18, align 8
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 4
  %22 = call i64 (i8**, i8*, i32, ...) @kull_m_string_sprintf(i8** %5, i8* bitcast ([12 x i32]* @.str to i8*), i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %131

24:                                               ; preds = %1
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = call i64 (i8**, i8*, i32, ...) @kull_m_string_sprintf(i8** %6, i8* bitcast ([40 x i32]* @.str.1 to i8*), i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %128

30:                                               ; preds = %24
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i8*, i8** %5, align 8
  %35 = load i32, i32* @LDAP_SCOPE_SUBTREE, align 4
  %36 = load i8*, i8** %6, align 8
  %37 = load i64, i64* @FALSE, align 8
  %38 = call i64 @ldap_search_sW(i32 %33, i8* %34, i32 %35, i8* %36, i32* null, i64 %37, i32** %9)
  store i64 %38, i64* %4, align 8
  %39 = load i64, i64* %4, align 8
  %40 = load i64, i64* @LDAP_SUCCESS, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %121

42:                                               ; preds = %30
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32*, i32** %9, align 8
  %47 = call i32 @ldap_count_entries(i32 %45, i32* %46)
  %48 = icmp eq i32 %47, 1
  br i1 %48, label %49, label %116

49:                                               ; preds = %42
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32*, i32** %9, align 8
  %54 = call i8* @ldap_get_dnW(i32 %52, i32* %53)
  store i8* %54, i8** %7, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %56, label %115

56:                                               ; preds = %49
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i8*, i8** %7, align 8
  %61 = load i32, i32* @LDAP_SCOPE_ONELEVEL, align 4
  %62 = load i64, i64* @FALSE, align 8
  %63 = call i64 @ldap_search_sW(i32 %59, i8* %60, i32 %61, i8* bitcast ([21 x i32]* @.str.2 to i8*), i32* null, i64 %62, i32** %10)
  store i64 %63, i64* %4, align 8
  %64 = load i64, i64* %4, align 8
  %65 = load i64, i64* @LDAP_SUCCESS, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %95

67:                                               ; preds = %56
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load i32*, i32** %10, align 8
  %72 = call i8* @ldap_get_dnW(i32 %70, i32* %71)
  store i8* %72, i8** %8, align 8
  %73 = icmp ne i8* %72, null
  br i1 %73, label %74, label %92

74:                                               ; preds = %67
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load i8*, i8** %8, align 8
  %79 = call i64 @ldap_delete_s(i32 %77, i8* %78)
  store i64 %79, i64* %4, align 8
  %80 = load i64, i64* @LDAP_SUCCESS, align 8
  %81 = icmp ne i64 %79, %80
  br i1 %81, label %82, label %87

82:                                               ; preds = %74
  %83 = load i8*, i8** %8, align 8
  %84 = load i64, i64* %4, align 8
  %85 = load i64, i64* %4, align 8
  %86 = call i32 (i8*, ...) @PRINT_ERROR(i8* bitcast ([28 x i32]* @.str.3 to i8*), i8* %83, i64 %84, i64 %85)
  br label %89

87:                                               ; preds = %74
  %88 = load i64, i64* @TRUE, align 8
  store i64 %88, i64* %3, align 8
  br label %89

89:                                               ; preds = %87, %82
  %90 = load i8*, i8** %8, align 8
  %91 = call i32 @ldap_memfreeW(i8* %90)
  br label %92

92:                                               ; preds = %89, %67
  %93 = load i32*, i32** %10, align 8
  %94 = call i32 @ldap_msgfree(i32* %93)
  br label %99

95:                                               ; preds = %56
  %96 = load i64, i64* %4, align 8
  %97 = load i64, i64* %4, align 8
  %98 = call i32 (i8*, ...) @PRINT_ERROR(i8* bitcast ([25 x i32]* @.str.4 to i8*), i64 %96, i64 %97)
  br label %99

99:                                               ; preds = %95, %92
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load i8*, i8** %7, align 8
  %104 = call i64 @ldap_delete_s(i32 %102, i8* %103)
  store i64 %104, i64* %4, align 8
  %105 = load i64, i64* @LDAP_SUCCESS, align 8
  %106 = icmp ne i64 %104, %105
  br i1 %106, label %107, label %112

107:                                              ; preds = %99
  %108 = load i8*, i8** %7, align 8
  %109 = load i64, i64* %4, align 8
  %110 = load i64, i64* %4, align 8
  %111 = call i32 (i8*, ...) @PRINT_ERROR(i8* bitcast ([28 x i32]* @.str.3 to i8*), i8* %108, i64 %109, i64 %110)
  br label %112

112:                                              ; preds = %107, %99
  %113 = load i8*, i8** %7, align 8
  %114 = call i32 @ldap_memfreeW(i8* %113)
  br label %115

115:                                              ; preds = %112, %49
  br label %118

116:                                              ; preds = %42
  %117 = call i32 (i8*, ...) @PRINT_ERROR(i8* bitcast ([29 x i32]* @.str.5 to i8*))
  br label %118

118:                                              ; preds = %116, %115
  %119 = load i32*, i32** %9, align 8
  %120 = call i32 @ldap_msgfree(i32* %119)
  br label %125

121:                                              ; preds = %30
  %122 = load i64, i64* %4, align 8
  %123 = load i64, i64* %4, align 8
  %124 = call i32 (i8*, ...) @PRINT_ERROR(i8* bitcast ([25 x i32]* @.str.4 to i8*), i64 %122, i64 %123)
  br label %125

125:                                              ; preds = %121, %118
  %126 = load i8*, i8** %6, align 8
  %127 = call i32 @LocalFree(i8* %126)
  br label %128

128:                                              ; preds = %125, %24
  %129 = load i8*, i8** %5, align 8
  %130 = call i32 @LocalFree(i8* %129)
  br label %131

131:                                              ; preds = %128, %1
  %132 = load i32, i32* @LDAP_MOD_DELETE, align 4
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 2
  store i32 %132, i32* %133, align 8
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  store i8* bitcast ([21 x i32]* @.str.6 to i8*), i8** %134, align 8
  %135 = getelementptr inbounds [2 x i8*], [2 x i8*]* %11, i64 0, i64 0
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 0
  store i8** %135, i8*** %137, align 8
  %138 = getelementptr inbounds [2 x i8*], [2 x i8*]* %11, i64 0, i64 0
  %139 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 3
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 4
  %145 = call i64 (i8**, i8*, i32, ...) @kull_m_string_sprintf(i8** %138, i8* bitcast ([9 x i32]* @.str.7 to i8*), i32 %141, i32 %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %162

147:                                              ; preds = %131
  %148 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = getelementptr inbounds [2 x %struct.TYPE_8__*], [2 x %struct.TYPE_8__*]* %13, i64 0, i64 0
  %155 = call i64 @ldap_modify_s(i32 %150, i32 %153, %struct.TYPE_8__** %154)
  store i64 %155, i64* %4, align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %161

157:                                              ; preds = %147
  %158 = load i64, i64* %4, align 8
  %159 = load i64, i64* %4, align 8
  %160 = call i32 (i8*, ...) @PRINT_ERROR(i8* bitcast ([38 x i32]* @.str.8 to i8*), i64 %158, i64 %159)
  br label %161

161:                                              ; preds = %157, %147
  br label %162

162:                                              ; preds = %161, %131
  %163 = load i64, i64* %3, align 8
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %167

165:                                              ; preds = %162
  %166 = load i32, i32* @STATUS_SUCCESS, align 4
  br label %169

167:                                              ; preds = %162
  %168 = load i32, i32* @STATUS_UNSUCCESSFUL, align 4
  br label %169

169:                                              ; preds = %167, %165
  %170 = phi i32 [ %166, %165 ], [ %168, %167 ]
  ret i32 %170
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @kull_m_string_sprintf(i8**, i8*, i32, ...) #2

declare dso_local i64 @ldap_search_sW(i32, i8*, i32, i8*, i32*, i64, i32**) #2

declare dso_local i32 @ldap_count_entries(i32, i32*) #2

declare dso_local i8* @ldap_get_dnW(i32, i32*) #2

declare dso_local i64 @ldap_delete_s(i32, i8*) #2

declare dso_local i32 @PRINT_ERROR(i8*, ...) #2

declare dso_local i32 @ldap_memfreeW(i8*) #2

declare dso_local i32 @ldap_msgfree(i32*) #2

declare dso_local i32 @LocalFree(i8*) #2

declare dso_local i64 @ldap_modify_s(i32, i32, %struct.TYPE_8__**) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
