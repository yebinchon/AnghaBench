; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pgevent/extr_pgevent.c_DllRegisterServer.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pgevent/extr_pgevent.c_DllRegisterServer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_MAX_PATH = common dso_local global i32 0, align 4
@g_module = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"Could not retrieve DLL filename\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"PostgreSQL error\00", align 1
@MB_OK = common dso_local global i32 0, align 4
@MB_ICONSTOP = common dso_local global i32 0, align 4
@SELFREG_E_TYPELIB = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [58 x i8] c"SYSTEM\\CurrentControlSet\\Services\\EventLog\\Application\\%s\00", align 1
@event_source = common dso_local global i32 0, align 4
@HKEY_LOCAL_MACHINE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"Could not create the registry key.\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"EventMessageFile\00", align 1
@REG_EXPAND_SZ = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [38 x i8] c"Could not set the event message file.\00", align 1
@EVENTLOG_ERROR_TYPE = common dso_local global i32 0, align 4
@EVENTLOG_WARNING_TYPE = common dso_local global i32 0, align 4
@EVENTLOG_INFORMATION_TYPE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [15 x i8] c"TypesSupported\00", align 1
@REG_DWORD = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [35 x i8] c"Could not set the supported types.\00", align 1
@S_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @DllRegisterServer() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca [400 x i8], align 16
  %7 = alloca i32, align 4
  %8 = load i32, i32* @_MAX_PATH, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %4, align 8
  %11 = alloca i8, i64 %9, align 16
  store i64 %9, i64* %5, align 8
  %12 = load i64, i64* @g_module, align 8
  %13 = trunc i64 %12 to i32
  %14 = trunc i64 %9 to i32
  %15 = call i32 @GetModuleFileName(i32 %13, i8* %11, i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %0
  %18 = load i32, i32* @MB_OK, align 4
  %19 = load i32, i32* @MB_ICONSTOP, align 4
  %20 = or i32 %18, %19
  %21 = call i32 @MessageBox(i32* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %20)
  %22 = load i32, i32* @SELFREG_E_TYPELIB, align 4
  store i32 %22, i32* %1, align 4
  store i32 1, i32* %7, align 4
  br label %72

23:                                               ; preds = %0
  %24 = getelementptr inbounds [400 x i8], [400 x i8]* %6, i64 0, i64 0
  %25 = load i32, i32* @event_source, align 4
  %26 = call i32 @_snprintf(i8* %24, i32 400, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* @HKEY_LOCAL_MACHINE, align 4
  %28 = getelementptr inbounds [400 x i8], [400 x i8]* %6, i64 0, i64 0
  %29 = call i64 @RegCreateKey(i32 %27, i8* %28, i32* %2)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %23
  %32 = load i32, i32* @MB_OK, align 4
  %33 = load i32, i32* @MB_ICONSTOP, align 4
  %34 = or i32 %32, %33
  %35 = call i32 @MessageBox(i32* null, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  %36 = load i32, i32* @SELFREG_E_TYPELIB, align 4
  store i32 %36, i32* %1, align 4
  store i32 1, i32* %7, align 4
  br label %72

37:                                               ; preds = %23
  %38 = load i32, i32* %2, align 4
  %39 = load i32, i32* @REG_EXPAND_SZ, align 4
  %40 = ptrtoint i8* %11 to i32
  %41 = call i32 @strlen(i8* %11)
  %42 = add nsw i32 %41, 1
  %43 = call i64 @RegSetValueEx(i32 %38, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 0, i32 %39, i32 %40, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %37
  %46 = load i32, i32* @MB_OK, align 4
  %47 = load i32, i32* @MB_ICONSTOP, align 4
  %48 = or i32 %46, %47
  %49 = call i32 @MessageBox(i32* null, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* @SELFREG_E_TYPELIB, align 4
  store i32 %50, i32* %1, align 4
  store i32 1, i32* %7, align 4
  br label %72

51:                                               ; preds = %37
  %52 = load i32, i32* @EVENTLOG_ERROR_TYPE, align 4
  %53 = load i32, i32* @EVENTLOG_WARNING_TYPE, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @EVENTLOG_INFORMATION_TYPE, align 4
  %56 = or i32 %54, %55
  store i32 %56, i32* %3, align 4
  %57 = load i32, i32* %2, align 4
  %58 = load i32, i32* @REG_DWORD, align 4
  %59 = ptrtoint i32* %3 to i32
  %60 = call i64 @RegSetValueEx(i32 %57, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32 0, i32 %58, i32 %59, i32 4)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %51
  %63 = load i32, i32* @MB_OK, align 4
  %64 = load i32, i32* @MB_ICONSTOP, align 4
  %65 = or i32 %63, %64
  %66 = call i32 @MessageBox(i32* null, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %65)
  %67 = load i32, i32* @SELFREG_E_TYPELIB, align 4
  store i32 %67, i32* %1, align 4
  store i32 1, i32* %7, align 4
  br label %72

68:                                               ; preds = %51
  %69 = load i32, i32* %2, align 4
  %70 = call i32 @RegCloseKey(i32 %69)
  %71 = load i32, i32* @S_OK, align 4
  store i32 %71, i32* %1, align 4
  store i32 1, i32* %7, align 4
  br label %72

72:                                               ; preds = %68, %62, %45, %31, %17
  %73 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %73)
  %74 = load i32, i32* %1, align 4
  ret i32 %74
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @GetModuleFileName(i32, i8*, i32) #2

declare dso_local i32 @MessageBox(i32*, i8*, i8*, i32) #2

declare dso_local i32 @_snprintf(i8*, i32, i8*, i32) #2

declare dso_local i64 @RegCreateKey(i32, i8*, i32*) #2

declare dso_local i64 @RegSetValueEx(i32, i8*, i32, i32, i32, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @RegCloseKey(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
