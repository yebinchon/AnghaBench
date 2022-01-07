; ModuleID = '/home/carl/AnghaBench/mimikatz/mimikatz/modules/dpapi/packages/extr_kuhl_m_dpapi_ssh.c_kuhl_m_dpapi_ssh_keys4user.c'
source_filename = "/home/carl/AnghaBench/mimikatz/mimikatz/modules/dpapi/packages/extr_kuhl_m_dpapi_ssh.c_kuhl_m_dpapi_ssh_keys4user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i64, i32*, i32* }

@FALSE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i32] [i32 83, i32 111, i32 102, i32 116, i32 119, i32 97, i32 114, i32 101, i32 92, i32 79, i32 112, i32 101, i32 110, i32 83, i32 83, i32 72, i32 92, i32 65, i32 103, i32 101, i32 110, i32 116, i32 92, i32 75, i32 101, i32 121, i32 115, i32 0], align 4
@KEY_WOW64_64KEY = common dso_local global i32 0, align 4
@KEY_READ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i32] [i32 105, i32 109, i32 112, i32 101, i32 114, i32 115, i32 111, i32 110, i32 97, i32 116, i32 101, i32 0], align 4
@.str.2 = private unnamed_addr constant [49 x i32] [i32 32, i32 42, i32 32, i32 84, i32 114, i32 121, i32 105, i32 110, i32 103, i32 32, i32 116, i32 111, i32 32, i32 103, i32 101, i32 116, i32 32, i32 97, i32 110, i32 32, i32 105, i32 109, i32 112, i32 101, i32 114, i32 115, i32 111, i32 110, i32 97, i32 116, i32 105, i32 111, i32 110, i32 32, i32 116, i32 111, i32 107, i32 101, i32 110, i32 32, i32 102, i32 111, i32 114, i32 32, i32 37, i32 115, i32 58, i32 32, i32 0], align 4
@kuhl_m_dpapi_ssh_impersonate = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i32] [i32 32, i32 32, i32 32, i32 0], align 4
@.str.4 = private unnamed_addr constant [58 x i32] [i32 107, i32 117, i32 108, i32 108, i32 95, i32 109, i32 95, i32 116, i32 111, i32 107, i32 101, i32 110, i32 95, i32 103, i32 101, i32 116, i32 84, i32 111, i32 107, i32 101, i32 110, i32 115, i32 85, i32 110, i32 105, i32 113, i32 117, i32 101, i32 47, i32 107, i32 117, i32 108, i32 108, i32 95, i32 109, i32 95, i32 116, i32 111, i32 107, i32 101, i32 110, i32 95, i32 103, i32 101, i32 116, i32 84, i32 111, i32 107, i32 101, i32 110, i32 115, i32 85, i32 110, i32 105, i32 113, i32 117, i32 101, i32 0], align 4
@.str.5 = private unnamed_addr constant [22 x i32] [i32 67, i32 111, i32 110, i32 118, i32 101, i32 114, i32 116, i32 83, i32 116, i32 114, i32 105, i32 110, i32 103, i32 83, i32 105, i32 100, i32 84, i32 111, i32 83, i32 105, i32 100, i32 0], align 4
@LPTR = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [10 x i32] [i32 10, i32 32, i32 32, i32 32, i32 91, i32 37, i32 115, i32 93, i32 32, i32 0], align 4
@.str.7 = private unnamed_addr constant [2 x i32] [i32 10, i32 0], align 4
@.str.8 = private unnamed_addr constant [29 x i32] [i32 107, i32 117, i32 108, i32 108, i32 95, i32 109, i32 95, i32 114, i32 101, i32 103, i32 105, i32 115, i32 116, i32 114, i32 121, i32 95, i32 82, i32 101, i32 103, i32 79, i32 112, i32 101, i32 110, i32 75, i32 101, i32 121, i32 69, i32 120, i32 0], align 4
@.str.9 = private unnamed_addr constant [32 x i32] [i32 107, i32 117, i32 108, i32 108, i32 95, i32 109, i32 95, i32 114, i32 101, i32 103, i32 105, i32 115, i32 116, i32 114, i32 121, i32 95, i32 82, i32 101, i32 103, i32 81, i32 117, i32 101, i32 114, i32 121, i32 73, i32 110, i32 102, i32 111, i32 75, i32 101, i32 121, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kuhl_m_dpapi_ssh_keys4user(i32 %0, i32 %1, i64 %2, i32 %3, i8** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca %struct.TYPE_3__, align 8
  %19 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i8** %4, i8*** %10, align 8
  %20 = bitcast %struct.TYPE_3__* %18 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %20, i8 0, i64 32, i1 false)
  %21 = load i64, i64* @FALSE, align 8
  store i64 %21, i64* %19, align 8
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @KEY_WOW64_64KEY, align 4
  %25 = load i32, i32* @KEY_READ, align 4
  %26 = or i32 %24, %25
  %27 = call i64 @kull_m_registry_RegOpenKeyEx(i32 %22, i32 %23, i8* bitcast ([28 x i32]* @.str to i8*), i32 0, i32 %26, i32* %11)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %147

29:                                               ; preds = %5
  %30 = load i64, i64* %8, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %60

32:                                               ; preds = %29
  %33 = load i32, i32* %9, align 4
  %34 = load i8**, i8*** %10, align 8
  %35 = call i64 @kull_m_string_args_byName(i32 %33, i8** %34, i8* bitcast ([12 x i32]* @.str.1 to i8*), i32* null, i32* null)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %60

37:                                               ; preds = %32
  %38 = load i64, i64* %8, align 8
  %39 = call i32 (i8*, ...) @kprintf(i8* bitcast ([49 x i32]* @.str.2 to i8*), i64 %38)
  %40 = load i64, i64* %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %42 = call i64 @ConvertStringSidToSid(i64 %40, i8** %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %57

44:                                               ; preds = %37
  %45 = load i32, i32* @kuhl_m_dpapi_ssh_impersonate, align 4
  %46 = call i64 @kull_m_token_getTokensUnique(i32 %45, %struct.TYPE_3__* %18)
  store i64 %46, i64* %19, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %44
  %49 = call i32 (i8*, ...) @kprintf(i8* bitcast ([4 x i32]* @.str.3 to i8*))
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @FALSE, align 8
  %53 = call i32 @kuhl_m_token_displayAccount(i64 %51, i64 %52)
  br label %56

54:                                               ; preds = %44
  %55 = call i32 @PRINT_ERROR_AUTO(i8* bitcast ([58 x i32]* @.str.4 to i8*))
  br label %56

56:                                               ; preds = %54, %48
  br label %59

57:                                               ; preds = %37
  %58 = call i32 @PRINT_ERROR_AUTO(i8* bitcast ([22 x i32]* @.str.5 to i8*))
  br label %59

59:                                               ; preds = %57, %56
  br label %60

60:                                               ; preds = %59, %32, %29
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* %11, align 4
  %63 = call i64 @kull_m_registry_RegQueryInfoKey(i32 %61, i32 %62, i32* null, i32* null, i32* null, i32* %14, i32* %15, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %122

65:                                               ; preds = %60
  %66 = load i32, i32* %15, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %15, align 4
  %68 = load i32, i32* @LPTR, align 4
  %69 = load i32, i32* %15, align 4
  %70 = add nsw i32 %69, 1
  %71 = sext i32 %70 to i64
  %72 = mul i64 %71, 1
  %73 = trunc i64 %72 to i32
  %74 = call i64 @LocalAlloc(i32 %68, i32 %73)
  %75 = inttoptr i64 %74 to i8*
  store i8* %75, i8** %17, align 8
  %76 = icmp ne i8* %75, null
  br i1 %76, label %77, label %121

77:                                               ; preds = %65
  store i32 0, i32* %13, align 4
  br label %78

78:                                               ; preds = %115, %77
  %79 = load i32, i32* %13, align 4
  %80 = load i32, i32* %14, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %82, label %118

82:                                               ; preds = %78
  %83 = load i32, i32* %15, align 4
  store i32 %83, i32* %16, align 4
  %84 = load i32, i32* %6, align 4
  %85 = load i32, i32* %11, align 4
  %86 = load i32, i32* %13, align 4
  %87 = load i8*, i8** %17, align 8
  %88 = call i64 @kull_m_registry_RegEnumKeyEx(i32 %84, i32 %85, i32 %86, i8* %87, i32* %16, i32* null, i32* null, i32* null, i32* null)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %114

90:                                               ; preds = %82
  %91 = load i8*, i8** %17, align 8
  %92 = call i32 (i8*, ...) @kprintf(i8* bitcast ([10 x i32]* @.str.6 to i8*), i8* %91)
  %93 = load i32, i32* %6, align 4
  %94 = load i32, i32* %11, align 4
  %95 = load i8*, i8** %17, align 8
  %96 = load i32, i32* @KEY_READ, align 4
  %97 = call i64 @kull_m_registry_RegOpenKeyEx(i32 %93, i32 %94, i8* %95, i32 0, i32 %96, i32* %12)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %111

99:                                               ; preds = %90
  %100 = call i32 (i8*, ...) @kprintf(i8* bitcast ([2 x i32]* @.str.7 to i8*))
  %101 = load i32, i32* %6, align 4
  %102 = load i32, i32* %12, align 4
  %103 = load i32, i32* %9, align 4
  %104 = load i8**, i8*** %10, align 8
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = call i32 @kuhl_m_dpapi_ssh_getKey(i32 %101, i32 %102, i32 %103, i8** %104, i64 %106)
  %108 = load i32, i32* %6, align 4
  %109 = load i32, i32* %12, align 4
  %110 = call i32 @kull_m_registry_RegCloseKey(i32 %108, i32 %109)
  br label %113

111:                                              ; preds = %90
  %112 = call i32 @PRINT_ERROR_AUTO(i8* bitcast ([29 x i32]* @.str.8 to i8*))
  br label %113

113:                                              ; preds = %111, %99
  br label %114

114:                                              ; preds = %113, %82
  br label %115

115:                                              ; preds = %114
  %116 = load i32, i32* %13, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %13, align 4
  br label %78

118:                                              ; preds = %78
  %119 = load i8*, i8** %17, align 8
  %120 = call i32 @LocalFree(i8* %119)
  br label %121

121:                                              ; preds = %118, %65
  br label %124

122:                                              ; preds = %60
  %123 = call i32 @PRINT_ERROR_AUTO(i8* bitcast ([32 x i32]* @.str.9 to i8*))
  br label %124

124:                                              ; preds = %122, %121
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %126 = load i8*, i8** %125, align 8
  %127 = icmp ne i8* %126, null
  br i1 %127, label %128, label %132

128:                                              ; preds = %124
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %130 = load i8*, i8** %129, align 8
  %131 = call i32 @LocalFree(i8* %130)
  br label %132

132:                                              ; preds = %128, %124
  %133 = load i64, i64* %19, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %143

135:                                              ; preds = %132
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %143

139:                                              ; preds = %135
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = call i32 @CloseHandle(i64 %141)
  br label %143

143:                                              ; preds = %139, %135, %132
  %144 = load i32, i32* %6, align 4
  %145 = load i32, i32* %11, align 4
  %146 = call i32 @kull_m_registry_RegCloseKey(i32 %144, i32 %145)
  br label %147

147:                                              ; preds = %143, %5
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @kull_m_registry_RegOpenKeyEx(i32, i32, i8*, i32, i32, i32*) #2

declare dso_local i64 @kull_m_string_args_byName(i32, i8**, i8*, i32*, i32*) #2

declare dso_local i32 @kprintf(i8*, ...) #2

declare dso_local i64 @ConvertStringSidToSid(i64, i8**) #2

declare dso_local i64 @kull_m_token_getTokensUnique(i32, %struct.TYPE_3__*) #2

declare dso_local i32 @kuhl_m_token_displayAccount(i64, i64) #2

declare dso_local i32 @PRINT_ERROR_AUTO(i8*) #2

declare dso_local i64 @kull_m_registry_RegQueryInfoKey(i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*) #2

declare dso_local i64 @LocalAlloc(i32, i32) #2

declare dso_local i64 @kull_m_registry_RegEnumKeyEx(i32, i32, i32, i8*, i32*, i32*, i32*, i32*, i32*) #2

declare dso_local i32 @kuhl_m_dpapi_ssh_getKey(i32, i32, i32, i8**, i64) #2

declare dso_local i32 @kull_m_registry_RegCloseKey(i32, i32) #2

declare dso_local i32 @LocalFree(i8*) #2

declare dso_local i32 @CloseHandle(i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
