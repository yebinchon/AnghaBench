; ModuleID = '/home/carl/AnghaBench/reactos/boot/freeldr/fdebug/extr_rs232.c_Rs232SetCommunicationTimeoutsWin32.c'
source_filename = "/home/carl/AnghaBench/reactos/boot/freeldr/fdebug/extr_rs232.c_Rs232SetCommunicationTimeoutsWin32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i8*, i8*, i8*, i8* }

@hPortHandle = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"GetCommTimeouts() failed. GetLastError() = %lu.\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"SetCommTimeouts() failed. GetLastError() = %lu.\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Rs232SetCommunicationTimeoutsWin32(i8* %0, i8* %1, i8* %2, i8* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_4__, align 8
  %13 = alloca i8*, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  %14 = load i32, i32* @hPortHandle, align 4
  %15 = call i32 @GetCommTimeouts(i32 %14, %struct.TYPE_4__* %12)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %5
  %18 = call i8* (...) @GetLastError()
  store i8* %18, i8** %13, align 8
  %19 = call i32 @TEXT(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %20 = load i8*, i8** %13, align 8
  %21 = call i32 @_tprintf(i32 %19, i8* %20)
  %22 = load i32, i32* @FALSE, align 4
  store i32 %22, i32* %6, align 4
  br label %45

23:                                               ; preds = %5
  %24 = load i8*, i8** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 4
  store i8* %24, i8** %25, align 8
  %26 = load i8*, i8** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 3
  store i8* %26, i8** %27, align 8
  %28 = load i8*, i8** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 2
  store i8* %28, i8** %29, align 8
  %30 = load i8*, i8** %11, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  store i8* %30, i8** %31, align 8
  %32 = load i8*, i8** %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  store i8* %32, i8** %33, align 8
  %34 = load i32, i32* @hPortHandle, align 4
  %35 = call i32 @SetCommTimeouts(i32 %34, %struct.TYPE_4__* %12)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %43, label %37

37:                                               ; preds = %23
  %38 = call i8* (...) @GetLastError()
  store i8* %38, i8** %13, align 8
  %39 = call i32 @TEXT(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  %40 = load i8*, i8** %13, align 8
  %41 = call i32 @_tprintf(i32 %39, i8* %40)
  %42 = load i32, i32* @FALSE, align 4
  store i32 %42, i32* %6, align 4
  br label %45

43:                                               ; preds = %23
  %44 = load i32, i32* @TRUE, align 4
  store i32 %44, i32* %6, align 4
  br label %45

45:                                               ; preds = %43, %37, %17
  %46 = load i32, i32* %6, align 4
  ret i32 %46
}

declare dso_local i32 @GetCommTimeouts(i32, %struct.TYPE_4__*) #1

declare dso_local i8* @GetLastError(...) #1

declare dso_local i32 @_tprintf(i32, i8*) #1

declare dso_local i32 @TEXT(i8*) #1

declare dso_local i32 @SetCommTimeouts(i32, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
