; ModuleID = '/home/carl/AnghaBench/reactos/base/services/tcpsvcs/extr_echo.c_EchoIncomingPackets.c'
source_filename = "/home/carl/AnghaBench/reactos/base/services/tcpsvcs/extr_echo.c_EchoIncomingPackets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RECV_BUF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i32] [i32 82, i32 101, i32 99, i32 101, i32 105, i32 118, i32 101, i32 100, i32 32, i32 37, i32 100, i32 32, i32 98, i32 121, i32 116, i32 101, i32 115, i32 32, i32 102, i32 114, i32 111, i32 109, i32 32, i32 99, i32 108, i32 105, i32 101, i32 110, i32 116, i32 0], align 4
@LOG_FILE = common dso_local global i32 0, align 4
@bShutdown = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i32] [i32 83, i32 101, i32 110, i32 116, i32 32, i32 37, i32 100, i32 32, i32 98, i32 121, i32 116, i32 101, i32 115, i32 32, i32 98, i32 97, i32 99, i32 107, i32 32, i32 116, i32 111, i32 32, i32 99, i32 108, i32 105, i32 101, i32 110, i32 116, i32 0], align 4
@SOCKET_ERROR = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [19 x i32] [i32 69, i32 99, i32 104, i32 111, i32 58, i32 32, i32 115, i32 111, i32 99, i32 107, i32 101, i32 116, i32 32, i32 101, i32 114, i32 114, i32 111, i32 114, i32 0], align 4
@LOG_ERROR = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i32] [i32 80, i32 101, i32 101, i32 114, i32 32, i32 117, i32 110, i32 101, i32 120, i32 112, i32 101, i32 99, i32 116, i32 101, i32 100, i32 108, i32 121, i32 32, i32 100, i32 114, i32 111, i32 112, i32 112, i32 101, i32 100, i32 32, i32 99, i32 111, i32 110, i32 110, i32 101, i32 99, i32 116, i32 105, i32 111, i32 110, i32 33, i32 0], align 4
@.str.4 = private unnamed_addr constant [32 x i32] [i32 69, i32 99, i32 104, i32 111, i32 58, i32 32, i32 67, i32 111, i32 110, i32 110, i32 101, i32 99, i32 116, i32 105, i32 111, i32 110, i32 32, i32 99, i32 108, i32 111, i32 115, i32 101, i32 100, i32 32, i32 98, i32 121, i32 32, i32 112, i32 101, i32 101, i32 114, i32 0], align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @EchoIncomingPackets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @EchoIncomingPackets(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca [256 x i8], align 16
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %11 = load i32, i32* @RECV_BUF, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %4, align 8
  %14 = alloca i32, i64 %12, align 16
  store i64 %12, i64* %5, align 8
  br label %15

15:                                               ; preds = %90, %1
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @RECV_BUF, align 4
  %18 = call i64 @recv(i32 %16, i32* %14, i32 %17, i32 0)
  store i64 %18, i64* %8, align 8
  %19 = load i64, i64* %8, align 8
  %20 = icmp sgt i64 %19, 0
  br i1 %20, label %21, label %72

21:                                               ; preds = %15
  %22 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %23 = load i64, i64* %8, align 8
  %24 = call i32 @swprintf(i8* %22, i8* bitcast ([30 x i32]* @.str to i8*), i64 %23)
  %25 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %26 = load i32, i32* @LOG_FILE, align 4
  %27 = call i32 @LogEvent(i8* %25, i32 0, i32 0, i32 %26)
  store i64 0, i64* %7, align 8
  br label %28

28:                                               ; preds = %70, %21
  %29 = load i32, i32* @bShutdown, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %28
  %32 = load i64, i64* %7, align 8
  %33 = load i64, i64* %8, align 8
  %34 = icmp slt i64 %32, %33
  br label %35

35:                                               ; preds = %31, %28
  %36 = phi i1 [ false, %28 ], [ %34, %31 ]
  br i1 %36, label %37, label %71

37:                                               ; preds = %35
  %38 = load i32, i32* %3, align 4
  %39 = load i64, i64* %7, align 8
  %40 = getelementptr inbounds i32, i32* %14, i64 %39
  %41 = load i64, i64* %8, align 8
  %42 = load i64, i64* %7, align 8
  %43 = sub nsw i64 %41, %42
  %44 = call i64 @send(i32 %38, i32* %40, i64 %43, i32 0)
  store i64 %44, i64* %9, align 8
  %45 = load i64, i64* %9, align 8
  %46 = icmp sgt i64 %45, 0
  br i1 %46, label %47, label %57

47:                                               ; preds = %37
  %48 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %49 = load i64, i64* %9, align 8
  %50 = call i32 @swprintf(i8* %48, i8* bitcast ([29 x i32]* @.str.1 to i8*), i64 %49)
  %51 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %52 = load i32, i32* @LOG_FILE, align 4
  %53 = call i32 @LogEvent(i8* %51, i32 0, i32 0, i32 %52)
  %54 = load i64, i64* %9, align 8
  %55 = load i64, i64* %7, align 8
  %56 = add nsw i64 %55, %54
  store i64 %56, i64* %7, align 8
  br label %70

57:                                               ; preds = %37
  %58 = load i64, i64* %9, align 8
  %59 = load i64, i64* @SOCKET_ERROR, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %66

61:                                               ; preds = %57
  %62 = call i32 (...) @WSAGetLastError()
  %63 = load i32, i32* @LOG_ERROR, align 4
  %64 = call i32 @LogEvent(i8* bitcast ([19 x i32]* @.str.2 to i8*), i32 %62, i32 0, i32 %63)
  %65 = load i32, i32* @FALSE, align 4
  store i32 %65, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %100

66:                                               ; preds = %57
  %67 = load i32, i32* @LOG_FILE, align 4
  %68 = call i32 @LogEvent(i8* bitcast ([38 x i32]* @.str.3 to i8*), i32 0, i32 0, i32 %67)
  %69 = load i32, i32* @FALSE, align 4
  store i32 %69, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %100

70:                                               ; preds = %47
  br label %28

71:                                               ; preds = %35
  br label %82

72:                                               ; preds = %15
  %73 = load i64, i64* %8, align 8
  %74 = load i64, i64* @SOCKET_ERROR, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %81

76:                                               ; preds = %72
  %77 = call i32 (...) @WSAGetLastError()
  %78 = load i32, i32* @LOG_ERROR, align 4
  %79 = call i32 @LogEvent(i8* bitcast ([19 x i32]* @.str.2 to i8*), i32 %77, i32 0, i32 %78)
  %80 = load i32, i32* @FALSE, align 4
  store i32 %80, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %100

81:                                               ; preds = %72
  br label %82

82:                                               ; preds = %81, %71
  br label %83

83:                                               ; preds = %82
  %84 = load i64, i64* %8, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %83
  %87 = load i32, i32* @bShutdown, align 4
  %88 = icmp ne i32 %87, 0
  %89 = xor i1 %88, true
  br label %90

90:                                               ; preds = %86, %83
  %91 = phi i1 [ false, %83 ], [ %89, %86 ]
  br i1 %91, label %15, label %92

92:                                               ; preds = %90
  %93 = load i32, i32* @bShutdown, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %98, label %95

95:                                               ; preds = %92
  %96 = load i32, i32* @LOG_FILE, align 4
  %97 = call i32 @LogEvent(i8* bitcast ([32 x i32]* @.str.4 to i8*), i32 0, i32 0, i32 %96)
  br label %98

98:                                               ; preds = %95, %92
  %99 = load i32, i32* @TRUE, align 4
  store i32 %99, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %100

100:                                              ; preds = %98, %76, %66, %61
  %101 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %101)
  %102 = load i32, i32* %2, align 4
  ret i32 %102
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @recv(i32, i32*, i32, i32) #2

declare dso_local i32 @swprintf(i8*, i8*, i64) #2

declare dso_local i32 @LogEvent(i8*, i32, i32, i32) #2

declare dso_local i64 @send(i32, i32*, i64, i32) #2

declare dso_local i32 @WSAGetLastError(...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
