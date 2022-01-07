; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libtirpc/src/extr_auth_sspi.c_authsspi_create_default.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libtirpc/src/extr_auth_sspi.c_authsspi_create_default.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_7__ = type { i8*, i32 }
%struct.rpc_sspi_sec = type { i32, i32, i32 }

@SSPI_C_NO_NAME = common dso_local global i64 0, align 8
@__const.authsspi_create_default.sec_pkg_name = private unnamed_addr constant [9 x i8] c"Kerberos\00", align 1
@.str = private unnamed_addr constant [35 x i8] c"in authgss_create_default() for %s\00", align 1
@SEC_E_OK = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [56 x i8] c"authgss_create_default: sspi_import_name failed with %x\00", align 1
@SECPKG_CRED_BOTH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [65 x i8] c"authgss_create_default: AcquireCredentialsHandleA failed with %x\00", align 1
@rpc_createerr = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@ENOMEM = common dso_local global i64 0, align 8
@RPC_SYSTEMERROR = common dso_local global i32 0, align 4
@GSS_C_NT_HOSTBASED_SERVICE = common dso_local global i64 0, align 8
@min_stat = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @authsspi_create_default(i32* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_7__, align 8
  %11 = alloca i64, align 8
  %12 = alloca [9 x i8], align 1
  %13 = alloca %struct.rpc_sspi_sec*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* null, i32** %8, align 8
  store i8* null, i8** %9, align 8
  %14 = load i64, i64* @SSPI_C_NO_NAME, align 8
  store i64 %14, i64* %11, align 8
  %15 = bitcast [9 x i8]* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %15, i8* align 1 getelementptr inbounds ([9 x i8], [9 x i8]* @__const.authsspi_create_default.sec_pkg_name, i32 0, i32 0), i64 9, i1 false)
  %16 = load i8*, i8** %6, align 8
  %17 = call i32 @log_debug(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i8* %16)
  %18 = load i8*, i8** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  store i8* %18, i8** %19, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = call i64 @strlen(i8* %20)
  %22 = trunc i64 %21 to i32
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 1
  store i32 %22, i32* %23, align 8
  %24 = call i8* @sspi_import_name(%struct.TYPE_7__* %10, i64* %11)
  store i8* %24, i8** %9, align 8
  %25 = load i8*, i8** %9, align 8
  %26 = load i8*, i8** @SEC_E_OK, align 8
  %27 = icmp ne i8* %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %3
  %29 = load i8*, i8** %9, align 8
  %30 = call i32 @log_debug(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i8* %29)
  store i32* null, i32** %4, align 8
  br label %88

31:                                               ; preds = %3
  %32 = call %struct.rpc_sspi_sec* @calloc(i32 1, i32 12)
  store %struct.rpc_sspi_sec* %32, %struct.rpc_sspi_sec** %13, align 8
  %33 = load %struct.rpc_sspi_sec*, %struct.rpc_sspi_sec** %13, align 8
  %34 = icmp eq %struct.rpc_sspi_sec* %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  br label %85

36:                                               ; preds = %31
  %37 = load i32, i32* %7, align 4
  %38 = load %struct.rpc_sspi_sec*, %struct.rpc_sspi_sec** %13, align 8
  %39 = getelementptr inbounds %struct.rpc_sspi_sec, %struct.rpc_sspi_sec* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  %40 = getelementptr inbounds [9 x i8], [9 x i8]* %12, i64 0, i64 0
  %41 = load i32, i32* @SECPKG_CRED_BOTH, align 4
  %42 = load %struct.rpc_sspi_sec*, %struct.rpc_sspi_sec** %13, align 8
  %43 = getelementptr inbounds %struct.rpc_sspi_sec, %struct.rpc_sspi_sec* %42, i32 0, i32 1
  %44 = load %struct.rpc_sspi_sec*, %struct.rpc_sspi_sec** %13, align 8
  %45 = getelementptr inbounds %struct.rpc_sspi_sec, %struct.rpc_sspi_sec* %44, i32 0, i32 2
  %46 = call i8* @AcquireCredentialsHandleA(i32* null, i8* %40, i32 %41, i32* null, i32* null, i32* null, i32* null, i32* %43, i32* %45)
  store i8* %46, i8** %9, align 8
  %47 = load i8*, i8** %9, align 8
  %48 = load i8*, i8** @SEC_E_OK, align 8
  %49 = icmp ne i8* %47, %48
  br i1 %49, label %50, label %55

50:                                               ; preds = %36
  %51 = load i8*, i8** %9, align 8
  %52 = call i32 @log_debug(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.2, i64 0, i64 0), i8* %51)
  %53 = load %struct.rpc_sspi_sec*, %struct.rpc_sspi_sec** %13, align 8
  %54 = call i32 @free(%struct.rpc_sspi_sec* %53)
  br label %64

55:                                               ; preds = %36
  %56 = load i32*, i32** %5, align 8
  %57 = load i64, i64* %11, align 8
  %58 = load %struct.rpc_sspi_sec*, %struct.rpc_sspi_sec** %13, align 8
  %59 = call i32* @authsspi_create(i32* %56, i64 %57, %struct.rpc_sspi_sec* %58)
  store i32* %59, i32** %8, align 8
  %60 = load i32*, i32** %8, align 8
  %61 = icmp eq i32* %60, null
  br i1 %61, label %62, label %63

62:                                               ; preds = %55
  br label %74

63:                                               ; preds = %55
  br label %64

64:                                               ; preds = %85, %63, %50
  %65 = load i64, i64* %11, align 8
  %66 = load i64, i64* @SSPI_C_NO_NAME, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %72

68:                                               ; preds = %64
  %69 = load i64, i64* %11, align 8
  %70 = inttoptr i64 %69 to %struct.rpc_sspi_sec*
  %71 = call i32 @free(%struct.rpc_sspi_sec* %70)
  br label %72

72:                                               ; preds = %68, %64
  %73 = load i32*, i32** %8, align 8
  store i32* %73, i32** %4, align 8
  br label %88

74:                                               ; preds = %62
  %75 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @rpc_createerr, i32 0, i32 0, i32 0), align 8
  %76 = load i64, i64* @ENOMEM, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %84

78:                                               ; preds = %74
  %79 = load %struct.rpc_sspi_sec*, %struct.rpc_sspi_sec** %13, align 8
  %80 = getelementptr inbounds %struct.rpc_sspi_sec, %struct.rpc_sspi_sec* %79, i32 0, i32 1
  %81 = call i32 @FreeCredentialsHandle(i32* %80)
  %82 = load %struct.rpc_sspi_sec*, %struct.rpc_sspi_sec** %13, align 8
  %83 = call i32 @free(%struct.rpc_sspi_sec* %82)
  br label %84

84:                                               ; preds = %78, %74
  br label %85

85:                                               ; preds = %84, %35
  %86 = load i32, i32* @RPC_SYSTEMERROR, align 4
  store i32 %86, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @rpc_createerr, i32 0, i32 1), align 8
  %87 = load i64, i64* @ENOMEM, align 8
  store i64 %87, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @rpc_createerr, i32 0, i32 0, i32 0), align 8
  br label %64

88:                                               ; preds = %72, %28
  %89 = load i32*, i32** %4, align 8
  ret i32* %89
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @log_debug(i8*, i8*) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i8* @sspi_import_name(%struct.TYPE_7__*, i64*) #2

declare dso_local %struct.rpc_sspi_sec* @calloc(i32, i32) #2

declare dso_local i8* @AcquireCredentialsHandleA(i32*, i8*, i32, i32*, i32*, i32*, i32*, i32*, i32*) #2

declare dso_local i32 @free(%struct.rpc_sspi_sec*) #2

declare dso_local i32* @authsspi_create(i32*, i64, %struct.rpc_sspi_sec*) #2

declare dso_local i32 @FreeCredentialsHandle(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
