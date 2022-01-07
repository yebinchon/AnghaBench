; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_oid.c_CRYPT_GetFuncFromReg.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_oid.c_CRYPT_GetFuncFromReg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.FuncAddr = type { i32*, i32, i64 }

@FALSE = common dso_local global i32 0, align 4
@HKEY_LOCAL_MACHINE = common dso_local global i32 0, align 4
@KEY_READ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"FuncName\00", align 1
@ERROR_MORE_DATA = common dso_local global i64 0, align 8
@REG_SZ = common dso_local global i64 0, align 8
@DllW = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i8*, i8*, i32*, %struct.FuncAddr**)* @CRYPT_GetFuncFromReg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CRYPT_GetFuncFromReg(i64 %0, i8* %1, i8* %2, i32* %3, %struct.FuncAddr** %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.FuncAddr**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca %struct.FuncAddr*, align 8
  store i64 %0, i64* %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  store %struct.FuncAddr** %4, %struct.FuncAddr*** %10, align 8
  %21 = load i32, i32* @FALSE, align 4
  store i32 %21, i32* %11, align 4
  %22 = load i64, i64* %6, align 8
  %23 = load i8*, i8** %8, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = call i8* @CRYPT_GetKeyName(i64 %22, i8* %23, i8* %24)
  store i8* %25, i8** %12, align 8
  %26 = load i32, i32* @HKEY_LOCAL_MACHINE, align 4
  %27 = load i8*, i8** %12, align 8
  %28 = load i32, i32* @KEY_READ, align 4
  %29 = call i64 @RegOpenKeyExA(i32 %26, i8* %27, i32 0, i32 %28, i32* %14)
  store i64 %29, i64* %15, align 8
  %30 = load i64, i64* %15, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %142, label %32

32:                                               ; preds = %5
  store i64 0, i64* %17, align 8
  %33 = load i32, i32* %14, align 4
  %34 = call i64 @RegQueryValueExA(i32 %33, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32* null, i64* %16, i32* null, i64* %17)
  store i64 %34, i64* %15, align 8
  %35 = load i64, i64* %15, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %32
  %38 = load i64, i64* %15, align 8
  %39 = load i64, i64* @ERROR_MORE_DATA, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %53

41:                                               ; preds = %37, %32
  %42 = load i64, i64* %16, align 8
  %43 = load i64, i64* @REG_SZ, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %53

45:                                               ; preds = %41
  %46 = load i64, i64* %17, align 8
  %47 = trunc i64 %46 to i32
  %48 = call i8* @CryptMemAlloc(i32 %47)
  store i8* %48, i8** %13, align 8
  %49 = load i32, i32* %14, align 4
  %50 = load i8*, i8** %13, align 8
  %51 = bitcast i8* %50 to i32*
  %52 = call i64 @RegQueryValueExA(i32 %49, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32* null, i64* %16, i32* %51, i64* %17)
  store i64 %52, i64* %15, align 8
  br label %55

53:                                               ; preds = %41, %37
  %54 = load i8*, i8** %8, align 8
  store i8* %54, i8** %13, align 8
  br label %55

55:                                               ; preds = %53, %45
  %56 = load i32, i32* %14, align 4
  %57 = load i32, i32* @DllW, align 4
  %58 = call i64 @RegQueryValueExW(i32 %56, i32 %57, i32* null, i64* %16, i32* null, i64* %17)
  store i64 %58, i64* %15, align 8
  %59 = load i64, i64* %15, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %55
  %62 = load i64, i64* %15, align 8
  %63 = load i64, i64* @ERROR_MORE_DATA, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %129

65:                                               ; preds = %61, %55
  %66 = load i64, i64* %16, align 8
  %67 = load i64, i64* @REG_SZ, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %129

69:                                               ; preds = %65
  %70 = load i64, i64* %17, align 8
  %71 = trunc i64 %70 to i32
  %72 = call i8* @CryptMemAlloc(i32 %71)
  store i8* %72, i8** %18, align 8
  %73 = load i8*, i8** %18, align 8
  %74 = icmp ne i8* %73, null
  br i1 %74, label %75, label %128

75:                                               ; preds = %69
  %76 = load i32, i32* %14, align 4
  %77 = load i32, i32* @DllW, align 4
  %78 = load i8*, i8** %18, align 8
  %79 = bitcast i8* %78 to i32*
  %80 = call i64 @RegQueryValueExW(i32 %76, i32 %77, i32* null, i64* null, i32* %79, i64* %17)
  store i64 %80, i64* %15, align 8
  %81 = load i64, i64* %15, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %122, label %83

83:                                               ; preds = %75
  %84 = load i8*, i8** %18, align 8
  %85 = call i64 @LoadLibraryW(i8* %84)
  store i64 %85, i64* %19, align 8
  %86 = load i64, i64* %19, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %121

88:                                               ; preds = %83
  %89 = load i64, i64* %19, align 8
  %90 = load i8*, i8** %13, align 8
  %91 = call i32 @GetProcAddress(i64 %89, i8* %90)
  %92 = load i32*, i32** %9, align 8
  store i32 %91, i32* %92, align 4
  %93 = load i32*, i32** %9, align 8
  %94 = load i32, i32* %93, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %117

96:                                               ; preds = %88
  %97 = call i8* @CryptMemAlloc(i32 24)
  %98 = bitcast i8* %97 to %struct.FuncAddr*
  store %struct.FuncAddr* %98, %struct.FuncAddr** %20, align 8
  %99 = load %struct.FuncAddr*, %struct.FuncAddr** %20, align 8
  %100 = icmp ne %struct.FuncAddr* %99, null
  br i1 %100, label %101, label %112

101:                                              ; preds = %96
  %102 = load i64, i64* %19, align 8
  %103 = load %struct.FuncAddr*, %struct.FuncAddr** %20, align 8
  %104 = getelementptr inbounds %struct.FuncAddr, %struct.FuncAddr* %103, i32 0, i32 2
  store i64 %102, i64* %104, align 8
  %105 = load %struct.FuncAddr*, %struct.FuncAddr** %20, align 8
  %106 = getelementptr inbounds %struct.FuncAddr, %struct.FuncAddr* %105, i32 0, i32 0
  store i32* null, i32** %106, align 8
  %107 = load %struct.FuncAddr*, %struct.FuncAddr** %20, align 8
  %108 = getelementptr inbounds %struct.FuncAddr, %struct.FuncAddr* %107, i32 0, i32 1
  store i32 0, i32* %108, align 8
  %109 = load %struct.FuncAddr*, %struct.FuncAddr** %20, align 8
  %110 = load %struct.FuncAddr**, %struct.FuncAddr*** %10, align 8
  store %struct.FuncAddr* %109, %struct.FuncAddr** %110, align 8
  %111 = load i32, i32* @TRUE, align 4
  store i32 %111, i32* %11, align 4
  br label %116

112:                                              ; preds = %96
  %113 = load %struct.FuncAddr**, %struct.FuncAddr*** %10, align 8
  store %struct.FuncAddr* null, %struct.FuncAddr** %113, align 8
  %114 = load i64, i64* %19, align 8
  %115 = call i32 @FreeLibrary(i64 %114)
  br label %116

116:                                              ; preds = %112, %101
  br label %120

117:                                              ; preds = %88
  %118 = load i64, i64* %19, align 8
  %119 = call i32 @FreeLibrary(i64 %118)
  br label %120

120:                                              ; preds = %117, %116
  br label %121

121:                                              ; preds = %120, %83
  br label %125

122:                                              ; preds = %75
  %123 = load i64, i64* %15, align 8
  %124 = call i32 @SetLastError(i64 %123)
  br label %125

125:                                              ; preds = %122, %121
  %126 = load i8*, i8** %18, align 8
  %127 = call i32 @CryptMemFree(i8* %126)
  br label %128

128:                                              ; preds = %125, %69
  br label %132

129:                                              ; preds = %65, %61
  %130 = load i64, i64* %15, align 8
  %131 = call i32 @SetLastError(i64 %130)
  br label %132

132:                                              ; preds = %129, %128
  %133 = load i8*, i8** %13, align 8
  %134 = load i8*, i8** %8, align 8
  %135 = icmp ne i8* %133, %134
  br i1 %135, label %136, label %139

136:                                              ; preds = %132
  %137 = load i8*, i8** %13, align 8
  %138 = call i32 @CryptMemFree(i8* %137)
  br label %139

139:                                              ; preds = %136, %132
  %140 = load i32, i32* %14, align 4
  %141 = call i32 @RegCloseKey(i32 %140)
  br label %145

142:                                              ; preds = %5
  %143 = load i64, i64* %15, align 8
  %144 = call i32 @SetLastError(i64 %143)
  br label %145

145:                                              ; preds = %142, %139
  %146 = load i8*, i8** %12, align 8
  %147 = call i32 @CryptMemFree(i8* %146)
  %148 = load i32, i32* %11, align 4
  ret i32 %148
}

declare dso_local i8* @CRYPT_GetKeyName(i64, i8*, i8*) #1

declare dso_local i64 @RegOpenKeyExA(i32, i8*, i32, i32, i32*) #1

declare dso_local i64 @RegQueryValueExA(i32, i8*, i32*, i64*, i32*, i64*) #1

declare dso_local i8* @CryptMemAlloc(i32) #1

declare dso_local i64 @RegQueryValueExW(i32, i32, i32*, i64*, i32*, i64*) #1

declare dso_local i64 @LoadLibraryW(i8*) #1

declare dso_local i32 @GetProcAddress(i64, i8*) #1

declare dso_local i32 @FreeLibrary(i64) #1

declare dso_local i32 @SetLastError(i64) #1

declare dso_local i32 @CryptMemFree(i8*) #1

declare dso_local i32 @RegCloseKey(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
