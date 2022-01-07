; ModuleID = '/home/carl/AnghaBench/mimikatz/mimikatz/modules/dpapi/packages/extr_kuhl_m_dpapi_ssh.c_kuhl_m_dpapi_ssh.c'
source_filename = "/home/carl/AnghaBench/mimikatz/mimikatz/modules/dpapi/packages/extr_kuhl_m_dpapi_ssh.c_kuhl_m_dpapi_ssh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i32] [i32 104, i32 105, i32 118, i32 101, i32 0], align 4
@GENERIC_READ = common dso_local global i32 0, align 4
@FILE_SHARE_READ = common dso_local global i32 0, align 4
@OPEN_EXISTING = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@KULL_M_REGISTRY_TYPE_HIVE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i32] [i32 67, i32 114, i32 101, i32 97, i32 116, i32 101, i32 70, i32 105, i32 108, i32 101, i32 0], align 4
@KULL_M_REGISTRY_TYPE_OWN = common dso_local global i32 0, align 4
@HKEY_USERS = common dso_local global i32* null, align 8
@KEY_ENUMERATE_SUB_KEYS = common dso_local global i32 0, align 4
@LPTR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i32] [i32 95, i32 67, i32 108, i32 97, i32 115, i32 115, i32 101, i32 115, i32 0], align 4
@.str.3 = private unnamed_addr constant [4 x i32] [i32 37, i32 115, i32 32, i32 0], align 4
@KEY_READ = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [2 x i32] [i32 10, i32 0], align 4
@.str.5 = private unnamed_addr constant [29 x i32] [i32 107, i32 117, i32 108, i32 108, i32 95, i32 109, i32 95, i32 114, i32 101, i32 103, i32 105, i32 115, i32 116, i32 114, i32 121, i32 95, i32 82, i32 101, i32 103, i32 79, i32 112, i32 101, i32 110, i32 75, i32 101, i32 121, i32 69, i32 120, i32 0], align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kuhl_m_dpapi_ssh(i32 %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  store i32** %1, i32*** %4, align 8
  %15 = load i32, i32* %3, align 4
  %16 = load i32**, i32*** %4, align 8
  %17 = call i64 @kull_m_string_args_byName(i32 %15, i32** %16, i8* bitcast ([5 x i32]* @.str to i8*), i32* %6, i32* null)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %47

19:                                               ; preds = %2
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @GENERIC_READ, align 4
  %22 = load i32, i32* @FILE_SHARE_READ, align 4
  %23 = load i32, i32* @OPEN_EXISTING, align 4
  %24 = call i64 @CreateFile(i32 %20, i32 %21, i32 %22, i32* null, i32 %23, i32 0, i32* null)
  store i64 %24, i64* %7, align 8
  %25 = load i64, i64* %7, align 8
  %26 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %44

28:                                               ; preds = %19
  %29 = load i32, i32* @KULL_M_REGISTRY_TYPE_HIVE, align 4
  %30 = load i64, i64* %7, align 8
  %31 = load i32, i32* @FALSE, align 4
  %32 = call i64 @kull_m_registry_open(i32 %29, i64 %30, i32 %31, i32* %5)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %28
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* %3, align 4
  %37 = load i32**, i32*** %4, align 8
  %38 = call i32 @kuhl_m_dpapi_ssh_keys4user(i32 %35, i32* null, i32* null, i32 %36, i32** %37)
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @kull_m_registry_close(i32 %39)
  br label %41

41:                                               ; preds = %34, %28
  %42 = load i64, i64* %7, align 8
  %43 = call i32 @CloseHandle(i64 %42)
  br label %46

44:                                               ; preds = %19
  %45 = call i32 @PRINT_ERROR_AUTO(i8* bitcast ([11 x i32]* @.str.1 to i8*))
  br label %46

46:                                               ; preds = %44, %41
  br label %134

47:                                               ; preds = %2
  %48 = load i32, i32* @KULL_M_REGISTRY_TYPE_OWN, align 4
  %49 = load i32, i32* @FALSE, align 4
  %50 = call i64 @kull_m_registry_open(i32 %48, i64 0, i32 %49, i32* %5)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %133

52:                                               ; preds = %47
  %53 = load i32, i32* %5, align 4
  %54 = load i32*, i32** @HKEY_USERS, align 8
  %55 = load i32, i32* @KEY_ENUMERATE_SUB_KEYS, align 4
  %56 = call i64 @kull_m_registry_RegOpenKeyEx(i32 %53, i32* %54, i32* null, i32 0, i32 %55, i32** %8)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %128

58:                                               ; preds = %52
  %59 = load i32, i32* %5, align 4
  %60 = load i32*, i32** %8, align 8
  %61 = call i64 @kull_m_registry_RegQueryInfoKey(i32 %59, i32* %60, i32* null, i32* null, i32* null, i32* %11, i32* %12, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %124

63:                                               ; preds = %58
  %64 = load i32, i32* %12, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %12, align 4
  %66 = load i32, i32* @LPTR, align 4
  %67 = load i32, i32* %12, align 4
  %68 = add nsw i32 %67, 1
  %69 = sext i32 %68 to i64
  %70 = mul i64 %69, 4
  %71 = trunc i64 %70 to i32
  %72 = call i64 @LocalAlloc(i32 %66, i32 %71)
  %73 = inttoptr i64 %72 to i32*
  store i32* %73, i32** %14, align 8
  %74 = icmp ne i32* %73, null
  br i1 %74, label %75, label %123

75:                                               ; preds = %63
  store i32 0, i32* %10, align 4
  br label %76

76:                                               ; preds = %117, %75
  %77 = load i32, i32* %10, align 4
  %78 = load i32, i32* %11, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %120

80:                                               ; preds = %76
  %81 = load i32, i32* %12, align 4
  store i32 %81, i32* %13, align 4
  %82 = load i32, i32* %5, align 4
  %83 = load i32*, i32** %8, align 8
  %84 = load i32, i32* %10, align 4
  %85 = load i32*, i32** %14, align 8
  %86 = call i64 @kull_m_registry_RegEnumKeyEx(i32 %82, i32* %83, i32 %84, i32* %85, i32* %13, i32* null, i32* null, i32* null, i32* null)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %116

88:                                               ; preds = %80
  %89 = load i32*, i32** %14, align 8
  %90 = call i32 @wcsstr(i32* %89, i8* bitcast ([9 x i32]* @.str.2 to i8*))
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %115, label %92

92:                                               ; preds = %88
  %93 = load i32*, i32** %14, align 8
  %94 = call i32 (i8*, ...) @kprintf(i8* bitcast ([4 x i32]* @.str.3 to i8*), i32* %93)
  %95 = load i32, i32* %5, align 4
  %96 = load i32*, i32** %8, align 8
  %97 = load i32*, i32** %14, align 8
  %98 = load i32, i32* @KEY_READ, align 4
  %99 = call i64 @kull_m_registry_RegOpenKeyEx(i32 %95, i32* %96, i32* %97, i32 0, i32 %98, i32** %9)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %112

101:                                              ; preds = %92
  %102 = call i32 (i8*, ...) @kprintf(i8* bitcast ([2 x i32]* @.str.4 to i8*))
  %103 = load i32, i32* %5, align 4
  %104 = load i32*, i32** %9, align 8
  %105 = load i32*, i32** %14, align 8
  %106 = load i32, i32* %3, align 4
  %107 = load i32**, i32*** %4, align 8
  %108 = call i32 @kuhl_m_dpapi_ssh_keys4user(i32 %103, i32* %104, i32* %105, i32 %106, i32** %107)
  %109 = load i32, i32* %5, align 4
  %110 = load i32*, i32** %9, align 8
  %111 = call i32 @kull_m_registry_RegCloseKey(i32 %109, i32* %110)
  br label %114

112:                                              ; preds = %92
  %113 = call i32 @PRINT_ERROR_AUTO(i8* bitcast ([29 x i32]* @.str.5 to i8*))
  br label %114

114:                                              ; preds = %112, %101
  br label %115

115:                                              ; preds = %114, %88
  br label %116

116:                                              ; preds = %115, %80
  br label %117

117:                                              ; preds = %116
  %118 = load i32, i32* %10, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %10, align 4
  br label %76

120:                                              ; preds = %76
  %121 = load i32*, i32** %14, align 8
  %122 = call i32 @LocalFree(i32* %121)
  br label %123

123:                                              ; preds = %120, %63
  br label %124

124:                                              ; preds = %123, %58
  %125 = load i32, i32* %5, align 4
  %126 = load i32*, i32** %8, align 8
  %127 = call i32 @kull_m_registry_RegCloseKey(i32 %125, i32* %126)
  br label %130

128:                                              ; preds = %52
  %129 = call i32 @PRINT_ERROR_AUTO(i8* bitcast ([29 x i32]* @.str.5 to i8*))
  br label %130

130:                                              ; preds = %128, %124
  %131 = load i32, i32* %5, align 4
  %132 = call i32 @kull_m_registry_close(i32 %131)
  br label %133

133:                                              ; preds = %130, %47
  br label %134

134:                                              ; preds = %133, %46
  %135 = load i32, i32* @STATUS_SUCCESS, align 4
  ret i32 %135
}

declare dso_local i64 @kull_m_string_args_byName(i32, i32**, i8*, i32*, i32*) #1

declare dso_local i64 @CreateFile(i32, i32, i32, i32*, i32, i32, i32*) #1

declare dso_local i64 @kull_m_registry_open(i32, i64, i32, i32*) #1

declare dso_local i32 @kuhl_m_dpapi_ssh_keys4user(i32, i32*, i32*, i32, i32**) #1

declare dso_local i32 @kull_m_registry_close(i32) #1

declare dso_local i32 @CloseHandle(i64) #1

declare dso_local i32 @PRINT_ERROR_AUTO(i8*) #1

declare dso_local i64 @kull_m_registry_RegOpenKeyEx(i32, i32*, i32*, i32, i32, i32**) #1

declare dso_local i64 @kull_m_registry_RegQueryInfoKey(i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i64 @LocalAlloc(i32, i32) #1

declare dso_local i64 @kull_m_registry_RegEnumKeyEx(i32, i32*, i32, i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @wcsstr(i32*, i8*) #1

declare dso_local i32 @kprintf(i8*, ...) #1

declare dso_local i32 @kull_m_registry_RegCloseKey(i32, i32*) #1

declare dso_local i32 @LocalFree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
