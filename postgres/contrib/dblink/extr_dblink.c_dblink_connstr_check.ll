; ModuleID = '/home/carl/AnghaBench/postgres/contrib/dblink/extr_dblink.c_dblink_connstr_check.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/dblink/extr_dblink.c_dblink_connstr_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i32* }

@.str = private unnamed_addr constant [9 x i8] c"password\00", align 1
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_S_R_E_PROHIBITED_SQL_STATEMENT_ATTEMPTED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"password is required\00", align 1
@.str.2 = private unnamed_addr constant [65 x i8] c"Non-superusers must provide a password in the connection string.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @dblink_connstr_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dblink_connstr_check(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = call i32 (...) @superuser()
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %59, label %8

8:                                                ; preds = %1
  store i32 0, i32* %5, align 4
  %9 = load i8*, i8** %2, align 8
  %10 = call %struct.TYPE_4__* @PQconninfoParse(i8* %9, i32* null)
  store %struct.TYPE_4__* %10, %struct.TYPE_4__** %3, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %12 = icmp ne %struct.TYPE_4__* %11, null
  br i1 %12, label %13, label %48

13:                                               ; preds = %8
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  store %struct.TYPE_4__* %14, %struct.TYPE_4__** %4, align 8
  br label %15

15:                                               ; preds = %42, %13
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %45

20:                                               ; preds = %15
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = call i64 @strcmp(i32* %23, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %41

26:                                               ; preds = %20
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %40

31:                                               ; preds = %26
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 0
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %31
  store i32 1, i32* %5, align 4
  br label %45

40:                                               ; preds = %31, %26
  br label %41

41:                                               ; preds = %40, %20
  br label %42

42:                                               ; preds = %41
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 1
  store %struct.TYPE_4__* %44, %struct.TYPE_4__** %4, align 8
  br label %15

45:                                               ; preds = %39, %15
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %47 = call i32 @PQconninfoFree(%struct.TYPE_4__* %46)
  br label %48

48:                                               ; preds = %45, %8
  %49 = load i32, i32* %5, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %58, label %51

51:                                               ; preds = %48
  %52 = load i32, i32* @ERROR, align 4
  %53 = load i32, i32* @ERRCODE_S_R_E_PROHIBITED_SQL_STATEMENT_ATTEMPTED, align 4
  %54 = call i32 @errcode(i32 %53)
  %55 = call i32 @errmsg(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %56 = call i32 @errdetail(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.2, i64 0, i64 0))
  %57 = call i32 @ereport(i32 %52, i32 %56)
  br label %58

58:                                               ; preds = %51, %48
  br label %59

59:                                               ; preds = %58, %1
  ret void
}

declare dso_local i32 @superuser(...) #1

declare dso_local %struct.TYPE_4__* @PQconninfoParse(i8*, i32*) #1

declare dso_local i64 @strcmp(i32*, i8*) #1

declare dso_local i32 @PQconninfoFree(%struct.TYPE_4__*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32 @errdetail(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
