; ModuleID = '/home/carl/AnghaBench/postgres/src/port/extr_win32security.c_pgwin32_is_admin.c'
source_filename = "/home/carl/AnghaBench/postgres/src/port/extr_win32security.c_pgwin32_is_admin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@SECURITY_NT_AUTHORITY = common dso_local global i32 0, align 4
@SECURITY_BUILTIN_DOMAIN_RID = common dso_local global i32 0, align 4
@DOMAIN_ALIAS_RID_ADMINS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"could not get SID for Administrators group: error code %lu\0A\00", align 1
@DOMAIN_ALIAS_RID_POWER_USERS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [56 x i8] c"could not get SID for PowerUsers group: error code %lu\0A\00", align 1
@.str.2 = private unnamed_addr constant [57 x i8] c"could not check access token membership: error code %lu\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pgwin32_is_admin() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %8 = load i32, i32* @SECURITY_NT_AUTHORITY, align 4
  store i32 %8, i32* %7, align 4
  %9 = load i32, i32* @SECURITY_BUILTIN_DOMAIN_RID, align 4
  %10 = load i32, i32* @DOMAIN_ALIAS_RID_ADMINS, align 4
  %11 = call i32 @AllocateAndInitializeSid(%struct.TYPE_3__* %4, i32 2, i32 %9, i32 %10, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32* %2)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %0
  %14 = call i32 @_(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0))
  %15 = call i32 (...) @GetLastError()
  %16 = call i32 @log_error(i32 %14, i32 %15)
  %17 = call i32 @exit(i32 1) #3
  unreachable

18:                                               ; preds = %0
  %19 = load i32, i32* @SECURITY_BUILTIN_DOMAIN_RID, align 4
  %20 = load i32, i32* @DOMAIN_ALIAS_RID_POWER_USERS, align 4
  %21 = call i32 @AllocateAndInitializeSid(%struct.TYPE_3__* %4, i32 2, i32 %19, i32 %20, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32* %3)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %18
  %24 = call i32 @_(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0))
  %25 = call i32 (...) @GetLastError()
  %26 = call i32 @log_error(i32 %24, i32 %25)
  %27 = call i32 @exit(i32 1) #3
  unreachable

28:                                               ; preds = %18
  %29 = load i32, i32* %2, align 4
  %30 = call i32 @CheckTokenMembership(i32* null, i32 %29, i64* %5)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = load i32, i32* %3, align 4
  %34 = call i32 @CheckTokenMembership(i32* null, i32 %33, i64* %6)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %32, %28
  %37 = call i32 @_(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0))
  %38 = call i32 (...) @GetLastError()
  %39 = call i32 @log_error(i32 %37, i32 %38)
  %40 = call i32 @exit(i32 1) #3
  unreachable

41:                                               ; preds = %32
  %42 = load i32, i32* %2, align 4
  %43 = call i32 @FreeSid(i32 %42)
  %44 = load i32, i32* %3, align 4
  %45 = call i32 @FreeSid(i32 %44)
  %46 = load i64, i64* %5, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %41
  %49 = load i64, i64* %6, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %48, %41
  store i32 1, i32* %1, align 4
  br label %53

52:                                               ; preds = %48
  store i32 0, i32* %1, align 4
  br label %53

53:                                               ; preds = %52, %51
  %54 = load i32, i32* %1, align 4
  ret i32 %54
}

declare dso_local i32 @AllocateAndInitializeSid(%struct.TYPE_3__*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @log_error(i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @GetLastError(...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @CheckTokenMembership(i32*, i32, i64*) #1

declare dso_local i32 @FreeSid(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
