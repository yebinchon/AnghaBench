; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/replication/extr_walreceiver.c_WalRcvFetchTimeLineHistoryFiles.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/replication/extr_walreceiver.c_WalRcvFetchTimeLineHistoryFiles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAXFNAMELEN = common dso_local global i32 0, align 4
@LOG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [67 x i8] c"fetching timeline history file for timeline %u from primary server\00", align 1
@wrconn = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_PROTOCOL_VIOLATION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [79 x i8] c"primary reported unexpected file name for timeline history file of timeline %u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @WalRcvFetchTimeLineHistoryFiles to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @WalRcvFetchTimeLineHistoryFiles(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %11 = load i32, i32* %3, align 4
  store i32 %11, i32* %5, align 4
  br label %12

12:                                               ; preds = %58, %2
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp sle i32 %13, %14
  br i1 %15, label %16, label %61

16:                                               ; preds = %12
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 1
  br i1 %18, label %19, label %57

19:                                               ; preds = %16
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @existsTimeLineHistory(i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %57, label %23

23:                                               ; preds = %19
  %24 = load i32, i32* @MAXFNAMELEN, align 4
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %9, align 8
  %27 = alloca i8, i64 %25, align 16
  store i64 %25, i64* %10, align 8
  %28 = load i32, i32* @LOG, align 4
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @errmsg(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = call i32 @ereport(i32 %28, i32 %30)
  %32 = load i32, i32* @wrconn, align 4
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @walrcv_readtimelinehistoryfile(i32 %32, i32 %33, i8** %6, i8** %7, i32* %8)
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @TLHistoryFileName(i8* %27, i32 %35)
  %37 = load i8*, i8** %6, align 8
  %38 = call i64 @strcmp(i8* %37, i8* %27)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %23
  %41 = load i32, i32* @ERROR, align 4
  %42 = load i32, i32* @ERRCODE_PROTOCOL_VIOLATION, align 4
  %43 = call i32 @errcode(i32 %42)
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @errmsg_internal(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.1, i64 0, i64 0), i32 %44)
  %46 = call i32 @ereport(i32 %41, i32 %45)
  br label %47

47:                                               ; preds = %40, %23
  %48 = load i32, i32* %5, align 4
  %49 = load i8*, i8** %7, align 8
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @writeTimeLineHistoryFile(i32 %48, i8* %49, i32 %50)
  %52 = load i8*, i8** %6, align 8
  %53 = call i32 @pfree(i8* %52)
  %54 = load i8*, i8** %7, align 8
  %55 = call i32 @pfree(i8* %54)
  %56 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %56)
  br label %57

57:                                               ; preds = %47, %19, %16
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %5, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %5, align 4
  br label %12

61:                                               ; preds = %12
  ret void
}

declare dso_local i32 @existsTimeLineHistory(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errmsg(i8*, i32) #1

declare dso_local i32 @walrcv_readtimelinehistoryfile(i32, i32, i8**, i8**, i32*) #1

declare dso_local i32 @TLHistoryFileName(i8*, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg_internal(i8*, i32) #1

declare dso_local i32 @writeTimeLineHistoryFile(i32, i8*, i32) #1

declare dso_local i32 @pfree(i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
