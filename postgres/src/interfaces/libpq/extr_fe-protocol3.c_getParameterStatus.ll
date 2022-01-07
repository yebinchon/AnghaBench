; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_fe-protocol3.c_getParameterStatus.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_fe-protocol3.c_getParameterStatus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }

@EOF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*)* @getParameterStatus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getParameterStatus(%struct.TYPE_10__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.TYPE_9__, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  %5 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 0
  %7 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %8 = call i64 @pqGets(%struct.TYPE_9__* %6, %struct.TYPE_10__* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* @EOF, align 4
  store i32 %11, i32* %2, align 4
  br label %30

12:                                               ; preds = %1
  %13 = call i32 @initPQExpBuffer(%struct.TYPE_9__* %4)
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %15 = call i64 @pqGets(%struct.TYPE_9__* %4, %struct.TYPE_10__* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %12
  %18 = call i32 @termPQExpBuffer(%struct.TYPE_9__* %4)
  %19 = load i32, i32* @EOF, align 4
  store i32 %19, i32* %2, align 4
  br label %30

20:                                               ; preds = %12
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @pqSaveParameterStatus(%struct.TYPE_10__* %21, i32 %25, i32 %27)
  %29 = call i32 @termPQExpBuffer(%struct.TYPE_9__* %4)
  store i32 0, i32* %2, align 4
  br label %30

30:                                               ; preds = %20, %17, %10
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local i64 @pqGets(%struct.TYPE_9__*, %struct.TYPE_10__*) #1

declare dso_local i32 @initPQExpBuffer(%struct.TYPE_9__*) #1

declare dso_local i32 @termPQExpBuffer(%struct.TYPE_9__*) #1

declare dso_local i32 @pqSaveParameterStatus(%struct.TYPE_10__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
