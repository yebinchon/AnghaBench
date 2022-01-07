; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/sc/extr_sdset.c_SdSet.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/sc/extr_sdset.c_SdSet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TRUE = common dso_local global i64 0, align 8
@SC_MANAGER_CONNECT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"[SC] OpenSCManager FAILED %lu:\0A\0A\00", align 1
@FALSE = common dso_local global i64 0, align 8
@WRITE_DAC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"[SC] OpenService FAILED %lu:\0A\0A\00", align 1
@SDDL_REVISION_1 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [71 x i8] c"[SC] ConvertStringSecurityDescriptorToSecurityDescriptor FAILED %lu:\0A\0A\00", align 1
@DACL_SECURITY_INFORMATION = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [44 x i8] c"[SC] SetServiceObjectSecurity FAILED %lu:\0A\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @SdSet(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i32* null, i32** %5, align 8
  store i32* null, i32** %6, align 8
  %10 = load i64, i64* @TRUE, align 8
  store i64 %10, i64* %7, align 8
  store i32 0, i32* %8, align 4
  store i32* null, i32** %9, align 8
  %11 = load i32, i32* @SC_MANAGER_CONNECT, align 4
  %12 = call i32* @OpenSCManager(i32* null, i32* null, i32 %11)
  store i32* %12, i32** %5, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %2
  %16 = call i32 @_T(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %17 = call i32 (...) @GetLastError()
  %18 = call i32 @_tprintf(i32 %16, i32 %17)
  %19 = load i64, i64* @FALSE, align 8
  store i64 %19, i64* %7, align 8
  br label %54

20:                                               ; preds = %2
  %21 = load i32*, i32** %5, align 8
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* @WRITE_DAC, align 4
  %24 = call i32* @OpenService(i32* %21, i32 %22, i32 %23)
  store i32* %24, i32** %6, align 8
  %25 = load i32*, i32** %6, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %32

27:                                               ; preds = %20
  %28 = call i32 @_T(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %29 = call i32 (...) @GetLastError()
  %30 = call i32 @_tprintf(i32 %28, i32 %29)
  %31 = load i64, i64* @FALSE, align 8
  store i64 %31, i64* %7, align 8
  br label %54

32:                                               ; preds = %20
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @SDDL_REVISION_1, align 4
  %35 = call i32 @ConvertStringSecurityDescriptorToSecurityDescriptor(i32 %33, i32 %34, i32** %9, i32* %8)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %32
  %38 = call i32 @_T(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.2, i64 0, i64 0))
  %39 = call i32 (...) @GetLastError()
  %40 = call i32 @_tprintf(i32 %38, i32 %39)
  %41 = load i64, i64* @FALSE, align 8
  store i64 %41, i64* %7, align 8
  br label %54

42:                                               ; preds = %32
  %43 = load i32*, i32** %6, align 8
  %44 = load i32, i32* @DACL_SECURITY_INFORMATION, align 4
  %45 = load i32*, i32** %9, align 8
  %46 = call i32 @SetServiceObjectSecurity(i32* %43, i32 %44, i32* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %53, label %48

48:                                               ; preds = %42
  %49 = call i32 @_T(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0))
  %50 = call i32 (...) @GetLastError()
  %51 = call i32 @_tprintf(i32 %49, i32 %50)
  %52 = load i64, i64* @FALSE, align 8
  store i64 %52, i64* %7, align 8
  br label %54

53:                                               ; preds = %42
  br label %54

54:                                               ; preds = %53, %48, %37, %27, %15
  %55 = load i64, i64* %7, align 8
  %56 = load i64, i64* @FALSE, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %54
  %59 = call i32 (...) @ReportLastError()
  br label %60

60:                                               ; preds = %58, %54
  %61 = load i32*, i32** %9, align 8
  %62 = icmp ne i32* %61, null
  br i1 %62, label %63, label %66

63:                                               ; preds = %60
  %64 = load i32*, i32** %9, align 8
  %65 = call i32 @LocalFree(i32* %64)
  br label %66

66:                                               ; preds = %63, %60
  %67 = load i32*, i32** %6, align 8
  %68 = icmp ne i32* %67, null
  br i1 %68, label %69, label %72

69:                                               ; preds = %66
  %70 = load i32*, i32** %6, align 8
  %71 = call i32 @CloseServiceHandle(i32* %70)
  br label %72

72:                                               ; preds = %69, %66
  %73 = load i32*, i32** %5, align 8
  %74 = icmp ne i32* %73, null
  br i1 %74, label %75, label %78

75:                                               ; preds = %72
  %76 = load i32*, i32** %5, align 8
  %77 = call i32 @CloseServiceHandle(i32* %76)
  br label %78

78:                                               ; preds = %75, %72
  %79 = load i64, i64* %7, align 8
  ret i64 %79
}

declare dso_local i32* @OpenSCManager(i32*, i32*, i32) #1

declare dso_local i32 @_tprintf(i32, i32) #1

declare dso_local i32 @_T(i8*) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32* @OpenService(i32*, i32, i32) #1

declare dso_local i32 @ConvertStringSecurityDescriptorToSecurityDescriptor(i32, i32, i32**, i32*) #1

declare dso_local i32 @SetServiceObjectSecurity(i32*, i32, i32*) #1

declare dso_local i32 @ReportLastError(...) #1

declare dso_local i32 @LocalFree(i32*) #1

declare dso_local i32 @CloseServiceHandle(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
