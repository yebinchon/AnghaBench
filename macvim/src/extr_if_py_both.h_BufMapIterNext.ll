; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_if_py_both.h_BufMapIterNext.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_if_py_both.h_BufMapIterNext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32**)* @BufMapIterNext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @BufMapIterNext(i32** %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32**, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  store i32** %0, i32*** %3, align 8
  %6 = load i32**, i32*** %3, align 8
  %7 = load i32*, i32** %6, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store i32* null, i32** %2, align 8
  br label %43

10:                                               ; preds = %1
  %11 = load i32**, i32*** %3, align 8
  %12 = load i32*, i32** %11, align 8
  store i32* %12, i32** %5, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = bitcast i32* %13 to %struct.TYPE_5__*
  %15 = call i64 @CheckBuffer(%struct.TYPE_5__* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %10
  %18 = load i32**, i32*** %3, align 8
  store i32* null, i32** %18, align 8
  store i32* null, i32** %2, align 8
  br label %43

19:                                               ; preds = %10
  %20 = load i32*, i32** %5, align 8
  %21 = bitcast i32* %20 to %struct.TYPE_5__*
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %19
  store i32* null, i32** %4, align 8
  br label %39

28:                                               ; preds = %19
  %29 = load i32*, i32** %5, align 8
  %30 = bitcast i32* %29 to %struct.TYPE_5__*
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32* @BufferNew(i32 %34)
  store i32* %35, i32** %4, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %28
  store i32* null, i32** %2, align 8
  br label %43

38:                                               ; preds = %28
  br label %39

39:                                               ; preds = %38, %27
  %40 = load i32*, i32** %4, align 8
  %41 = load i32**, i32*** %3, align 8
  store i32* %40, i32** %41, align 8
  %42 = load i32*, i32** %5, align 8
  store i32* %42, i32** %2, align 8
  br label %43

43:                                               ; preds = %39, %37, %17, %9
  %44 = load i32*, i32** %2, align 8
  ret i32* %44
}

declare dso_local i64 @CheckBuffer(%struct.TYPE_5__*) #1

declare dso_local i32* @BufferNew(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
