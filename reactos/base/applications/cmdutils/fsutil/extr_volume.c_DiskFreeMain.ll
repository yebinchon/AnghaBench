; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/cmdutils/fsutil/extr_volume.c_DiskFreeMain.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/cmdutils/fsutil/extr_volume.c_DiskFreeMain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Usage: fsutil volume diskfree <volume path>\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"\09For example: fsutil volume diskfree c:\0A\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"Total free bytes\09\09: %I64i\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"Total bytes\09\09\09: %I64i\0A\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"Total free available bytes\09: %I64i\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32**)* @DiskFreeMain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @DiskFreeMain(i32 %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32**, align 8
  %6 = alloca %struct.TYPE_5__, align 4
  %7 = alloca %struct.TYPE_5__, align 4
  %8 = alloca %struct.TYPE_5__, align 4
  store i32 %0, i32* %4, align 4
  store i32** %1, i32*** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = icmp slt i32 %9, 2
  br i1 %10, label %11, label %18

11:                                               ; preds = %2
  %12 = load i32, i32* @stderr, align 4
  %13 = call i32 @_T(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %14 = call i32 (i32, i32, ...) @_ftprintf(i32 %12, i32 %13)
  %15 = load i32, i32* @stderr, align 4
  %16 = call i32 @_T(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %17 = call i32 (i32, i32, ...) @_ftprintf(i32 %15, i32 %16)
  store i32 1, i32* %3, align 4
  br label %43

18:                                               ; preds = %2
  %19 = load i32**, i32*** %5, align 8
  %20 = getelementptr inbounds i32*, i32** %19, i64 1
  %21 = load i32*, i32** %20, align 8
  %22 = call i32 @GetDiskFreeSpaceEx(i32* %21, %struct.TYPE_5__* %6, %struct.TYPE_5__* %7, %struct.TYPE_5__* %8)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %18
  %25 = call i32 (...) @GetLastError()
  %26 = call i32 @PrintErrorMessage(i32 %25)
  store i32 1, i32* %3, align 4
  br label %43

27:                                               ; preds = %18
  %28 = load i32, i32* @stdout, align 4
  %29 = call i32 @_T(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 (i32, i32, ...) @_ftprintf(i32 %28, i32 %29, i32 %31)
  %33 = load i32, i32* @stdout, align 4
  %34 = call i32 @_T(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 (i32, i32, ...) @_ftprintf(i32 %33, i32 %34, i32 %36)
  %38 = load i32, i32* @stdout, align 4
  %39 = call i32 @_T(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0))
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 (i32, i32, ...) @_ftprintf(i32 %38, i32 %39, i32 %41)
  store i32 0, i32* %3, align 4
  br label %43

43:                                               ; preds = %27, %24, %11
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i32 @_ftprintf(i32, i32, ...) #1

declare dso_local i32 @_T(i8*) #1

declare dso_local i32 @GetDiskFreeSpaceEx(i32*, %struct.TYPE_5__*, %struct.TYPE_5__*, %struct.TYPE_5__*) #1

declare dso_local i32 @PrintErrorMessage(i32) #1

declare dso_local i32 @GetLastError(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
