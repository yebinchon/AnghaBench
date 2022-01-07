; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/dinput/extr_device.c_get_mapping_key.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/dinput/extr_device.c_get_mapping_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@get_mapping_key.subkey = internal constant [44 x i8] c"Software\\Wine\\DirectInput\\Mappings\\%s\\%s\\%s\00", align 16
@HKEY_CURRENT_USER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i8*, i8*, i64)* @get_mapping_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_mapping_key(i8* %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %11 = call i32 (...) @GetProcessHeap()
  %12 = call i32 @lstrlenW(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @get_mapping_key.subkey, i64 0, i64 0))
  %13 = load i8*, i8** %6, align 8
  %14 = call i32 @strlenW(i8* %13)
  %15 = add nsw i32 %12, %14
  %16 = load i8*, i8** %5, align 8
  %17 = call i32 @strlenW(i8* %16)
  %18 = add nsw i32 %15, %17
  %19 = load i8*, i8** %7, align 8
  %20 = call i32 @strlenW(i8* %19)
  %21 = add nsw i32 %18, %20
  %22 = sext i32 %21 to i64
  %23 = mul i64 1, %22
  %24 = trunc i64 %23 to i32
  %25 = call i8* @HeapAlloc(i32 %11, i32 0, i32 %24)
  store i8* %25, i8** %10, align 8
  %26 = load i8*, i8** %10, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = load i8*, i8** %5, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = call i32 @sprintfW(i8* %26, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @get_mapping_key.subkey, i64 0, i64 0), i8* %27, i8* %28, i8* %29)
  %31 = load i64, i64* %8, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %4
  %34 = load i32, i32* @HKEY_CURRENT_USER, align 4
  %35 = load i8*, i8** %10, align 8
  %36 = call i64 @RegCreateKeyW(i32 %34, i8* %35, i64* %9)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  store i64 0, i64* %9, align 8
  br label %39

39:                                               ; preds = %38, %33
  br label %47

40:                                               ; preds = %4
  %41 = load i32, i32* @HKEY_CURRENT_USER, align 4
  %42 = load i8*, i8** %10, align 8
  %43 = call i64 @RegOpenKeyW(i32 %41, i8* %42, i64* %9)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  store i64 0, i64* %9, align 8
  br label %46

46:                                               ; preds = %45, %40
  br label %47

47:                                               ; preds = %46, %39
  %48 = call i32 (...) @GetProcessHeap()
  %49 = load i8*, i8** %10, align 8
  %50 = call i32 @HeapFree(i32 %48, i32 0, i8* %49)
  %51 = load i64, i64* %9, align 8
  ret i64 %51
}

declare dso_local i8* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @lstrlenW(i8*) #1

declare dso_local i32 @strlenW(i8*) #1

declare dso_local i32 @sprintfW(i8*, i8*, i8*, i8*, i8*) #1

declare dso_local i64 @RegCreateKeyW(i32, i8*, i64*) #1

declare dso_local i64 @RegOpenKeyW(i32, i8*, i64*) #1

declare dso_local i32 @HeapFree(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
