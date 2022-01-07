; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_parser.tab.c_new_forin_statement.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_parser.tab.c_new_forin_statement.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32*, i32*, i32*, i32* }

@STAT_FORIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i32*, i32*, i32*)* @new_forin_statement to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @new_forin_statement(i32* %0, i32* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_3__*, align 8
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %13 = load i32*, i32** %7, align 8
  %14 = load i32, i32* @STAT_FORIN, align 4
  %15 = call %struct.TYPE_3__* @new_statement(i32* %13, i32 %14, i32 40)
  store %struct.TYPE_3__* %15, %struct.TYPE_3__** %12, align 8
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %17 = icmp ne %struct.TYPE_3__* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %5
  store i32* null, i32** %6, align 8
  br label %34

19:                                               ; preds = %5
  %20 = load i32*, i32** %8, align 8
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 4
  store i32* %20, i32** %22, align 8
  %23 = load i32*, i32** %9, align 8
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 3
  store i32* %23, i32** %25, align 8
  %26 = load i32*, i32** %10, align 8
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 2
  store i32* %26, i32** %28, align 8
  %29 = load i32*, i32** %11, align 8
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  store i32* %29, i32** %31, align 8
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  store i32* %33, i32** %6, align 8
  br label %34

34:                                               ; preds = %19, %18
  %35 = load i32*, i32** %6, align 8
  ret i32* %35
}

declare dso_local %struct.TYPE_3__* @new_statement(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
