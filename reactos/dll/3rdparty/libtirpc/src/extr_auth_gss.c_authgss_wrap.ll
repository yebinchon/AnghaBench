; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libtirpc/src/extr_auth_gss.c_authgss_wrap.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libtirpc/src/extr_auth_gss.c_authgss_wrap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_gss_data = type { %struct.TYPE_3__, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i64, i32 }

@.str = private unnamed_addr constant [18 x i8] c"in authgss_wrap()\00", align 1
@RPCSEC_GSS_SVC_NONE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @authgss_wrap(i32* %0, i32* %1, i32 (i32*, i32)* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32 (i32*, i32)*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.rpc_gss_data*, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 (i32*, i32)* %2, i32 (i32*, i32)** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = call i32 @log_debug(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %12 = load i32*, i32** %6, align 8
  %13 = call %struct.rpc_gss_data* @AUTH_PRIVATE(i32* %12)
  store %struct.rpc_gss_data* %13, %struct.rpc_gss_data** %10, align 8
  %14 = load %struct.rpc_gss_data*, %struct.rpc_gss_data** %10, align 8
  %15 = getelementptr inbounds %struct.rpc_gss_data, %struct.rpc_gss_data* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %4
  %19 = load %struct.rpc_gss_data*, %struct.rpc_gss_data** %10, align 8
  %20 = getelementptr inbounds %struct.rpc_gss_data, %struct.rpc_gss_data* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @RPCSEC_GSS_SVC_NONE, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %18, %4
  %26 = load i32 (i32*, i32)*, i32 (i32*, i32)** %8, align 8
  %27 = load i32*, i32** %7, align 8
  %28 = load i32, i32* %9, align 4
  %29 = call i32 %26(i32* %27, i32 %28)
  store i32 %29, i32* %5, align 4
  br label %50

30:                                               ; preds = %18
  %31 = load i32*, i32** %7, align 8
  %32 = load i32 (i32*, i32)*, i32 (i32*, i32)** %8, align 8
  %33 = load i32, i32* %9, align 4
  %34 = load %struct.rpc_gss_data*, %struct.rpc_gss_data** %10, align 8
  %35 = getelementptr inbounds %struct.rpc_gss_data, %struct.rpc_gss_data* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.rpc_gss_data*, %struct.rpc_gss_data** %10, align 8
  %38 = getelementptr inbounds %struct.rpc_gss_data, %struct.rpc_gss_data* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.rpc_gss_data*, %struct.rpc_gss_data** %10, align 8
  %42 = getelementptr inbounds %struct.rpc_gss_data, %struct.rpc_gss_data* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.rpc_gss_data*, %struct.rpc_gss_data** %10, align 8
  %46 = getelementptr inbounds %struct.rpc_gss_data, %struct.rpc_gss_data* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @xdr_rpc_gss_data(i32* %31, i32 (i32*, i32)* %32, i32 %33, i32 %36, i32 %40, i64 %44, i32 %48)
  store i32 %49, i32* %5, align 4
  br label %50

50:                                               ; preds = %30, %25
  %51 = load i32, i32* %5, align 4
  ret i32 %51
}

declare dso_local i32 @log_debug(i8*) #1

declare dso_local %struct.rpc_gss_data* @AUTH_PRIVATE(i32*) #1

declare dso_local i32 @xdr_rpc_gss_data(i32*, i32 (i32*, i32)*, i32, i32, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
