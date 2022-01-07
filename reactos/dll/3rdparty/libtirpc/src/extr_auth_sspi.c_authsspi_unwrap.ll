; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libtirpc/src/extr_auth_sspi.c_authsspi_unwrap.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libtirpc/src/extr_auth_sspi.c_authsspi_unwrap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_sspi_data = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i64, i32 }

@.str = private unnamed_addr constant [20 x i8] c"in authgss_unwrap()\00", align 1
@RPCSEC_SSPI_SVC_NONE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @authsspi_unwrap(i32* %0, i32* %1, i32 (i32*, i32)* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32 (i32*, i32)*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.rpc_sspi_data*, align 8
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 (i32*, i32)* %2, i32 (i32*, i32)** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %13 = call i32 @log_debug(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %14 = load i32*, i32** %7, align 8
  %15 = call %struct.rpc_sspi_data* @AUTH_PRIVATE(i32* %14)
  store %struct.rpc_sspi_data* %15, %struct.rpc_sspi_data** %12, align 8
  %16 = load %struct.rpc_sspi_data*, %struct.rpc_sspi_data** %12, align 8
  %17 = getelementptr inbounds %struct.rpc_sspi_data, %struct.rpc_sspi_data* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %5
  %21 = load %struct.rpc_sspi_data*, %struct.rpc_sspi_data** %12, align 8
  %22 = getelementptr inbounds %struct.rpc_sspi_data, %struct.rpc_sspi_data* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @RPCSEC_SSPI_SVC_NONE, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %20, %5
  %29 = load i32 (i32*, i32)*, i32 (i32*, i32)** %9, align 8
  %30 = load i32*, i32** %8, align 8
  %31 = load i32, i32* %10, align 4
  %32 = call i32 %29(i32* %30, i32 %31)
  store i32 %32, i32* %6, align 4
  br label %51

33:                                               ; preds = %20
  %34 = load i32*, i32** %8, align 8
  %35 = load i32 (i32*, i32)*, i32 (i32*, i32)** %9, align 8
  %36 = load i32, i32* %10, align 4
  %37 = load %struct.rpc_sspi_data*, %struct.rpc_sspi_data** %12, align 8
  %38 = getelementptr inbounds %struct.rpc_sspi_data, %struct.rpc_sspi_data* %37, i32 0, i32 1
  %39 = load %struct.rpc_sspi_data*, %struct.rpc_sspi_data** %12, align 8
  %40 = getelementptr inbounds %struct.rpc_sspi_data, %struct.rpc_sspi_data* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.rpc_sspi_data*, %struct.rpc_sspi_data** %12, align 8
  %45 = getelementptr inbounds %struct.rpc_sspi_data, %struct.rpc_sspi_data* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i32, i32* %11, align 4
  %50 = call i32 @xdr_rpc_sspi_data(i32* %34, i32 (i32*, i32)* %35, i32 %36, i32* %38, i32 %43, i64 %48, i32 %49)
  store i32 %50, i32* %6, align 4
  br label %51

51:                                               ; preds = %33, %28
  %52 = load i32, i32* %6, align 4
  ret i32 %52
}

declare dso_local i32 @log_debug(i8*) #1

declare dso_local %struct.rpc_sspi_data* @AUTH_PRIVATE(i32*) #1

declare dso_local i32 @xdr_rpc_sspi_data(i32*, i32 (i32*, i32)*, i32, i32*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
