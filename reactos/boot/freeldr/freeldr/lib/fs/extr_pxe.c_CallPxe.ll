; ModuleID = '/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/lib/fs/extr_pxe.c_CallPxe.c'
source_filename = "/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/lib/fs/extr_pxe.c_CallPxe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@PXENV_TFTP_READ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"PxeCall(0x%x, %p)\0A\00", align 1
@PXENV_EXIT_SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [51 x i8] c"PxeCall(0x%x, %p) failed with exit=%d status=0x%x\0A\00", align 1
@PXENV_STATUS_SUCCESS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [61 x i8] c"PxeCall(0x%x, %p) succeeded, but returned error status 0x%x\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CallPxe(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  %8 = call %struct.TYPE_5__* (...) @GetPxeStructure()
  store %struct.TYPE_5__* %8, %struct.TYPE_5__** %6, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %10 = icmp ne %struct.TYPE_5__* %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @FALSE, align 4
  store i32 %12, i32* %3, align 4
  br label %63

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @PXENV_TFTP_READ, align 4
  %16 = icmp ne i32 %14, %15
  br i1 %16, label %17, label %22

17:                                               ; preds = %13
  %18 = call i32 @KeStallExecutionProcessor(i32 100000)
  %19 = load i32, i32* %4, align 4
  %20 = load i64, i64* %5, align 8
  %21 = call i32 @TRACE(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %19, i64 %20)
  br label %22

22:                                               ; preds = %17, %13
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %4, align 4
  %32 = load i64, i64* %5, align 8
  %33 = call i64 @PxeCallApi(i32 %26, i32 %30, i32 %31, i64 %32)
  store i64 %33, i64* %7, align 8
  %34 = load i64, i64* %7, align 8
  %35 = load i64, i64* @PXENV_EXIT_SUCCESS, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %46

37:                                               ; preds = %22
  %38 = load i32, i32* %4, align 4
  %39 = load i64, i64* %5, align 8
  %40 = load i64, i64* %7, align 8
  %41 = load i64, i64* %5, align 8
  %42 = inttoptr i64 %41 to i32*
  %43 = load i32, i32* %42, align 4
  %44 = call i32 (i8*, i32, i64, i64, ...) @ERR(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %38, i64 %39, i64 %40, i32 %43)
  %45 = load i32, i32* @FALSE, align 4
  store i32 %45, i32* %3, align 4
  br label %63

46:                                               ; preds = %22
  %47 = load i64, i64* %5, align 8
  %48 = inttoptr i64 %47 to i32*
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @PXENV_STATUS_SUCCESS, align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %52, label %61

52:                                               ; preds = %46
  %53 = load i32, i32* %4, align 4
  %54 = load i64, i64* %5, align 8
  %55 = load i64, i64* %5, align 8
  %56 = inttoptr i64 %55 to i32*
  %57 = load i32, i32* %56, align 4
  %58 = sext i32 %57 to i64
  %59 = call i32 (i8*, i32, i64, i64, ...) @ERR(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.2, i64 0, i64 0), i32 %53, i64 %54, i64 %58)
  %60 = load i32, i32* @FALSE, align 4
  store i32 %60, i32* %3, align 4
  br label %63

61:                                               ; preds = %46
  %62 = load i32, i32* @TRUE, align 4
  store i32 %62, i32* %3, align 4
  br label %63

63:                                               ; preds = %61, %52, %37, %11
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local %struct.TYPE_5__* @GetPxeStructure(...) #1

declare dso_local i32 @KeStallExecutionProcessor(i32) #1

declare dso_local i32 @TRACE(i8*, i32, i64) #1

declare dso_local i64 @PxeCallApi(i32, i32, i32, i64) #1

declare dso_local i32 @ERR(i8*, i32, i64, i64, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
