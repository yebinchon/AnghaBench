; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_ruleutils.c_set_deparse_context_planstate.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_ruleutils.c_set_deparse_context_planstate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @set_deparse_context_planstate(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = call i32 @list_length(i32* %8)
  %10 = icmp eq i32 %9, 1
  %11 = zext i1 %10 to i32
  %12 = call i32 @Assert(i32 %11)
  %13 = load i32*, i32** %4, align 8
  %14 = call i64 @linitial(i32* %13)
  %15 = inttoptr i64 %14 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %15, %struct.TYPE_3__** %7, align 8
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %17 = load i32*, i32** %5, align 8
  %18 = call i32 @set_deparse_planstate(%struct.TYPE_3__* %16, i32* %17)
  %19 = load i32*, i32** %6, align 8
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  store i32* %19, i32** %21, align 8
  %22 = load i32*, i32** %4, align 8
  ret i32* %22
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @list_length(i32*) #1

declare dso_local i64 @linitial(i32*) #1

declare dso_local i32 @set_deparse_planstate(%struct.TYPE_3__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
