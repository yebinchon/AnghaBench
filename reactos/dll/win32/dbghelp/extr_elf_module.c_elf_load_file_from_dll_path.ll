; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_elf_module.c_elf_load_file_from_dll_path.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_elf_module.c_elf_load_file_from_dll_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elf_info = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@CP_UNIXCP = common dso_local global i32 0, align 4
@S_SlashW = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i64, i64, %struct.elf_info*)* @elf_load_file_from_dll_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @elf_load_file_from_dll_path(i32 %0, i32* %1, i64 %2, i64 %3, %struct.elf_info* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.elf_info*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store %struct.elf_info* %4, %struct.elf_info** %10, align 8
  %16 = load i32, i32* @FALSE, align 4
  store i32 %16, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %17

17:                                               ; preds = %44, %5
  %18 = load i32, i32* %11, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %17
  %21 = load i32, i32* %12, align 4
  %22 = add i32 %21, 1
  store i32 %22, i32* %12, align 4
  %23 = call i8* @wine_dll_enum_load_path(i32 %21)
  store i8* %23, i8** %13, align 8
  %24 = icmp ne i8* %23, null
  br label %25

25:                                               ; preds = %20, %17
  %26 = phi i1 [ false, %17 ], [ %24, %20 ]
  br i1 %26, label %27, label %65

27:                                               ; preds = %25
  %28 = load i32, i32* @CP_UNIXCP, align 4
  %29 = load i8*, i8** %13, align 8
  %30 = call i32 @MultiByteToWideChar(i32 %28, i32 0, i8* %29, i32 -1, i32* null, i32 0)
  store i32 %30, i32* %15, align 4
  %31 = call i32 (...) @GetProcessHeap()
  %32 = load i32, i32* %15, align 4
  %33 = load i32*, i32** %7, align 8
  %34 = call i32 @lstrlenW(i32* %33)
  %35 = add i32 %32, %34
  %36 = add i32 %35, 2
  %37 = zext i32 %36 to i64
  %38 = mul i64 %37, 4
  %39 = trunc i64 %38 to i32
  %40 = call i32* @HeapAlloc(i32 %31, i32 0, i32 %39)
  store i32* %40, i32** %14, align 8
  %41 = load i32*, i32** %14, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %27
  br label %65

44:                                               ; preds = %27
  %45 = load i32, i32* @CP_UNIXCP, align 4
  %46 = load i8*, i8** %13, align 8
  %47 = load i32*, i32** %14, align 8
  %48 = load i32, i32* %15, align 4
  %49 = call i32 @MultiByteToWideChar(i32 %45, i32 0, i8* %46, i32 -1, i32* %47, i32 %48)
  %50 = load i32*, i32** %14, align 8
  %51 = load i32*, i32** @S_SlashW, align 8
  %52 = call i32 @strcatW(i32* %50, i32* %51)
  %53 = load i32*, i32** %14, align 8
  %54 = load i32*, i32** %7, align 8
  %55 = call i32 @strcatW(i32* %53, i32* %54)
  %56 = load i32, i32* %6, align 4
  %57 = load i32*, i32** %14, align 8
  %58 = load i64, i64* %8, align 8
  %59 = load i64, i64* %9, align 8
  %60 = load %struct.elf_info*, %struct.elf_info** %10, align 8
  %61 = call i32 @elf_load_file(i32 %56, i32* %57, i64 %58, i64 %59, %struct.elf_info* %60)
  store i32 %61, i32* %11, align 4
  %62 = call i32 (...) @GetProcessHeap()
  %63 = load i32*, i32** %14, align 8
  %64 = call i32 @HeapFree(i32 %62, i32 0, i32* %63)
  br label %17

65:                                               ; preds = %43, %25
  %66 = load i32, i32* %11, align 4
  ret i32 %66
}

declare dso_local i8* @wine_dll_enum_load_path(i32) #1

declare dso_local i32 @MultiByteToWideChar(i32, i32, i8*, i32, i32*, i32) #1

declare dso_local i32* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @lstrlenW(i32*) #1

declare dso_local i32 @strcatW(i32*, i32*) #1

declare dso_local i32 @elf_load_file(i32, i32*, i64, i64, %struct.elf_info*) #1

declare dso_local i32 @HeapFree(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
