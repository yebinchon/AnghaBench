; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libtirpc/src/extr_auth_gss.c_authgss_get_private_data.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libtirpc/src/extr_auth_gss.c_authgss_get_private_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.authgss_private_data = type { i32, i32, i32 }
%struct.rpc_gss_data = type { i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"in authgss_get_private_data()\00", align 1
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @authgss_get_private_data(i32* %0, %struct.authgss_private_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.authgss_private_data*, align 8
  %6 = alloca %struct.rpc_gss_data*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.authgss_private_data* %1, %struct.authgss_private_data** %5, align 8
  %7 = call i32 @log_debug(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %8 = load i32*, i32** %4, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load %struct.authgss_private_data*, %struct.authgss_private_data** %5, align 8
  %12 = icmp ne %struct.authgss_private_data* %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %10, %2
  %14 = load i32, i32* @FALSE, align 4
  store i32 %14, i32* %3, align 4
  br label %45

15:                                               ; preds = %10
  %16 = load i32*, i32** %4, align 8
  %17 = call %struct.rpc_gss_data* @AUTH_PRIVATE(i32* %16)
  store %struct.rpc_gss_data* %17, %struct.rpc_gss_data** %6, align 8
  %18 = load %struct.rpc_gss_data*, %struct.rpc_gss_data** %6, align 8
  %19 = icmp ne %struct.rpc_gss_data* %18, null
  br i1 %19, label %20, label %25

20:                                               ; preds = %15
  %21 = load %struct.rpc_gss_data*, %struct.rpc_gss_data** %6, align 8
  %22 = getelementptr inbounds %struct.rpc_gss_data, %struct.rpc_gss_data* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %20, %15
  %26 = load i32, i32* @FALSE, align 4
  store i32 %26, i32* %3, align 4
  br label %45

27:                                               ; preds = %20
  %28 = load %struct.rpc_gss_data*, %struct.rpc_gss_data** %6, align 8
  %29 = getelementptr inbounds %struct.rpc_gss_data, %struct.rpc_gss_data* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.authgss_private_data*, %struct.authgss_private_data** %5, align 8
  %32 = getelementptr inbounds %struct.authgss_private_data, %struct.authgss_private_data* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 4
  %33 = load %struct.rpc_gss_data*, %struct.rpc_gss_data** %6, align 8
  %34 = getelementptr inbounds %struct.rpc_gss_data, %struct.rpc_gss_data* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.authgss_private_data*, %struct.authgss_private_data** %5, align 8
  %38 = getelementptr inbounds %struct.authgss_private_data, %struct.authgss_private_data* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = load %struct.rpc_gss_data*, %struct.rpc_gss_data** %6, align 8
  %40 = getelementptr inbounds %struct.rpc_gss_data, %struct.rpc_gss_data* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.authgss_private_data*, %struct.authgss_private_data** %5, align 8
  %43 = getelementptr inbounds %struct.authgss_private_data, %struct.authgss_private_data* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* @TRUE, align 4
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %27, %25, %13
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @log_debug(i8*) #1

declare dso_local %struct.rpc_gss_data* @AUTH_PRIVATE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
