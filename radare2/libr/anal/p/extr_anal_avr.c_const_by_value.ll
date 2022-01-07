; ModuleID = '/home/carl/AnghaBench/radare2/libr/anal/p/extr_anal_avr.c_const_by_value.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/anal/p/extr_anal_avr.c_const_by_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i64 }
%struct.TYPE_5__ = type { %struct.TYPE_5__*, %struct.TYPE_6__** }

@CPU_CONST_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_6__* (%struct.TYPE_5__*, i32, i32)* @const_by_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_6__* @const_by_value(%struct.TYPE_5__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_6__**, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %11, align 8
  store %struct.TYPE_6__** %12, %struct.TYPE_6__*** %8, align 8
  br label %13

13:                                               ; preds = %59, %3
  %14 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %8, align 8
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = icmp ne %struct.TYPE_6__* %15, null
  br i1 %16, label %17, label %62

17:                                               ; preds = %13
  %18 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %8, align 8
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  store %struct.TYPE_6__* %19, %struct.TYPE_6__** %9, align 8
  br label %20

20:                                               ; preds = %55, %17
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %22 = icmp ne %struct.TYPE_6__* %21, null
  br i1 %22, label %23, label %28

23:                                               ; preds = %20
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 3
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br label %28

28:                                               ; preds = %23, %20
  %29 = phi i1 [ false, %20 ], [ %27, %23 ]
  br i1 %29, label %30, label %58

30:                                               ; preds = %28
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = mul nsw i32 %36, 8
  %38 = call i32 @MASK(i32 %37)
  %39 = load i32, i32* %7, align 4
  %40 = and i32 %38, %39
  %41 = icmp eq i32 %33, %40
  br i1 %41, label %42, label %54

42:                                               ; preds = %30
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* @CPU_CONST_NONE, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %52, label %46

46:                                               ; preds = %42
  %47 = load i32, i32* %6, align 4
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = icmp eq i32 %47, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %46, %42
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  store %struct.TYPE_6__* %53, %struct.TYPE_6__** %4, align 8
  br label %75

54:                                               ; preds = %46, %30
  br label %55

55:                                               ; preds = %54
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 1
  store %struct.TYPE_6__* %57, %struct.TYPE_6__** %9, align 8
  br label %20

58:                                               ; preds = %28
  br label %59

59:                                               ; preds = %58
  %60 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %60, i32 1
  store %struct.TYPE_6__** %61, %struct.TYPE_6__*** %8, align 8
  br label %13

62:                                               ; preds = %13
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %64, align 8
  %66 = icmp ne %struct.TYPE_5__* %65, null
  br i1 %66, label %67, label %74

67:                                               ; preds = %62
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %69, align 8
  %71 = load i32, i32* %6, align 4
  %72 = load i32, i32* %7, align 4
  %73 = call %struct.TYPE_6__* @const_by_value(%struct.TYPE_5__* %70, i32 %71, i32 %72)
  store %struct.TYPE_6__* %73, %struct.TYPE_6__** %4, align 8
  br label %75

74:                                               ; preds = %62
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %4, align 8
  br label %75

75:                                               ; preds = %74, %67, %52
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  ret %struct.TYPE_6__* %76
}

declare dso_local i32 @MASK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
