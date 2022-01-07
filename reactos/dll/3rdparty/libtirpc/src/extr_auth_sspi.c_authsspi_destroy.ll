; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libtirpc/src/extr_auth_sspi.c_authsspi_destroy.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libtirpc/src/extr_auth_sspi.c_authsspi_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_sspi_data = type { i64, %struct.rpc_sspi_data*, i32 }

@.str = private unnamed_addr constant [21 x i8] c"in authgss_destroy()\00", align 1
@SSPI_C_NO_NAME = common dso_local global i64 0, align 8
@min_stat = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rpc_sspi_data*)* @authsspi_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @authsspi_destroy(%struct.rpc_sspi_data* %0) #0 {
  %2 = alloca %struct.rpc_sspi_data*, align 8
  %3 = alloca %struct.rpc_sspi_data*, align 8
  store %struct.rpc_sspi_data* %0, %struct.rpc_sspi_data** %2, align 8
  %4 = call i32 @log_debug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %5 = load %struct.rpc_sspi_data*, %struct.rpc_sspi_data** %2, align 8
  %6 = call %struct.rpc_sspi_data* @AUTH_PRIVATE(%struct.rpc_sspi_data* %5)
  store %struct.rpc_sspi_data* %6, %struct.rpc_sspi_data** %3, align 8
  %7 = load %struct.rpc_sspi_data*, %struct.rpc_sspi_data** %3, align 8
  %8 = icmp eq %struct.rpc_sspi_data* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %31

10:                                               ; preds = %1
  %11 = load %struct.rpc_sspi_data*, %struct.rpc_sspi_data** %2, align 8
  %12 = call i32 @authsspi_destroy_context(%struct.rpc_sspi_data* %11)
  %13 = load %struct.rpc_sspi_data*, %struct.rpc_sspi_data** %3, align 8
  %14 = getelementptr inbounds %struct.rpc_sspi_data, %struct.rpc_sspi_data* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.rpc_sspi_data*
  %17 = call i32 @free(%struct.rpc_sspi_data* %16)
  %18 = load %struct.rpc_sspi_data*, %struct.rpc_sspi_data** %3, align 8
  %19 = getelementptr inbounds %struct.rpc_sspi_data, %struct.rpc_sspi_data* %18, i32 0, i32 1
  %20 = load %struct.rpc_sspi_data*, %struct.rpc_sspi_data** %19, align 8
  %21 = getelementptr inbounds %struct.rpc_sspi_data, %struct.rpc_sspi_data* %20, i32 0, i32 2
  %22 = call i32 @FreeCredentialsHandle(i32* %21)
  %23 = load %struct.rpc_sspi_data*, %struct.rpc_sspi_data** %3, align 8
  %24 = getelementptr inbounds %struct.rpc_sspi_data, %struct.rpc_sspi_data* %23, i32 0, i32 1
  %25 = load %struct.rpc_sspi_data*, %struct.rpc_sspi_data** %24, align 8
  %26 = call i32 @free(%struct.rpc_sspi_data* %25)
  %27 = load %struct.rpc_sspi_data*, %struct.rpc_sspi_data** %3, align 8
  %28 = call i32 @free(%struct.rpc_sspi_data* %27)
  %29 = load %struct.rpc_sspi_data*, %struct.rpc_sspi_data** %2, align 8
  %30 = call i32 @free(%struct.rpc_sspi_data* %29)
  br label %31

31:                                               ; preds = %10, %9
  ret void
}

declare dso_local i32 @log_debug(i8*) #1

declare dso_local %struct.rpc_sspi_data* @AUTH_PRIVATE(%struct.rpc_sspi_data*) #1

declare dso_local i32 @authsspi_destroy_context(%struct.rpc_sspi_data*) #1

declare dso_local i32 @free(%struct.rpc_sspi_data*) #1

declare dso_local i32 @FreeCredentialsHandle(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
