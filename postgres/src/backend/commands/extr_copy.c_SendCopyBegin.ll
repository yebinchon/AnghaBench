; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_copy.c_SendCopyBegin.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_copy.c_SendCopyBegin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64, i32 }

@FrontendProtocol = common dso_local global i32 0, align 4
@COPY_NEW_FE = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_FEATURE_NOT_SUPPORTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"COPY BINARY is not supported to stdout or from stdin\00", align 1
@COPY_OLD_FE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*)* @SendCopyBegin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SendCopyBegin(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %7 = load i32, i32* @FrontendProtocol, align 4
  %8 = call i32 @PG_PROTOCOL_MAJOR(i32 %7)
  %9 = icmp sge i32 %8, 3
  br i1 %9, label %10, label %41

10:                                               ; preds = %1
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @list_length(i32 %13)
  store i32 %14, i32* %4, align 4
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  %19 = zext i1 %18 to i64
  %20 = select i1 %18, i32 1, i32 0
  store i32 %20, i32* %5, align 4
  %21 = call i32 @pq_beginmessage(i32* %3, i8 signext 72)
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @pq_sendbyte(i32* %3, i32 %22)
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @pq_sendint16(i32* %3, i32 %24)
  store i32 0, i32* %6, align 4
  br label %26

26:                                               ; preds = %33, %10
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* %4, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %26
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @pq_sendint16(i32* %3, i32 %31)
  br label %33

33:                                               ; preds = %30
  %34 = load i32, i32* %6, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %6, align 4
  br label %26

36:                                               ; preds = %26
  %37 = call i32 @pq_endmessage(i32* %3)
  %38 = load i32, i32* @COPY_NEW_FE, align 4
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  br label %58

41:                                               ; preds = %1
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %41
  %47 = load i32, i32* @ERROR, align 4
  %48 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %49 = call i32 @errcode(i32 %48)
  %50 = call i32 @errmsg(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  %51 = call i32 @ereport(i32 %47, i32 %50)
  br label %52

52:                                               ; preds = %46, %41
  %53 = call i32 @pq_putemptymessage(i8 signext 72)
  %54 = call i32 (...) @pq_startcopyout()
  %55 = load i32, i32* @COPY_OLD_FE, align 4
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  br label %58

58:                                               ; preds = %52, %36
  ret void
}

declare dso_local i32 @PG_PROTOCOL_MAJOR(i32) #1

declare dso_local i32 @list_length(i32) #1

declare dso_local i32 @pq_beginmessage(i32*, i8 signext) #1

declare dso_local i32 @pq_sendbyte(i32*, i32) #1

declare dso_local i32 @pq_sendint16(i32*, i32) #1

declare dso_local i32 @pq_endmessage(i32*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32 @pq_putemptymessage(i8 signext) #1

declare dso_local i32 @pq_startcopyout(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
