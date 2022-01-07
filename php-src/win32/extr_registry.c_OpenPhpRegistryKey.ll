; ModuleID = '/home/carl/AnghaBench/php-src/win32/extr_registry.c_OpenPhpRegistryKey.c'
source_filename = "/home/carl/AnghaBench/php-src/win32/extr_registry.c_OpenPhpRegistryKey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@registry_keys = common dso_local global i8** null, align 8
@HKEY_LOCAL_MACHINE = common dso_local global i32 0, align 4
@KEY_READ = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*)* @OpenPhpRegistryKey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @OpenPhpRegistryKey(i8* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %11 = load i8**, i8*** @registry_keys, align 8
  store i8** %11, i8*** %6, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %57

14:                                               ; preds = %2
  %15 = load i8*, i8** %4, align 8
  %16 = call i64 @strlen(i8* %15)
  store i64 %16, i64* %8, align 8
  br label %17

17:                                               ; preds = %53, %14
  %18 = load i8**, i8*** %6, align 8
  %19 = load i8*, i8** %18, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %56

21:                                               ; preds = %17
  %22 = load i8**, i8*** %6, align 8
  %23 = load i8*, i8** %22, align 8
  %24 = call i64 @strlen(i8* %23)
  store i64 %24, i64* %7, align 8
  %25 = load i64, i64* %7, align 8
  %26 = load i64, i64* %8, align 8
  %27 = add i64 %25, %26
  %28 = add i64 %27, 1
  %29 = call i8* @emalloc(i64 %28)
  store i8* %29, i8** %9, align 8
  %30 = load i8*, i8** %9, align 8
  %31 = load i8**, i8*** %6, align 8
  %32 = load i8*, i8** %31, align 8
  %33 = load i64, i64* %7, align 8
  %34 = call i32 @memcpy(i8* %30, i8* %32, i64 %33)
  %35 = load i8*, i8** %9, align 8
  %36 = load i64, i64* %7, align 8
  %37 = getelementptr inbounds i8, i8* %35, i64 %36
  %38 = load i8*, i8** %4, align 8
  %39 = load i64, i64* %8, align 8
  %40 = add i64 %39, 1
  %41 = call i32 @memcpy(i8* %37, i8* %38, i64 %40)
  %42 = load i32, i32* @HKEY_LOCAL_MACHINE, align 4
  %43 = load i8*, i8** %9, align 8
  %44 = load i32, i32* @KEY_READ, align 4
  %45 = load i32*, i32** %5, align 8
  %46 = call i64 @RegOpenKeyEx(i32 %42, i8* %43, i32 0, i32 %44, i32* %45)
  store i64 %46, i64* %10, align 8
  %47 = load i8*, i8** %9, align 8
  %48 = call i32 @efree(i8* %47)
  %49 = load i64, i64* %10, align 8
  %50 = load i64, i64* @ERROR_SUCCESS, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %21
  store i32 1, i32* %3, align 4
  br label %77

53:                                               ; preds = %21
  %54 = load i8**, i8*** %6, align 8
  %55 = getelementptr inbounds i8*, i8** %54, i32 1
  store i8** %55, i8*** %6, align 8
  br label %17

56:                                               ; preds = %17
  br label %76

57:                                               ; preds = %2
  br label %58

58:                                               ; preds = %72, %57
  %59 = load i8**, i8*** %6, align 8
  %60 = load i8*, i8** %59, align 8
  %61 = icmp ne i8* %60, null
  br i1 %61, label %62, label %75

62:                                               ; preds = %58
  %63 = load i32, i32* @HKEY_LOCAL_MACHINE, align 4
  %64 = load i8**, i8*** %6, align 8
  %65 = load i8*, i8** %64, align 8
  %66 = load i32, i32* @KEY_READ, align 4
  %67 = load i32*, i32** %5, align 8
  %68 = call i64 @RegOpenKeyEx(i32 %63, i8* %65, i32 0, i32 %66, i32* %67)
  %69 = load i64, i64* @ERROR_SUCCESS, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %62
  store i32 1, i32* %3, align 4
  br label %77

72:                                               ; preds = %62
  %73 = load i8**, i8*** %6, align 8
  %74 = getelementptr inbounds i8*, i8** %73, i32 1
  store i8** %74, i8*** %6, align 8
  br label %58

75:                                               ; preds = %58
  br label %76

76:                                               ; preds = %75, %56
  store i32 0, i32* %3, align 4
  br label %77

77:                                               ; preds = %76, %71, %52
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @emalloc(i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i64 @RegOpenKeyEx(i32, i8*, i32, i32, i32*) #1

declare dso_local i32 @efree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
