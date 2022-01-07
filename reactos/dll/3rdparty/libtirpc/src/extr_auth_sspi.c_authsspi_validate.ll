; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libtirpc/src/extr_auth_sspi.c_authsspi_validate.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libtirpc/src/extr_auth_sspi.c_authsspi_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.opaque_auth = type { i32, i32* }
%struct.rpc_sspi_data = type { i64, i32, i32, %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i64, i32 }
%struct.TYPE_8__ = type { i32, i32* }
%struct.TYPE_10__ = type { i32*, i32 }

@.str = private unnamed_addr constant [32 x i8] c"in authgss_validate(for seq=%d)\00", align 1
@FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@RPCSEC_SSPI_DESTROY = common dso_local global i64 0, align 8
@RPCSEC_SSPI_INIT = common dso_local global i64 0, align 8
@RPCSEC_SSPI_CONTINUE_INIT = common dso_local global i64 0, align 8
@SEC_E_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [50 x i8] c"authsspi_validate: VerifySignature failed with %x\00", align 1
@SEC_E_NO_AUTHENTICATING_AUTHORITY = common dso_local global i64 0, align 8
@min_stat = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, %struct.opaque_auth*, i32)* @authsspi_validate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @authsspi_validate(i32* %0, %struct.opaque_auth* %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.opaque_auth*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.rpc_sspi_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_10__, align 8
  %13 = alloca %struct.TYPE_10__, align 8
  %14 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store %struct.opaque_auth* %1, %struct.opaque_auth** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = sext i32 %15 to i64
  %17 = call i32 @log_debug(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %16)
  %18 = load i32*, i32** %5, align 8
  %19 = call %struct.rpc_sspi_data* @AUTH_PRIVATE(i32* %18)
  store %struct.rpc_sspi_data* %19, %struct.rpc_sspi_data** %8, align 8
  %20 = load %struct.rpc_sspi_data*, %struct.rpc_sspi_data** %8, align 8
  %21 = getelementptr inbounds %struct.rpc_sspi_data, %struct.rpc_sspi_data* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @FALSE, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %55

25:                                               ; preds = %3
  %26 = load %struct.opaque_auth*, %struct.opaque_auth** %6, align 8
  %27 = getelementptr inbounds %struct.opaque_auth, %struct.opaque_auth* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32* @mem_alloc(i32 %28)
  %30 = load %struct.rpc_sspi_data*, %struct.rpc_sspi_data** %8, align 8
  %31 = getelementptr inbounds %struct.rpc_sspi_data, %struct.rpc_sspi_data* %30, i32 0, i32 4
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 1
  store i32* %29, i32** %32, align 8
  %33 = icmp eq i32* %29, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %25
  %35 = load i64, i64* @FALSE, align 8
  store i64 %35, i64* %4, align 8
  br label %135

36:                                               ; preds = %25
  %37 = load %struct.rpc_sspi_data*, %struct.rpc_sspi_data** %8, align 8
  %38 = getelementptr inbounds %struct.rpc_sspi_data, %struct.rpc_sspi_data* %37, i32 0, i32 4
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = load %struct.opaque_auth*, %struct.opaque_auth** %6, align 8
  %42 = getelementptr inbounds %struct.opaque_auth, %struct.opaque_auth* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = load %struct.opaque_auth*, %struct.opaque_auth** %6, align 8
  %45 = getelementptr inbounds %struct.opaque_auth, %struct.opaque_auth* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @memcpy(i32* %40, i32* %43, i32 %46)
  %48 = load %struct.opaque_auth*, %struct.opaque_auth** %6, align 8
  %49 = getelementptr inbounds %struct.opaque_auth, %struct.opaque_auth* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.rpc_sspi_data*, %struct.rpc_sspi_data** %8, align 8
  %52 = getelementptr inbounds %struct.rpc_sspi_data, %struct.rpc_sspi_data* %51, i32 0, i32 4
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  store i32 %50, i32* %53, align 8
  %54 = load i64, i64* @TRUE, align 8
  store i64 %54, i64* %4, align 8
  br label %135

55:                                               ; preds = %3
  %56 = load %struct.rpc_sspi_data*, %struct.rpc_sspi_data** %8, align 8
  %57 = getelementptr inbounds %struct.rpc_sspi_data, %struct.rpc_sspi_data* %56, i32 0, i32 3
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @RPCSEC_SSPI_DESTROY, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %55
  %63 = load i64, i64* @TRUE, align 8
  store i64 %63, i64* %4, align 8
  br label %135

64:                                               ; preds = %55
  %65 = load %struct.rpc_sspi_data*, %struct.rpc_sspi_data** %8, align 8
  %66 = getelementptr inbounds %struct.rpc_sspi_data, %struct.rpc_sspi_data* %65, i32 0, i32 3
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @RPCSEC_SSPI_INIT, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %78, label %71

71:                                               ; preds = %64
  %72 = load %struct.rpc_sspi_data*, %struct.rpc_sspi_data** %8, align 8
  %73 = getelementptr inbounds %struct.rpc_sspi_data, %struct.rpc_sspi_data* %72, i32 0, i32 3
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @RPCSEC_SSPI_CONTINUE_INIT, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %83

78:                                               ; preds = %71, %64
  %79 = load %struct.rpc_sspi_data*, %struct.rpc_sspi_data** %8, align 8
  %80 = getelementptr inbounds %struct.rpc_sspi_data, %struct.rpc_sspi_data* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @htonl(i32 %81)
  store i32 %82, i32* %9, align 4
  br label %101

83:                                               ; preds = %71
  %84 = load i32, i32* %7, align 4
  %85 = icmp eq i32 %84, -1
  br i1 %85, label %86, label %96

86:                                               ; preds = %83
  %87 = load %struct.rpc_sspi_data*, %struct.rpc_sspi_data** %8, align 8
  %88 = getelementptr inbounds %struct.rpc_sspi_data, %struct.rpc_sspi_data* %87, i32 0, i32 3
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @htonl(i32 %90)
  store i32 %91, i32* %9, align 4
  %92 = load %struct.rpc_sspi_data*, %struct.rpc_sspi_data** %8, align 8
  %93 = getelementptr inbounds %struct.rpc_sspi_data, %struct.rpc_sspi_data* %92, i32 0, i32 3
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  store i32 %95, i32* %11, align 4
  br label %100

96:                                               ; preds = %83
  %97 = load i32, i32* %7, align 4
  %98 = call i32 @htonl(i32 %97)
  store i32 %98, i32* %9, align 4
  %99 = load i32, i32* %7, align 4
  store i32 %99, i32* %11, align 4
  br label %100

100:                                              ; preds = %96, %86
  br label %101

101:                                              ; preds = %100, %78
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  store i32* %9, i32** %102, align 8
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 1
  store i32 4, i32* %103, align 8
  %104 = load %struct.opaque_auth*, %struct.opaque_auth** %6, align 8
  %105 = getelementptr inbounds %struct.opaque_auth, %struct.opaque_auth* %104, i32 0, i32 1
  %106 = load i32*, i32** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  store i32* %106, i32** %107, align 8
  %108 = load %struct.opaque_auth*, %struct.opaque_auth** %6, align 8
  %109 = getelementptr inbounds %struct.opaque_auth, %struct.opaque_auth* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 1
  store i32 %110, i32* %111, align 8
  %112 = load %struct.rpc_sspi_data*, %struct.rpc_sspi_data** %8, align 8
  %113 = getelementptr inbounds %struct.rpc_sspi_data, %struct.rpc_sspi_data* %112, i32 0, i32 2
  %114 = load i32, i32* %11, align 4
  %115 = call i64 @sspi_verify_mic(i32* %113, i32 %114, %struct.TYPE_10__* %12, %struct.TYPE_10__* %13, i32* %10)
  store i64 %115, i64* %14, align 8
  %116 = load i64, i64* %14, align 8
  %117 = load i64, i64* @SEC_E_OK, align 8
  %118 = icmp ne i64 %116, %117
  br i1 %118, label %119, label %133

119:                                              ; preds = %101
  %120 = load i64, i64* %14, align 8
  %121 = call i32 @log_debug(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i64 %120)
  %122 = load i64, i64* %14, align 8
  %123 = load i64, i64* @SEC_E_NO_AUTHENTICATING_AUTHORITY, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %125, label %131

125:                                              ; preds = %119
  %126 = load i64, i64* @FALSE, align 8
  %127 = load %struct.rpc_sspi_data*, %struct.rpc_sspi_data** %8, align 8
  %128 = getelementptr inbounds %struct.rpc_sspi_data, %struct.rpc_sspi_data* %127, i32 0, i32 0
  store i64 %126, i64* %128, align 8
  %129 = load i32*, i32** %5, align 8
  %130 = call i32 @authsspi_destroy_context(i32* %129)
  br label %131

131:                                              ; preds = %125, %119
  %132 = load i64, i64* @FALSE, align 8
  store i64 %132, i64* %4, align 8
  br label %135

133:                                              ; preds = %101
  %134 = load i64, i64* @TRUE, align 8
  store i64 %134, i64* %4, align 8
  br label %135

135:                                              ; preds = %133, %131, %62, %36, %34
  %136 = load i64, i64* %4, align 8
  ret i64 %136
}

declare dso_local i32 @log_debug(i8*, i64) #1

declare dso_local %struct.rpc_sspi_data* @AUTH_PRIVATE(i32*) #1

declare dso_local i32* @mem_alloc(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i64 @sspi_verify_mic(i32*, i32, %struct.TYPE_10__*, %struct.TYPE_10__*, i32*) #1

declare dso_local i32 @authsspi_destroy_context(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
