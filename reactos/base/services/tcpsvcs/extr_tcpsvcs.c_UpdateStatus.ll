; ModuleID = '/home/carl/AnghaBench/reactos/base/services/tcpsvcs/extr_tcpsvcs.c_UpdateStatus.c'
source_filename = "/home/carl/AnghaBench/reactos/base/services/tcpsvcs/extr_tcpsvcs.c_UpdateStatus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i64, i64 }

@.str = private unnamed_addr constant [36 x i32] [i32 83, i32 101, i32 114, i32 118, i32 105, i32 99, i32 101, i32 32, i32 115, i32 116, i32 97, i32 116, i32 101, i32 32, i32 48, i32 120, i32 37, i32 108, i32 120, i32 44, i32 32, i32 67, i32 104, i32 101, i32 99, i32 107, i32 80, i32 111, i32 105, i32 110, i32 116, i32 32, i32 37, i32 108, i32 117, i32 0], align 4
@LOG_FILE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i32] [i32 67, i32 97, i32 110, i32 110, i32 111, i32 116, i32 32, i32 115, i32 101, i32 116, i32 32, i32 115, i32 101, i32 114, i32 118, i32 105, i32 99, i32 101, i32 32, i32 115, i32 116, i32 97, i32 116, i32 117, i32 115, i32 0], align 4
@LOG_ALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i64, i64)* @UpdateStatus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @UpdateStatus(%struct.TYPE_4__* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca [50 x i8], align 16
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load i64, i64* %7, align 8
  %10 = icmp sgt i64 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %3
  %12 = load i64, i64* %7, align 8
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = add nsw i64 %16, %12
  store i64 %17, i64* %15, align 8
  br label %23

18:                                               ; preds = %3
  %19 = load i64, i64* %7, align 8
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  store i64 %19, i64* %22, align 8
  br label %23

23:                                               ; preds = %18, %11
  %24 = load i64, i64* %6, align 8
  %25 = icmp sgt i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %23
  %27 = load i64, i64* %6, align 8
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 1
  store i64 %27, i64* %30, align 8
  br label %31

31:                                               ; preds = %26, %23
  %32 = getelementptr inbounds [50 x i8], [50 x i8]* %8, i64 0, i64 0
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @_snwprintf(i8* %32, i32 49, i8* bitcast ([36 x i32]* @.str to i8*), i64 %36, i64 %40)
  %42 = getelementptr inbounds [50 x i8], [50 x i8]* %8, i64 0, i64 0
  %43 = load i32, i32* @LOG_FILE, align 4
  %44 = call i32 @LogEvent(i8* %42, i32 0, i32 0, i32 %43)
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = call i32 @SetServiceStatus(i32 %47, %struct.TYPE_5__* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %31
  %53 = call i32 (...) @GetLastError()
  %54 = load i32, i32* @LOG_ALL, align 4
  %55 = call i32 @LogEvent(i8* bitcast ([26 x i32]* @.str.1 to i8*), i32 %53, i32 0, i32 %54)
  br label %56

56:                                               ; preds = %52, %31
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i32 @_snwprintf(i8*, i32, i8*, i64, i64) #1

declare dso_local i32 @LogEvent(i8*, i32, i32, i32) #1

declare dso_local i32 @SetServiceStatus(i32, %struct.TYPE_5__*) #1

declare dso_local i32 @GetLastError(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
