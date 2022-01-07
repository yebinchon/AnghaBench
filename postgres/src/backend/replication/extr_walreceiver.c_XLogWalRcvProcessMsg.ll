; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/replication/extr_walreceiver.c_XLogWalRcvProcessMsg.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/replication/extr_walreceiver.c_XLogWalRcvProcessMsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@incoming_message = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_PROTOCOL_VIOLATION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"invalid WAL message received from primary\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"invalid keepalive message received from primary\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"invalid replication message type %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8, i8*, i32)* @XLogWalRcvProcessMsg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @XLogWalRcvProcessMsg(i8 zeroext %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8, align 1
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i8 %0, i8* %4, align 1
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = call i32 @resetStringInfo(i32* @incoming_message)
  %13 = load i8, i8* %4, align 1
  %14 = zext i8 %13 to i32
  switch i32 %14, label %71 [
    i32 119, label %15
    i32 107, label %46
  ]

15:                                               ; preds = %3
  store i32 12, i32* %7, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %25

19:                                               ; preds = %15
  %20 = load i32, i32* @ERROR, align 4
  %21 = load i32, i32* @ERRCODE_PROTOCOL_VIOLATION, align 4
  %22 = call i32 @errcode(i32 %21)
  %23 = call i32 (i8*, ...) @errmsg_internal(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %24 = call i32 @ereport(i32 %20, i32 %23)
  br label %25

25:                                               ; preds = %19, %15
  %26 = load i8*, i8** %5, align 8
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @appendBinaryStringInfo(i32* @incoming_message, i8* %26, i32 %27)
  %29 = call i8* @pq_getmsgint64(i32* @incoming_message)
  store i8* %29, i8** %8, align 8
  %30 = call i8* @pq_getmsgint64(i32* @incoming_message)
  store i8* %30, i8** %9, align 8
  %31 = call i8* @pq_getmsgint64(i32* @incoming_message)
  store i8* %31, i8** %10, align 8
  %32 = load i8*, i8** %9, align 8
  %33 = load i8*, i8** %10, align 8
  %34 = call i32 @ProcessWalSndrMessage(i8* %32, i8* %33)
  %35 = load i32, i32* %7, align 4
  %36 = load i8*, i8** %5, align 8
  %37 = sext i32 %35 to i64
  %38 = getelementptr inbounds i8, i8* %36, i64 %37
  store i8* %38, i8** %5, align 8
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* %6, align 4
  %41 = sub nsw i32 %40, %39
  store i32 %41, i32* %6, align 4
  %42 = load i8*, i8** %5, align 8
  %43 = load i32, i32* %6, align 4
  %44 = load i8*, i8** %8, align 8
  %45 = call i32 @XLogWalRcvWrite(i8* %42, i32 %43, i8* %44)
  br label %79

46:                                               ; preds = %3
  store i32 9, i32* %7, align 4
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* %7, align 4
  %49 = icmp ne i32 %47, %48
  br i1 %49, label %50, label %56

50:                                               ; preds = %46
  %51 = load i32, i32* @ERROR, align 4
  %52 = load i32, i32* @ERRCODE_PROTOCOL_VIOLATION, align 4
  %53 = call i32 @errcode(i32 %52)
  %54 = call i32 (i8*, ...) @errmsg_internal(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  %55 = call i32 @ereport(i32 %51, i32 %54)
  br label %56

56:                                               ; preds = %50, %46
  %57 = load i8*, i8** %5, align 8
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @appendBinaryStringInfo(i32* @incoming_message, i8* %57, i32 %58)
  %60 = call i8* @pq_getmsgint64(i32* @incoming_message)
  store i8* %60, i8** %9, align 8
  %61 = call i8* @pq_getmsgint64(i32* @incoming_message)
  store i8* %61, i8** %10, align 8
  %62 = call i32 @pq_getmsgbyte(i32* @incoming_message)
  store i32 %62, i32* %11, align 4
  %63 = load i8*, i8** %9, align 8
  %64 = load i8*, i8** %10, align 8
  %65 = call i32 @ProcessWalSndrMessage(i8* %63, i8* %64)
  %66 = load i32, i32* %11, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %56
  %69 = call i32 @XLogWalRcvSendReply(i32 1, i32 0)
  br label %70

70:                                               ; preds = %68, %56
  br label %79

71:                                               ; preds = %3
  %72 = load i32, i32* @ERROR, align 4
  %73 = load i32, i32* @ERRCODE_PROTOCOL_VIOLATION, align 4
  %74 = call i32 @errcode(i32 %73)
  %75 = load i8, i8* %4, align 1
  %76 = zext i8 %75 to i32
  %77 = call i32 (i8*, ...) @errmsg_internal(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %76)
  %78 = call i32 @ereport(i32 %72, i32 %77)
  br label %79

79:                                               ; preds = %71, %70, %25
  ret void
}

declare dso_local i32 @resetStringInfo(i32*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg_internal(i8*, ...) #1

declare dso_local i32 @appendBinaryStringInfo(i32*, i8*, i32) #1

declare dso_local i8* @pq_getmsgint64(i32*) #1

declare dso_local i32 @ProcessWalSndrMessage(i8*, i8*) #1

declare dso_local i32 @XLogWalRcvWrite(i8*, i32, i8*) #1

declare dso_local i32 @pq_getmsgbyte(i32*) #1

declare dso_local i32 @XLogWalRcvSendReply(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
