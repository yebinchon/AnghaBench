; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/psql/extr_startup.c_verbosity_hook.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/psql/extr_startup.c_verbosity_hook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64 }

@.str = private unnamed_addr constant [8 x i8] c"default\00", align 1
@PQERRORS_DEFAULT = common dso_local global i32 0, align 4
@pset = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"verbose\00", align 1
@PQERRORS_VERBOSE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"terse\00", align 1
@PQERRORS_TERSE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"sqlstate\00", align 1
@PQERRORS_SQLSTATE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c"VERBOSITY\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"default, verbose, terse, sqlstate\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @verbosity_hook to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @verbosity_hook(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %4 = load i8*, i8** %3, align 8
  %5 = icmp ne i8* %4, null
  %6 = zext i1 %5 to i32
  %7 = call i32 @Assert(i32 %6)
  %8 = load i8*, i8** %3, align 8
  %9 = call i64 @pg_strcasecmp(i8* %8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* @PQERRORS_DEFAULT, align 4
  store i32 %12, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pset, i32 0, i32 0), align 8
  br label %37

13:                                               ; preds = %1
  %14 = load i8*, i8** %3, align 8
  %15 = call i64 @pg_strcasecmp(i8* %14, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = load i32, i32* @PQERRORS_VERBOSE, align 4
  store i32 %18, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pset, i32 0, i32 0), align 8
  br label %36

19:                                               ; preds = %13
  %20 = load i8*, i8** %3, align 8
  %21 = call i64 @pg_strcasecmp(i8* %20, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = load i32, i32* @PQERRORS_TERSE, align 4
  store i32 %24, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pset, i32 0, i32 0), align 8
  br label %35

25:                                               ; preds = %19
  %26 = load i8*, i8** %3, align 8
  %27 = call i64 @pg_strcasecmp(i8* %26, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = load i32, i32* @PQERRORS_SQLSTATE, align 4
  store i32 %30, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pset, i32 0, i32 0), align 8
  br label %34

31:                                               ; preds = %25
  %32 = load i8*, i8** %3, align 8
  %33 = call i32 @PsqlVarEnumError(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8* %32, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %45

34:                                               ; preds = %29
  br label %35

35:                                               ; preds = %34, %23
  br label %36

36:                                               ; preds = %35, %17
  br label %37

37:                                               ; preds = %36, %11
  %38 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pset, i32 0, i32 1), align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %37
  %41 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pset, i32 0, i32 1), align 8
  %42 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pset, i32 0, i32 0), align 8
  %43 = call i32 @PQsetErrorVerbosity(i64 %41, i32 %42)
  br label %44

44:                                               ; preds = %40, %37
  store i32 1, i32* %2, align 4
  br label %45

45:                                               ; preds = %44, %31
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i64 @pg_strcasecmp(i8*, i8*) #1

declare dso_local i32 @PsqlVarEnumError(i8*, i8*, i8*) #1

declare dso_local i32 @PQsetErrorVerbosity(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
