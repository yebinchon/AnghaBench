; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libtirpc/src/extr_auth_sspi.c_authsspi_marshal.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libtirpc/src/extr_auth_sspi.c_authsspi_marshal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i8*, i64, i8* }
%struct.TYPE_18__ = type { %struct.TYPE_20__, %struct.TYPE_20__ }
%struct.rpc_sspi_data = type { i64, %struct.TYPE_19__, i32, %struct.TYPE_16__ }
%struct.TYPE_19__ = type { i64, i64 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_17__ = type { i8*, i64 }

@MAX_AUTH_BYTES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"in authgss_marshal()\00", align 1
@XDR_ENCODE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"authsspi_marshal: xdr_rpc_sspi_cred failed\00", align 1
@FALSE = common dso_local global i64 0, align 8
@RPCSEC_GSS = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [41 x i8] c"authsspi_marshal: failed to xdr GSS CRED\00", align 1
@RPCSEC_SSPI_INIT = common dso_local global i64 0, align 8
@RPCSEC_SSPI_CONTINUE_INIT = common dso_local global i64 0, align 8
@_null_auth = common dso_local global %struct.TYPE_20__ zeroinitializer, align 8
@SEC_E_OK = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [46 x i8] c"authsspi_marshal: sspi_get_mic failed with %x\00", align 1
@SEC_E_NO_AUTHENTICATING_AUTHORITY = common dso_local global i64 0, align 8
@min_stat = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_18__*, i32*, i64*)* @authsspi_marshal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @authsspi_marshal(%struct.TYPE_18__* %0, i32* %1, i64* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.rpc_sspi_data*, align 8
  %12 = alloca %struct.TYPE_17__, align 8
  %13 = alloca %struct.TYPE_17__, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64* %2, i64** %7, align 8
  %17 = load i32, i32* @MAX_AUTH_BYTES, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %9, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %10, align 8
  %21 = call i32 (i8*, ...) @log_debug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %23 = call %struct.rpc_sspi_data* @AUTH_PRIVATE(%struct.TYPE_18__* %22)
  store %struct.rpc_sspi_data* %23, %struct.rpc_sspi_data** %11, align 8
  %24 = load %struct.rpc_sspi_data*, %struct.rpc_sspi_data** %11, align 8
  %25 = getelementptr inbounds %struct.rpc_sspi_data, %struct.rpc_sspi_data* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %39

28:                                               ; preds = %3
  %29 = load %struct.rpc_sspi_data*, %struct.rpc_sspi_data** %11, align 8
  %30 = getelementptr inbounds %struct.rpc_sspi_data, %struct.rpc_sspi_data* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %32, 1
  store i64 %33, i64* %31, align 8
  %34 = load %struct.rpc_sspi_data*, %struct.rpc_sspi_data** %11, align 8
  %35 = getelementptr inbounds %struct.rpc_sspi_data, %struct.rpc_sspi_data* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64*, i64** %7, align 8
  store i64 %37, i64* %38, align 8
  br label %39

39:                                               ; preds = %28, %3
  %40 = trunc i64 %18 to i32
  %41 = load i32, i32* @XDR_ENCODE, align 4
  %42 = call i32 @xdrmem_create(i32* %8, i8* %20, i32 %40, i32 %41)
  %43 = load %struct.rpc_sspi_data*, %struct.rpc_sspi_data** %11, align 8
  %44 = getelementptr inbounds %struct.rpc_sspi_data, %struct.rpc_sspi_data* %43, i32 0, i32 1
  %45 = call i32 @xdr_rpc_sspi_cred(i32* %8, %struct.TYPE_19__* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %39
  %48 = call i32 (i8*, ...) @log_debug(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %49 = call i32 @XDR_DESTROY(i32* %8)
  %50 = load i64, i64* @FALSE, align 8
  store i64 %50, i64* %4, align 8
  store i32 1, i32* %16, align 4
  br label %143

51:                                               ; preds = %39
  %52 = load i8*, i8** @RPCSEC_GSS, align 8
  %53 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %54, i32 0, i32 2
  store i8* %52, i8** %55, align 8
  %56 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %57, i32 0, i32 0
  store i8* %20, i8** %58, align 8
  %59 = call i64 @XDR_GETPOS(i32* %8)
  %60 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %61, i32 0, i32 1
  store i64 %59, i64* %62, align 8
  %63 = call i32 @XDR_DESTROY(i32* %8)
  %64 = load i32*, i32** %6, align 8
  %65 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %65, i32 0, i32 1
  %67 = call i64 @xdr_opaque_auth(i32* %64, %struct.TYPE_20__* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %72, label %69

69:                                               ; preds = %51
  %70 = call i32 (i8*, ...) @log_debug(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %71 = load i64, i64* @FALSE, align 8
  store i64 %71, i64* %4, align 8
  store i32 1, i32* %16, align 4
  br label %143

72:                                               ; preds = %51
  %73 = load %struct.rpc_sspi_data*, %struct.rpc_sspi_data** %11, align 8
  %74 = getelementptr inbounds %struct.rpc_sspi_data, %struct.rpc_sspi_data* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @RPCSEC_SSPI_INIT, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %86, label %79

79:                                               ; preds = %72
  %80 = load %struct.rpc_sspi_data*, %struct.rpc_sspi_data** %11, align 8
  %81 = getelementptr inbounds %struct.rpc_sspi_data, %struct.rpc_sspi_data* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @RPCSEC_SSPI_CONTINUE_INIT, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %89

86:                                               ; preds = %79, %72
  %87 = load i32*, i32** %6, align 8
  %88 = call i64 @xdr_opaque_auth(i32* %87, %struct.TYPE_20__* @_null_auth)
  store i64 %88, i64* %4, align 8
  store i32 1, i32* %16, align 4
  br label %143

89:                                               ; preds = %79
  %90 = load i32*, i32** %6, align 8
  %91 = call i64 @XDR_GETPOS(i32* %90)
  %92 = sub nsw i64 %91, 4
  %93 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 1
  store i64 %92, i64* %93, align 8
  %94 = load i32*, i32** %6, align 8
  %95 = call i8* @xdrrec_getoutbase(i32* %94)
  %96 = getelementptr inbounds i8, i8* %95, i64 1
  %97 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 0
  store i8* %96, i8** %97, align 8
  %98 = load %struct.rpc_sspi_data*, %struct.rpc_sspi_data** %11, align 8
  %99 = getelementptr inbounds %struct.rpc_sspi_data, %struct.rpc_sspi_data* %98, i32 0, i32 2
  %100 = load %struct.rpc_sspi_data*, %struct.rpc_sspi_data** %11, align 8
  %101 = getelementptr inbounds %struct.rpc_sspi_data, %struct.rpc_sspi_data* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = call i64 @sspi_get_mic(i32* %99, i32 0, i64 %103, %struct.TYPE_17__* %12, %struct.TYPE_17__* %13)
  store i64 %104, i64* %14, align 8
  %105 = load i64, i64* %14, align 8
  %106 = load i64, i64* @SEC_E_OK, align 8
  %107 = icmp ne i64 %105, %106
  br i1 %107, label %108, label %122

108:                                              ; preds = %89
  %109 = load i64, i64* %14, align 8
  %110 = call i32 (i8*, ...) @log_debug(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i64 %109)
  %111 = load i64, i64* %14, align 8
  %112 = load i64, i64* @SEC_E_NO_AUTHENTICATING_AUTHORITY, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %120

114:                                              ; preds = %108
  %115 = load i64, i64* @FALSE, align 8
  %116 = load %struct.rpc_sspi_data*, %struct.rpc_sspi_data** %11, align 8
  %117 = getelementptr inbounds %struct.rpc_sspi_data, %struct.rpc_sspi_data* %116, i32 0, i32 0
  store i64 %115, i64* %117, align 8
  %118 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %119 = call i32 @authsspi_destroy_context(%struct.TYPE_18__* %118)
  br label %120

120:                                              ; preds = %114, %108
  %121 = load i64, i64* @FALSE, align 8
  store i64 %121, i64* %4, align 8
  store i32 1, i32* %16, align 4
  br label %143

122:                                              ; preds = %89
  %123 = load i8*, i8** @RPCSEC_GSS, align 8
  %124 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %125, i32 0, i32 2
  store i8* %123, i8** %126, align 8
  %127 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %13, i32 0, i32 0
  %128 = load i8*, i8** %127, align 8
  %129 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %130, i32 0, i32 0
  store i8* %128, i8** %131, align 8
  %132 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %13, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %135, i32 0, i32 1
  store i64 %133, i64* %136, align 8
  %137 = load i32*, i32** %6, align 8
  %138 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %138, i32 0, i32 0
  %140 = call i64 @xdr_opaque_auth(i32* %137, %struct.TYPE_20__* %139)
  store i64 %140, i64* %15, align 8
  %141 = call i32 @sspi_release_buffer(%struct.TYPE_17__* %13)
  %142 = load i64, i64* %15, align 8
  store i64 %142, i64* %4, align 8
  store i32 1, i32* %16, align 4
  br label %143

143:                                              ; preds = %122, %120, %86, %69, %47
  %144 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %144)
  %145 = load i64, i64* %4, align 8
  ret i64 %145
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @log_debug(i8*, ...) #2

declare dso_local %struct.rpc_sspi_data* @AUTH_PRIVATE(%struct.TYPE_18__*) #2

declare dso_local i32 @xdrmem_create(i32*, i8*, i32, i32) #2

declare dso_local i32 @xdr_rpc_sspi_cred(i32*, %struct.TYPE_19__*) #2

declare dso_local i32 @XDR_DESTROY(i32*) #2

declare dso_local i64 @XDR_GETPOS(i32*) #2

declare dso_local i64 @xdr_opaque_auth(i32*, %struct.TYPE_20__*) #2

declare dso_local i8* @xdrrec_getoutbase(i32*) #2

declare dso_local i64 @sspi_get_mic(i32*, i32, i64, %struct.TYPE_17__*, %struct.TYPE_17__*) #2

declare dso_local i32 @authsspi_destroy_context(%struct.TYPE_18__*) #2

declare dso_local i32 @sspi_release_buffer(%struct.TYPE_17__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
