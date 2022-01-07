; ModuleID = '/home/carl/AnghaBench/reactos/base/services/tcpsvcs/extr_tcpsvcs.c_CreateServers.c'
source_filename = "/home/carl/AnghaBench/reactos/base/services/tcpsvcs/extr_tcpsvcs.c_CreateServers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8* }

@NUM_SERVICES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i32] [i32 87, i32 83, i32 65, i32 83, i32 116, i32 97, i32 114, i32 116, i32 117, i32 112, i32 40, i32 41, i32 32, i32 102, i32 97, i32 105, i32 108, i32 101, i32 100, i32 32, i32 58, i32 32, i32 37, i32 108, i32 117, i32 10, i32 0], align 4
@LOG_ALL = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i32] [i32 10, i32 67, i32 114, i32 101, i32 97, i32 116, i32 105, i32 110, i32 103, i32 32, i32 115, i32 101, i32 114, i32 118, i32 101, i32 114, i32 32, i32 84, i32 104, i32 114, i32 101, i32 97, i32 100, i32 115, i32 0], align 4
@LOG_FILE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i32] [i32 67, i32 114, i32 101, i32 97, i32 116, i32 105, i32 110, i32 103, i32 32, i32 116, i32 104, i32 114, i32 101, i32 97, i32 100, i32 32, i32 102, i32 111, i32 114, i32 32, i32 37, i32 115, i32 32, i32 115, i32 101, i32 114, i32 118, i32 101, i32 114, i32 0], align 4
@Services = common dso_local global %struct.TYPE_3__* null, align 8
@StartServer = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i32] [i32 10, i32 69, i32 114, i32 114, i32 111, i32 114, i32 32, i32 99, i32 114, i32 101, i32 97, i32 116, i32 105, i32 110, i32 103, i32 32, i32 37, i32 115, i32 32, i32 115, i32 101, i32 114, i32 118, i32 101, i32 114, i32 32, i32 116, i32 104, i32 114, i32 101, i32 97, i32 100, i32 10, i32 0], align 4
@.str.4 = private unnamed_addr constant [34 x i32] [i32 83, i32 101, i32 116, i32 116, i32 105, i32 110, i32 103, i32 32, i32 115, i32 101, i32 114, i32 118, i32 105, i32 99, i32 101, i32 32, i32 115, i32 116, i32 97, i32 116, i32 117, i32 115, i32 32, i32 116, i32 111, i32 32, i32 114, i32 117, i32 110, i32 110, i32 105, i32 110, i32 103, i32 0], align 4
@SERVICE_RUNNING = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@INFINITE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [19 x i32] [i32 68, i32 101, i32 116, i32 97, i32 99, i32 104, i32 105, i32 110, i32 103, i32 32, i32 87, i32 105, i32 110, i32 115, i32 111, i32 99, i32 107, i32 50, i32 0], align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @CreateServers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CreateServers(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca [256 x i8], align 16
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %12 = load i32, i32* @NUM_SERVICES, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %4, align 8
  %15 = alloca i8*, i64 %13, align 16
  store i64 %13, i64* %5, align 8
  %16 = load i32, i32* @NUM_SERVICES, align 4
  %17 = zext i32 %16 to i64
  %18 = alloca i32*, i64 %17, align 16
  store i64 %17, i64* %6, align 8
  %19 = call i32 @MAKEWORD(i32 2, i32 2)
  %20 = call i8* @WSAStartup(i32 %19, i32* %7)
  store i8* %20, i8** %10, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %30

22:                                               ; preds = %1
  %23 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %24 = load i8*, i8** %10, align 8
  %25 = call i32 @swprintf(i8* %23, i8* bitcast ([27 x i32]* @.str to i8*), i8* %24)
  %26 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %27 = load i32, i32* @LOG_ALL, align 4
  %28 = call i32 @LogEvent(i8* %26, i32 0, i32 100, i32 %27)
  %29 = load i32, i32* @FALSE, align 4
  store i32 %29, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %123

30:                                               ; preds = %1
  %31 = load i32, i32* %3, align 4
  %32 = call i32 @UpdateStatus(i32 %31, i32 0, i32 1)
  %33 = load i32, i32* @LOG_FILE, align 4
  %34 = call i32 @LogEvent(i8* bitcast ([25 x i32]* @.str.1 to i8*), i32 0, i32 0, i32 %33)
  store i32 0, i32* %9, align 4
  br label %35

35:                                               ; preds = %85, %30
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* @NUM_SERVICES, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %88

39:                                               ; preds = %35
  %40 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** @Services, align 8
  %42 = load i32, i32* %9, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = call i32 @swprintf(i8* %40, i8* bitcast ([30 x i32]* @.str.2 to i8*), i8* %46)
  %48 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %49 = load i32, i32* @LOG_FILE, align 4
  %50 = call i32 @LogEvent(i8* %48, i32 0, i32 0, i32 %49)
  %51 = load i32, i32* @StartServer, align 4
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** @Services, align 8
  %53 = load i32, i32* %9, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i64 %54
  %56 = load i32, i32* %9, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8*, i8** %15, i64 %57
  %59 = call i32* @CreateThread(i32* null, i32 0, i32 %51, %struct.TYPE_3__* %55, i32 0, i8** %58)
  %60 = load i32, i32* %9, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32*, i32** %18, i64 %61
  store i32* %59, i32** %62, align 8
  %63 = load i32, i32* %9, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32*, i32** %18, i64 %64
  %66 = load i32*, i32** %65, align 8
  %67 = icmp eq i32* %66, null
  br i1 %67, label %68, label %82

68:                                               ; preds = %39
  %69 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** @Services, align 8
  %71 = load i32, i32* %9, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = load i8*, i8** %74, align 8
  %76 = call i32 @swprintf(i8* %69, i8* bitcast ([34 x i32]* @.str.3 to i8*), i8* %75)
  %77 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %78 = call i32 (...) @GetLastError()
  %79 = load i32, i32* @LOG_ALL, align 4
  %80 = call i32 @LogEvent(i8* %77, i32 %78, i32 0, i32 %79)
  %81 = load i32, i32* @FALSE, align 4
  store i32 %81, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %123

82:                                               ; preds = %39
  %83 = load i32, i32* %3, align 4
  %84 = call i32 @UpdateStatus(i32 %83, i32 0, i32 1)
  br label %85

85:                                               ; preds = %82
  %86 = load i32, i32* %9, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %9, align 4
  br label %35

88:                                               ; preds = %35
  %89 = load i32, i32* @LOG_FILE, align 4
  %90 = call i32 @LogEvent(i8* bitcast ([34 x i32]* @.str.4 to i8*), i32 0, i32 0, i32 %89)
  %91 = load i32, i32* %3, align 4
  %92 = load i32, i32* @SERVICE_RUNNING, align 4
  %93 = call i32 @UpdateStatus(i32 %91, i32 %92, i32 0)
  %94 = load i32, i32* @NUM_SERVICES, align 4
  %95 = load i32, i32* @TRUE, align 4
  %96 = load i32, i32* @INFINITE, align 4
  %97 = call i32 @WaitForMultipleObjects(i32 %94, i32** %18, i32 %95, i32 %96)
  store i32 0, i32* %9, align 4
  br label %98

98:                                               ; preds = %115, %88
  %99 = load i32, i32* %9, align 4
  %100 = load i32, i32* @NUM_SERVICES, align 4
  %101 = icmp slt i32 %99, %100
  br i1 %101, label %102, label %118

102:                                              ; preds = %98
  %103 = load i32, i32* %9, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32*, i32** %18, i64 %104
  %106 = load i32*, i32** %105, align 8
  %107 = icmp ne i32* %106, null
  br i1 %107, label %108, label %114

108:                                              ; preds = %102
  %109 = load i32, i32* %9, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32*, i32** %18, i64 %110
  %112 = load i32*, i32** %111, align 8
  %113 = call i32 @CloseHandle(i32* %112)
  br label %114

114:                                              ; preds = %108, %102
  br label %115

115:                                              ; preds = %114
  %116 = load i32, i32* %9, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %9, align 4
  br label %98

118:                                              ; preds = %98
  %119 = load i32, i32* @LOG_FILE, align 4
  %120 = call i32 @LogEvent(i8* bitcast ([19 x i32]* @.str.5 to i8*), i32 0, i32 0, i32 %119)
  %121 = call i32 (...) @WSACleanup()
  %122 = load i32, i32* @TRUE, align 4
  store i32 %122, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %123

123:                                              ; preds = %118, %68, %22
  %124 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %124)
  %125 = load i32, i32* %2, align 4
  ret i32 %125
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @WSAStartup(i32, i32*) #2

declare dso_local i32 @MAKEWORD(i32, i32) #2

declare dso_local i32 @swprintf(i8*, i8*, i8*) #2

declare dso_local i32 @LogEvent(i8*, i32, i32, i32) #2

declare dso_local i32 @UpdateStatus(i32, i32, i32) #2

declare dso_local i32* @CreateThread(i32*, i32, i32, %struct.TYPE_3__*, i32, i8**) #2

declare dso_local i32 @GetLastError(...) #2

declare dso_local i32 @WaitForMultipleObjects(i32, i32**, i32, i32) #2

declare dso_local i32 @CloseHandle(i32*) #2

declare dso_local i32 @WSACleanup(...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
