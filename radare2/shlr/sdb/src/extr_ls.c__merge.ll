; ModuleID = '/home/carl/AnghaBench/radare2/shlr/sdb/src/extr_ls.c__merge.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/sdb/src/extr_ls.c__merge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_5__*, %struct.TYPE_5__*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_5__* (%struct.TYPE_5__*, %struct.TYPE_5__*, i64 (i32, i32)*)* @_merge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_5__* @_merge(%struct.TYPE_5__* %0, %struct.TYPE_5__* %1, i64 (i32, i32)* %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i64 (i32, i32)*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  store i64 (i32, i32)* %2, i64 (i32, i32)** %6, align 8
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %7, align 8
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %8, align 8
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %9, align 8
  br label %10

10:                                               ; preds = %74, %3
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %12 = icmp ne %struct.TYPE_5__* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %10
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %15 = icmp ne %struct.TYPE_5__* %14, null
  br label %16

16:                                               ; preds = %13, %10
  %17 = phi i1 [ true, %10 ], [ %15, %13 ]
  br i1 %17, label %18, label %75

18:                                               ; preds = %16
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %20 = icmp ne %struct.TYPE_5__* %19, null
  br i1 %20, label %26, label %21

21:                                               ; preds = %18
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  store %struct.TYPE_5__* %22, %struct.TYPE_5__** %7, align 8
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  store %struct.TYPE_5__* %25, %struct.TYPE_5__** %4, align 8
  br label %56

26:                                               ; preds = %18
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %28 = icmp ne %struct.TYPE_5__* %27, null
  br i1 %28, label %34, label %29

29:                                               ; preds = %26
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  store %struct.TYPE_5__* %30, %struct.TYPE_5__** %7, align 8
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  store %struct.TYPE_5__* %33, %struct.TYPE_5__** %5, align 8
  br label %55

34:                                               ; preds = %26
  %35 = load i64 (i32, i32)*, i64 (i32, i32)** %6, align 8
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = call i64 %35(i32 %38, i32 %41)
  %43 = icmp slt i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %34
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  store %struct.TYPE_5__* %45, %struct.TYPE_5__** %7, align 8
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  store %struct.TYPE_5__* %48, %struct.TYPE_5__** %4, align 8
  br label %54

49:                                               ; preds = %34
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  store %struct.TYPE_5__* %50, %struct.TYPE_5__** %7, align 8
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %52, align 8
  store %struct.TYPE_5__* %53, %struct.TYPE_5__** %5, align 8
  br label %54

54:                                               ; preds = %49, %44
  br label %55

55:                                               ; preds = %54, %29
  br label %56

56:                                               ; preds = %55, %21
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %58 = icmp ne %struct.TYPE_5__* %57, null
  br i1 %58, label %64, label %59

59:                                               ; preds = %56
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  store %struct.TYPE_5__* %60, %struct.TYPE_5__** %8, align 8
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  store %struct.TYPE_5__* %61, %struct.TYPE_5__** %9, align 8
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 1
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %63, align 8
  br label %74

64:                                               ; preds = %56
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  store %struct.TYPE_5__* %65, %struct.TYPE_5__** %67, align 8
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 1
  store %struct.TYPE_5__* %68, %struct.TYPE_5__** %70, align 8
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %72, align 8
  store %struct.TYPE_5__* %73, %struct.TYPE_5__** %8, align 8
  br label %74

74:                                               ; preds = %64, %59
  br label %10

75:                                               ; preds = %16
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 1
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %77, align 8
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %79, align 8
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  ret %struct.TYPE_5__* %80
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
