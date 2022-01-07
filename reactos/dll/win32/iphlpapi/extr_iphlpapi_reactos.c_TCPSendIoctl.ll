; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/iphlpapi/extr_iphlpapi_reactos.c_TCPSendIoctl.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/iphlpapi/extr_iphlpapi_reactos.c_TCPSendIoctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64 }

@FALSE = common dso_local global i64 0, align 8
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [11 x i32] [i32 92, i32 68, i32 101, i32 118, i32 105, i32 99, i32 101, i32 92, i32 73, i32 112, i32 0], align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Using the handle hack\0A\00", align 1
@TRUE = common dso_local global i64 0, align 8
@OBJ_CASE_INSENSITIVE = common dso_local global i32 0, align 4
@GENERIC_EXECUTE = common dso_local global i32 0, align 4
@FILE_ATTRIBUTE_NORMAL = common dso_local global i32 0, align 4
@FILE_SHARE_READ = common dso_local global i32 0, align 4
@FILE_SHARE_WRITE = common dso_local global i32 0, align 4
@FILE_OPEN_IF = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i64 0, align 8
@STATUS_PENDING = common dso_local global i64 0, align 8
@ERROR_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @TCPSendIoctl(i64 %0, i32 %1, i32 %2, i64* %3, i32 %4, i64* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_4__, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i64 %0, i64* %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i64* %3, i64** %11, align 8
  store i32 %4, i32* %12, align 4
  store i64* %5, i64** %13, align 8
  %20 = load i64, i64* @FALSE, align 8
  store i64 %20, i64* %14, align 8
  %21 = load i64, i64* %8, align 8
  %22 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %44

24:                                               ; preds = %6
  %25 = call i32 @RTL_CONSTANT_STRING(i8* bitcast ([11 x i32]* @.str to i8*))
  store i32 %25, i32* %18, align 4
  %26 = call i32 @FIXME(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %27 = load i64, i64* @TRUE, align 8
  store i64 %27, i64* %14, align 8
  %28 = load i32, i32* @OBJ_CASE_INSENSITIVE, align 4
  %29 = call i32 @InitializeObjectAttributes(i32* %19, i32* %18, i32 %28, i32* null, i32* null)
  %30 = load i32, i32* @GENERIC_EXECUTE, align 4
  %31 = load i32, i32* @FILE_ATTRIBUTE_NORMAL, align 4
  %32 = load i32, i32* @FILE_SHARE_READ, align 4
  %33 = load i32, i32* @FILE_SHARE_WRITE, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @FILE_OPEN_IF, align 4
  %36 = call i64 @NtCreateFile(i64* %8, i32 %30, i32* %19, %struct.TYPE_4__* %16, i32 0, i32 %31, i32 %34, i32 %35, i32 0, i32* null, i32 0)
  store i64 %36, i64* %17, align 8
  %37 = load i64, i64* %17, align 8
  %38 = call i32 @NT_SUCCESS(i64 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %24
  %41 = load i64, i64* %17, align 8
  %42 = call i32 @RtlNtStatusToDosError(i64 %41)
  store i32 %42, i32* %7, align 4
  br label %102

43:                                               ; preds = %24
  br label %44

44:                                               ; preds = %43, %6
  %45 = load i64, i64* @TRUE, align 8
  %46 = load i64, i64* @FALSE, align 8
  %47 = call i64 @CreateEventW(i32* null, i64 %45, i64 %46, i32* null)
  store i64 %47, i64* %15, align 8
  %48 = load i64, i64* %15, align 8
  %49 = inttoptr i64 %48 to i8*
  %50 = icmp eq i8* %49, null
  br i1 %50, label %51, label %59

51:                                               ; preds = %44
  %52 = load i64, i64* %14, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %51
  %55 = load i64, i64* %8, align 8
  %56 = call i32 @CloseHandle(i64 %55)
  br label %57

57:                                               ; preds = %54, %51
  %58 = call i32 (...) @GetLastError()
  store i32 %58, i32* %7, align 4
  br label %102

59:                                               ; preds = %44
  %60 = load i64, i64* @STATUS_SUCCESS, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  store i64 %60, i64* %61, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  store i64 0, i64* %62, align 8
  %63 = load i64, i64* %8, align 8
  %64 = load i64, i64* %15, align 8
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* %10, align 4
  %67 = load i64*, i64** %11, align 8
  %68 = load i64, i64* %67, align 8
  %69 = load i32, i32* %12, align 4
  %70 = load i64*, i64** %13, align 8
  %71 = load i64, i64* %70, align 8
  %72 = call i64 @NtDeviceIoControlFile(i64 %63, i64 %64, i32* null, i32* null, %struct.TYPE_4__* %16, i32 %65, i32 %66, i64 %68, i32 %69, i64 %71)
  store i64 %72, i64* %17, align 8
  %73 = load i64, i64* %17, align 8
  %74 = load i64, i64* @STATUS_PENDING, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %82

76:                                               ; preds = %59
  %77 = load i64, i64* %15, align 8
  %78 = load i64, i64* @FALSE, align 8
  %79 = call i32 @NtWaitForSingleObject(i64 %77, i64 %78, i32* null)
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  store i64 %81, i64* %17, align 8
  br label %82

82:                                               ; preds = %76, %59
  %83 = load i64, i64* %15, align 8
  %84 = call i32 @CloseHandle(i64 %83)
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load i64*, i64** %13, align 8
  store i64 %86, i64* %87, align 8
  %88 = load i64, i64* %14, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %82
  %91 = load i64, i64* %8, align 8
  %92 = call i32 @CloseHandle(i64 %91)
  br label %93

93:                                               ; preds = %90, %82
  %94 = load i64, i64* %17, align 8
  %95 = call i32 @NT_SUCCESS(i64 %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %100, label %97

97:                                               ; preds = %93
  %98 = load i64, i64* %17, align 8
  %99 = call i32 @RtlNtStatusToDosError(i64 %98)
  store i32 %99, i32* %7, align 4
  br label %102

100:                                              ; preds = %93
  %101 = load i32, i32* @ERROR_SUCCESS, align 4
  store i32 %101, i32* %7, align 4
  br label %102

102:                                              ; preds = %100, %97, %57, %40
  %103 = load i32, i32* %7, align 4
  ret i32 %103
}

declare dso_local i32 @RTL_CONSTANT_STRING(i8*) #1

declare dso_local i32 @FIXME(i8*) #1

declare dso_local i32 @InitializeObjectAttributes(i32*, i32*, i32, i32*, i32*) #1

declare dso_local i64 @NtCreateFile(i64*, i32, i32*, %struct.TYPE_4__*, i32, i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @NT_SUCCESS(i64) #1

declare dso_local i32 @RtlNtStatusToDosError(i64) #1

declare dso_local i64 @CreateEventW(i32*, i64, i64, i32*) #1

declare dso_local i32 @CloseHandle(i64) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i64 @NtDeviceIoControlFile(i64, i64, i32*, i32*, %struct.TYPE_4__*, i32, i32, i64, i32, i64) #1

declare dso_local i32 @NtWaitForSingleObject(i64, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
