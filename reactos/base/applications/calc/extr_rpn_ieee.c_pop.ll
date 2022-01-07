; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/calc/extr_rpn_ieee.c_pop.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/calc/extr_rpn_ieee.c_pop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32 }

@stack = common dso_local global %struct.TYPE_3__* null, align 8
@temp = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* ()* @pop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @pop() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i8*, align 8
  %3 = load %struct.TYPE_3__*, %struct.TYPE_3__** @stack, align 8
  %4 = icmp eq %struct.TYPE_3__* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  store i32* null, i32** %1, align 8
  br label %17

6:                                                ; preds = %0
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** @stack, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  store i32 %9, i32* @temp, align 4
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** @stack, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  store i8* %12, i8** %2, align 8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** @stack, align 8
  %14 = call i32 @free(%struct.TYPE_3__* %13)
  %15 = load i8*, i8** %2, align 8
  %16 = bitcast i8* %15 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %16, %struct.TYPE_3__** @stack, align 8
  store i32* @temp, i32** %1, align 8
  br label %17

17:                                               ; preds = %6, %5
  %18 = load i32*, i32** %1, align 8
  ret i32* %18
}

declare dso_local i32 @free(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
