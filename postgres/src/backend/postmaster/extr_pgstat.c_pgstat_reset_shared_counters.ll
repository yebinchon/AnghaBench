; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/postmaster/extr_pgstat.c_pgstat_reset_shared_counters.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/postmaster/extr_pgstat.c_pgstat_reset_shared_counters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@pgStatSock = common dso_local global i64 0, align 8
@PGINVALID_SOCKET = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"archiver\00", align 1
@RESET_ARCHIVER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"bgwriter\00", align 1
@RESET_BGWRITER = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_INVALID_PARAMETER_VALUE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"unrecognized reset target: \22%s\22\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"Target must be \22archiver\22 or \22bgwriter\22.\00", align 1
@PGSTAT_MTYPE_RESETSHAREDCOUNTER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pgstat_reset_shared_counters(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_3__, align 4
  store i8* %0, i8** %2, align 8
  %4 = load i64, i64* @pgStatSock, align 8
  %5 = load i64, i64* @PGINVALID_SOCKET, align 8
  %6 = icmp eq i64 %4, %5
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %36

8:                                                ; preds = %1
  %9 = load i8*, i8** %2, align 8
  %10 = call i64 @strcmp(i8* %9, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %8
  %13 = load i32, i32* @RESET_ARCHIVER, align 4
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 1
  store i32 %13, i32* %14, align 4
  br label %31

15:                                               ; preds = %8
  %16 = load i8*, i8** %2, align 8
  %17 = call i64 @strcmp(i8* %16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = load i32, i32* @RESET_BGWRITER, align 4
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 1
  store i32 %20, i32* %21, align 4
  br label %30

22:                                               ; preds = %15
  %23 = load i32, i32* @ERROR, align 4
  %24 = load i32, i32* @ERRCODE_INVALID_PARAMETER_VALUE, align 4
  %25 = call i32 @errcode(i32 %24)
  %26 = load i8*, i8** %2, align 8
  %27 = call i32 @errmsg(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i8* %26)
  %28 = call i32 @errhint(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  %29 = call i32 @ereport(i32 %23, i32 %28)
  br label %30

30:                                               ; preds = %22, %19
  br label %31

31:                                               ; preds = %30, %12
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  %33 = load i32, i32* @PGSTAT_MTYPE_RESETSHAREDCOUNTER, align 4
  %34 = call i32 @pgstat_setheader(i32* %32, i32 %33)
  %35 = call i32 @pgstat_send(%struct.TYPE_3__* %3, i32 8)
  br label %36

36:                                               ; preds = %31, %7
  ret void
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i8*) #1

declare dso_local i32 @errhint(i8*) #1

declare dso_local i32 @pgstat_setheader(i32*, i32) #1

declare dso_local i32 @pgstat_send(%struct.TYPE_3__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
