; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_basebackup/extr_pg_basebackup.c_LogStreamerMain.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_basebackup/extr_pg_basebackup.c_LogStreamerMain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i32, %struct.TYPE_11__*, i32, i32*, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_11__ = type { i32 (...)* }

@in_log_streamer = common dso_local global i32 0, align 4
@reached_end_position = common dso_local global i32 0, align 4
@bgpipe = common dso_local global i32* null, align 8
@standby_message_timeout = common dso_local global i32 0, align 4
@replication_slot = common dso_local global i32 0, align 4
@format = common dso_local global i8 0, align 1
@compresslevel = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"could not finish writing WAL files: %m\00", align 1
@PGINVALID_SOCKET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*)* @LogStreamerMain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @LogStreamerMain(%struct.TYPE_9__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.TYPE_10__, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store i32 1, i32* @in_log_streamer, align 4
  %5 = call i32 @MemSet(%struct.TYPE_10__* %4, i32 0, i32 64)
  %6 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 4
  %8 = load i32, i32* %7, align 4
  %9 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %4, i32 0, i32 11
  store i32 %8, i32* %9, align 4
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %4, i32 0, i32 10
  store i32 %12, i32* %13, align 8
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %4, i32 0, i32 9
  store i32 %16, i32* %17, align 4
  %18 = load i32, i32* @reached_end_position, align 4
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %4, i32 0, i32 8
  store i32 %18, i32* %19, align 8
  %20 = load i32*, i32** @bgpipe, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = load i32, i32* %21, align 4
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %4, i32 0, i32 7
  store i32 %22, i32* %23, align 4
  %24 = load i32, i32* @standby_message_timeout, align 4
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %4, i32 0, i32 6
  store i32 %24, i32* %25, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %4, i32 0, i32 0
  store i32 0, i32* %26, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %4, i32 0, i32 1
  store i32 0, i32* %27, align 4
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %4, i32 0, i32 2
  store i32 1, i32* %28, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %4, i32 0, i32 5
  store i32* null, i32** %29, align 8
  %30 = load i32, i32* @replication_slot, align 4
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %4, i32 0, i32 4
  store i32 %30, i32* %31, align 8
  %32 = load i8, i8* @format, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 112
  br i1 %34, label %35, label %43

35:                                               ; preds = %1
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %4, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call %struct.TYPE_11__* @CreateWalDirectoryMethod(i32 %38, i32 0, i32 %40)
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %4, i32 0, i32 3
  store %struct.TYPE_11__* %41, %struct.TYPE_11__** %42, align 8
  br label %52

43:                                               ; preds = %1
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @compresslevel, align 4
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %4, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call %struct.TYPE_11__* @CreateWalTarMethod(i32 %46, i32 %47, i32 %49)
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %4, i32 0, i32 3
  store %struct.TYPE_11__* %50, %struct.TYPE_11__** %51, align 8
  br label %52

52:                                               ; preds = %43, %35
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @ReceiveXlogStream(i32 %55, %struct.TYPE_10__* %4)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %52
  store i32 1, i32* %2, align 4
  br label %84

59:                                               ; preds = %52
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %4, i32 0, i32 3
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 0
  %63 = load i32 (...)*, i32 (...)** %62, align 8
  %64 = call i32 (...) %63()
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %68, label %66

66:                                               ; preds = %59
  %67 = call i32 @pg_log_error(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %84

68:                                               ; preds = %59
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @PQfinish(i32 %71)
  %73 = load i8, i8* @format, align 1
  %74 = sext i8 %73 to i32
  %75 = icmp eq i32 %74, 112
  br i1 %75, label %76, label %78

76:                                               ; preds = %68
  %77 = call i32 (...) @FreeWalDirectoryMethod()
  br label %80

78:                                               ; preds = %68
  %79 = call i32 (...) @FreeWalTarMethod()
  br label %80

80:                                               ; preds = %78, %76
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %4, i32 0, i32 3
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %81, align 8
  %83 = call i32 @pg_free(%struct.TYPE_11__* %82)
  store i32 0, i32* %2, align 4
  br label %84

84:                                               ; preds = %80, %66, %58
  %85 = load i32, i32* %2, align 4
  ret i32 %85
}

declare dso_local i32 @MemSet(%struct.TYPE_10__*, i32, i32) #1

declare dso_local %struct.TYPE_11__* @CreateWalDirectoryMethod(i32, i32, i32) #1

declare dso_local %struct.TYPE_11__* @CreateWalTarMethod(i32, i32, i32) #1

declare dso_local i32 @ReceiveXlogStream(i32, %struct.TYPE_10__*) #1

declare dso_local i32 @pg_log_error(i8*) #1

declare dso_local i32 @PQfinish(i32) #1

declare dso_local i32 @FreeWalDirectoryMethod(...) #1

declare dso_local i32 @FreeWalTarMethod(...) #1

declare dso_local i32 @pg_free(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
