; ModuleID = '/home/carl/AnghaBench/postgres/contrib/dblink/extr_dblink.c_dblink_security_check.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/dblink/extr_dblink.c_dblink_security_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERROR = common dso_local global i32 0, align 4
@ERRCODE_S_R_E_PROHIBITED_SQL_STATEMENT_ATTEMPTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"password is required\00", align 1
@.str.1 = private unnamed_addr constant [72 x i8] c"Non-superuser cannot connect if the server does not request a password.\00", align 1
@.str.2 = private unnamed_addr constant [55 x i8] c"Target server's authentication method must be changed.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @dblink_security_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dblink_security_check(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = call i32 (...) @superuser()
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %28, label %7

7:                                                ; preds = %2
  %8 = load i32*, i32** %3, align 8
  %9 = call i32 @PQconnectionUsedPassword(i32* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %27, label %11

11:                                               ; preds = %7
  %12 = load i32*, i32** %3, align 8
  %13 = call i32 @PQfinish(i32* %12)
  %14 = load i32*, i32** %4, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %11
  %17 = load i32*, i32** %4, align 8
  %18 = call i32 @pfree(i32* %17)
  br label %19

19:                                               ; preds = %16, %11
  %20 = load i32, i32* @ERROR, align 4
  %21 = load i32, i32* @ERRCODE_S_R_E_PROHIBITED_SQL_STATEMENT_ATTEMPTED, align 4
  %22 = call i32 @errcode(i32 %21)
  %23 = call i32 @errmsg(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %24 = call i32 @errdetail(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.1, i64 0, i64 0))
  %25 = call i32 @errhint(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0))
  %26 = call i32 @ereport(i32 %20, i32 %25)
  br label %27

27:                                               ; preds = %19, %7
  br label %28

28:                                               ; preds = %27, %2
  ret void
}

declare dso_local i32 @superuser(...) #1

declare dso_local i32 @PQconnectionUsedPassword(i32*) #1

declare dso_local i32 @PQfinish(i32*) #1

declare dso_local i32 @pfree(i32*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32 @errdetail(i8*) #1

declare dso_local i32 @errhint(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
