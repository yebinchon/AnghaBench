; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/quartz/extr_regsvr.c_register_progid.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/quartz/extr_regsvr.c_register_progid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HKEY_CLASSES_ROOT = common dso_local global i32 0, align 4
@KEY_READ = common dso_local global i32 0, align 4
@KEY_WRITE = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@REG_SZ = common dso_local global i32 0, align 4
@clsid_keyname = common dso_local global i32 0, align 4
@curver_keyname = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i8*, i8*, i8*, i8*)* @register_progid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @register_progid(i32* %0, i8* %1, i8* %2, i8* %3, i8* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  %15 = load i32, i32* @HKEY_CLASSES_ROOT, align 4
  %16 = load i8*, i8** %8, align 8
  %17 = load i32, i32* @KEY_READ, align 4
  %18 = load i32, i32* @KEY_WRITE, align 4
  %19 = or i32 %17, %18
  %20 = call i64 @RegCreateKeyExA(i32 %15, i8* %16, i32 0, i32* null, i32 0, i32 %19, i32* null, i32* %13, i32* null)
  store i64 %20, i64* %12, align 8
  %21 = load i64, i64* %12, align 8
  %22 = load i64, i64* @ERROR_SUCCESS, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %5
  %25 = load i64, i64* %12, align 8
  store i64 %25, i64* %6, align 8
  br label %91

26:                                               ; preds = %5
  %27 = load i8*, i8** %10, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %43

29:                                               ; preds = %26
  %30 = load i32, i32* %13, align 4
  %31 = load i32, i32* @REG_SZ, align 4
  %32 = load i8*, i8** %10, align 8
  %33 = bitcast i8* %32 to i32*
  %34 = load i8*, i8** %10, align 8
  %35 = call i64 @strlen(i8* %34)
  %36 = add nsw i64 %35, 1
  %37 = call i64 @RegSetValueExA(i32 %30, i32* null, i32 0, i32 %31, i32* %33, i64 %36)
  store i64 %37, i64* %12, align 8
  %38 = load i64, i64* %12, align 8
  %39 = load i64, i64* @ERROR_SUCCESS, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %29
  br label %87

42:                                               ; preds = %29
  br label %43

43:                                               ; preds = %42, %26
  %44 = load i32*, i32** %7, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %46, label %56

46:                                               ; preds = %43
  %47 = load i32, i32* %13, align 4
  %48 = load i32, i32* @clsid_keyname, align 4
  %49 = load i32*, i32** %7, align 8
  %50 = call i64 @register_key_defvalueW(i32 %47, i32 %48, i32* %49)
  store i64 %50, i64* %12, align 8
  %51 = load i64, i64* %12, align 8
  %52 = load i64, i64* @ERROR_SUCCESS, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %46
  br label %87

55:                                               ; preds = %46
  br label %56

56:                                               ; preds = %55, %43
  %57 = load i8*, i8** %9, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %59, label %69

59:                                               ; preds = %56
  %60 = load i32, i32* %13, align 4
  %61 = load i32, i32* @curver_keyname, align 4
  %62 = load i8*, i8** %9, align 8
  %63 = call i64 @register_key_defvalueA(i32 %60, i32 %61, i8* %62)
  store i64 %63, i64* %12, align 8
  %64 = load i64, i64* %12, align 8
  %65 = load i64, i64* @ERROR_SUCCESS, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %59
  br label %87

68:                                               ; preds = %59
  br label %69

69:                                               ; preds = %68, %56
  %70 = load i8*, i8** %11, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %72, label %86

72:                                               ; preds = %69
  %73 = load i32, i32* %13, align 4
  %74 = load i8*, i8** %11, align 8
  %75 = load i32, i32* @KEY_READ, align 4
  %76 = load i32, i32* @KEY_WRITE, align 4
  %77 = or i32 %75, %76
  %78 = call i64 @RegCreateKeyExA(i32 %73, i8* %74, i32 0, i32* null, i32 0, i32 %77, i32* null, i32* %14, i32* null)
  store i64 %78, i64* %12, align 8
  %79 = load i64, i64* %12, align 8
  %80 = load i64, i64* @ERROR_SUCCESS, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %85

82:                                               ; preds = %72
  %83 = load i32, i32* %14, align 4
  %84 = call i32 @RegCloseKey(i32 %83)
  br label %85

85:                                               ; preds = %82, %72
  br label %86

86:                                               ; preds = %85, %69
  br label %87

87:                                               ; preds = %86, %67, %54, %41
  %88 = load i32, i32* %13, align 4
  %89 = call i32 @RegCloseKey(i32 %88)
  %90 = load i64, i64* %12, align 8
  store i64 %90, i64* %6, align 8
  br label %91

91:                                               ; preds = %87, %24
  %92 = load i64, i64* %6, align 8
  ret i64 %92
}

declare dso_local i64 @RegCreateKeyExA(i32, i8*, i32, i32*, i32, i32, i32*, i32*, i32*) #1

declare dso_local i64 @RegSetValueExA(i32, i32*, i32, i32, i32*, i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @register_key_defvalueW(i32, i32, i32*) #1

declare dso_local i64 @register_key_defvalueA(i32, i32, i8*) #1

declare dso_local i32 @RegCloseKey(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
