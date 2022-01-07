; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/network/net/extr_cmdUser.c_PrintDateTime.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/network/net/extr_cmdUser.c_PrintDateTime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }

@LOCALE_USER_DEFAULT = common dso_local global i32 0, align 4
@DATE_SHORTDATE = common dso_local global i32 0, align 4
@TIME_NOSECONDS = common dso_local global i32 0, align 4
@StdOut = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i32] [i32 37, i32 115, i32 32, i32 37, i32 115, i32 0], align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @PrintDateTime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @PrintDateTime(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__, align 4
  %5 = alloca %struct.TYPE_10__, align 4
  %6 = alloca i32, align 4
  %7 = alloca [80 x i32], align 16
  %8 = alloca [80 x i32], align 16
  store i32 %0, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @RtlSecondsSince1970ToTime(i32 %9, %struct.TYPE_9__* %4)
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 1
  store i32 %13, i32* %14, align 4
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 0
  store i32 %17, i32* %18, align 4
  %19 = call i32 @FileTimeToLocalFileTime(%struct.TYPE_10__* %5, %struct.TYPE_10__* %5)
  %20 = call i32 @FileTimeToSystemTime(%struct.TYPE_10__* %5, i32* %6)
  %21 = load i32, i32* @LOCALE_USER_DEFAULT, align 4
  %22 = load i32, i32* @DATE_SHORTDATE, align 4
  %23 = getelementptr inbounds [80 x i32], [80 x i32]* %7, i64 0, i64 0
  %24 = getelementptr inbounds [80 x i32], [80 x i32]* %7, i64 0, i64 0
  %25 = call i32 @ARRAYSIZE(i32* %24)
  %26 = call i32 @GetDateFormatW(i32 %21, i32 %22, i32* %6, i32* null, i32* %23, i32 %25)
  %27 = load i32, i32* @LOCALE_USER_DEFAULT, align 4
  %28 = load i32, i32* @TIME_NOSECONDS, align 4
  %29 = getelementptr inbounds [80 x i32], [80 x i32]* %8, i64 0, i64 0
  %30 = getelementptr inbounds [80 x i32], [80 x i32]* %8, i64 0, i64 0
  %31 = call i32 @ARRAYSIZE(i32* %30)
  %32 = call i32 @GetTimeFormatW(i32 %27, i32 %28, i32* %6, i32* null, i32* %29, i32 %31)
  %33 = load i32, i32* @StdOut, align 4
  %34 = getelementptr inbounds [80 x i32], [80 x i32]* %7, i64 0, i64 0
  %35 = getelementptr inbounds [80 x i32], [80 x i32]* %8, i64 0, i64 0
  %36 = call i32 @ConPrintf(i32 %33, i8* bitcast ([6 x i32]* @.str to i8*), i32* %34, i32* %35)
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i32 @RtlSecondsSince1970ToTime(i32, %struct.TYPE_9__*) #1

declare dso_local i32 @FileTimeToLocalFileTime(%struct.TYPE_10__*, %struct.TYPE_10__*) #1

declare dso_local i32 @FileTimeToSystemTime(%struct.TYPE_10__*, i32*) #1

declare dso_local i32 @GetDateFormatW(i32, i32, i32*, i32*, i32*, i32) #1

declare dso_local i32 @ARRAYSIZE(i32*) #1

declare dso_local i32 @GetTimeFormatW(i32, i32, i32*, i32*, i32*, i32) #1

declare dso_local i32 @ConPrintf(i32, i8*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
