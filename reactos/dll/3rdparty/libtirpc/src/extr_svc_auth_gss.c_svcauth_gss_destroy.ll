; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libtirpc/src/extr_svc_auth_gss.c_svcauth_gss_destroy.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libtirpc/src/extr_svc_auth_gss.c_svcauth_gss_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rpc_gss_data = type { i64, i32, i32 }

@.str = private unnamed_addr constant [25 x i8] c"in svcauth_gss_destroy()\00", align 1
@GSS_C_NO_BUFFER = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @svcauth_gss_destroy(%struct.svc_rpc_gss_data* %0) #0 {
  %2 = alloca %struct.svc_rpc_gss_data*, align 8
  %3 = alloca %struct.svc_rpc_gss_data*, align 8
  %4 = alloca i32, align 4
  store %struct.svc_rpc_gss_data* %0, %struct.svc_rpc_gss_data** %2, align 8
  %5 = call i32 @log_debug(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %6 = load %struct.svc_rpc_gss_data*, %struct.svc_rpc_gss_data** %2, align 8
  %7 = call %struct.svc_rpc_gss_data* @SVCAUTH_PRIVATE(%struct.svc_rpc_gss_data* %6)
  store %struct.svc_rpc_gss_data* %7, %struct.svc_rpc_gss_data** %3, align 8
  %8 = load %struct.svc_rpc_gss_data*, %struct.svc_rpc_gss_data** %3, align 8
  %9 = getelementptr inbounds %struct.svc_rpc_gss_data, %struct.svc_rpc_gss_data* %8, i32 0, i32 2
  %10 = load i32, i32* @GSS_C_NO_BUFFER, align 4
  %11 = call i32 @gss_delete_sec_context(i32* %4, i32* %9, i32 %10)
  %12 = load %struct.svc_rpc_gss_data*, %struct.svc_rpc_gss_data** %3, align 8
  %13 = getelementptr inbounds %struct.svc_rpc_gss_data, %struct.svc_rpc_gss_data* %12, i32 0, i32 1
  %14 = call i32 @gss_release_buffer(i32* %4, i32* %13)
  %15 = load %struct.svc_rpc_gss_data*, %struct.svc_rpc_gss_data** %3, align 8
  %16 = getelementptr inbounds %struct.svc_rpc_gss_data, %struct.svc_rpc_gss_data* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %1
  %20 = load %struct.svc_rpc_gss_data*, %struct.svc_rpc_gss_data** %3, align 8
  %21 = getelementptr inbounds %struct.svc_rpc_gss_data, %struct.svc_rpc_gss_data* %20, i32 0, i32 0
  %22 = call i32 @gss_release_name(i32* %4, i64* %21)
  br label %23

23:                                               ; preds = %19, %1
  %24 = load %struct.svc_rpc_gss_data*, %struct.svc_rpc_gss_data** %3, align 8
  %25 = call i32 @mem_free(%struct.svc_rpc_gss_data* %24, i32 16)
  %26 = load %struct.svc_rpc_gss_data*, %struct.svc_rpc_gss_data** %2, align 8
  %27 = call i32 @mem_free(%struct.svc_rpc_gss_data* %26, i32 16)
  %28 = load i32, i32* @TRUE, align 4
  ret i32 %28
}

declare dso_local i32 @log_debug(i8*) #1

declare dso_local %struct.svc_rpc_gss_data* @SVCAUTH_PRIVATE(%struct.svc_rpc_gss_data*) #1

declare dso_local i32 @gss_delete_sec_context(i32*, i32*, i32) #1

declare dso_local i32 @gss_release_buffer(i32*, i32*) #1

declare dso_local i32 @gss_release_name(i32*, i64*) #1

declare dso_local i32 @mem_free(%struct.svc_rpc_gss_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
