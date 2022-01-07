; ModuleID = '/home/carl/AnghaBench/reactos/dll/cpl/appwiz/extr_addons.c_install_from_registered_dir.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/cpl/appwiz/extr_addons.c_install_from_registered_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8* }

@MAX_PATH = common dso_local global i64 0, align 8
@HKEY_CURRENT_USER = common dso_local global i32 0, align 4
@mshtml_keyA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"GeckoCabDir\00", align 1
@RRF_RT_ANY = common dso_local global i32 0, align 4
@ERROR_MORE_DATA = common dso_local global i64 0, align 8
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@REG_SZ = common dso_local global i64 0, align 8
@REG_EXPAND_SZ = common dso_local global i64 0, align 8
@INSTALL_FAILED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"Trying %s/%s\0A\00", align 1
@addon = common dso_local global %struct.TYPE_2__* null, align 8
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @install_from_registered_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @install_from_registered_dir() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = load i64, i64* @MAX_PATH, align 8
  store i64 %8, i64* %5, align 8
  %9 = load i64, i64* %5, align 8
  %10 = add i64 %9, 8
  %11 = call i8* @heap_alloc(i64 %10)
  store i8* %11, i8** %2, align 8
  %12 = load i32, i32* @HKEY_CURRENT_USER, align 4
  %13 = load i32, i32* @mshtml_keyA, align 4
  %14 = load i32, i32* @RRF_RT_ANY, align 4
  %15 = load i8*, i8** %2, align 8
  %16 = ptrtoint i8* %15 to i32
  %17 = call i64 @RegGetValueA(i32 %12, i32 %13, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %14, i64* %4, i32 %16, i64* %5)
  store i64 %17, i64* %3, align 8
  %18 = load i64, i64* %3, align 8
  %19 = load i64, i64* @ERROR_MORE_DATA, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %32

21:                                               ; preds = %0
  %22 = load i8*, i8** %2, align 8
  %23 = load i64, i64* %5, align 8
  %24 = add i64 %23, 8
  %25 = call i8* @heap_realloc(i8* %22, i64 %24)
  store i8* %25, i8** %2, align 8
  %26 = load i32, i32* @HKEY_CURRENT_USER, align 4
  %27 = load i32, i32* @mshtml_keyA, align 4
  %28 = load i32, i32* @RRF_RT_ANY, align 4
  %29 = load i8*, i8** %2, align 8
  %30 = ptrtoint i8* %29 to i32
  %31 = call i64 @RegGetValueA(i32 %26, i32 %27, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %28, i64* %4, i32 %30, i64* %5)
  store i64 %31, i64* %3, align 8
  br label %32

32:                                               ; preds = %21, %0
  %33 = load i64, i64* %3, align 8
  %34 = load i64, i64* @ERROR_SUCCESS, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %44, label %36

36:                                               ; preds = %32
  %37 = load i64, i64* %4, align 8
  %38 = load i64, i64* @REG_SZ, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %48

40:                                               ; preds = %36
  %41 = load i64, i64* %4, align 8
  %42 = load i64, i64* @REG_EXPAND_SZ, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %40, %32
  %45 = load i8*, i8** %2, align 8
  %46 = call i32 @heap_free(i8* %45)
  %47 = load i32, i32* @INSTALL_FAILED, align 4
  store i32 %47, i32* %1, align 4
  br label %85

48:                                               ; preds = %40, %36
  %49 = load i64, i64* %4, align 8
  %50 = load i64, i64* @REG_EXPAND_SZ, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %69

52:                                               ; preds = %48
  %53 = load i8*, i8** %2, align 8
  %54 = call i64 @ExpandEnvironmentStringsA(i8* %53, i8* null, i64 0)
  store i64 %54, i64* %5, align 8
  %55 = load i64, i64* %5, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %68

57:                                               ; preds = %52
  %58 = load i64, i64* %5, align 8
  %59 = add i64 %58, 8
  %60 = call i8* @heap_alloc(i64 %59)
  store i8* %60, i8** %7, align 8
  %61 = load i8*, i8** %2, align 8
  %62 = load i8*, i8** %7, align 8
  %63 = load i64, i64* %5, align 8
  %64 = call i64 @ExpandEnvironmentStringsA(i8* %61, i8* %62, i64 %63)
  %65 = load i8*, i8** %2, align 8
  %66 = call i32 @heap_free(i8* %65)
  %67 = load i8*, i8** %7, align 8
  store i8* %67, i8** %2, align 8
  br label %68

68:                                               ; preds = %57, %52
  br label %69

69:                                               ; preds = %68, %48
  %70 = load i8*, i8** %2, align 8
  %71 = call i32 @debugstr_a(i8* %70)
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** @addon, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i8*, i8** %73, align 8
  %75 = call i32 @debugstr_a(i8* %74)
  %76 = call i32 @TRACE(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %71, i32 %75)
  %77 = load i8*, i8** %2, align 8
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** @addon, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i8*, i8** %79, align 8
  %81 = call i32 @install_from_unix_file(i8* %77, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8* %80)
  store i32 %81, i32* %6, align 4
  %82 = load i8*, i8** %2, align 8
  %83 = call i32 @heap_free(i8* %82)
  %84 = load i32, i32* %6, align 4
  store i32 %84, i32* %1, align 4
  br label %85

85:                                               ; preds = %69, %44
  %86 = load i32, i32* %1, align 4
  ret i32 %86
}

declare dso_local i8* @heap_alloc(i64) #1

declare dso_local i64 @RegGetValueA(i32, i32, i8*, i32, i64*, i32, i64*) #1

declare dso_local i8* @heap_realloc(i8*, i64) #1

declare dso_local i32 @heap_free(i8*) #1

declare dso_local i64 @ExpandEnvironmentStringsA(i8*, i8*, i64) #1

declare dso_local i32 @TRACE(i8*, i32, i32) #1

declare dso_local i32 @debugstr_a(i8*) #1

declare dso_local i32 @install_from_unix_file(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
