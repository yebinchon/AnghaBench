; ModuleID = '/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/ntldr/extr_winldr.c_WinLdrpDumpBootDriver.c'
source_filename = "/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/ntldr/extr_winldr.c_WinLdrpDumpBootDriver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_10__* }
%struct.TYPE_11__ = type { %struct.TYPE_8__, i32, i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_10__* }

@BOOT_DRIVER_LIST_ENTRY = common dso_local global i32 0, align 4
@Link = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"BootDriver %wZ DTE %08X RegPath: %wZ\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @WinLdrpDumpBootDriver(%struct.TYPE_9__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  %6 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  store %struct.TYPE_10__* %9, %struct.TYPE_10__** %4, align 8
  br label %10

10:                                               ; preds = %15, %1
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %14 = icmp ne %struct.TYPE_10__* %11, %13
  br i1 %14, label %15, label %32

15:                                               ; preds = %10
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %17 = load i32, i32* @BOOT_DRIVER_LIST_ENTRY, align 4
  %18 = load i32, i32* @Link, align 4
  %19 = call %struct.TYPE_11__* @CONTAINING_RECORD(%struct.TYPE_10__* %16, i32 %17, i32 %18)
  store %struct.TYPE_11__* %19, %struct.TYPE_11__** %5, align 8
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 3
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 1
  %27 = call i32 @TRACE(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32* %21, i32 %24, i32* %26)
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %30, align 8
  store %struct.TYPE_10__* %31, %struct.TYPE_10__** %4, align 8
  br label %10

32:                                               ; preds = %10
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local %struct.TYPE_11__* @CONTAINING_RECORD(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @TRACE(i8*, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
