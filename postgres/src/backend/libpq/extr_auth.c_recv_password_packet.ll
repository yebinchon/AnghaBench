; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/libpq/extr_auth.c_recv_password_packet.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/libpq/extr_auth.c_recv_password_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i8*, i32 }

@EOF = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_PROTOCOL_VIOLATION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"expected password response, got message type %d\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"invalid password packet size\00", align 1
@ERRCODE_INVALID_PASSWORD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"empty password returned by client\00", align 1
@DEBUG5 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"received password packet\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_7__*)* @recv_password_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @recv_password_packet(%struct.TYPE_7__* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.TYPE_6__, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  %6 = call i32 (...) @pq_startmsgread()
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @PG_PROTOCOL_MAJOR(i32 %9)
  %11 = icmp sge i32 %10, 3
  br i1 %11, label %12, label %29

12:                                               ; preds = %1
  %13 = call i32 (...) @pq_getbyte()
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 112
  br i1 %15, label %16, label %28

16:                                               ; preds = %12
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @EOF, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %27

20:                                               ; preds = %16
  %21 = load i32, i32* @ERROR, align 4
  %22 = load i32, i32* @ERRCODE_PROTOCOL_VIOLATION, align 4
  %23 = call i32 @errcode(i32 %22)
  %24 = load i32, i32* %5, align 4
  %25 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = call i32 @ereport(i32 %21, i32 %25)
  br label %27

27:                                               ; preds = %20, %16
  store i8* null, i8** %2, align 8
  br label %72

28:                                               ; preds = %12
  br label %35

29:                                               ; preds = %1
  %30 = call i32 (...) @pq_peekbyte()
  %31 = load i32, i32* @EOF, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  store i8* null, i8** %2, align 8
  br label %72

34:                                               ; preds = %29
  br label %35

35:                                               ; preds = %34, %28
  %36 = call i32 @initStringInfo(%struct.TYPE_6__* %4)
  %37 = call i64 @pq_getmessage(%struct.TYPE_6__* %4, i32 1000)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = call i32 @pfree(i8* %41)
  store i8* null, i8** %2, align 8
  br label %72

43:                                               ; preds = %35
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = call i32 @strlen(i8* %45)
  %47 = add nsw i32 %46, 1
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %47, %49
  br i1 %50, label %51, label %57

51:                                               ; preds = %43
  %52 = load i32, i32* @ERROR, align 4
  %53 = load i32, i32* @ERRCODE_PROTOCOL_VIOLATION, align 4
  %54 = call i32 @errcode(i32 %53)
  %55 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %56 = call i32 @ereport(i32 %52, i32 %55)
  br label %57

57:                                               ; preds = %51, %43
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = icmp eq i32 %59, 1
  br i1 %60, label %61, label %67

61:                                               ; preds = %57
  %62 = load i32, i32* @ERROR, align 4
  %63 = load i32, i32* @ERRCODE_INVALID_PASSWORD, align 4
  %64 = call i32 @errcode(i32 %63)
  %65 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %66 = call i32 @ereport(i32 %62, i32 %65)
  br label %67

67:                                               ; preds = %61, %57
  %68 = load i32, i32* @DEBUG5, align 4
  %69 = call i32 @elog(i32 %68, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  %71 = load i8*, i8** %70, align 8
  store i8* %71, i8** %2, align 8
  br label %72

72:                                               ; preds = %67, %39, %33, %27
  %73 = load i8*, i8** %2, align 8
  ret i8* %73
}

declare dso_local i32 @pq_startmsgread(...) #1

declare dso_local i32 @PG_PROTOCOL_MAJOR(i32) #1

declare dso_local i32 @pq_getbyte(...) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, ...) #1

declare dso_local i32 @pq_peekbyte(...) #1

declare dso_local i32 @initStringInfo(%struct.TYPE_6__*) #1

declare dso_local i64 @pq_getmessage(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @pfree(i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @elog(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
