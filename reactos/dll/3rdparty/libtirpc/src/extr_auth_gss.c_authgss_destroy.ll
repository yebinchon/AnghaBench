; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libtirpc/src/extr_auth_gss.c_authgss_destroy.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libtirpc/src/extr_auth_gss.c_authgss_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_gss_data = type { i64 }

@.str = private unnamed_addr constant [21 x i8] c"in authgss_destroy()\00", align 1
@GSS_C_NO_NAME = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rpc_gss_data*)* @authgss_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @authgss_destroy(%struct.rpc_gss_data* %0) #0 {
  %2 = alloca %struct.rpc_gss_data*, align 8
  %3 = alloca %struct.rpc_gss_data*, align 8
  %4 = alloca i32, align 4
  store %struct.rpc_gss_data* %0, %struct.rpc_gss_data** %2, align 8
  %5 = call i32 @log_debug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %6 = load %struct.rpc_gss_data*, %struct.rpc_gss_data** %2, align 8
  %7 = call %struct.rpc_gss_data* @AUTH_PRIVATE(%struct.rpc_gss_data* %6)
  store %struct.rpc_gss_data* %7, %struct.rpc_gss_data** %3, align 8
  %8 = load %struct.rpc_gss_data*, %struct.rpc_gss_data** %2, align 8
  %9 = call i32 @authgss_destroy_context(%struct.rpc_gss_data* %8)
  %10 = load %struct.rpc_gss_data*, %struct.rpc_gss_data** %3, align 8
  %11 = getelementptr inbounds %struct.rpc_gss_data, %struct.rpc_gss_data* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @GSS_C_NO_NAME, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = load %struct.rpc_gss_data*, %struct.rpc_gss_data** %3, align 8
  %17 = getelementptr inbounds %struct.rpc_gss_data, %struct.rpc_gss_data* %16, i32 0, i32 0
  %18 = call i32 @gss_release_name(i32* %4, i64* %17)
  br label %19

19:                                               ; preds = %15, %1
  %20 = load %struct.rpc_gss_data*, %struct.rpc_gss_data** %3, align 8
  %21 = call i32 @free(%struct.rpc_gss_data* %20)
  %22 = load %struct.rpc_gss_data*, %struct.rpc_gss_data** %2, align 8
  %23 = call i32 @free(%struct.rpc_gss_data* %22)
  ret void
}

declare dso_local i32 @log_debug(i8*) #1

declare dso_local %struct.rpc_gss_data* @AUTH_PRIVATE(%struct.rpc_gss_data*) #1

declare dso_local i32 @authgss_destroy_context(%struct.rpc_gss_data*) #1

declare dso_local i32 @gss_release_name(i32*, i64*) #1

declare dso_local i32 @free(%struct.rpc_gss_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
