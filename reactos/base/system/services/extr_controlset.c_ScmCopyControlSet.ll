; ModuleID = '/home/carl/AnghaBench/reactos/base/system/services/extr_controlset.c_ScmCopyControlSet.c'
source_filename = "/home/carl/AnghaBench/reactos/base/system/services/extr_controlset.c_ScmCopyControlSet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [23 x i32] [i32 83, i32 89, i32 83, i32 84, i32 69, i32 77, i32 92, i32 67, i32 111, i32 110, i32 116, i32 114, i32 111, i32 108, i32 83, i32 101, i32 116, i32 37, i32 48, i32 51, i32 108, i32 117, i32 0], align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Source control set: %S\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Destination control set: %S\0A\00", align 1
@HKEY_LOCAL_MACHINE = common dso_local global i32 0, align 4
@KEY_READ = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i8* null, align 8
@REG_OPTION_NON_VOLATILE = common dso_local global i32 0, align 4
@KEY_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8*)* @ScmCopyControlSet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ScmCopyControlSet(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [32 x i32], align 16
  %6 = alloca [32 x i32], align 16
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32* null, i32** %7, align 8
  store i32* null, i32** %8, align 8
  %11 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 0
  %12 = load i8*, i8** %3, align 8
  %13 = call i32 @swprintf(i32* %11, i8* bitcast ([23 x i32]* @.str to i8*), i8* %12)
  %14 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 0
  %15 = call i32 @DPRINT(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32* %14)
  %16 = getelementptr inbounds [32 x i32], [32 x i32]* %6, i64 0, i64 0
  %17 = load i8*, i8** %4, align 8
  %18 = call i32 @swprintf(i32* %16, i8* bitcast ([23 x i32]* @.str to i8*), i8* %17)
  %19 = getelementptr inbounds [32 x i32], [32 x i32]* %6, i64 0, i64 0
  %20 = call i32 @DPRINT(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32* %19)
  %21 = load i32, i32* @HKEY_LOCAL_MACHINE, align 4
  %22 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 0
  %23 = load i32, i32* @KEY_READ, align 4
  %24 = call i8* @RegOpenKeyExW(i32 %21, i32* %22, i32 0, i32 %23, i32** %7)
  store i8* %24, i8** %10, align 8
  %25 = load i8*, i8** %10, align 8
  %26 = load i8*, i8** @ERROR_SUCCESS, align 8
  %27 = icmp ne i8* %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %2
  br label %50

29:                                               ; preds = %2
  %30 = load i32, i32* @HKEY_LOCAL_MACHINE, align 4
  %31 = getelementptr inbounds [32 x i32], [32 x i32]* %6, i64 0, i64 0
  %32 = load i32, i32* @REG_OPTION_NON_VOLATILE, align 4
  %33 = load i32, i32* @KEY_WRITE, align 4
  %34 = call i8* @RegCreateKeyExW(i32 %30, i32* %31, i32 0, i32* null, i32 %32, i32 %33, i32* null, i32** %8, i8** %9)
  store i8* %34, i8** %10, align 8
  %35 = load i8*, i8** %10, align 8
  %36 = load i8*, i8** @ERROR_SUCCESS, align 8
  %37 = icmp ne i8* %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %29
  br label %50

39:                                               ; preds = %29
  %40 = load i32*, i32** %7, align 8
  %41 = load i32*, i32** %8, align 8
  %42 = call i8* @ScmCopyTree(i32* %40, i32* %41)
  store i8* %42, i8** %10, align 8
  %43 = load i8*, i8** %10, align 8
  %44 = load i8*, i8** @ERROR_SUCCESS, align 8
  %45 = icmp ne i8* %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %39
  br label %50

47:                                               ; preds = %39
  %48 = load i32*, i32** %8, align 8
  %49 = call i32 @RegFlushKey(i32* %48)
  br label %50

50:                                               ; preds = %47, %46, %38, %28
  %51 = load i32*, i32** %8, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = load i32*, i32** %8, align 8
  %55 = call i32 @RegCloseKey(i32* %54)
  br label %56

56:                                               ; preds = %53, %50
  %57 = load i32*, i32** %7, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %59, label %62

59:                                               ; preds = %56
  %60 = load i32*, i32** %7, align 8
  %61 = call i32 @RegCloseKey(i32* %60)
  br label %62

62:                                               ; preds = %59, %56
  %63 = load i8*, i8** %10, align 8
  ret i8* %63
}

declare dso_local i32 @swprintf(i32*, i8*, i8*) #1

declare dso_local i32 @DPRINT(i8*, i32*) #1

declare dso_local i8* @RegOpenKeyExW(i32, i32*, i32, i32, i32**) #1

declare dso_local i8* @RegCreateKeyExW(i32, i32*, i32, i32*, i32, i32, i32*, i32**, i8**) #1

declare dso_local i8* @ScmCopyTree(i32*, i32*) #1

declare dso_local i32 @RegFlushKey(i32*) #1

declare dso_local i32 @RegCloseKey(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
