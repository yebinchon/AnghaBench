; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_async.c_NotifyMyFrontEnd.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_async.c_NotifyMyFrontEnd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@whereToSendOutput = common dso_local global i64 0, align 8
@DestRemote = common dso_local global i64 0, align 8
@FrontendProtocol = common dso_local global i32 0, align 4
@INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"NOTIFY for \22%s\22 payload \22%s\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @NotifyMyFrontEnd(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i64, i64* @whereToSendOutput, align 8
  %9 = load i64, i64* @DestRemote, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %25

11:                                               ; preds = %3
  %12 = call i32 @pq_beginmessage(i32* %7, i8 signext 65)
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @pq_sendint32(i32* %7, i32 %13)
  %15 = load i8*, i8** %4, align 8
  %16 = call i32 @pq_sendstring(i32* %7, i8* %15)
  %17 = load i32, i32* @FrontendProtocol, align 4
  %18 = call i32 @PG_PROTOCOL_MAJOR(i32 %17)
  %19 = icmp sge i32 %18, 3
  br i1 %19, label %20, label %23

20:                                               ; preds = %11
  %21 = load i8*, i8** %5, align 8
  %22 = call i32 @pq_sendstring(i32* %7, i8* %21)
  br label %23

23:                                               ; preds = %20, %11
  %24 = call i32 @pq_endmessage(i32* %7)
  br label %30

25:                                               ; preds = %3
  %26 = load i32, i32* @INFO, align 4
  %27 = load i8*, i8** %4, align 8
  %28 = load i8*, i8** %5, align 8
  %29 = call i32 @elog(i32 %26, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %27, i8* %28)
  br label %30

30:                                               ; preds = %25, %23
  ret void
}

declare dso_local i32 @pq_beginmessage(i32*, i8 signext) #1

declare dso_local i32 @pq_sendint32(i32*, i32) #1

declare dso_local i32 @pq_sendstring(i32*, i8*) #1

declare dso_local i32 @PG_PROTOCOL_MAJOR(i32) #1

declare dso_local i32 @pq_endmessage(i32*) #1

declare dso_local i32 @elog(i32, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
