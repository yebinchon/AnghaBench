; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/advpack/extr_advpack.c_get_dest_dir.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/advpack/extr_advpack.c_get_dest_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i32 0, align 4
@PREFIX_LEN = common dso_local global i32 0, align 4
@get_dest_dir.hklm = internal constant [5 x i8] c"HKLM\00", align 1
@get_dest_dir.hkcu = internal constant [5 x i8] c"HKCU\00", align 1
@HKEY_LOCAL_MACHINE = common dso_local global i32* null, align 8
@HKEY_CURRENT_USER = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i8*, i32)* @get_dest_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_dest_dir(i32 %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %17 = load i32, i32* @MAX_PATH, align 4
  %18 = add nsw i32 %17, 2
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %10, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %11, align 8
  %22 = load i32, i32* @MAX_PATH, align 4
  %23 = add nsw i32 %22, 2
  %24 = zext i32 %23 to i64
  %25 = alloca i8, i64 %24, align 16
  store i64 %24, i64* %12, align 8
  %26 = load i32, i32* @PREFIX_LEN, align 4
  %27 = add nsw i32 %26, 2
  %28 = zext i32 %27 to i64
  %29 = alloca i8, i64 %28, align 16
  store i64 %28, i64* %13, align 8
  store i32* null, i32** %15, align 8
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @SetupFindFirstLineW(i32 %30, i32 %31, i32* null, i32* %9)
  %33 = load i32, i32* @PREFIX_LEN, align 4
  %34 = add nsw i32 %33, 2
  %35 = call i32 @SetupGetStringFieldW(i32* %9, i32 1, i8* %29, i32 %34, i32* %16)
  %36 = call i32 @strip_quotes(i8* %29, i32* %16)
  %37 = load i32, i32* @MAX_PATH, align 4
  %38 = add nsw i32 %37, 2
  %39 = call i32 @SetupGetStringFieldW(i32* %9, i32 2, i8* %21, i32 %38, i32* %16)
  %40 = call i32 @strip_quotes(i8* %21, i32* %16)
  %41 = load i32, i32* @MAX_PATH, align 4
  %42 = add nsw i32 %41, 2
  %43 = call i32 @SetupGetStringFieldW(i32* %9, i32 3, i8* %25, i32 %42, i32* %16)
  %44 = call i32 @strip_quotes(i8* %25, i32* %16)
  %45 = call i32 @lstrcmpW(i8* %29, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @get_dest_dir.hklm, i64 0, i64 0))
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %4
  %48 = load i32*, i32** @HKEY_LOCAL_MACHINE, align 8
  store i32* %48, i32** %14, align 8
  br label %56

49:                                               ; preds = %4
  %50 = call i32 @lstrcmpW(i8* %29, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @get_dest_dir.hkcu, i64 0, i64 0))
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %49
  %53 = load i32*, i32** @HKEY_CURRENT_USER, align 8
  store i32* %53, i32** %14, align 8
  br label %55

54:                                               ; preds = %49
  store i32* null, i32** %14, align 8
  br label %55

55:                                               ; preds = %54, %52
  br label %56

56:                                               ; preds = %55, %47
  %57 = load i32, i32* %8, align 4
  %58 = sext i32 %57 to i64
  %59 = mul i64 %58, 1
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %16, align 4
  %61 = load i32*, i32** %14, align 8
  %62 = call i64 @RegOpenKeyW(i32* %61, i8* %21, i32** %15)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %70, label %64

64:                                               ; preds = %56
  %65 = load i32*, i32** %15, align 8
  %66 = load i8*, i8** %7, align 8
  %67 = ptrtoint i8* %66 to i32
  %68 = call i64 @RegQueryValueExW(i32* %65, i8* %25, i32* null, i32* null, i32 %67, i32* %16)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %64, %56
  %71 = load i8*, i8** %7, align 8
  %72 = load i32, i32* %8, align 4
  %73 = call i32 @SetupGetStringFieldW(i32* %9, i32 5, i8* %71, i32 %72, i32* %16)
  %74 = load i8*, i8** %7, align 8
  %75 = call i32 @strip_quotes(i8* %74, i32* %16)
  br label %76

76:                                               ; preds = %70, %64
  %77 = load i32*, i32** %15, align 8
  %78 = icmp ne i32* %77, null
  br i1 %78, label %79, label %82

79:                                               ; preds = %76
  %80 = load i32*, i32** %15, align 8
  %81 = call i32 @RegCloseKey(i32* %80)
  br label %82

82:                                               ; preds = %79, %76
  %83 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %83)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @SetupFindFirstLineW(i32, i32, i32*, i32*) #2

declare dso_local i32 @SetupGetStringFieldW(i32*, i32, i8*, i32, i32*) #2

declare dso_local i32 @strip_quotes(i8*, i32*) #2

declare dso_local i32 @lstrcmpW(i8*, i8*) #2

declare dso_local i64 @RegOpenKeyW(i32*, i8*, i32**) #2

declare dso_local i64 @RegQueryValueExW(i32*, i8*, i32*, i32*, i32, i32*) #2

declare dso_local i32 @RegCloseKey(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
