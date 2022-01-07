; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/advpack/extr_reg.c_create_tmp_ini_file.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/advpack/extr_reg.c_create_tmp_ini_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"Can't get temp ini file path\0A\00", align 1
@REGINST = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Can't find REGINST resource\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Can't load REGINST resource\0A\00", align 1
@GENERIC_WRITE = common dso_local global i32 0, align 4
@CREATE_ALWAYS = common dso_local global i32 0, align 4
@FILE_ATTRIBUTE_NORMAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"Unable to create temp ini file\0A\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"Write failed\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*)* @create_tmp_ini_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_tmp_ini_file(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store i32* null, i32** %7, align 8
  %12 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  store i64 %12, i64* %11, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = call i32 @get_temp_ini_path(i32* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %2
  %17 = call i32 @ERR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %70

18:                                               ; preds = %2
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @REGINST, align 4
  %21 = load i32, i32* @REGINST, align 4
  %22 = call i32 @FindResourceW(i32 %19, i32 %20, i32 %21)
  store i32 %22, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %18
  %25 = call i32 @ERR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %70

26:                                               ; preds = %18
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* %6, align 4
  %29 = call i64 @SizeofResource(i32 %27, i32 %28)
  store i64 %29, i64* %8, align 8
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* %6, align 4
  %32 = call i32* @LoadResource(i32 %30, i32 %31)
  store i32* %32, i32** %7, align 8
  %33 = load i32*, i32** %7, align 8
  %34 = call i32* @LockResource(i32* %33)
  store i32* %34, i32** %10, align 8
  %35 = load i32*, i32** %10, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %26
  %38 = load i64, i64* %8, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %37, %26
  %41 = call i32 @ERR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %70

42:                                               ; preds = %37
  %43 = load i32*, i32** %5, align 8
  %44 = load i32, i32* @GENERIC_WRITE, align 4
  %45 = load i32, i32* @CREATE_ALWAYS, align 4
  %46 = load i32, i32* @FILE_ATTRIBUTE_NORMAL, align 4
  %47 = call i64 @CreateFileW(i32* %43, i32 %44, i32 0, i32* null, i32 %45, i32 %46, i32* null)
  store i64 %47, i64* %11, align 8
  %48 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %42
  %51 = call i32 @ERR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  br label %70

52:                                               ; preds = %42
  %53 = load i64, i64* %11, align 8
  %54 = load i32*, i32** %10, align 8
  %55 = load i64, i64* %8, align 8
  %56 = call i32 @WriteFile(i64 %53, i32* %54, i64 %55, i64* %9, i32* null)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %52
  %59 = load i64, i64* %8, align 8
  %60 = load i64, i64* %9, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %58, %52
  %63 = call i32 @ERR(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  br label %70

64:                                               ; preds = %58
  %65 = load i32*, i32** %7, align 8
  %66 = call i32 @FreeResource(i32* %65)
  %67 = load i64, i64* %11, align 8
  %68 = call i32 @CloseHandle(i64 %67)
  %69 = load i32, i32* @TRUE, align 4
  store i32 %69, i32* %3, align 4
  br label %85

70:                                               ; preds = %62, %50, %40, %24, %16
  %71 = load i32*, i32** %7, align 8
  %72 = icmp ne i32* %71, null
  br i1 %72, label %73, label %76

73:                                               ; preds = %70
  %74 = load i32*, i32** %7, align 8
  %75 = call i32 @FreeResource(i32* %74)
  br label %76

76:                                               ; preds = %73, %70
  %77 = load i64, i64* %11, align 8
  %78 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %79 = icmp ne i64 %77, %78
  br i1 %79, label %80, label %83

80:                                               ; preds = %76
  %81 = load i64, i64* %11, align 8
  %82 = call i32 @CloseHandle(i64 %81)
  br label %83

83:                                               ; preds = %80, %76
  %84 = load i32, i32* @FALSE, align 4
  store i32 %84, i32* %3, align 4
  br label %85

85:                                               ; preds = %83, %64
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local i32 @get_temp_ini_path(i32*) #1

declare dso_local i32 @ERR(i8*) #1

declare dso_local i32 @FindResourceW(i32, i32, i32) #1

declare dso_local i64 @SizeofResource(i32, i32) #1

declare dso_local i32* @LoadResource(i32, i32) #1

declare dso_local i32* @LockResource(i32*) #1

declare dso_local i64 @CreateFileW(i32*, i32, i32, i32*, i32, i32, i32*) #1

declare dso_local i32 @WriteFile(i64, i32*, i64, i64*, i32*) #1

declare dso_local i32 @FreeResource(i32*) #1

declare dso_local i32 @CloseHandle(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
