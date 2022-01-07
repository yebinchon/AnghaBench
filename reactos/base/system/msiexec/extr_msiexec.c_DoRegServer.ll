; ModuleID = '/home/carl/AnghaBench/reactos/base/system/msiexec/extr_msiexec.c_DoRegServer.c'
source_filename = "/home/carl/AnghaBench/reactos/base/system/msiexec/extr_msiexec.c_DoRegServer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DoRegServer.msiserverW = internal constant [10 x i8] c"MSIServer\00", align 1
@DoRegServer.msiexecW = internal constant [12 x i8] c"\\msiexec /V\00", align 1
@MAX_PATH = common dso_local global i32 0, align 4
@SERVICES_ACTIVE_DATABASEW = common dso_local global i32 0, align 4
@SC_MANAGER_CREATE_SERVICE = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Failed to open the service control manager.\0A\00", align 1
@GENERIC_ALL = common dso_local global i32 0, align 4
@SERVICE_WIN32_SHARE_PROCESS = common dso_local global i32 0, align 4
@SERVICE_DEMAND_START = common dso_local global i32 0, align 4
@SERVICE_ERROR_NORMAL = common dso_local global i32 0, align 4
@ERROR_SERVICE_EXISTS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"Failed to create MSI service\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @DoRegServer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @DoRegServer() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = load i32, i32* @MAX_PATH, align 4
  %10 = add nsw i32 %9, 12
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %4, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %5, align 8
  store i32 0, i32* %7, align 4
  %14 = load i32, i32* @SERVICES_ACTIVE_DATABASEW, align 4
  %15 = load i32, i32* @SC_MANAGER_CREATE_SERVICE, align 4
  %16 = call i32 @OpenSCManagerW(i32* null, i32 %14, i32 %15)
  store i32 %16, i32* %2, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %0
  %19 = load i32, i32* @stderr, align 4
  %20 = call i32 @fprintf(i32 %19, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %1, align 4
  store i32 1, i32* %8, align 4
  br label %50

21:                                               ; preds = %0
  %22 = load i32, i32* @MAX_PATH, align 4
  %23 = call i32 @GetSystemDirectoryW(i8* %13, i32 %22)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8, i8* %13, i64 %25
  %27 = call i32 @lstrcpyW(i8* %26, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @DoRegServer.msiexecW, i64 0, i64 0))
  %28 = load i32, i32* %2, align 4
  %29 = load i32, i32* @GENERIC_ALL, align 4
  %30 = load i32, i32* @SERVICE_WIN32_SHARE_PROCESS, align 4
  %31 = load i32, i32* @SERVICE_DEMAND_START, align 4
  %32 = load i32, i32* @SERVICE_ERROR_NORMAL, align 4
  %33 = call i32 @CreateServiceW(i32 %28, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @DoRegServer.msiserverW, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @DoRegServer.msiserverW, i64 0, i64 0), i32 %29, i32 %30, i32 %31, i32 %32, i8* %13, i32* null, i32* null, i32* null, i32* null, i32* null)
  store i32 %33, i32* %3, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %21
  %36 = load i32, i32* %3, align 4
  %37 = call i32 @CloseServiceHandle(i32 %36)
  br label %46

38:                                               ; preds = %21
  %39 = call i64 (...) @GetLastError()
  %40 = load i64, i64* @ERROR_SERVICE_EXISTS, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %38
  %43 = load i32, i32* @stderr, align 4
  %44 = call i32 @fprintf(i32 %43, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %7, align 4
  br label %45

45:                                               ; preds = %42, %38
  br label %46

46:                                               ; preds = %45, %35
  %47 = load i32, i32* %2, align 4
  %48 = call i32 @CloseServiceHandle(i32 %47)
  %49 = load i32, i32* %7, align 4
  store i32 %49, i32* %1, align 4
  store i32 1, i32* %8, align 4
  br label %50

50:                                               ; preds = %46, %18
  %51 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %51)
  %52 = load i32, i32* %1, align 4
  ret i32 %52
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @OpenSCManagerW(i32*, i32, i32) #2

declare dso_local i32 @fprintf(i32, i8*) #2

declare dso_local i32 @GetSystemDirectoryW(i8*, i32) #2

declare dso_local i32 @lstrcpyW(i8*, i8*) #2

declare dso_local i32 @CreateServiceW(i32, i8*, i8*, i32, i32, i32, i32, i8*, i32*, i32*, i32*, i32*, i32*) #2

declare dso_local i32 @CloseServiceHandle(i32) #2

declare dso_local i64 @GetLastError(...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
