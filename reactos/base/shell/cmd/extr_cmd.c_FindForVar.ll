; ModuleID = '/home/carl/AnghaBench/reactos/base/shell/cmd/extr_cmd.c_FindForVar.c'
source_filename = "/home/carl/AnghaBench/reactos/base/shell/cmd/extr_cmd.c_FindForVar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i32**, %struct.TYPE_3__* }

@FALSE = common dso_local global i32 0, align 4
@fc = common dso_local global %struct.TYPE_3__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i64, i32*)* @FindForVar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @FindForVar(i64 %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  store i64 %0, i64* %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load i32, i32* @FALSE, align 4
  %8 = load i32*, i32** %5, align 8
  store i32 %7, i32* %8, align 4
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** @fc, align 8
  store %struct.TYPE_3__* %9, %struct.TYPE_3__** %6, align 8
  br label %10

10:                                               ; preds = %35, %2
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %12 = icmp ne %struct.TYPE_3__* %11, null
  br i1 %12, label %13, label %39

13:                                               ; preds = %10
  %14 = load i64, i64* %4, align 8
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = sub i64 %14, %17
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp slt i64 %18, %21
  br i1 %22, label %23, label %34

23:                                               ; preds = %13
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 2
  %26 = load i32**, i32*** %25, align 8
  %27 = load i64, i64* %4, align 8
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = sub i64 %27, %30
  %32 = getelementptr inbounds i32*, i32** %26, i64 %31
  %33 = load i32*, i32** %32, align 8
  store i32* %33, i32** %3, align 8
  br label %40

34:                                               ; preds = %13
  br label %35

35:                                               ; preds = %34
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 3
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  store %struct.TYPE_3__* %38, %struct.TYPE_3__** %6, align 8
  br label %10

39:                                               ; preds = %10
  store i32* null, i32** %3, align 8
  br label %40

40:                                               ; preds = %39, %23
  %41 = load i32*, i32** %3, align 8
  ret i32* %41
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
