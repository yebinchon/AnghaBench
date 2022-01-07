; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_basebackup/extr_pg_receivewal.c_StreamLog.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_basebackup/extr_pg_receivewal.c_StreamLog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i8*, %struct.TYPE_7__*, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32 (...)* }

@conn = common dso_local global i32* null, align 8
@InvalidXLogRecPtr = common dso_local global i32 0, align 4
@WalSegSz = common dso_local global i32 0, align 4
@verbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [46 x i8] c"starting log streaming at %X/%X (timeline %u)\00", align 1
@stop_streaming = common dso_local global i32 0, align 4
@PGINVALID_SOCKET = common dso_local global i32 0, align 4
@standby_message_timeout = common dso_local global i32 0, align 4
@synchronous = common dso_local global i32 0, align 4
@do_sync = common dso_local global i32 0, align 4
@basedir = common dso_local global i32 0, align 4
@compresslevel = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c".partial\00", align 1
@replication_slot = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"could not finish writing WAL files: %m\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @StreamLog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @StreamLog() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__, align 8
  %4 = call i32 @MemSet(%struct.TYPE_6__* %3, i32 0, i32 56)
  %5 = load i32*, i32** @conn, align 8
  %6 = icmp eq i32* %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %0
  %8 = call i32* (...) @GetConnection()
  store i32* %8, i32** @conn, align 8
  br label %9

9:                                                ; preds = %7, %0
  %10 = load i32*, i32** @conn, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %9
  br label %97

13:                                               ; preds = %9
  %14 = load i32*, i32** @conn, align 8
  %15 = call i32 @CheckServerVersionForStreaming(i32* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %13
  %18 = call i32 @exit(i32 1) #3
  unreachable

19:                                               ; preds = %13
  %20 = load i32*, i32** @conn, align 8
  %21 = call i32 @RunIdentifySystem(i32* %20, i32* null, i32* %2, i32* %1, i32* null)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %19
  %24 = call i32 @exit(i32 1) #3
  unreachable

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 10
  %27 = call i32 @FindStreamingStart(i32* %26)
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 0
  store i32 %27, i32* %28, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @InvalidXLogRecPtr, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %25
  %34 = load i32, i32* %1, align 4
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 0
  store i32 %34, i32* %35, align 8
  %36 = load i32, i32* %2, align 4
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 10
  store i32 %36, i32* %37, align 8
  br label %38

38:                                               ; preds = %33, %25
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @WalSegSz, align 4
  %42 = call i64 @XLogSegmentOffset(i32 %40, i32 %41)
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = sext i32 %44 to i64
  %46 = sub nsw i64 %45, %42
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %43, align 8
  %48 = load i64, i64* @verbose, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %59

50:                                               ; preds = %38
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = ashr i32 %52, 32
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 10
  %57 = load i32, i32* %56, align 8
  %58 = call i32 (i8*, ...) @pg_log_info(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %53, i32 %55, i32 %57)
  br label %59

59:                                               ; preds = %50, %38
  %60 = load i32, i32* @stop_streaming, align 4
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 9
  store i32 %60, i32* %61, align 4
  %62 = load i32, i32* @PGINVALID_SOCKET, align 4
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 8
  store i32 %62, i32* %63, align 8
  %64 = load i32, i32* @standby_message_timeout, align 4
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 7
  store i32 %64, i32* %65, align 4
  %66 = load i32, i32* @synchronous, align 4
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 6
  store i32 %66, i32* %67, align 8
  %68 = load i32, i32* @do_sync, align 4
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 5
  store i32 %68, i32* %69, align 4
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 1
  store i32 0, i32* %70, align 4
  %71 = load i32, i32* @basedir, align 4
  %72 = load i32, i32* @compresslevel, align 4
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 5
  %74 = load i32, i32* %73, align 4
  %75 = call %struct.TYPE_7__* @CreateWalDirectoryMethod(i32 %71, i32 %72, i32 %74)
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 3
  store %struct.TYPE_7__* %75, %struct.TYPE_7__** %76, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 2
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8** %77, align 8
  %78 = load i32, i32* @replication_slot, align 4
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 4
  store i32 %78, i32* %79, align 8
  %80 = load i32*, i32** @conn, align 8
  %81 = call i32 @ReceiveXlogStream(i32* %80, %struct.TYPE_6__* %3)
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 3
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 0
  %85 = load i32 (...)*, i32 (...)** %84, align 8
  %86 = call i32 (...) %85()
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %90, label %88

88:                                               ; preds = %59
  %89 = call i32 (i8*, ...) @pg_log_info(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  br label %97

90:                                               ; preds = %59
  %91 = load i32*, i32** @conn, align 8
  %92 = call i32 @PQfinish(i32* %91)
  store i32* null, i32** @conn, align 8
  %93 = call i32 (...) @FreeWalDirectoryMethod()
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 3
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %94, align 8
  %96 = call i32 @pg_free(%struct.TYPE_7__* %95)
  store i32* null, i32** @conn, align 8
  br label %97

97:                                               ; preds = %90, %88, %12
  ret void
}

declare dso_local i32 @MemSet(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32* @GetConnection(...) #1

declare dso_local i32 @CheckServerVersionForStreaming(i32*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @RunIdentifySystem(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @FindStreamingStart(i32*) #1

declare dso_local i64 @XLogSegmentOffset(i32, i32) #1

declare dso_local i32 @pg_log_info(i8*, ...) #1

declare dso_local %struct.TYPE_7__* @CreateWalDirectoryMethod(i32, i32, i32) #1

declare dso_local i32 @ReceiveXlogStream(i32*, %struct.TYPE_6__*) #1

declare dso_local i32 @PQfinish(i32*) #1

declare dso_local i32 @FreeWalDirectoryMethod(...) #1

declare dso_local i32 @pg_free(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
