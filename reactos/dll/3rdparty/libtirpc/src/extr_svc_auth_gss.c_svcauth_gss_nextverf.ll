; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libtirpc/src/extr_svc_auth_gss.c_svcauth_gss_nextverf.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libtirpc/src/extr_svc_auth_gss.c_svcauth_gss_nextverf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_req = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__, i32* }
%struct.TYPE_8__ = type { i64, i64, i32 }
%struct.svc_rpc_gss_data = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_10__ = type { i32, i64* }

@.str = private unnamed_addr constant [26 x i8] c"in svcauth_gss_nextverf()\00", align 1
@FALSE = common dso_local global i32 0, align 4
@GSS_S_COMPLETE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"gss_get_mic\00", align 1
@RPCSEC_GSS = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @svcauth_gss_nextverf(%struct.svc_req* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.svc_req*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.svc_rpc_gss_data*, align 8
  %7 = alloca %struct.TYPE_10__, align 8
  %8 = alloca %struct.TYPE_10__, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.svc_req* %0, %struct.svc_req** %4, align 8
  store i64 %1, i64* %5, align 8
  %11 = call i32 @log_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.svc_req*, %struct.svc_req** %4, align 8
  %13 = getelementptr inbounds %struct.svc_req, %struct.svc_req* %12, i32 0, i32 0
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* @FALSE, align 4
  store i32 %19, i32* %3, align 4
  br label %69

20:                                               ; preds = %2
  %21 = load %struct.svc_req*, %struct.svc_req** %4, align 8
  %22 = getelementptr inbounds %struct.svc_req, %struct.svc_req* %21, i32 0, i32 0
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = call %struct.svc_rpc_gss_data* @SVCAUTH_PRIVATE(i32* %25)
  store %struct.svc_rpc_gss_data* %26, %struct.svc_rpc_gss_data** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 1
  store i64* %5, i64** %27, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 0
  store i32 8, i32* %28, align 8
  %29 = load %struct.svc_rpc_gss_data*, %struct.svc_rpc_gss_data** %6, align 8
  %30 = getelementptr inbounds %struct.svc_rpc_gss_data, %struct.svc_rpc_gss_data* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.svc_rpc_gss_data*, %struct.svc_rpc_gss_data** %6, align 8
  %33 = getelementptr inbounds %struct.svc_rpc_gss_data, %struct.svc_rpc_gss_data* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @gss_get_mic(i64* %10, i32 %31, i32 %35, %struct.TYPE_10__* %7, %struct.TYPE_10__* %8)
  store i64 %36, i64* %9, align 8
  %37 = load i64, i64* %9, align 8
  %38 = load i64, i64* @GSS_S_COMPLETE, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %20
  %41 = load i64, i64* %9, align 8
  %42 = load i64, i64* %10, align 8
  %43 = call i32 @log_status(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i64 %41, i64 %42)
  %44 = load i32, i32* @FALSE, align 4
  store i32 %44, i32* %3, align 4
  br label %69

45:                                               ; preds = %20
  %46 = load i32, i32* @RPCSEC_GSS, align 4
  %47 = load %struct.svc_req*, %struct.svc_req** %4, align 8
  %48 = getelementptr inbounds %struct.svc_req, %struct.svc_req* %47, i32 0, i32 0
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 2
  store i32 %46, i32* %51, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 1
  %53 = load i64*, i64** %52, align 8
  %54 = ptrtoint i64* %53 to i64
  %55 = load %struct.svc_req*, %struct.svc_req** %4, align 8
  %56 = getelementptr inbounds %struct.svc_req, %struct.svc_req* %55, i32 0, i32 0
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 1
  store i64 %54, i64* %59, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = sext i32 %61 to i64
  %63 = load %struct.svc_req*, %struct.svc_req** %4, align 8
  %64 = getelementptr inbounds %struct.svc_req, %struct.svc_req* %63, i32 0, i32 0
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  store i64 %62, i64* %67, align 8
  %68 = load i32, i32* @TRUE, align 4
  store i32 %68, i32* %3, align 4
  br label %69

69:                                               ; preds = %45, %40, %18
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i32 @log_debug(i8*) #1

declare dso_local %struct.svc_rpc_gss_data* @SVCAUTH_PRIVATE(i32*) #1

declare dso_local i64 @gss_get_mic(i64*, i32, i32, %struct.TYPE_10__*, %struct.TYPE_10__*) #1

declare dso_local i32 @log_status(i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
