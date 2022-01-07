; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libtirpc/src/extr_auth_gss.c_authgss_destroy_context.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libtirpc/src/extr_auth_gss.c_authgss_destroy_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_gss_data = type { i64, i64, %struct.TYPE_6__, %struct.TYPE_5__, i32 }
%struct.TYPE_6__ = type { i64, i32* }
%struct.TYPE_5__ = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i64 }

@.str = private unnamed_addr constant [29 x i8] c"in authgss_destroy_context()\00", align 1
@RPCSEC_GSS_DESTROY = common dso_local global i32 0, align 4
@NULLPROC = common dso_local global i32 0, align 4
@xdr_void = common dso_local global i64 0, align 8
@AUTH_TIMEOUT = common dso_local global i32 0, align 4
@GSS_C_NO_CONTEXT = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @authgss_destroy_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @authgss_destroy_context(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.rpc_gss_data*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %5 = call i32 @log_debug(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %6 = load i32*, i32** %2, align 8
  %7 = call %struct.rpc_gss_data* @AUTH_PRIVATE(i32* %6)
  store %struct.rpc_gss_data* %7, %struct.rpc_gss_data** %3, align 8
  %8 = load %struct.rpc_gss_data*, %struct.rpc_gss_data** %3, align 8
  %9 = getelementptr inbounds %struct.rpc_gss_data, %struct.rpc_gss_data* %8, i32 0, i32 3
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %43

14:                                               ; preds = %1
  %15 = load %struct.rpc_gss_data*, %struct.rpc_gss_data** %3, align 8
  %16 = getelementptr inbounds %struct.rpc_gss_data, %struct.rpc_gss_data* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %34

19:                                               ; preds = %14
  %20 = load i32, i32* @RPCSEC_GSS_DESTROY, align 4
  %21 = load %struct.rpc_gss_data*, %struct.rpc_gss_data** %3, align 8
  %22 = getelementptr inbounds %struct.rpc_gss_data, %struct.rpc_gss_data* %21, i32 0, i32 3
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 1
  store i32 %20, i32* %23, align 8
  %24 = load %struct.rpc_gss_data*, %struct.rpc_gss_data** %3, align 8
  %25 = getelementptr inbounds %struct.rpc_gss_data, %struct.rpc_gss_data* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @NULLPROC, align 4
  %28 = load i64, i64* @xdr_void, align 8
  %29 = trunc i64 %28 to i32
  %30 = load i64, i64* @xdr_void, align 8
  %31 = trunc i64 %30 to i32
  %32 = load i32, i32* @AUTH_TIMEOUT, align 4
  %33 = call i32 @clnt_call(i32 %26, i32 %27, i32 %29, i32* null, i32 %31, i32* null, i32 %32)
  br label %34

34:                                               ; preds = %19, %14
  %35 = load %struct.rpc_gss_data*, %struct.rpc_gss_data** %3, align 8
  %36 = getelementptr inbounds %struct.rpc_gss_data, %struct.rpc_gss_data* %35, i32 0, i32 3
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = call i32 @gss_release_buffer(i32* %4, %struct.TYPE_7__* %37)
  %39 = load %struct.rpc_gss_data*, %struct.rpc_gss_data** %3, align 8
  %40 = getelementptr inbounds %struct.rpc_gss_data, %struct.rpc_gss_data* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = call i32 @memset(%struct.TYPE_7__* %41, i32 0, i32 8)
  br label %43

43:                                               ; preds = %34, %1
  %44 = load %struct.rpc_gss_data*, %struct.rpc_gss_data** %3, align 8
  %45 = getelementptr inbounds %struct.rpc_gss_data, %struct.rpc_gss_data* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @GSS_C_NO_CONTEXT, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %56

49:                                               ; preds = %43
  %50 = load %struct.rpc_gss_data*, %struct.rpc_gss_data** %3, align 8
  %51 = getelementptr inbounds %struct.rpc_gss_data, %struct.rpc_gss_data* %50, i32 0, i32 0
  %52 = call i32 @gss_delete_sec_context(i32* %4, i64* %51, i32* null)
  %53 = load i64, i64* @GSS_C_NO_CONTEXT, align 8
  %54 = load %struct.rpc_gss_data*, %struct.rpc_gss_data** %3, align 8
  %55 = getelementptr inbounds %struct.rpc_gss_data, %struct.rpc_gss_data* %54, i32 0, i32 0
  store i64 %53, i64* %55, align 8
  br label %56

56:                                               ; preds = %49, %43
  %57 = load %struct.rpc_gss_data*, %struct.rpc_gss_data** %3, align 8
  %58 = getelementptr inbounds %struct.rpc_gss_data, %struct.rpc_gss_data* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = load %struct.rpc_gss_data*, %struct.rpc_gss_data** %3, align 8
  %62 = getelementptr inbounds %struct.rpc_gss_data, %struct.rpc_gss_data* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = call i32 @mem_free(i32* %60, i64 %64)
  %66 = load %struct.rpc_gss_data*, %struct.rpc_gss_data** %3, align 8
  %67 = getelementptr inbounds %struct.rpc_gss_data, %struct.rpc_gss_data* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 1
  store i32* null, i32** %68, align 8
  %69 = load %struct.rpc_gss_data*, %struct.rpc_gss_data** %3, align 8
  %70 = getelementptr inbounds %struct.rpc_gss_data, %struct.rpc_gss_data* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  store i64 0, i64* %71, align 8
  %72 = load i64, i64* @FALSE, align 8
  %73 = load %struct.rpc_gss_data*, %struct.rpc_gss_data** %3, align 8
  %74 = getelementptr inbounds %struct.rpc_gss_data, %struct.rpc_gss_data* %73, i32 0, i32 1
  store i64 %72, i64* %74, align 8
  ret void
}

declare dso_local i32 @log_debug(i8*) #1

declare dso_local %struct.rpc_gss_data* @AUTH_PRIVATE(i32*) #1

declare dso_local i32 @clnt_call(i32, i32, i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @gss_release_buffer(i32*, %struct.TYPE_7__*) #1

declare dso_local i32 @memset(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @gss_delete_sec_context(i32*, i64*, i32*) #1

declare dso_local i32 @mem_free(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
