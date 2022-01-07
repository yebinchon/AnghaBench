; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libtirpc/src/extr_auth_gss.c_authgss_create_default.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libtirpc/src/extr_auth_gss.c_authgss_create_default.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.rpc_gss_sec = type { i32 }
%struct.TYPE_4__ = type { i8*, i32 }

@GSS_C_NO_NAME = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"in authgss_create_default()\00", align 1
@GSS_C_NT_HOSTBASED_SERVICE = common dso_local global i64 0, align 8
@GSS_S_COMPLETE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"gss_import_name\00", align 1
@RPC_AUTHERROR = common dso_local global i32 0, align 4
@rpc_createerr = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@stderr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @authgss_create_default(i32* %0, i8* %1, %struct.rpc_gss_sec* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.rpc_gss_sec*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_4__, align 8
  %12 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.rpc_gss_sec* %2, %struct.rpc_gss_sec** %7, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  %13 = load i64, i64* @GSS_C_NO_NAME, align 8
  store i64 %13, i64* %12, align 8
  %14 = call i32 @log_debug(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %15 = load i8*, i8** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  store i8* %15, i8** %16, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = call i32 @strlen(i8* %17)
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  store i32 %18, i32* %19, align 8
  %20 = load i64, i64* @GSS_C_NT_HOSTBASED_SERVICE, align 8
  %21 = trunc i64 %20 to i32
  %22 = call i64 @gss_import_name(i64* %10, %struct.TYPE_4__* %11, i32 %21, i64* %12)
  store i64 %22, i64* %9, align 8
  %23 = load i64, i64* %9, align 8
  %24 = load i64, i64* @GSS_S_COMPLETE, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %3
  %27 = load i64, i64* %9, align 8
  %28 = load i64, i64* %10, align 8
  %29 = call i32 @log_status(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i64 %27, i64 %28)
  %30 = load i32, i32* @RPC_AUTHERROR, align 4
  store i32 %30, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @rpc_createerr, i32 0, i32 0), align 4
  store i32* null, i32** %4, align 8
  br label %43

31:                                               ; preds = %3
  %32 = load i32*, i32** %5, align 8
  %33 = load i64, i64* %12, align 8
  %34 = load %struct.rpc_gss_sec*, %struct.rpc_gss_sec** %7, align 8
  %35 = call i32* @authgss_create(i32* %32, i64 %33, %struct.rpc_gss_sec* %34)
  store i32* %35, i32** %8, align 8
  %36 = load i64, i64* %12, align 8
  %37 = load i64, i64* @GSS_C_NO_NAME, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %31
  %40 = call i32 @gss_release_name(i64* %10, i64* %12)
  br label %41

41:                                               ; preds = %39, %31
  %42 = load i32*, i32** %8, align 8
  store i32* %42, i32** %4, align 8
  br label %43

43:                                               ; preds = %41, %26
  %44 = load i32*, i32** %4, align 8
  ret i32* %44
}

declare dso_local i32 @log_debug(i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @gss_import_name(i64*, %struct.TYPE_4__*, i32, i64*) #1

declare dso_local i32 @log_status(i8*, i64, i64) #1

declare dso_local i32* @authgss_create(i32*, i64, %struct.rpc_gss_sec*) #1

declare dso_local i32 @gss_release_name(i64*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
