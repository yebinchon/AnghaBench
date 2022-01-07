; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_upgrade/extr_check.c_check_is_install_user.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_upgrade/extr_check.c_check_is_install_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"template1\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"Checking database user is the install user\00", align 1
@.str.2 = private unnamed_addr constant [97 x i8] c"SELECT rolsuper, oid FROM pg_catalog.pg_roles WHERE rolname = current_user AND rolname !~ '^pg_'\00", align 1
@BOOTSTRAP_SUPERUSERID = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [44 x i8] c"database user \22%s\22 is not the install user\0A\00", align 1
@os_info = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str.4 = private unnamed_addr constant [65 x i8] c"SELECT COUNT(*) FROM pg_catalog.pg_roles WHERE rolname !~ '^pg_'\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"could not determine the number of users\0A\00", align 1
@new_cluster = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [58 x i8] c"Only the install user can be defined in the new cluster.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @check_is_install_user to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_is_install_user(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %5 = load i32*, i32** %2, align 8
  %6 = call i32* @connectToServer(i32* %5, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i32* %6, i32** %4, align 8
  %7 = call i32 @prep_status(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %8 = load i32*, i32** %4, align 8
  %9 = call i32* @executeQueryOrDie(i32* %8, i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str.2, i64 0, i64 0))
  store i32* %9, i32** %3, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = call i32 @PQntuples(i32* %10)
  %12 = icmp ne i32 %11, 1
  br i1 %12, label %19, label %13

13:                                               ; preds = %1
  %14 = load i32*, i32** %3, align 8
  %15 = call i32 @PQgetvalue(i32* %14, i32 0, i32 1)
  %16 = call i32 @atooid(i32 %15)
  %17 = load i32, i32* @BOOTSTRAP_SUPERUSERID, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %13, %1
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @os_info, i32 0, i32 0), align 4
  %21 = call i32 (i8*, ...) @pg_fatal(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i32 %20)
  br label %22

22:                                               ; preds = %19, %13
  %23 = load i32*, i32** %3, align 8
  %24 = call i32 @PQclear(i32* %23)
  %25 = load i32*, i32** %4, align 8
  %26 = call i32* @executeQueryOrDie(i32* %25, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.4, i64 0, i64 0))
  store i32* %26, i32** %3, align 8
  %27 = load i32*, i32** %3, align 8
  %28 = call i32 @PQntuples(i32* %27)
  %29 = icmp ne i32 %28, 1
  br i1 %29, label %30, label %32

30:                                               ; preds = %22
  %31 = call i32 (i8*, ...) @pg_fatal(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0))
  br label %32

32:                                               ; preds = %30, %22
  %33 = load i32*, i32** %2, align 8
  %34 = icmp eq i32* %33, @new_cluster
  br i1 %34, label %35, label %42

35:                                               ; preds = %32
  %36 = load i32*, i32** %3, align 8
  %37 = call i32 @PQgetvalue(i32* %36, i32 0, i32 0)
  %38 = call i32 @atooid(i32 %37)
  %39 = icmp ne i32 %38, 1
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = call i32 (i8*, ...) @pg_fatal(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.6, i64 0, i64 0))
  br label %42

42:                                               ; preds = %40, %35, %32
  %43 = load i32*, i32** %3, align 8
  %44 = call i32 @PQclear(i32* %43)
  %45 = load i32*, i32** %4, align 8
  %46 = call i32 @PQfinish(i32* %45)
  %47 = call i32 (...) @check_ok()
  ret void
}

declare dso_local i32* @connectToServer(i32*, i8*) #1

declare dso_local i32 @prep_status(i8*) #1

declare dso_local i32* @executeQueryOrDie(i32*, i8*) #1

declare dso_local i32 @PQntuples(i32*) #1

declare dso_local i32 @atooid(i32) #1

declare dso_local i32 @PQgetvalue(i32*, i32, i32) #1

declare dso_local i32 @pg_fatal(i8*, ...) #1

declare dso_local i32 @PQclear(i32*) #1

declare dso_local i32 @PQfinish(i32*) #1

declare dso_local i32 @check_ok(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
