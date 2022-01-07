; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libtirpc/src/extr_svc_auth_gss.c_svcauth_gss_import_name.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libtirpc/src/extr_svc_auth_gss.c_svcauth_gss_import_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32 }

@.str = private unnamed_addr constant [29 x i8] c"in svcauth_gss_import_name()\00", align 1
@GSS_C_NT_HOSTBASED_SERVICE = common dso_local global i64 0, align 8
@GSS_S_COMPLETE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"gss_import_name\00", align 1
@FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*)* @svcauth_gss_import_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @svcauth_gss_import_name(i8* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  %8 = call i32 @log_debug(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %9 = load i8*, i8** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  store i8* %9, i8** %10, align 8
  %11 = load i8*, i8** %3, align 8
  %12 = call i32 @strlen(i8* %11)
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  store i32 %12, i32* %13, align 8
  %14 = load i64, i64* @GSS_C_NT_HOSTBASED_SERVICE, align 8
  %15 = trunc i64 %14 to i32
  %16 = call i64 @gss_import_name(i64* %7, %struct.TYPE_3__* %5, i32 %15, i32* %4)
  store i64 %16, i64* %6, align 8
  %17 = load i64, i64* %6, align 8
  %18 = load i64, i64* @GSS_S_COMPLETE, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %1
  %21 = load i64, i64* %6, align 8
  %22 = load i64, i64* %7, align 8
  %23 = call i32 @log_status(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i64 %21, i64 %22)
  %24 = load i64, i64* @FALSE, align 8
  store i64 %24, i64* %2, align 8
  br label %35

25:                                               ; preds = %1
  %26 = load i32, i32* %4, align 4
  %27 = call i64 @svcauth_gss_set_svc_name(i32 %26)
  %28 = load i64, i64* @TRUE, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = call i32 @gss_release_name(i64* %7, i32* %4)
  %32 = load i64, i64* @FALSE, align 8
  store i64 %32, i64* %2, align 8
  br label %35

33:                                               ; preds = %25
  %34 = load i64, i64* @TRUE, align 8
  store i64 %34, i64* %2, align 8
  br label %35

35:                                               ; preds = %33, %30, %20
  %36 = load i64, i64* %2, align 8
  ret i64 %36
}

declare dso_local i32 @log_debug(i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @gss_import_name(i64*, %struct.TYPE_3__*, i32, i32*) #1

declare dso_local i32 @log_status(i8*, i64, i64) #1

declare dso_local i64 @svcauth_gss_set_svc_name(i32) #1

declare dso_local i32 @gss_release_name(i64*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
