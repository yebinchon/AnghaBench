; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libtirpc/src/extr_svc_auth_gss.c_svcauth_gss_acquire_cred.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libtirpc/src/extr_svc_auth_gss.c_svcauth_gss_acquire_cred.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [30 x i8] c"in svcauth_gss_acquire_cred()\00", align 1
@_svcauth_gss_name = common dso_local global i32 0, align 4
@GSS_C_NULL_OID_SET = common dso_local global i32 0, align 4
@GSS_C_ACCEPT = common dso_local global i32 0, align 4
@_svcauth_gss_creds = common dso_local global i32 0, align 4
@GSS_S_COMPLETE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"gss_acquire_cred\00", align 1
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @svcauth_gss_acquire_cred to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @svcauth_gss_acquire_cred() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = call i32 @log_debug(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %5 = load i32, i32* @_svcauth_gss_name, align 4
  %6 = load i32, i32* @GSS_C_NULL_OID_SET, align 4
  %7 = load i32, i32* @GSS_C_ACCEPT, align 4
  %8 = call i64 @gss_acquire_cred(i64* %3, i32 %5, i32 0, i32 %6, i32 %7, i32* @_svcauth_gss_creds, i32* null, i32* null)
  store i64 %8, i64* %2, align 8
  %9 = load i64, i64* %2, align 8
  %10 = load i64, i64* @GSS_S_COMPLETE, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %17

12:                                               ; preds = %0
  %13 = load i64, i64* %2, align 8
  %14 = load i64, i64* %3, align 8
  %15 = call i32 @log_status(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i64 %13, i64 %14)
  %16 = load i32, i32* @FALSE, align 4
  store i32 %16, i32* %1, align 4
  br label %19

17:                                               ; preds = %0
  %18 = load i32, i32* @TRUE, align 4
  store i32 %18, i32* %1, align 4
  br label %19

19:                                               ; preds = %17, %12
  %20 = load i32, i32* %1, align 4
  ret i32 %20
}

declare dso_local i32 @log_debug(i8*) #1

declare dso_local i64 @gss_acquire_cred(i64*, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @log_status(i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
