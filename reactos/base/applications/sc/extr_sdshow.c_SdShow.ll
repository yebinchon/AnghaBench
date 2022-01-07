; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/sc/extr_sdshow.c_SdShow.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/sc/extr_sdshow.c_SdShow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TRUE = common dso_local global i64 0, align 8
@SC_MANAGER_CONNECT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"[SC] OpenSCManager FAILED %lu:\0A\0A\00", align 1
@FALSE = common dso_local global i64 0, align 8
@READ_CONTROL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"[SC] OpenService FAILED %lu:\0A\0A\00", align 1
@DACL_SECURITY_INFORMATION = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"[SC] QueryServiceObjectSecurity FAILED %lu:\0A\0A\00", align 1
@ERROR_OUTOFMEMORY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"[SC] HeapAlloc FAILED %lu:\0A\0A\00", align 1
@SDDL_REVISION_1 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [71 x i8] c"[SC] ConvertSecurityDescriptorToStringSecurityDescriptor FAILED %lu:\0A\0A\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"\0A%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @SdShow(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  store i32* null, i32** %3, align 8
  store i32* null, i32** %4, align 8
  %9 = load i64, i64* @TRUE, align 8
  store i64 %9, i64* %5, align 8
  store i32 0, i32* %6, align 4
  store i32* null, i32** %7, align 8
  store i32* null, i32** %8, align 8
  %10 = load i32, i32* @SC_MANAGER_CONNECT, align 4
  %11 = call i32* @OpenSCManager(i32* null, i32* null, i32 %10)
  store i32* %11, i32** %3, align 8
  %12 = load i32*, i32** %3, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %1
  %15 = call i32 @_T(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %16 = call i32* (...) @GetLastError()
  %17 = call i32 @_tprintf(i32 %15, i32* %16)
  %18 = load i64, i64* @FALSE, align 8
  store i64 %18, i64* %5, align 8
  br label %86

19:                                               ; preds = %1
  %20 = load i32*, i32** %3, align 8
  %21 = load i32*, i32** %2, align 8
  %22 = load i32, i32* @READ_CONTROL, align 4
  %23 = call i32* @OpenService(i32* %20, i32* %21, i32 %22)
  store i32* %23, i32** %4, align 8
  %24 = load i32*, i32** %4, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %31

26:                                               ; preds = %19
  %27 = call i32 @_T(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %28 = call i32* (...) @GetLastError()
  %29 = call i32 @_tprintf(i32 %27, i32* %28)
  %30 = load i64, i64* @FALSE, align 8
  store i64 %30, i64* %5, align 8
  br label %86

31:                                               ; preds = %19
  %32 = load i32*, i32** %4, align 8
  %33 = load i32, i32* @DACL_SECURITY_INFORMATION, align 4
  %34 = bitcast i32** %7 to i32*
  %35 = call i32 @QueryServiceObjectSecurity(i32* %32, i32 %33, i32* %34, i32 8, i32* %6)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %46, label %37

37:                                               ; preds = %31
  %38 = load i32, i32* %6, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %37
  %41 = call i32 @_T(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0))
  %42 = call i32* (...) @GetLastError()
  %43 = call i32 @_tprintf(i32 %41, i32* %42)
  %44 = load i64, i64* @FALSE, align 8
  store i64 %44, i64* %5, align 8
  br label %86

45:                                               ; preds = %37
  br label %46

46:                                               ; preds = %45, %31
  %47 = call i32 (...) @GetProcessHeap()
  %48 = load i32, i32* %6, align 4
  %49 = call i32* @HeapAlloc(i32 %47, i32 0, i32 %48)
  store i32* %49, i32** %7, align 8
  %50 = load i32*, i32** %7, align 8
  %51 = icmp eq i32* %50, null
  br i1 %51, label %52, label %59

52:                                               ; preds = %46
  %53 = load i32, i32* @ERROR_OUTOFMEMORY, align 4
  %54 = call i32 @SetLastError(i32 %53)
  %55 = call i32 @_T(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %56 = call i32* (...) @GetLastError()
  %57 = call i32 @_tprintf(i32 %55, i32* %56)
  %58 = load i64, i64* @FALSE, align 8
  store i64 %58, i64* %5, align 8
  br label %86

59:                                               ; preds = %46
  %60 = load i32*, i32** %4, align 8
  %61 = load i32, i32* @DACL_SECURITY_INFORMATION, align 4
  %62 = load i32*, i32** %7, align 8
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @QueryServiceObjectSecurity(i32* %60, i32 %61, i32* %62, i32 %63, i32* %6)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %71, label %66

66:                                               ; preds = %59
  %67 = call i32 @_T(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0))
  %68 = call i32* (...) @GetLastError()
  %69 = call i32 @_tprintf(i32 %67, i32* %68)
  %70 = load i64, i64* @FALSE, align 8
  store i64 %70, i64* %5, align 8
  br label %86

71:                                               ; preds = %59
  %72 = load i32*, i32** %7, align 8
  %73 = load i32, i32* @SDDL_REVISION_1, align 4
  %74 = load i32, i32* @DACL_SECURITY_INFORMATION, align 4
  %75 = call i32 @ConvertSecurityDescriptorToStringSecurityDescriptor(i32* %72, i32 %73, i32 %74, i32** %8, i32* null)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %82, label %77

77:                                               ; preds = %71
  %78 = call i32 @_T(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.4, i64 0, i64 0))
  %79 = call i32* (...) @GetLastError()
  %80 = call i32 @_tprintf(i32 %78, i32* %79)
  %81 = load i64, i64* @FALSE, align 8
  store i64 %81, i64* %5, align 8
  br label %86

82:                                               ; preds = %71
  %83 = call i32 @_T(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %84 = load i32*, i32** %8, align 8
  %85 = call i32 @_tprintf(i32 %83, i32* %84)
  br label %86

86:                                               ; preds = %82, %77, %66, %52, %40, %26, %14
  %87 = load i64, i64* %5, align 8
  %88 = load i64, i64* @FALSE, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %92

90:                                               ; preds = %86
  %91 = call i32 (...) @ReportLastError()
  br label %92

92:                                               ; preds = %90, %86
  %93 = load i32*, i32** %8, align 8
  %94 = icmp ne i32* %93, null
  br i1 %94, label %95, label %98

95:                                               ; preds = %92
  %96 = load i32*, i32** %8, align 8
  %97 = call i32 @LocalFree(i32* %96)
  br label %98

98:                                               ; preds = %95, %92
  %99 = load i32*, i32** %7, align 8
  %100 = icmp ne i32* %99, null
  br i1 %100, label %101, label %105

101:                                              ; preds = %98
  %102 = call i32 (...) @GetProcessHeap()
  %103 = load i32*, i32** %7, align 8
  %104 = call i32 @HeapFree(i32 %102, i32 0, i32* %103)
  br label %105

105:                                              ; preds = %101, %98
  %106 = load i32*, i32** %4, align 8
  %107 = icmp ne i32* %106, null
  br i1 %107, label %108, label %111

108:                                              ; preds = %105
  %109 = load i32*, i32** %4, align 8
  %110 = call i32 @CloseServiceHandle(i32* %109)
  br label %111

111:                                              ; preds = %108, %105
  %112 = load i32*, i32** %3, align 8
  %113 = icmp ne i32* %112, null
  br i1 %113, label %114, label %117

114:                                              ; preds = %111
  %115 = load i32*, i32** %3, align 8
  %116 = call i32 @CloseServiceHandle(i32* %115)
  br label %117

117:                                              ; preds = %114, %111
  %118 = load i64, i64* %5, align 8
  ret i64 %118
}

declare dso_local i32* @OpenSCManager(i32*, i32*, i32) #1

declare dso_local i32 @_tprintf(i32, i32*) #1

declare dso_local i32 @_T(i8*) #1

declare dso_local i32* @GetLastError(...) #1

declare dso_local i32* @OpenService(i32*, i32*, i32) #1

declare dso_local i32 @QueryServiceObjectSecurity(i32*, i32, i32*, i32, i32*) #1

declare dso_local i32* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i32 @ConvertSecurityDescriptorToStringSecurityDescriptor(i32*, i32, i32, i32**, i32*) #1

declare dso_local i32 @ReportLastError(...) #1

declare dso_local i32 @LocalFree(i32*) #1

declare dso_local i32 @HeapFree(i32, i32, i32*) #1

declare dso_local i32 @CloseServiceHandle(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
