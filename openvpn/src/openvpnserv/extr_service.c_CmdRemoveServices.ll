; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpnserv/extr_service.c_CmdRemoveServices.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpnserv/extr_service.c_CmdRemoveServices.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_7__ = type { i64 }

@_service_max = common dso_local global i32 0, align 4
@SC_MANAGER_CONNECT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"OpenSCManager failed - %s\0A\00", align 1
@openvpn_service = common dso_local global %struct.TYPE_6__* null, align 8
@DELETE = common dso_local global i32 0, align 4
@SERVICE_STOP = common dso_local global i32 0, align 4
@SERVICE_QUERY_STATUS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"OpenService failed - %s\0A\00", align 1
@SERVICE_CONTROL_STOP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"Stopping %s.\00", align 1
@SERVICE_STOP_PENDING = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [2 x i8] c".\00", align 1
@SERVICE_STOPPED = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [14 x i8] c"\0A%s stopped.\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"\0A%s failed to stop.\0A\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"%s removed.\0A\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"DeleteService failed - %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @CmdRemoveServices to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CmdRemoveServices() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_7__, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = load i32, i32* @_service_max, align 4
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* @SC_MANAGER_CONNECT, align 4
  %10 = call i32* @OpenSCManager(i32* null, i32* null, i32 %9)
  store i32* %10, i32** %3, align 8
  %11 = load i32*, i32** %3, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %0
  %14 = call i32 @TEXT(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %15 = call i32 (...) @GetLastErrorText()
  %16 = call i32 (i32, ...) @_tprintf(i32 %14, i32 %15)
  store i32 1, i32* %1, align 4
  br label %115

17:                                               ; preds = %0
  store i32 0, i32* %5, align 4
  br label %18

18:                                               ; preds = %107, %17
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @_service_max, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %110

22:                                               ; preds = %18
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** @openvpn_service, align 8
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i64 %25
  store %struct.TYPE_6__* %26, %struct.TYPE_6__** %7, align 8
  %27 = load i32*, i32** %3, align 8
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @DELETE, align 4
  %32 = load i32, i32* @SERVICE_STOP, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @SERVICE_QUERY_STATUS, align 4
  %35 = or i32 %33, %34
  %36 = call i32* @OpenService(i32* %27, i32 %30, i32 %35)
  store i32* %36, i32** %2, align 8
  %37 = load i32*, i32** %2, align 8
  %38 = icmp eq i32* %37, null
  br i1 %38, label %39, label %43

39:                                               ; preds = %22
  %40 = call i32 @TEXT(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %41 = call i32 (...) @GetLastErrorText()
  %42 = call i32 (i32, ...) @_tprintf(i32 %40, i32 %41)
  br label %111

43:                                               ; preds = %22
  %44 = load i32*, i32** %2, align 8
  %45 = load i32, i32* @SERVICE_CONTROL_STOP, align 4
  %46 = call i64 @ControlService(i32* %44, i32 %45, %struct.TYPE_7__* %4)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %88

48:                                               ; preds = %43
  %49 = call i32 @TEXT(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 (i32, ...) @_tprintf(i32 %49, i32 %52)
  %54 = call i32 @Sleep(i32 1000)
  br label %55

55:                                               ; preds = %69, %48
  %56 = load i32*, i32** %2, align 8
  %57 = call i64 @QueryServiceStatus(i32* %56, %struct.TYPE_7__* %4)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %70

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @SERVICE_STOP_PENDING, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %59
  %65 = call i32 @TEXT(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %66 = call i32 (i32, ...) @_tprintf(i32 %65)
  %67 = call i32 @Sleep(i32 1000)
  br label %69

68:                                               ; preds = %59
  br label %70

69:                                               ; preds = %64
  br label %55

70:                                               ; preds = %68, %55
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @SERVICE_STOPPED, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %81

75:                                               ; preds = %70
  %76 = call i32 @TEXT(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 (i32, ...) @_tprintf(i32 %76, i32 %79)
  br label %87

81:                                               ; preds = %70
  %82 = call i32 @TEXT(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 (i32, ...) @_tprintf(i32 %82, i32 %85)
  br label %87

87:                                               ; preds = %81, %75
  br label %88

88:                                               ; preds = %87, %43
  %89 = load i32*, i32** %2, align 8
  %90 = call i64 @DeleteService(i32* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %100

92:                                               ; preds = %88
  %93 = call i32 @TEXT(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0))
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 (i32, ...) @_tprintf(i32 %93, i32 %96)
  %98 = load i32, i32* %6, align 4
  %99 = add nsw i32 %98, -1
  store i32 %99, i32* %6, align 4
  br label %104

100:                                              ; preds = %88
  %101 = call i32 @TEXT(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0))
  %102 = call i32 (...) @GetLastErrorText()
  %103 = call i32 (i32, ...) @_tprintf(i32 %101, i32 %102)
  br label %104

104:                                              ; preds = %100, %92
  %105 = load i32*, i32** %2, align 8
  %106 = call i32 @CloseServiceHandle(i32* %105)
  br label %107

107:                                              ; preds = %104
  %108 = load i32, i32* %5, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %5, align 4
  br label %18

110:                                              ; preds = %18
  br label %111

111:                                              ; preds = %110, %39
  %112 = load i32*, i32** %3, align 8
  %113 = call i32 @CloseServiceHandle(i32* %112)
  %114 = load i32, i32* %6, align 4
  store i32 %114, i32* %1, align 4
  br label %115

115:                                              ; preds = %111, %13
  %116 = load i32, i32* %1, align 4
  ret i32 %116
}

declare dso_local i32* @OpenSCManager(i32*, i32*, i32) #1

declare dso_local i32 @_tprintf(i32, ...) #1

declare dso_local i32 @TEXT(i8*) #1

declare dso_local i32 @GetLastErrorText(...) #1

declare dso_local i32* @OpenService(i32*, i32, i32) #1

declare dso_local i64 @ControlService(i32*, i32, %struct.TYPE_7__*) #1

declare dso_local i32 @Sleep(i32) #1

declare dso_local i64 @QueryServiceStatus(i32*, %struct.TYPE_7__*) #1

declare dso_local i64 @DeleteService(i32*) #1

declare dso_local i32 @CloseServiceHandle(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
