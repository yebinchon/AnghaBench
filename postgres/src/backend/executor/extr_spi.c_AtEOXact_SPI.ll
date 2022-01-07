; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/executor/extr_spi.c_AtEOXact_SPI.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/executor/extr_spi.c_AtEOXact_SPI.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@_SPI_current = common dso_local global %struct.TYPE_2__* null, align 8
@_SPI_connected = common dso_local global i32 0, align 4
@WARNING = common dso_local global i32 0, align 4
@ERRCODE_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"transaction left non-empty SPI stack\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"Check for missing \22SPI_finish\22 calls.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AtEOXact_SPI(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load %struct.TYPE_2__*, %struct.TYPE_2__** @_SPI_current, align 8
  %4 = icmp ne %struct.TYPE_2__* %3, null
  br i1 %4, label %5, label %11

5:                                                ; preds = %1
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** @_SPI_current, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %5
  br label %26

11:                                               ; preds = %5, %1
  %12 = load i32, i32* %2, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %24

14:                                               ; preds = %11
  %15 = load i32, i32* @_SPI_connected, align 4
  %16 = icmp ne i32 %15, -1
  br i1 %16, label %17, label %24

17:                                               ; preds = %14
  %18 = load i32, i32* @WARNING, align 4
  %19 = load i32, i32* @ERRCODE_WARNING, align 4
  %20 = call i32 @errcode(i32 %19)
  %21 = call i32 @errmsg(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %22 = call i32 @errhint(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %23 = call i32 @ereport(i32 %18, i32 %22)
  br label %24

24:                                               ; preds = %17, %14, %11
  %25 = call i32 (...) @SPICleanup()
  br label %26

26:                                               ; preds = %24, %10
  ret void
}

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32 @errhint(i8*) #1

declare dso_local i32 @SPICleanup(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
