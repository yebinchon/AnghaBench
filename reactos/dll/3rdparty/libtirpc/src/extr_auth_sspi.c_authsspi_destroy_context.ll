; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libtirpc/src/extr_auth_sspi.c_authsspi_destroy_context.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libtirpc/src/extr_auth_sspi.c_authsspi_destroy_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_sspi_data = type { i64, %struct.TYPE_4__, i32, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i64, i32* }
%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [29 x i8] c"in authgss_destroy_context()\00", align 1
@RPCSEC_SSPI_DESTROY = common dso_local global i32 0, align 4
@NULLPROC = common dso_local global i32 0, align 4
@xdr_void = common dso_local global i64 0, align 8
@AUTH_TIMEOUT = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@min_stat = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @authsspi_destroy_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @authsspi_destroy_context(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.rpc_sspi_data*, align 8
  store i32* %0, i32** %2, align 8
  %4 = call i32 @log_debug(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %5 = load i32*, i32** %2, align 8
  %6 = call %struct.rpc_sspi_data* @AUTH_PRIVATE(i32* %5)
  store %struct.rpc_sspi_data* %6, %struct.rpc_sspi_data** %3, align 8
  %7 = load %struct.rpc_sspi_data*, %struct.rpc_sspi_data** %3, align 8
  %8 = icmp eq %struct.rpc_sspi_data* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %65

10:                                               ; preds = %1
  %11 = load %struct.rpc_sspi_data*, %struct.rpc_sspi_data** %3, align 8
  %12 = getelementptr inbounds %struct.rpc_sspi_data, %struct.rpc_sspi_data* %11, i32 0, i32 2
  %13 = call i64 @SecIsValidHandle(i32* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %46

15:                                               ; preds = %10
  %16 = load %struct.rpc_sspi_data*, %struct.rpc_sspi_data** %3, align 8
  %17 = getelementptr inbounds %struct.rpc_sspi_data, %struct.rpc_sspi_data* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %38

20:                                               ; preds = %15
  %21 = load i32, i32* @RPCSEC_SSPI_DESTROY, align 4
  %22 = load %struct.rpc_sspi_data*, %struct.rpc_sspi_data** %3, align 8
  %23 = getelementptr inbounds %struct.rpc_sspi_data, %struct.rpc_sspi_data* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  store i32 %21, i32* %24, align 4
  %25 = load %struct.rpc_sspi_data*, %struct.rpc_sspi_data** %3, align 8
  %26 = getelementptr inbounds %struct.rpc_sspi_data, %struct.rpc_sspi_data* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @NULLPROC, align 4
  %29 = load i64, i64* @xdr_void, align 8
  %30 = trunc i64 %29 to i32
  %31 = load i64, i64* @xdr_void, align 8
  %32 = trunc i64 %31 to i32
  %33 = load i32, i32* @AUTH_TIMEOUT, align 4
  %34 = call i32 @clnt_call(i32 %27, i32 %28, i32 %30, i32* null, i32 %32, i32* null, i32 %33)
  %35 = load %struct.rpc_sspi_data*, %struct.rpc_sspi_data** %3, align 8
  %36 = getelementptr inbounds %struct.rpc_sspi_data, %struct.rpc_sspi_data* %35, i32 0, i32 2
  %37 = call i32 @DeleteSecurityContext(i32* %36)
  br label %38

38:                                               ; preds = %20, %15
  %39 = load %struct.rpc_sspi_data*, %struct.rpc_sspi_data** %3, align 8
  %40 = getelementptr inbounds %struct.rpc_sspi_data, %struct.rpc_sspi_data* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = call i32 @sspi_release_buffer(i32* %41)
  %43 = load %struct.rpc_sspi_data*, %struct.rpc_sspi_data** %3, align 8
  %44 = getelementptr inbounds %struct.rpc_sspi_data, %struct.rpc_sspi_data* %43, i32 0, i32 2
  %45 = call i32 @SecInvalidateHandle(i32* %44)
  br label %46

46:                                               ; preds = %38, %10
  %47 = load %struct.rpc_sspi_data*, %struct.rpc_sspi_data** %3, align 8
  %48 = getelementptr inbounds %struct.rpc_sspi_data, %struct.rpc_sspi_data* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = load %struct.rpc_sspi_data*, %struct.rpc_sspi_data** %3, align 8
  %52 = getelementptr inbounds %struct.rpc_sspi_data, %struct.rpc_sspi_data* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @mem_free(i32* %50, i64 %54)
  %56 = load %struct.rpc_sspi_data*, %struct.rpc_sspi_data** %3, align 8
  %57 = getelementptr inbounds %struct.rpc_sspi_data, %struct.rpc_sspi_data* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 1
  store i32* null, i32** %58, align 8
  %59 = load %struct.rpc_sspi_data*, %struct.rpc_sspi_data** %3, align 8
  %60 = getelementptr inbounds %struct.rpc_sspi_data, %struct.rpc_sspi_data* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  store i64 0, i64* %61, align 8
  %62 = load i64, i64* @FALSE, align 8
  %63 = load %struct.rpc_sspi_data*, %struct.rpc_sspi_data** %3, align 8
  %64 = getelementptr inbounds %struct.rpc_sspi_data, %struct.rpc_sspi_data* %63, i32 0, i32 0
  store i64 %62, i64* %64, align 8
  br label %65

65:                                               ; preds = %46, %9
  ret void
}

declare dso_local i32 @log_debug(i8*) #1

declare dso_local %struct.rpc_sspi_data* @AUTH_PRIVATE(i32*) #1

declare dso_local i64 @SecIsValidHandle(i32*) #1

declare dso_local i32 @clnt_call(i32, i32, i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @DeleteSecurityContext(i32*) #1

declare dso_local i32 @sspi_release_buffer(i32*) #1

declare dso_local i32 @SecInvalidateHandle(i32*) #1

declare dso_local i32 @mem_free(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
