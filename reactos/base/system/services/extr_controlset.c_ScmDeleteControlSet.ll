; ModuleID = '/home/carl/AnghaBench/reactos/base/system/services/extr_controlset.c_ScmDeleteControlSet.c'
source_filename = "/home/carl/AnghaBench/reactos/base/system/services/extr_controlset.c_ScmDeleteControlSet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [25 x i8] c"ScmDeleteControSet(%lu)\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i32] [i32 83, i32 89, i32 83, i32 84, i32 69, i32 77, i32 92, i32 67, i32 111, i32 110, i32 116, i32 114, i32 111, i32 108, i32 83, i32 101, i32 116, i32 37, i32 48, i32 51, i32 108, i32 117, i32 0], align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"Control set: %S\0A\00", align 1
@HKEY_LOCAL_MACHINE = common dso_local global i32 0, align 4
@DELETE = common dso_local global i32 0, align 4
@KEY_ENUMERATE_SUB_KEYS = common dso_local global i32 0, align 4
@KEY_QUERY_VALUE = common dso_local global i32 0, align 4
@KEY_SET_VALUE = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @ScmDeleteControlSet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ScmDeleteControlSet(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca [32 x i8], align 16
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i32* null, i32** %5, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = call i32 @DPRINT(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %7)
  %9 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  %10 = load i8*, i8** %3, align 8
  %11 = call i32 @swprintf(i8* %9, i8* bitcast ([23 x i32]* @.str.1 to i8*), i8* %10)
  %12 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  %13 = call i32 @DPRINT(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i8* %12)
  %14 = load i32, i32* @HKEY_LOCAL_MACHINE, align 4
  %15 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  %16 = load i32, i32* @DELETE, align 4
  %17 = load i32, i32* @KEY_ENUMERATE_SUB_KEYS, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @KEY_QUERY_VALUE, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @KEY_SET_VALUE, align 4
  %22 = or i32 %20, %21
  %23 = call i8* @RegOpenKeyExW(i32 %14, i8* %15, i32 0, i32 %22, i32** %5)
  store i8* %23, i8** %6, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = load i8*, i8** @ERROR_SUCCESS, align 8
  %26 = icmp ne i8* %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %1
  %28 = load i8*, i8** %6, align 8
  store i8* %28, i8** %2, align 8
  br label %35

29:                                               ; preds = %1
  %30 = load i32*, i32** %5, align 8
  %31 = call i8* @ScmDeleteTree(i32* %30, i32* null)
  store i8* %31, i8** %6, align 8
  %32 = load i32*, i32** %5, align 8
  %33 = call i32 @RegCloseKey(i32* %32)
  %34 = load i8*, i8** %6, align 8
  store i8* %34, i8** %2, align 8
  br label %35

35:                                               ; preds = %29, %27
  %36 = load i8*, i8** %2, align 8
  ret i8* %36
}

declare dso_local i32 @DPRINT(i8*, i8*) #1

declare dso_local i32 @swprintf(i8*, i8*, i8*) #1

declare dso_local i8* @RegOpenKeyExW(i32, i8*, i32, i32, i32**) #1

declare dso_local i8* @ScmDeleteTree(i32*, i32*) #1

declare dso_local i32 @RegCloseKey(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
