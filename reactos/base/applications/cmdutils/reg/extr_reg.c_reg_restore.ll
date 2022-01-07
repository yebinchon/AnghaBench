; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/cmdutils/reg/extr_reg.c_reg_restore.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/cmdutils/reg/extr_reg.c_reg_restore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KEY_READ = common dso_local global i32 0, align 4
@STRING_INVALID_KEY = common dso_local global i32 0, align 4
@SE_BACKUP_NAME = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@SE_RESTORE_NAME = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@STRING_INVALID_SYNTAX = common dso_local global i32 0, align 4
@STRING_FUNC_HELP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32**)* @reg_restore to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reg_restore(i32 %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i32** %1, i32*** %5, align 8
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 4
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %57

14:                                               ; preds = %2
  %15 = load i32**, i32*** %5, align 8
  %16 = getelementptr inbounds i32*, i32** %15, i64 2
  %17 = load i32*, i32** %16, align 8
  %18 = call i32 @parse_registry_key(i32* %17, i32* %6, i32** %9, i32** %10)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %14
  store i32 1, i32* %3, align 4
  br label %66

21:                                               ; preds = %14
  %22 = load i32, i32* %6, align 4
  %23 = load i32*, i32** %9, align 8
  %24 = load i32, i32* @KEY_READ, align 4
  %25 = call i64 @RegOpenKeyExW(i32 %22, i32* %23, i32 0, i32 %24, i32* %7)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = load i32, i32* @STRING_INVALID_KEY, align 4
  %29 = call i32 (i32, ...) @output_message(i32 %28)
  store i32 1, i32* %3, align 4
  br label %66

30:                                               ; preds = %21
  %31 = load i32, i32* @SE_BACKUP_NAME, align 4
  %32 = load i32, i32* @TRUE, align 4
  %33 = call i32 @set_privilege(i32 %31, i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %30
  store i32 1, i32* %3, align 4
  br label %66

36:                                               ; preds = %30
  %37 = load i32, i32* @SE_RESTORE_NAME, align 4
  %38 = load i32, i32* @TRUE, align 4
  %39 = call i32 @set_privilege(i32 %37, i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %36
  store i32 1, i32* %3, align 4
  br label %66

42:                                               ; preds = %36
  %43 = load i32, i32* %7, align 4
  %44 = load i32**, i32*** %5, align 8
  %45 = getelementptr inbounds i32*, i32** %44, i64 3
  %46 = load i32*, i32** %45, align 8
  %47 = call i64 @RegRestoreKeyW(i32 %43, i32* %46, i32 0)
  store i64 %47, i64* %8, align 8
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @RegCloseKey(i32 %48)
  %50 = load i64, i64* %8, align 8
  %51 = load i64, i64* @ERROR_SUCCESS, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %42
  %54 = load i64, i64* %8, align 8
  %55 = call i32 @output_error(i64 %54)
  store i32 1, i32* %3, align 4
  br label %66

56:                                               ; preds = %42
  store i32 0, i32* %3, align 4
  br label %66

57:                                               ; preds = %13
  %58 = load i32, i32* @STRING_INVALID_SYNTAX, align 4
  %59 = call i32 (i32, ...) @output_message(i32 %58)
  %60 = load i32, i32* @STRING_FUNC_HELP, align 4
  %61 = load i32**, i32*** %5, align 8
  %62 = getelementptr inbounds i32*, i32** %61, i64 1
  %63 = load i32*, i32** %62, align 8
  %64 = call i32 @struprW(i32* %63)
  %65 = call i32 (i32, ...) @output_message(i32 %60, i32 %64)
  store i32 1, i32* %3, align 4
  br label %66

66:                                               ; preds = %57, %56, %53, %41, %35, %27, %20
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i32 @parse_registry_key(i32*, i32*, i32**, i32**) #1

declare dso_local i64 @RegOpenKeyExW(i32, i32*, i32, i32, i32*) #1

declare dso_local i32 @output_message(i32, ...) #1

declare dso_local i32 @set_privilege(i32, i32) #1

declare dso_local i64 @RegRestoreKeyW(i32, i32*, i32) #1

declare dso_local i32 @RegCloseKey(i32) #1

declare dso_local i32 @output_error(i64) #1

declare dso_local i32 @struprW(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
