; ModuleID = '/home/carl/AnghaBench/reactos/base/shell/cmd/extr_for.c_RunInstance.c'
source_filename = "/home/carl/AnghaBench/reactos/base/shell/cmd/extr_for.c_RunInstance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }

@bEcho = common dso_local global i64 0, align 8
@bDisableBatchEcho = common dso_local global i32 0, align 4
@C_QUIET = common dso_local global i64 0, align 8
@bIgnoreEcho = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*)* @RunInstance to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @RunInstance(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %3 = load i64, i64* @bEcho, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %30

5:                                                ; preds = %1
  %6 = load i32, i32* @bDisableBatchEcho, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %30, label %8

8:                                                ; preds = %5
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @C_QUIET, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %30

16:                                               ; preds = %8
  %17 = load i32, i32* @bIgnoreEcho, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %16
  %20 = call i32 @_T(i8 signext 10)
  %21 = call i32 @ConOutChar(i32 %20)
  br label %22

22:                                               ; preds = %19, %16
  %23 = call i32 (...) @PrintPrompt()
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = call i32 @EchoCommand(%struct.TYPE_6__* %26)
  %28 = call i32 @_T(i8 signext 10)
  %29 = call i32 @ConOutChar(i32 %28)
  br label %30

30:                                               ; preds = %22, %8, %5, %1
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = call i32 @ExecuteCommand(%struct.TYPE_6__* %33)
  ret i32 %34
}

declare dso_local i32 @ConOutChar(i32) #1

declare dso_local i32 @_T(i8 signext) #1

declare dso_local i32 @PrintPrompt(...) #1

declare dso_local i32 @EchoCommand(%struct.TYPE_6__*) #1

declare dso_local i32 @ExecuteCommand(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
