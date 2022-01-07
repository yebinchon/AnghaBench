; ModuleID = '/home/carl/AnghaBench/reactos/base/shell/cmd/extr_assoc.c_PrintAssociation.c'
source_filename = "/home/carl/AnghaBench/reactos/base/shell/cmd/extr_assoc.c_PrintAssociation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HKEY_LOCAL_MACHINE = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [17 x i8] c"SOFTWARE\\Classes\00", align 1
@KEY_READ = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@ERROR_FILE_NOT_FOUND = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [38 x i8] c"Cannot allocate memory for fileType!\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"%s=%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @PrintAssociation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @PrintAssociation(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i32* null, i32** %5, align 8
  store i32* null, i32** %6, align 8
  store i64 0, i64* %7, align 8
  store i32* null, i32** %8, align 8
  %9 = load i32*, i32** @HKEY_LOCAL_MACHINE, align 8
  %10 = call i32* @_T(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %11 = load i32, i32* @KEY_READ, align 4
  %12 = call i64 @RegOpenKeyEx(i32* %9, i32* %10, i32 0, i32 %11, i32** %5)
  store i64 %12, i64* %4, align 8
  %13 = load i64, i64* %4, align 8
  %14 = load i64, i64* @ERROR_SUCCESS, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %77

17:                                               ; preds = %1
  %18 = load i32*, i32** %5, align 8
  %19 = load i32*, i32** %3, align 8
  %20 = load i32, i32* @KEY_READ, align 4
  %21 = call i64 @RegOpenKeyEx(i32* %18, i32* %19, i32 0, i32 %20, i32** %6)
  store i64 %21, i64* %4, align 8
  %22 = load i32*, i32** %5, align 8
  %23 = call i32 @RegCloseKey(i32* %22)
  %24 = load i64, i64* %4, align 8
  %25 = load i64, i64* @ERROR_SUCCESS, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %17
  store i32 0, i32* %2, align 4
  br label %77

28:                                               ; preds = %17
  %29 = load i32*, i32** %6, align 8
  %30 = call i64 @RegQueryValueEx(i32* %29, i32* null, i32* null, i32* null, i32* null, i64* %7)
  store i64 %30, i64* %4, align 8
  %31 = load i64, i64* %4, align 8
  %32 = load i64, i64* @ERROR_FILE_NOT_FOUND, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %28
  %35 = load i32*, i32** %6, align 8
  %36 = call i32 @RegCloseKey(i32* %35)
  store i32 0, i32* %2, align 4
  br label %77

37:                                               ; preds = %28
  %38 = load i64, i64* %4, align 8
  %39 = load i64, i64* @ERROR_SUCCESS, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = load i32*, i32** %6, align 8
  %43 = call i32 @RegCloseKey(i32* %42)
  store i32 -2, i32* %2, align 4
  br label %77

44:                                               ; preds = %37
  %45 = load i64, i64* %7, align 8
  %46 = mul i64 %45, 4
  %47 = call i32* @cmd_alloc(i64 %46)
  store i32* %47, i32** %8, align 8
  %48 = load i32*, i32** %8, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %54, label %50

50:                                               ; preds = %44
  %51 = call i32 @WARN(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %52 = load i32*, i32** %6, align 8
  %53 = call i32 @RegCloseKey(i32* %52)
  store i32 -2, i32* %2, align 4
  br label %77

54:                                               ; preds = %44
  %55 = load i32*, i32** %6, align 8
  %56 = load i32*, i32** %8, align 8
  %57 = call i64 @RegQueryValueEx(i32* %55, i32* null, i32* null, i32* null, i32* %56, i64* %7)
  store i64 %57, i64* %4, align 8
  %58 = load i32*, i32** %6, align 8
  %59 = call i32 @RegCloseKey(i32* %58)
  %60 = load i64, i64* %4, align 8
  %61 = load i64, i64* @ERROR_SUCCESS, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %54
  %64 = load i32*, i32** %8, align 8
  %65 = call i32 @cmd_free(i32* %64)
  store i32 -2, i32* %2, align 4
  br label %77

66:                                               ; preds = %54
  %67 = load i64, i64* %7, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %66
  %70 = call i32* @_T(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %71 = load i32*, i32** %3, align 8
  %72 = load i32*, i32** %8, align 8
  %73 = call i32 @ConOutPrintf(i32* %70, i32* %71, i32* %72)
  br label %74

74:                                               ; preds = %69, %66
  %75 = load i32*, i32** %8, align 8
  %76 = call i32 @cmd_free(i32* %75)
  store i32 1, i32* %2, align 4
  br label %77

77:                                               ; preds = %74, %63, %50, %41, %34, %27, %16
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

declare dso_local i64 @RegOpenKeyEx(i32*, i32*, i32, i32, i32**) #1

declare dso_local i32* @_T(i8*) #1

declare dso_local i32 @RegCloseKey(i32*) #1

declare dso_local i64 @RegQueryValueEx(i32*, i32*, i32*, i32*, i32*, i64*) #1

declare dso_local i32* @cmd_alloc(i64) #1

declare dso_local i32 @WARN(i8*) #1

declare dso_local i32 @cmd_free(i32*) #1

declare dso_local i32 @ConOutPrintf(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
