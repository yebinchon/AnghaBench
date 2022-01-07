; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libtirpc/src/extr_svc_auth_gss.c_svcauth_gss_set_svc_name.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libtirpc/src/extr_svc_auth_gss.c_svcauth_gss_set_svc_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [30 x i8] c"in svcauth_gss_set_svc_name()\00", align 1
@_svcauth_gss_name = common dso_local global i32* null, align 8
@GSS_S_COMPLETE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"gss_release_name\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"gss_duplicate_name\00", align 1
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @svcauth_gss_set_svc_name(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  %6 = call i32 @log_debug(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %7 = load i32*, i32** @_svcauth_gss_name, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %9, label %20

9:                                                ; preds = %1
  %10 = call i64 @gss_release_name(i64* %5, i32** @_svcauth_gss_name)
  store i64 %10, i64* %4, align 8
  %11 = load i64, i64* %4, align 8
  %12 = load i64, i64* @GSS_S_COMPLETE, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %9
  %15 = load i64, i64* %4, align 8
  %16 = load i64, i64* %5, align 8
  %17 = call i32 @log_status(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i64 %15, i64 %16)
  %18 = load i32, i32* @FALSE, align 4
  store i32 %18, i32* %2, align 4
  br label %33

19:                                               ; preds = %9
  store i32* null, i32** @_svcauth_gss_name, align 8
  br label %20

20:                                               ; preds = %19, %1
  %21 = load i32, i32* %3, align 4
  %22 = call i64 @gss_duplicate_name(i64* %5, i32 %21, i32** @_svcauth_gss_name)
  store i64 %22, i64* %4, align 8
  %23 = load i64, i64* %4, align 8
  %24 = load i64, i64* @GSS_S_COMPLETE, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %20
  %27 = load i64, i64* %4, align 8
  %28 = load i64, i64* %5, align 8
  %29 = call i32 @log_status(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i64 %27, i64 %28)
  %30 = load i32, i32* @FALSE, align 4
  store i32 %30, i32* %2, align 4
  br label %33

31:                                               ; preds = %20
  %32 = load i32, i32* @TRUE, align 4
  store i32 %32, i32* %2, align 4
  br label %33

33:                                               ; preds = %31, %26, %14
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i32 @log_debug(i8*) #1

declare dso_local i64 @gss_release_name(i64*, i32**) #1

declare dso_local i32 @log_status(i8*, i64, i64) #1

declare dso_local i64 @gss_duplicate_name(i64*, i32, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
