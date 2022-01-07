; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/wordpad/extr_registry.c_registry_get_handle.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/wordpad/extr_registry.c_registry_get_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@registry_get_handle.wszProgramKey = internal constant [58 x i8] c"Software\\Microsoft\\Windows\\CurrentVersion\\Applets\\Wordpad\00", align 16
@__const.registry_get_handle.backslash = private unnamed_addr constant [2 x i8] c"\\\00", align 1
@HEAP_ZERO_MEMORY = common dso_local global i32 0, align 4
@HKEY_CURRENT_USER = common dso_local global i32 0, align 4
@REG_OPTION_NON_VOLATILE = common dso_local global i32 0, align 4
@KEY_READ = common dso_local global i32 0, align 4
@KEY_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64, i8*)* @registry_get_handle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @registry_get_handle(i32* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [2 x i8], align 1
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 ptrtoint ([58 x i8]* @registry_get_handle.wszProgramKey to i32), i32* %9, align 4
  %11 = load i8*, i8** %7, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %41

13:                                               ; preds = %3
  %14 = bitcast [2 x i8]* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %14, i8* align 1 getelementptr inbounds ([2 x i8], [2 x i8]* @__const.registry_get_handle.backslash, i32 0, i32 0), i64 2, i1 false)
  %15 = call i32 (...) @GetProcessHeap()
  %16 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %17 = call i32 @lstrlenW(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @registry_get_handle.wszProgramKey, i64 0, i64 0))
  %18 = load i8*, i8** %7, align 8
  %19 = call i32 @lstrlenW(i8* %18)
  %20 = add nsw i32 %17, %19
  %21 = getelementptr inbounds [2 x i8], [2 x i8]* %10, i64 0, i64 0
  %22 = call i32 @lstrlenW(i8* %21)
  %23 = add nsw i32 %20, %22
  %24 = add nsw i32 %23, 1
  %25 = sext i32 %24 to i64
  %26 = mul i64 %25, 1
  %27 = trunc i64 %26 to i32
  %28 = call i32 @HeapAlloc(i32 %15, i32 %16, i32 %27)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %13
  store i32 1, i32* %4, align 4
  br label %71

32:                                               ; preds = %13
  %33 = load i32, i32* %9, align 4
  %34 = call i32 @lstrcpyW(i32 %33, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @registry_get_handle.wszProgramKey, i64 0, i64 0))
  %35 = load i32, i32* %9, align 4
  %36 = getelementptr inbounds [2 x i8], [2 x i8]* %10, i64 0, i64 0
  %37 = call i32 @lstrcatW(i32 %35, i8* %36)
  %38 = load i32, i32* %9, align 4
  %39 = load i8*, i8** %7, align 8
  %40 = call i32 @lstrcatW(i32 %38, i8* %39)
  br label %41

41:                                               ; preds = %32, %3
  %42 = load i64, i64* %6, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %41
  %45 = load i32, i32* @HKEY_CURRENT_USER, align 4
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* @REG_OPTION_NON_VOLATILE, align 4
  %48 = load i32, i32* @KEY_READ, align 4
  %49 = load i32, i32* @KEY_WRITE, align 4
  %50 = or i32 %48, %49
  %51 = load i32*, i32** %5, align 8
  %52 = load i64, i64* %6, align 8
  %53 = call i32 @RegCreateKeyExW(i32 %45, i32 %46, i32 0, i32* null, i32 %47, i32 %50, i32* null, i32* %51, i64 %52)
  store i32 %53, i32* %8, align 4
  br label %62

54:                                               ; preds = %41
  %55 = load i32, i32* @HKEY_CURRENT_USER, align 4
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* @KEY_READ, align 4
  %58 = load i32, i32* @KEY_WRITE, align 4
  %59 = or i32 %57, %58
  %60 = load i32*, i32** %5, align 8
  %61 = call i32 @RegOpenKeyExW(i32 %55, i32 %56, i32 0, i32 %59, i32* %60)
  store i32 %61, i32* %8, align 4
  br label %62

62:                                               ; preds = %54, %44
  %63 = load i8*, i8** %7, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %65, label %69

65:                                               ; preds = %62
  %66 = call i32 (...) @GetProcessHeap()
  %67 = load i32, i32* %9, align 4
  %68 = call i32 @HeapFree(i32 %66, i32 0, i32 %67)
  br label %69

69:                                               ; preds = %65, %62
  %70 = load i32, i32* %8, align 4
  store i32 %70, i32* %4, align 4
  br label %71

71:                                               ; preds = %69, %31
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @HeapAlloc(i32, i32, i32) #2

declare dso_local i32 @GetProcessHeap(...) #2

declare dso_local i32 @lstrlenW(i8*) #2

declare dso_local i32 @lstrcpyW(i32, i8*) #2

declare dso_local i32 @lstrcatW(i32, i8*) #2

declare dso_local i32 @RegCreateKeyExW(i32, i32, i32, i32*, i32, i32, i32*, i32*, i64) #2

declare dso_local i32 @RegOpenKeyExW(i32, i32, i32, i32, i32*) #2

declare dso_local i32 @HeapFree(i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
