; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_context.c_Context_Release.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_context.c_Context_Release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_11__*, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 (%struct.TYPE_11__*, i32)*, i32 (%struct.TYPE_11__*, %struct.TYPE_10__*)* }

@.str = private unnamed_addr constant [13 x i8] c"(%p) ref=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Context_Release(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  %5 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 1
  %7 = call i64 @InterlockedDecrement(i32* %6)
  store i64 %7, i64* %3, align 8
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %9 = load i64, i64* %3, align 8
  %10 = call i32 @TRACE(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), %struct.TYPE_10__* %8, i64 %9)
  %11 = load i64, i64* %3, align 8
  %12 = icmp sge i64 %11, 0
  %13 = zext i1 %12 to i32
  %14 = call i32 @assert(i32 %13)
  %15 = load i64, i64* %3, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %36, label %17

17:                                               ; preds = %1
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  store %struct.TYPE_11__* %20, %struct.TYPE_11__** %4, align 8
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 1
  %25 = load i32 (%struct.TYPE_11__*, %struct.TYPE_10__*)*, i32 (%struct.TYPE_11__*, %struct.TYPE_10__*)** %24, align 8
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %28 = call i32 %25(%struct.TYPE_11__* %26, %struct.TYPE_10__* %27)
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = load i32 (%struct.TYPE_11__*, i32)*, i32 (%struct.TYPE_11__*, i32)** %32, align 8
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %35 = call i32 %33(%struct.TYPE_11__* %34, i32 0)
  br label %36

36:                                               ; preds = %17, %1
  ret void
}

declare dso_local i64 @InterlockedDecrement(i32*) #1

declare dso_local i32 @TRACE(i8*, %struct.TYPE_10__*, i64) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
