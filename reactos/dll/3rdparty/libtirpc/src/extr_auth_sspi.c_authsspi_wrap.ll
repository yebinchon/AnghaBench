; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libtirpc/src/extr_auth_sspi.c_authsspi_wrap.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libtirpc/src/extr_auth_sspi.c_authsspi_wrap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_sspi_data = type { %struct.TYPE_3__, %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i64, i32 }

@.str = private unnamed_addr constant [18 x i8] c"in authgss_wrap()\00", align 1
@RPCSEC_SSPI_SVC_NONE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @authsspi_wrap(i32* %0, i32* %1, i32 (i32*, i32)* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32 (i32*, i32)*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.rpc_sspi_data*, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 (i32*, i32)* %2, i32 (i32*, i32)** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = call i32 @log_debug(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %12 = load i32*, i32** %6, align 8
  %13 = call %struct.rpc_sspi_data* @AUTH_PRIVATE(i32* %12)
  store %struct.rpc_sspi_data* %13, %struct.rpc_sspi_data** %10, align 8
  %14 = load %struct.rpc_sspi_data*, %struct.rpc_sspi_data** %10, align 8
  %15 = getelementptr inbounds %struct.rpc_sspi_data, %struct.rpc_sspi_data* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %4
  %19 = load %struct.rpc_sspi_data*, %struct.rpc_sspi_data** %10, align 8
  %20 = getelementptr inbounds %struct.rpc_sspi_data, %struct.rpc_sspi_data* %19, i32 0, i32 1
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @RPCSEC_SSPI_SVC_NONE, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %18, %4
  %27 = load i32 (i32*, i32)*, i32 (i32*, i32)** %8, align 8
  %28 = load i32*, i32** %7, align 8
  %29 = load i32, i32* %9, align 4
  %30 = call i32 %27(i32* %28, i32 %29)
  store i32 %30, i32* %5, align 4
  br label %52

31:                                               ; preds = %18
  %32 = load i32*, i32** %7, align 8
  %33 = load i32 (i32*, i32)*, i32 (i32*, i32)** %8, align 8
  %34 = load i32, i32* %9, align 4
  %35 = load %struct.rpc_sspi_data*, %struct.rpc_sspi_data** %10, align 8
  %36 = getelementptr inbounds %struct.rpc_sspi_data, %struct.rpc_sspi_data* %35, i32 0, i32 2
  %37 = load %struct.rpc_sspi_data*, %struct.rpc_sspi_data** %10, align 8
  %38 = getelementptr inbounds %struct.rpc_sspi_data, %struct.rpc_sspi_data* %37, i32 0, i32 1
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.rpc_sspi_data*, %struct.rpc_sspi_data** %10, align 8
  %43 = getelementptr inbounds %struct.rpc_sspi_data, %struct.rpc_sspi_data* %42, i32 0, i32 1
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.rpc_sspi_data*, %struct.rpc_sspi_data** %10, align 8
  %48 = getelementptr inbounds %struct.rpc_sspi_data, %struct.rpc_sspi_data* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @xdr_rpc_sspi_data(i32* %32, i32 (i32*, i32)* %33, i32 %34, i32* %36, i32 %41, i64 %46, i32 %50)
  store i32 %51, i32* %5, align 4
  br label %52

52:                                               ; preds = %31, %26
  %53 = load i32, i32* %5, align 4
  ret i32 %53
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
