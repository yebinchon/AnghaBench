; ModuleID = '/home/carl/AnghaBench/mimikatz/mimikatz/modules/extr_kuhl_m_lsadump.c_kuhl_m_lsadump_sam.c'
source_filename = "/home/carl/AnghaBench/mimikatz/mimikatz/modules/extr_kuhl_m_lsadump.c_kuhl_m_lsadump_sam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SYSKEY_LENGTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i32] [i32 115, i32 121, i32 115, i32 116, i32 101, i32 109, i32 0], align 4
@GENERIC_READ = common dso_local global i32 0, align 4
@FILE_SHARE_READ = common dso_local global i32 0, align 4
@OPEN_EXISTING = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@KULL_M_REGISTRY_TYPE_HIVE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i32] [i32 115, i32 97, i32 109, i32 0], align 4
@.str.2 = private unnamed_addr constant [22 x i32] [i32 67, i32 114, i32 101, i32 97, i32 116, i32 101, i32 70, i32 105, i32 108, i32 101, i32 32, i32 40, i32 83, i32 65, i32 77, i32 32, i32 104, i32 105, i32 118, i32 101, i32 41, i32 0], align 4
@.str.3 = private unnamed_addr constant [25 x i32] [i32 67, i32 114, i32 101, i32 97, i32 116, i32 101, i32 70, i32 105, i32 108, i32 101, i32 32, i32 40, i32 83, i32 89, i32 83, i32 84, i32 69, i32 77, i32 32, i32 104, i32 105, i32 118, i32 101, i32 41, i32 0], align 4
@KULL_M_REGISTRY_TYPE_OWN = common dso_local global i32 0, align 4
@HKEY_LOCAL_MACHINE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i32] [i32 83, i32 89, i32 83, i32 84, i32 69, i32 77, i32 0], align 4
@KEY_READ = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [4 x i32] [i32 83, i32 65, i32 77, i32 0], align 4
@.str.6 = private unnamed_addr constant [35 x i32] [i32 107, i32 117, i32 108, i32 108, i32 95, i32 109, i32 95, i32 114, i32 101, i32 103, i32 105, i32 115, i32 116, i32 114, i32 121, i32 95, i32 82, i32 101, i32 103, i32 79, i32 112, i32 101, i32 110, i32 75, i32 101, i32 121, i32 69, i32 120, i32 32, i32 40, i32 83, i32 65, i32 77, i32 41, i32 0], align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kuhl_m_lsadump_sam(i32 %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32**, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  store i32** %1, i32*** %4, align 8
  %14 = load i32, i32* @SYSKEY_LENGTH, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %10, align 8
  %17 = alloca i32, i64 %15, align 16
  store i64 %15, i64* %11, align 8
  store i32* null, i32** %12, align 8
  store i32* null, i32** %13, align 8
  %18 = load i32, i32* %3, align 4
  %19 = load i32**, i32*** %4, align 8
  %20 = call i64 @kull_m_string_args_byName(i32 %18, i32** %19, i8* bitcast ([7 x i32]* @.str to i8*), i32** %12, i32* null)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %82

22:                                               ; preds = %2
  %23 = load i32*, i32** %12, align 8
  %24 = load i32, i32* @GENERIC_READ, align 4
  %25 = load i32, i32* @FILE_SHARE_READ, align 4
  %26 = load i32, i32* @OPEN_EXISTING, align 4
  %27 = call i64 @CreateFile(i32* %23, i32 %24, i32 %25, i32* null, i32 %26, i32 0, i32* null)
  store i64 %27, i64* %5, align 8
  %28 = load i64, i64* %5, align 8
  %29 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %79

31:                                               ; preds = %22
  %32 = load i32, i32* @KULL_M_REGISTRY_TYPE_HIVE, align 4
  %33 = load i64, i64* %5, align 8
  %34 = load i32, i32* @FALSE, align 4
  %35 = call i64 @kull_m_registry_open(i32 %32, i64 %33, i32 %34, i32* %7)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %76

37:                                               ; preds = %31
  %38 = load i32, i32* %7, align 4
  %39 = call i64 @kuhl_m_lsadump_getComputerAndSyskey(i32 %38, i32* null, i32* %17)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %73

41:                                               ; preds = %37
  %42 = load i32, i32* %3, align 4
  %43 = load i32**, i32*** %4, align 8
  %44 = call i64 @kull_m_string_args_byName(i32 %42, i32** %43, i8* bitcast ([4 x i32]* @.str.1 to i8*), i32** %13, i32* null)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %72

46:                                               ; preds = %41
  %47 = load i32*, i32** %13, align 8
  %48 = load i32, i32* @GENERIC_READ, align 4
  %49 = load i32, i32* @FILE_SHARE_READ, align 4
  %50 = load i32, i32* @OPEN_EXISTING, align 4
  %51 = call i64 @CreateFile(i32* %47, i32 %48, i32 %49, i32* null, i32 %50, i32 0, i32* null)
  store i64 %51, i64* %6, align 8
  %52 = load i64, i64* %6, align 8
  %53 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %69

55:                                               ; preds = %46
  %56 = load i32, i32* @KULL_M_REGISTRY_TYPE_HIVE, align 4
  %57 = load i64, i64* %6, align 8
  %58 = load i32, i32* @FALSE, align 4
  %59 = call i64 @kull_m_registry_open(i32 %56, i64 %57, i32 %58, i32* %8)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %55
  %62 = load i32, i32* %8, align 4
  %63 = call i32 @kuhl_m_lsadump_getUsersAndSamKey(i32 %62, i32* null, i32* %17)
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @kull_m_registry_close(i32 %64)
  br label %66

66:                                               ; preds = %61, %55
  %67 = load i64, i64* %6, align 8
  %68 = call i32 @CloseHandle(i64 %67)
  br label %71

69:                                               ; preds = %46
  %70 = call i32 @PRINT_ERROR_AUTO(i8* bitcast ([22 x i32]* @.str.2 to i8*))
  br label %71

71:                                               ; preds = %69, %66
  br label %72

72:                                               ; preds = %71, %41
  br label %73

73:                                               ; preds = %72, %37
  %74 = load i32, i32* %7, align 4
  %75 = call i32 @kull_m_registry_close(i32 %74)
  br label %76

76:                                               ; preds = %73, %31
  %77 = load i64, i64* %5, align 8
  %78 = call i32 @CloseHandle(i64 %77)
  br label %81

79:                                               ; preds = %22
  %80 = call i32 @PRINT_ERROR_AUTO(i8* bitcast ([25 x i32]* @.str.3 to i8*))
  br label %81

81:                                               ; preds = %79, %76
  br label %122

82:                                               ; preds = %2
  %83 = load i32, i32* @KULL_M_REGISTRY_TYPE_OWN, align 4
  %84 = load i32, i32* @FALSE, align 4
  %85 = call i64 @kull_m_registry_open(i32 %83, i64 0, i32 %84, i32* %7)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %121

87:                                               ; preds = %82
  %88 = load i32, i32* %7, align 4
  %89 = load i32, i32* @HKEY_LOCAL_MACHINE, align 4
  %90 = load i32, i32* @KEY_READ, align 4
  %91 = call i64 @kull_m_registry_RegOpenKeyEx(i32 %88, i32 %89, i8* bitcast ([7 x i32]* @.str.4 to i8*), i32 0, i32 %90, i32** %9)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %118

93:                                               ; preds = %87
  %94 = load i32, i32* %7, align 4
  %95 = load i32*, i32** %9, align 8
  %96 = call i64 @kuhl_m_lsadump_getComputerAndSyskey(i32 %94, i32* %95, i32* %17)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %114

98:                                               ; preds = %93
  %99 = load i32, i32* %7, align 4
  %100 = load i32, i32* @HKEY_LOCAL_MACHINE, align 4
  %101 = load i32, i32* @KEY_READ, align 4
  %102 = call i64 @kull_m_registry_RegOpenKeyEx(i32 %99, i32 %100, i8* bitcast ([4 x i32]* @.str.5 to i8*), i32 0, i32 %101, i32** %9)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %111

104:                                              ; preds = %98
  %105 = load i32, i32* %7, align 4
  %106 = load i32*, i32** %9, align 8
  %107 = call i32 @kuhl_m_lsadump_getUsersAndSamKey(i32 %105, i32* %106, i32* %17)
  %108 = load i32, i32* %7, align 4
  %109 = load i32*, i32** %9, align 8
  %110 = call i32 @kull_m_registry_RegCloseKey(i32 %108, i32* %109)
  br label %113

111:                                              ; preds = %98
  %112 = call i32 @PRINT_ERROR_AUTO(i8* bitcast ([35 x i32]* @.str.6 to i8*))
  br label %113

113:                                              ; preds = %111, %104
  br label %114

114:                                              ; preds = %113, %93
  %115 = load i32, i32* %7, align 4
  %116 = load i32*, i32** %9, align 8
  %117 = call i32 @kull_m_registry_RegCloseKey(i32 %115, i32* %116)
  br label %118

118:                                              ; preds = %114, %87
  %119 = load i32, i32* %7, align 4
  %120 = call i32 @kull_m_registry_close(i32 %119)
  br label %121

121:                                              ; preds = %118, %82
  br label %122

122:                                              ; preds = %121, %81
  %123 = load i32, i32* @STATUS_SUCCESS, align 4
  %124 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %124)
  ret i32 %123
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @kull_m_string_args_byName(i32, i32**, i8*, i32**, i32*) #2

declare dso_local i64 @CreateFile(i32*, i32, i32, i32*, i32, i32, i32*) #2

declare dso_local i64 @kull_m_registry_open(i32, i64, i32, i32*) #2

declare dso_local i64 @kuhl_m_lsadump_getComputerAndSyskey(i32, i32*, i32*) #2

declare dso_local i32 @kuhl_m_lsadump_getUsersAndSamKey(i32, i32*, i32*) #2

declare dso_local i32 @kull_m_registry_close(i32) #2

declare dso_local i32 @CloseHandle(i64) #2

declare dso_local i32 @PRINT_ERROR_AUTO(i8*) #2

declare dso_local i64 @kull_m_registry_RegOpenKeyEx(i32, i32, i8*, i32, i32, i32**) #2

declare dso_local i32 @kull_m_registry_RegCloseKey(i32, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
