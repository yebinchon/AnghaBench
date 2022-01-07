; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/lib/extr_pairingheap.c_merge_children.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/lib/extr_pairingheap.c_merge_children.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_7__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_7__* (i32*, %struct.TYPE_7__*)* @merge_children to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_7__* @merge_children(i32* %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %11 = icmp eq %struct.TYPE_7__* %10, null
  br i1 %11, label %17, label %12

12:                                               ; preds = %2
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %16 = icmp eq %struct.TYPE_7__* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %12, %2
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  store %struct.TYPE_7__* %18, %struct.TYPE_7__** %3, align 8
  br label %71

19:                                               ; preds = %12
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  store %struct.TYPE_7__* %20, %struct.TYPE_7__** %7, align 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %8, align 8
  br label %21

21:                                               ; preds = %36, %19
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  store %struct.TYPE_7__* %22, %struct.TYPE_7__** %6, align 8
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %24 = icmp eq %struct.TYPE_7__* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  br label %52

26:                                               ; preds = %21
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %28, align 8
  %30 = icmp eq %struct.TYPE_7__* %29, null
  br i1 %30, label %31, label %36

31:                                               ; preds = %26
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  store %struct.TYPE_7__* %32, %struct.TYPE_7__** %34, align 8
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  store %struct.TYPE_7__* %35, %struct.TYPE_7__** %8, align 8
  br label %52

36:                                               ; preds = %26
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %40, align 8
  store %struct.TYPE_7__* %41, %struct.TYPE_7__** %7, align 8
  %42 = load i32*, i32** %4, align 8
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %45, align 8
  %47 = call %struct.TYPE_7__* @merge(i32* %42, %struct.TYPE_7__* %43, %struct.TYPE_7__* %46)
  store %struct.TYPE_7__* %47, %struct.TYPE_7__** %6, align 8
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  store %struct.TYPE_7__* %48, %struct.TYPE_7__** %50, align 8
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  store %struct.TYPE_7__* %51, %struct.TYPE_7__** %8, align 8
  br label %21

52:                                               ; preds = %31, %25
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  store %struct.TYPE_7__* %53, %struct.TYPE_7__** %9, align 8
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %55, align 8
  store %struct.TYPE_7__* %56, %struct.TYPE_7__** %7, align 8
  br label %57

57:                                               ; preds = %60, %52
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %59 = icmp ne %struct.TYPE_7__* %58, null
  br i1 %59, label %60, label %69

60:                                               ; preds = %57
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  store %struct.TYPE_7__* %61, %struct.TYPE_7__** %6, align 8
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %63, align 8
  store %struct.TYPE_7__* %64, %struct.TYPE_7__** %7, align 8
  %65 = load i32*, i32** %4, align 8
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %68 = call %struct.TYPE_7__* @merge(i32* %65, %struct.TYPE_7__* %66, %struct.TYPE_7__* %67)
  store %struct.TYPE_7__* %68, %struct.TYPE_7__** %9, align 8
  br label %57

69:                                               ; preds = %57
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  store %struct.TYPE_7__* %70, %struct.TYPE_7__** %3, align 8
  br label %71

71:                                               ; preds = %69, %17
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  ret %struct.TYPE_7__* %72
}

declare dso_local %struct.TYPE_7__* @merge(i32*, %struct.TYPE_7__*, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
