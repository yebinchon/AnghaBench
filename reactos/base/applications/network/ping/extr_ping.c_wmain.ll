; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/network/ping/extr_ping.c_wmain.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/network/ping/extr_ping.c_wmain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i64, i32 }

@IpOptions = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@ConsoleCtrlHandler = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Failed to set control handler: %lu\0A\00", align 1
@StdErr = common dso_local global i32 0, align 4
@IDS_WINSOCK_FAIL = common dso_local global i32 0, align 4
@TargetName = common dso_local global i32 0, align 4
@Target = common dso_local global %struct.TYPE_4__* null, align 8
@Address = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"WSAAddressToStringW failed: %d\0A\00", align 1
@Family = common dso_local global i64 0, align 8
@AF_INET6 = common dso_local global i64 0, align 8
@hIcmpFile = common dso_local global i64 0, align 8
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [28 x i8] c"IcmpCreateFile failed: %lu\0A\00", align 1
@CanonName = common dso_local global i64* null, align 8
@StdOut = common dso_local global i32 0, align 4
@IDS_PINGING_HOSTNAME = common dso_local global i32 0, align 4
@IDS_PINGING_ADDRESS = common dso_local global i32 0, align 4
@IDS_PING_SIZE = common dso_local global i32 0, align 4
@RequestSize = common dso_local global i32 0, align 4
@PingCount = common dso_local global i32 0, align 4
@PingForever = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wmain(i32 %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32** %1, i32*** %5, align 8
  store i32 46, i32* %8, align 4
  %10 = call i32 (...) @ConInitStdStreams()
  store i32 128, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @IpOptions, i32 0, i32 0), align 4
  %11 = load i32, i32* %4, align 4
  %12 = load i32**, i32*** %5, align 8
  %13 = call i32 @ParseCmdLine(i32 %11, i32** %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %117

16:                                               ; preds = %2
  %17 = load i32, i32* @ConsoleCtrlHandler, align 4
  %18 = load i32, i32* @TRUE, align 4
  %19 = call i32 @SetConsoleCtrlHandler(i32 %17, i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %16
  %22 = call i32 (...) @GetLastError()
  %23 = call i32 @DPRINT(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %22)
  store i32 1, i32* %3, align 4
  br label %117

24:                                               ; preds = %16
  %25 = call i32 @MAKEWORD(i32 2, i32 2)
  %26 = call i32 @WSAStartup(i32 %25, i32* %6)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %24
  %30 = load i32, i32* @StdErr, align 4
  %31 = load i32, i32* @IDS_WINSOCK_FAIL, align 4
  %32 = load i32, i32* %9, align 4
  %33 = call i32 (i32, i32, i32, ...) @ConResPrintf(i32 %30, i32 %31, i32 %32)
  store i32 1, i32* %3, align 4
  br label %117

34:                                               ; preds = %24
  %35 = load i32, i32* @TargetName, align 4
  %36 = call i32 @ResolveTarget(i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %34
  %39 = call i32 (...) @WSACleanup()
  store i32 1, i32* %3, align 4
  br label %117

40:                                               ; preds = %34
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Target, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Target, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = trunc i64 %46 to i32
  %48 = load i32, i32* @Address, align 4
  %49 = call i64 @WSAAddressToStringW(i32 %43, i32 %47, i32* null, i32 %48, i32* %8)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %40
  %52 = call i32 (...) @WSAGetLastError()
  %53 = call i32 @DPRINT(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %52)
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Target, align 8
  %55 = call i32 @FreeAddrInfoW(%struct.TYPE_4__* %54)
  %56 = call i32 (...) @WSACleanup()
  store i32 1, i32* %3, align 4
  br label %117

57:                                               ; preds = %40
  %58 = load i64, i64* @Family, align 8
  %59 = load i64, i64* @AF_INET6, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %57
  %62 = call i64 (...) @Icmp6CreateFile()
  store i64 %62, i64* @hIcmpFile, align 8
  br label %65

63:                                               ; preds = %57
  %64 = call i64 (...) @IcmpCreateFile()
  store i64 %64, i64* @hIcmpFile, align 8
  br label %65

65:                                               ; preds = %63, %61
  %66 = load i64, i64* @hIcmpFile, align 8
  %67 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %75

69:                                               ; preds = %65
  %70 = call i32 (...) @GetLastError()
  %71 = call i32 @DPRINT(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %70)
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Target, align 8
  %73 = call i32 @FreeAddrInfoW(%struct.TYPE_4__* %72)
  %74 = call i32 (...) @WSACleanup()
  store i32 1, i32* %3, align 4
  br label %117

75:                                               ; preds = %65
  %76 = load i64*, i64** @CanonName, align 8
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %86

79:                                               ; preds = %75
  %80 = load i32, i32* @StdOut, align 4
  %81 = load i32, i32* @IDS_PINGING_HOSTNAME, align 4
  %82 = load i64*, i64** @CanonName, align 8
  %83 = ptrtoint i64* %82 to i32
  %84 = load i32, i32* @Address, align 4
  %85 = call i32 (i32, i32, i32, ...) @ConResPrintf(i32 %80, i32 %81, i32 %83, i32 %84)
  br label %91

86:                                               ; preds = %75
  %87 = load i32, i32* @StdOut, align 4
  %88 = load i32, i32* @IDS_PINGING_ADDRESS, align 4
  %89 = load i32, i32* @Address, align 4
  %90 = call i32 (i32, i32, i32, ...) @ConResPrintf(i32 %87, i32 %88, i32 %89)
  br label %91

91:                                               ; preds = %86, %79
  %92 = load i32, i32* @StdOut, align 4
  %93 = load i32, i32* @IDS_PING_SIZE, align 4
  %94 = load i32, i32* @RequestSize, align 4
  %95 = call i32 (i32, i32, i32, ...) @ConResPrintf(i32 %92, i32 %93, i32 %94)
  %96 = call i32 (...) @Ping()
  store i32 1, i32* %7, align 4
  br label %97

97:                                               ; preds = %109, %91
  %98 = load i32, i32* %7, align 4
  %99 = load i32, i32* @PingCount, align 4
  %100 = icmp slt i32 %98, %99
  br i1 %100, label %101, label %110

101:                                              ; preds = %97
  %102 = call i32 @Sleep(i32 1000)
  %103 = call i32 (...) @Ping()
  %104 = load i32, i32* @PingForever, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %109, label %106

106:                                              ; preds = %101
  %107 = load i32, i32* %7, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %7, align 4
  br label %109

109:                                              ; preds = %106, %101
  br label %97

110:                                              ; preds = %97
  %111 = call i32 (...) @PrintStats()
  %112 = load i64, i64* @hIcmpFile, align 8
  %113 = call i32 @IcmpCloseHandle(i64 %112)
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Target, align 8
  %115 = call i32 @FreeAddrInfoW(%struct.TYPE_4__* %114)
  %116 = call i32 (...) @WSACleanup()
  store i32 0, i32* %3, align 4
  br label %117

117:                                              ; preds = %110, %69, %51, %38, %29, %21, %15
  %118 = load i32, i32* %3, align 4
  ret i32 %118
}

declare dso_local i32 @ConInitStdStreams(...) #1

declare dso_local i32 @ParseCmdLine(i32, i32**) #1

declare dso_local i32 @SetConsoleCtrlHandler(i32, i32) #1

declare dso_local i32 @DPRINT(i8*, i32) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32 @WSAStartup(i32, i32*) #1

declare dso_local i32 @MAKEWORD(i32, i32) #1

declare dso_local i32 @ConResPrintf(i32, i32, i32, ...) #1

declare dso_local i32 @ResolveTarget(i32) #1

declare dso_local i32 @WSACleanup(...) #1

declare dso_local i64 @WSAAddressToStringW(i32, i32, i32*, i32, i32*) #1

declare dso_local i32 @WSAGetLastError(...) #1

declare dso_local i32 @FreeAddrInfoW(%struct.TYPE_4__*) #1

declare dso_local i64 @Icmp6CreateFile(...) #1

declare dso_local i64 @IcmpCreateFile(...) #1

declare dso_local i32 @Ping(...) #1

declare dso_local i32 @Sleep(i32) #1

declare dso_local i32 @PrintStats(...) #1

declare dso_local i32 @IcmpCloseHandle(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
