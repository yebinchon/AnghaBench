; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libtirpc/src/extr_wintirpc.c_tirpc_report.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libtirpc/src/extr_wintirpc.c_tirpc_report.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"tirpc.dll\00", align 1
@.str.1 = private unnamed_addr constant [17 x i32] [i32 116, i32 105, i32 114, i32 112, i32 99, i32 32, i32 114, i32 101, i32 112, i32 111, i32 114, i32 116, i32 58, i32 32, i32 37, i32 100, i32 0], align 4
@EVENTLOG_WARNING_TYPE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tirpc_report(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca [256 x i32], align 16
  %5 = alloca i32*, align 8
  %6 = alloca [2 x i64], align 16
  store i64 %0, i64* %3, align 8
  %7 = call i32 @TEXT(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %8 = call i32* @RegisterEventSource(i32* null, i32 %7)
  store i32* %8, i32** %5, align 8
  %9 = getelementptr inbounds [256 x i32], [256 x i32]* %4, i64 0, i64 0
  %10 = call i32 (...) @GetLastError()
  %11 = call i32 @swprintf_s(i32* %9, i32 1024, i8* bitcast ([17 x i32]* @.str.1 to i8*), i32 %10)
  %12 = getelementptr inbounds [256 x i32], [256 x i32]* %4, i64 0, i64 0
  %13 = ptrtoint i32* %12 to i64
  %14 = getelementptr inbounds [2 x i64], [2 x i64]* %6, i64 0, i64 0
  store i64 %13, i64* %14, align 16
  %15 = load i64, i64* %3, align 8
  %16 = getelementptr inbounds [2 x i64], [2 x i64]* %6, i64 0, i64 1
  store i64 %15, i64* %16, align 8
  %17 = load i32*, i32** %5, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %26

19:                                               ; preds = %1
  %20 = load i32*, i32** %5, align 8
  %21 = load i32, i32* @EVENTLOG_WARNING_TYPE, align 4
  %22 = getelementptr inbounds [2 x i64], [2 x i64]* %6, i64 0, i64 0
  %23 = call i32 @ReportEvent(i32* %20, i32 %21, i32 0, i32 0, i32* null, i32 2, i32 0, i64* %22, i32* null)
  %24 = load i32*, i32** %5, align 8
  %25 = call i32 @DeregisterEventSource(i32* %24)
  br label %26

26:                                               ; preds = %19, %1
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local i32* @RegisterEventSource(i32*, i32) #1

declare dso_local i32 @TEXT(i8*) #1

declare dso_local i32 @swprintf_s(i32*, i32, i8*, i32) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32 @ReportEvent(i32*, i32, i32, i32, i32*, i32, i32, i64*, i32*) #1

declare dso_local i32 @DeregisterEventSource(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
