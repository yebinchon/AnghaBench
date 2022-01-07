; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/psql/extr_command.c_SyncVariables.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/psql/extr_command.c_SyncVariables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@pset = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@.str = private unnamed_addr constant [7 x i8] c"DBNAME\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"USER\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"HOST\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"PORT\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"ENCODING\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"server_version\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"SERVER_VERSION_NAME\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"SERVER_VERSION_NUM\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SyncVariables() #0 {
  %1 = alloca [32 x i8], align 16
  %2 = alloca i8*, align 8
  %3 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @pset, i32 0, i32 2), align 4
  %4 = call i32 @PQclientEncoding(i32 %3)
  store i32 %4, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @pset, i32 0, i32 5), align 4
  %5 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @pset, i32 0, i32 5), align 4
  store i32 %5, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @pset, i32 0, i32 6, i32 0, i32 0), align 4
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @pset, i32 0, i32 2), align 4
  %7 = call i32 @PQserverVersion(i32 %6)
  store i32 %7, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @pset, i32 0, i32 0), align 4
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @pset, i32 0, i32 4), align 4
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @pset, i32 0, i32 2), align 4
  %10 = call i8* @PQdb(i32 %9)
  %11 = call i32 @SetVariable(i32 %8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %10)
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @pset, i32 0, i32 4), align 4
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @pset, i32 0, i32 2), align 4
  %14 = call i8* @PQuser(i32 %13)
  %15 = call i32 @SetVariable(i32 %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %14)
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @pset, i32 0, i32 4), align 4
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @pset, i32 0, i32 2), align 4
  %18 = call i8* @PQhost(i32 %17)
  %19 = call i32 @SetVariable(i32 %16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %18)
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @pset, i32 0, i32 4), align 4
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @pset, i32 0, i32 2), align 4
  %22 = call i8* @PQport(i32 %21)
  %23 = call i32 @SetVariable(i32 %20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* %22)
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @pset, i32 0, i32 4), align 4
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @pset, i32 0, i32 5), align 4
  %26 = call i8* @pg_encoding_to_char(i32 %25)
  %27 = call i32 @SetVariable(i32 %24, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8* %26)
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @pset, i32 0, i32 2), align 4
  %29 = call i8* @PQparameterStatus(i32 %28, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  store i8* %29, i8** %2, align 8
  %30 = load i8*, i8** %2, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %37, label %32

32:                                               ; preds = %0
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @pset, i32 0, i32 0), align 4
  %34 = getelementptr inbounds [32 x i8], [32 x i8]* %1, i64 0, i64 0
  %35 = call i32 @formatPGVersionNumber(i32 %33, i32 1, i8* %34, i32 32)
  %36 = getelementptr inbounds [32 x i8], [32 x i8]* %1, i64 0, i64 0
  store i8* %36, i8** %2, align 8
  br label %37

37:                                               ; preds = %32, %0
  %38 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @pset, i32 0, i32 4), align 4
  %39 = load i8*, i8** %2, align 8
  %40 = call i32 @SetVariable(i32 %38, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i8* %39)
  %41 = getelementptr inbounds [32 x i8], [32 x i8]* %1, i64 0, i64 0
  %42 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @pset, i32 0, i32 0), align 4
  %43 = call i32 @snprintf(i8* %41, i32 32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i32 %42)
  %44 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @pset, i32 0, i32 4), align 4
  %45 = getelementptr inbounds [32 x i8], [32 x i8]* %1, i64 0, i64 0
  %46 = call i32 @SetVariable(i32 %44, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0), i8* %45)
  %47 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @pset, i32 0, i32 2), align 4
  %48 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @pset, i32 0, i32 3), align 4
  %49 = call i32 @PQsetErrorVerbosity(i32 %47, i32 %48)
  %50 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @pset, i32 0, i32 2), align 4
  %51 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @pset, i32 0, i32 1), align 4
  %52 = call i32 @PQsetErrorContextVisibility(i32 %50, i32 %51)
  ret void
}

declare dso_local i32 @PQclientEncoding(i32) #1

declare dso_local i32 @PQserverVersion(i32) #1

declare dso_local i32 @SetVariable(i32, i8*, i8*) #1

declare dso_local i8* @PQdb(i32) #1

declare dso_local i8* @PQuser(i32) #1

declare dso_local i8* @PQhost(i32) #1

declare dso_local i8* @PQport(i32) #1

declare dso_local i8* @pg_encoding_to_char(i32) #1

declare dso_local i8* @PQparameterStatus(i32, i8*) #1

declare dso_local i32 @formatPGVersionNumber(i32, i32, i8*, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @PQsetErrorVerbosity(i32, i32) #1

declare dso_local i32 @PQsetErrorContextVisibility(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
