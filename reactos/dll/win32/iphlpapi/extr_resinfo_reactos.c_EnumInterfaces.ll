; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/iphlpapi/extr_resinfo_reactos.c_EnumInterfaces.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/iphlpapi/extr_resinfo_reactos.c_EnumInterfaces.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HKEY_LOCAL_MACHINE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i32] [i32 83, i32 89, i32 83, i32 84, i32 69, i32 77, i32 92, i32 67, i32 117, i32 114, i32 114, i32 101, i32 110, i32 116, i32 67, i32 111, i32 110, i32 116, i32 114, i32 111, i32 108, i32 83, i32 101, i32 116, i32 92, i32 83, i32 101, i32 114, i32 118, i32 105, i32 99, i32 101, i32 115, i32 92, i32 84, i32 99, i32 112, i32 105, i32 112, i32 92, i32 80, i32 97, i32 114, i32 97, i32 109, i32 101, i32 116, i32 101, i32 114, i32 115, i32 92, i32 73, i32 110, i32 116, i32 101, i32 114, i32 102, i32 97, i32 99, i32 101, i32 115, i32 0], align 4
@KEY_READ = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@ERROR_OUTOFMEMORY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @EnumInterfaces(i32 (i32, i8*, i32)* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32 (i32, i8*, i32)*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store i32 (i32, i8*, i32)* %0, i32 (i32, i8*, i32)** %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = load i32, i32* @HKEY_LOCAL_MACHINE, align 4
  %15 = load i32, i32* @KEY_READ, align 4
  %16 = call i64 @RegOpenKeyExW(i32 %14, i8* bitcast ([62 x i32]* @.str to i8*), i32 0, i32 %15, i32* %6)
  store i64 %16, i64* %8, align 8
  %17 = load i64, i64* %8, align 8
  %18 = load i64, i64* @ERROR_SUCCESS, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i64, i64* %8, align 8
  store i64 %21, i64* %3, align 8
  br label %94

22:                                               ; preds = %2
  %23 = load i32, i32* %6, align 4
  %24 = call i64 @RegQueryInfoKeyW(i32 %23, i32* null, i32* null, i32* null, i32* %9, i32* %10, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null)
  store i64 %24, i64* %8, align 8
  %25 = load i64, i64* %8, align 8
  %26 = load i64, i64* @ERROR_SUCCESS, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %22
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @RegCloseKey(i32 %29)
  %31 = load i64, i64* %8, align 8
  store i64 %31, i64* %3, align 8
  br label %94

32:                                               ; preds = %22
  %33 = load i32, i32* %10, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %10, align 4
  %35 = call i32 (...) @GetProcessHeap()
  %36 = load i32, i32* %10, align 4
  %37 = sext i32 %36 to i64
  %38 = mul i64 %37, 4
  %39 = trunc i64 %38 to i32
  %40 = call i64 @HeapAlloc(i32 %35, i32 0, i32 %39)
  %41 = inttoptr i64 %40 to i8*
  store i8* %41, i8** %13, align 8
  %42 = load i8*, i8** %13, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %48, label %44

44:                                               ; preds = %32
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @RegCloseKey(i32 %45)
  %47 = load i64, i64* @ERROR_OUTOFMEMORY, align 8
  store i64 %47, i64* %3, align 8
  br label %94

48:                                               ; preds = %32
  store i32 0, i32* %11, align 4
  br label %49

49:                                               ; preds = %84, %48
  %50 = load i32, i32* %11, align 4
  %51 = load i32, i32* %9, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %87

53:                                               ; preds = %49
  %54 = load i32, i32* %10, align 4
  store i32 %54, i32* %12, align 4
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* %11, align 4
  %57 = load i8*, i8** %13, align 8
  %58 = call i64 @RegEnumKeyExW(i32 %55, i32 %56, i8* %57, i32* %12, i32* null, i32* null, i32* null, i32* null)
  store i64 %58, i64* %8, align 8
  %59 = load i64, i64* %8, align 8
  %60 = load i64, i64* @ERROR_SUCCESS, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %83

62:                                               ; preds = %53
  %63 = load i8*, i8** %13, align 8
  %64 = load i32, i32* %12, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8, i8* %63, i64 %65
  store i8 0, i8* %66, align 1
  %67 = load i32, i32* %6, align 4
  %68 = load i8*, i8** %13, align 8
  %69 = load i32, i32* @KEY_READ, align 4
  %70 = call i64 @RegOpenKeyExW(i32 %67, i8* %68, i32 0, i32 %69, i32* %7)
  store i64 %70, i64* %8, align 8
  %71 = load i64, i64* %8, align 8
  %72 = load i64, i64* @ERROR_SUCCESS, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %82

74:                                               ; preds = %62
  %75 = load i32 (i32, i8*, i32)*, i32 (i32, i8*, i32)** %4, align 8
  %76 = load i32, i32* %7, align 4
  %77 = load i8*, i8** %13, align 8
  %78 = load i32, i32* %5, align 4
  %79 = call i32 %75(i32 %76, i8* %77, i32 %78)
  %80 = load i32, i32* %7, align 4
  %81 = call i32 @RegCloseKey(i32 %80)
  br label %82

82:                                               ; preds = %74, %62
  br label %83

83:                                               ; preds = %82, %53
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* %11, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %11, align 4
  br label %49

87:                                               ; preds = %49
  %88 = call i32 (...) @GetProcessHeap()
  %89 = load i8*, i8** %13, align 8
  %90 = call i32 @HeapFree(i32 %88, i32 0, i8* %89)
  %91 = load i32, i32* %6, align 4
  %92 = call i32 @RegCloseKey(i32 %91)
  %93 = load i64, i64* %8, align 8
  store i64 %93, i64* %3, align 8
  br label %94

94:                                               ; preds = %87, %44, %28, %20
  %95 = load i64, i64* %3, align 8
  ret i64 %95
}

declare dso_local i64 @RegOpenKeyExW(i32, i8*, i32, i32, i32*) #1

declare dso_local i64 @RegQueryInfoKeyW(i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @RegCloseKey(i32) #1

declare dso_local i64 @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i64 @RegEnumKeyExW(i32, i32, i8*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @HeapFree(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
