; ModuleID = '/home/carl/AnghaBench/netdata/daemon/extr_signals.c_signal_handler.c'
source_filename = "/home/carl/AnghaBench/netdata/daemon/extr_signals.c_signal_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32, i32, i32 }

@signals_waiting = common dso_local global %struct.TYPE_2__* null, align 8
@NETDATA_SIGNAL_END_OF_LIST = common dso_local global i64 0, align 8
@NETDATA_SIGNAL_FATAL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [51 x i8] c"\0ASIGNAL HANLDER: received: %s. Oops! This is bad!\0A\00", align 1
@STDERR_FILENO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @signal_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @signal_handler(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [201 x i8], align 16
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %61, %1
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** @signals_waiting, align 8
  %7 = load i32, i32* %3, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i64 %8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @NETDATA_SIGNAL_END_OF_LIST, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %64

14:                                               ; preds = %5
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** @signals_waiting, align 8
  %16 = load i32, i32* %3, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* %2, align 4
  %22 = icmp eq i32 %20, %21
  %23 = zext i1 %22 to i32
  %24 = call i64 @unlikely(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %60

26:                                               ; preds = %14
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** @signals_waiting, align 8
  %28 = load i32, i32* %3, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %31, align 8
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** @signals_waiting, align 8
  %35 = load i32, i32* %3, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @NETDATA_SIGNAL_FATAL, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %59

42:                                               ; preds = %26
  %43 = getelementptr inbounds [201 x i8], [201 x i8]* %4, i64 0, i64 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** @signals_waiting, align 8
  %45 = load i32, i32* %3, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @snprintfz(i8* %43, i32 200, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %49)
  %51 = load i32, i32* @STDERR_FILENO, align 4
  %52 = getelementptr inbounds [201 x i8], [201 x i8]* %4, i64 0, i64 0
  %53 = getelementptr inbounds [201 x i8], [201 x i8]* %4, i64 0, i64 0
  %54 = call i32 @strlen(i8* %53)
  %55 = call i32 @write(i32 %51, i8* %52, i32 %54)
  %56 = icmp eq i32 %55, -1
  br i1 %56, label %57, label %58

57:                                               ; preds = %42
  br label %58

58:                                               ; preds = %57, %42
  br label %59

59:                                               ; preds = %58, %26
  br label %64

60:                                               ; preds = %14
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %3, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %3, align 4
  br label %5

64:                                               ; preds = %59, %5
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @snprintfz(i8*, i32, i8*, i32) #1

declare dso_local i32 @write(i32, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
