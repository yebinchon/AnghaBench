; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libtirpc/src/extr_auth_gss.c_authgss_validate.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libtirpc/src/extr_auth_gss.c_authgss_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.opaque_auth = type { i32, i64* }
%struct.rpc_gss_data = type { i64, %struct.TYPE_9__, i32, %struct.TYPE_8__, i32, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { i64, i32 }
%struct.TYPE_7__ = type { i32, i32* }
%struct.TYPE_10__ = type { i64*, i32 }

@.str = private unnamed_addr constant [22 x i8] c"in authgss_validate()\00", align 1
@FALSE = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"gss_validate: out of memory\0A\00", align 1
@TRUE = common dso_local global i64 0, align 8
@RPCSEC_GSS_INIT = common dso_local global i64 0, align 8
@RPCSEC_GSS_CONTINUE_INIT = common dso_local global i64 0, align 8
@GSS_S_COMPLETE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [15 x i8] c"gss_verify_mic\00", align 1
@GSS_S_CONTEXT_EXPIRED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, %struct.opaque_auth*)* @authgss_validate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @authgss_validate(i32* %0, %struct.opaque_auth* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.opaque_auth*, align 8
  %6 = alloca %struct.rpc_gss_data*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_10__, align 8
  %10 = alloca %struct.TYPE_10__, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store %struct.opaque_auth* %1, %struct.opaque_auth** %5, align 8
  %13 = call i32 @log_debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %14 = load i32*, i32** %4, align 8
  %15 = call %struct.rpc_gss_data* @AUTH_PRIVATE(i32* %14)
  store %struct.rpc_gss_data* %15, %struct.rpc_gss_data** %6, align 8
  %16 = load %struct.rpc_gss_data*, %struct.rpc_gss_data** %6, align 8
  %17 = getelementptr inbounds %struct.rpc_gss_data, %struct.rpc_gss_data* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @FALSE, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %53

21:                                               ; preds = %2
  %22 = load %struct.opaque_auth*, %struct.opaque_auth** %5, align 8
  %23 = getelementptr inbounds %struct.opaque_auth, %struct.opaque_auth* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32* @mem_alloc(i32 %24)
  %26 = load %struct.rpc_gss_data*, %struct.rpc_gss_data** %6, align 8
  %27 = getelementptr inbounds %struct.rpc_gss_data, %struct.rpc_gss_data* %26, i32 0, i32 5
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 1
  store i32* %25, i32** %28, align 8
  %29 = icmp eq i32* %25, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %21
  %31 = load i32, i32* @stderr, align 4
  %32 = call i32 @fprintf(i32 %31, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %33 = load i64, i64* @FALSE, align 8
  store i64 %33, i64* %3, align 8
  br label %120

34:                                               ; preds = %21
  %35 = load %struct.rpc_gss_data*, %struct.rpc_gss_data** %6, align 8
  %36 = getelementptr inbounds %struct.rpc_gss_data, %struct.rpc_gss_data* %35, i32 0, i32 5
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = load %struct.opaque_auth*, %struct.opaque_auth** %5, align 8
  %40 = getelementptr inbounds %struct.opaque_auth, %struct.opaque_auth* %39, i32 0, i32 1
  %41 = load i64*, i64** %40, align 8
  %42 = load %struct.opaque_auth*, %struct.opaque_auth** %5, align 8
  %43 = getelementptr inbounds %struct.opaque_auth, %struct.opaque_auth* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @memcpy(i32* %38, i64* %41, i32 %44)
  %46 = load %struct.opaque_auth*, %struct.opaque_auth** %5, align 8
  %47 = getelementptr inbounds %struct.opaque_auth, %struct.opaque_auth* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.rpc_gss_data*, %struct.rpc_gss_data** %6, align 8
  %50 = getelementptr inbounds %struct.rpc_gss_data, %struct.rpc_gss_data* %49, i32 0, i32 5
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  store i32 %48, i32* %51, align 8
  %52 = load i64, i64* @TRUE, align 8
  store i64 %52, i64* %3, align 8
  br label %120

53:                                               ; preds = %2
  %54 = load %struct.rpc_gss_data*, %struct.rpc_gss_data** %6, align 8
  %55 = getelementptr inbounds %struct.rpc_gss_data, %struct.rpc_gss_data* %54, i32 0, i32 3
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @RPCSEC_GSS_INIT, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %67, label %60

60:                                               ; preds = %53
  %61 = load %struct.rpc_gss_data*, %struct.rpc_gss_data** %6, align 8
  %62 = getelementptr inbounds %struct.rpc_gss_data, %struct.rpc_gss_data* %61, i32 0, i32 3
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @RPCSEC_GSS_CONTINUE_INIT, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %72

67:                                               ; preds = %60, %53
  %68 = load %struct.rpc_gss_data*, %struct.rpc_gss_data** %6, align 8
  %69 = getelementptr inbounds %struct.rpc_gss_data, %struct.rpc_gss_data* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 8
  %71 = call i64 @htonl(i32 %70)
  store i64 %71, i64* %7, align 8
  br label %78

72:                                               ; preds = %60
  %73 = load %struct.rpc_gss_data*, %struct.rpc_gss_data** %6, align 8
  %74 = getelementptr inbounds %struct.rpc_gss_data, %struct.rpc_gss_data* %73, i32 0, i32 3
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = call i64 @htonl(i32 %76)
  store i64 %77, i64* %7, align 8
  br label %78

78:                                               ; preds = %72, %67
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  store i64* %7, i64** %79, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 1
  store i32 8, i32* %80, align 8
  %81 = load %struct.opaque_auth*, %struct.opaque_auth** %5, align 8
  %82 = getelementptr inbounds %struct.opaque_auth, %struct.opaque_auth* %81, i32 0, i32 1
  %83 = load i64*, i64** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  store i64* %83, i64** %84, align 8
  %85 = load %struct.opaque_auth*, %struct.opaque_auth** %5, align 8
  %86 = getelementptr inbounds %struct.opaque_auth, %struct.opaque_auth* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 1
  store i32 %87, i32* %88, align 8
  %89 = load %struct.rpc_gss_data*, %struct.rpc_gss_data** %6, align 8
  %90 = getelementptr inbounds %struct.rpc_gss_data, %struct.rpc_gss_data* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = call i64 @gss_verify_mic(i64* %12, i32 %91, %struct.TYPE_10__* %9, %struct.TYPE_10__* %10, i64* %8)
  store i64 %92, i64* %11, align 8
  %93 = load i64, i64* %11, align 8
  %94 = load i64, i64* @GSS_S_COMPLETE, align 8
  %95 = icmp ne i64 %93, %94
  br i1 %95, label %103, label %96

96:                                               ; preds = %78
  %97 = load i64, i64* %8, align 8
  %98 = load %struct.rpc_gss_data*, %struct.rpc_gss_data** %6, align 8
  %99 = getelementptr inbounds %struct.rpc_gss_data, %struct.rpc_gss_data* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %97, %101
  br i1 %102, label %103, label %118

103:                                              ; preds = %96, %78
  %104 = load i64, i64* %11, align 8
  %105 = load i64, i64* %12, align 8
  %106 = call i32 @log_status(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i64 %104, i64 %105)
  %107 = load i64, i64* %11, align 8
  %108 = load i64, i64* @GSS_S_CONTEXT_EXPIRED, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %116

110:                                              ; preds = %103
  %111 = load i64, i64* @FALSE, align 8
  %112 = load %struct.rpc_gss_data*, %struct.rpc_gss_data** %6, align 8
  %113 = getelementptr inbounds %struct.rpc_gss_data, %struct.rpc_gss_data* %112, i32 0, i32 0
  store i64 %111, i64* %113, align 8
  %114 = load i32*, i32** %4, align 8
  %115 = call i32 @authgss_destroy_context(i32* %114)
  br label %116

116:                                              ; preds = %110, %103
  %117 = load i64, i64* @FALSE, align 8
  store i64 %117, i64* %3, align 8
  br label %120

118:                                              ; preds = %96
  %119 = load i64, i64* @TRUE, align 8
  store i64 %119, i64* %3, align 8
  br label %120

120:                                              ; preds = %118, %116, %34, %30
  %121 = load i64, i64* %3, align 8
  ret i64 %121
}

declare dso_local i32 @log_debug(i8*) #1

declare dso_local %struct.rpc_gss_data* @AUTH_PRIVATE(i32*) #1

declare dso_local i32* @mem_alloc(i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @memcpy(i32*, i64*, i32) #1

declare dso_local i64 @htonl(i32) #1

declare dso_local i64 @gss_verify_mic(i64*, i32, %struct.TYPE_10__*, %struct.TYPE_10__*, i64*) #1

declare dso_local i32 @log_status(i8*, i64, i64) #1

declare dso_local i32 @authgss_destroy_context(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
