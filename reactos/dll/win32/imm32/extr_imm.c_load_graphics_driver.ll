; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/imm32/extr_imm.c_load_graphics_driver.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/imm32/extr_imm.c_load_graphics_driver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@load_graphics_driver.display_device_guid_propW = internal constant [27 x i8] c"__wine_display_device_guid\00", align 16
@load_graphics_driver.key_pathW = internal constant [41 x i8] c"System\\CurrentControlSet\\Control\\Video\\{\00", align 16
@load_graphics_driver.displayW = internal constant [7 x i8] c"}\\0000\00", align 1
@load_graphics_driver.driverW = internal constant [15 x i8] c"GraphicsDriver\00", align 1
@MAX_PATH = common dso_local global i32 0, align 4
@HKEY_LOCAL_MACHINE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"%s %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @load_graphics_driver to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @load_graphics_driver() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  %10 = load i32, i32* @MAX_PATH, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %5, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %6, align 8
  %14 = call i64 @ARRAY_SIZE(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @load_graphics_driver.key_pathW, i64 0, i64 0))
  %15 = call i64 @ARRAY_SIZE(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @load_graphics_driver.displayW, i64 0, i64 0))
  %16 = add nsw i64 %14, %15
  %17 = add nsw i64 %16, 40
  %18 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %7, align 8
  %19 = call i32 (...) @GetDesktopWindow()
  %20 = call i32 @GetPropW(i32 %19, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @load_graphics_driver.display_device_guid_propW, i64 0, i64 0))
  %21 = call i32 @HandleToULong(i32 %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %0
  store i32 0, i32* %1, align 4
  store i32 1, i32* %9, align 4
  br label %55

25:                                               ; preds = %0
  %26 = call i32 @memcpy(i8* %18, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @load_graphics_driver.key_pathW, i64 0, i64 0), i32 41)
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @lstrlenW(i8* %18)
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8, i8* %18, i64 %29
  %31 = call i32 @GlobalGetAtomNameW(i32 %27, i8* %30, i32 40)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %25
  store i32 0, i32* %1, align 4
  store i32 1, i32* %9, align 4
  br label %55

34:                                               ; preds = %25
  %35 = call i32 @lstrcatW(i8* %18, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @load_graphics_driver.displayW, i64 0, i64 0))
  %36 = load i32, i32* @HKEY_LOCAL_MACHINE, align 4
  %37 = call i64 @RegOpenKeyW(i32 %36, i8* %18, i32* %3)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  store i32 0, i32* %1, align 4
  store i32 1, i32* %9, align 4
  br label %55

40:                                               ; preds = %34
  %41 = trunc i64 %11 to i32
  store i32 %41, i32* %4, align 4
  %42 = load i32, i32* %3, align 4
  %43 = bitcast i8* %13 to i32*
  %44 = call i32 @RegQueryValueExW(i32 %42, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @load_graphics_driver.driverW, i64 0, i64 0), i32* null, i32* null, i32* %43, i32* %4)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %40
  %47 = call i32 @LoadLibraryW(i8* %13)
  store i32 %47, i32* %2, align 4
  br label %48

48:                                               ; preds = %46, %40
  %49 = load i32, i32* %3, align 4
  %50 = call i32 @RegCloseKey(i32 %49)
  %51 = call i32 @debugstr_w(i8* %13)
  %52 = load i32, i32* %2, align 4
  %53 = call i32 @TRACE(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %51, i32 %52)
  %54 = load i32, i32* %2, align 4
  store i32 %54, i32* %1, align 4
  store i32 1, i32* %9, align 4
  br label %55

55:                                               ; preds = %48, %39, %33, %24
  %56 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %56)
  %57 = load i32, i32* %1, align 4
  ret i32 %57
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @ARRAY_SIZE(i8*) #2

declare dso_local i32 @HandleToULong(i32) #2

declare dso_local i32 @GetPropW(i32, i8*) #2

declare dso_local i32 @GetDesktopWindow(...) #2

declare dso_local i32 @memcpy(i8*, i8*, i32) #2

declare dso_local i32 @GlobalGetAtomNameW(i32, i8*, i32) #2

declare dso_local i32 @lstrlenW(i8*) #2

declare dso_local i32 @lstrcatW(i8*, i8*) #2

declare dso_local i64 @RegOpenKeyW(i32, i8*, i32*) #2

declare dso_local i32 @RegQueryValueExW(i32, i8*, i32*, i32*, i32*, i32*) #2

declare dso_local i32 @LoadLibraryW(i8*) #2

declare dso_local i32 @RegCloseKey(i32) #2

declare dso_local i32 @TRACE(i8*, i32, i32) #2

declare dso_local i32 @debugstr_w(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
