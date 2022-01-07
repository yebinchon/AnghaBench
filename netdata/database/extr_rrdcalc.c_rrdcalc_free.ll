; ModuleID = '/home/carl/AnghaBench/netdata/database/extr_rrdcalc.c_rrdcalc_free.c'
source_filename = "/home/carl/AnghaBench/netdata/database/extr_rrdcalc.c_rrdcalc_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_4__*, %struct.TYPE_4__*, %struct.TYPE_4__*, %struct.TYPE_4__*, %struct.TYPE_4__*, %struct.TYPE_4__*, %struct.TYPE_4__*, %struct.TYPE_4__*, %struct.TYPE_4__*, %struct.TYPE_4__*, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rrdcalc_free(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %3 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %4 = icmp ne %struct.TYPE_4__* %3, null
  %5 = xor i1 %4, true
  %6 = zext i1 %5 to i32
  %7 = call i64 @unlikely(i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %69

10:                                               ; preds = %1
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 13
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @expression_free(i32 %13)
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 12
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @expression_free(i32 %17)
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 11
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @expression_free(i32 %21)
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 10
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = call i32 @freez(%struct.TYPE_4__* %25)
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 9
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = call i32 @freez(%struct.TYPE_4__* %29)
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 8
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = call i32 @freez(%struct.TYPE_4__* %33)
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 7
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = call i32 @freez(%struct.TYPE_4__* %37)
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 6
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = call i32 @freez(%struct.TYPE_4__* %41)
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 5
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = call i32 @freez(%struct.TYPE_4__* %45)
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 4
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = call i32 @freez(%struct.TYPE_4__* %49)
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 3
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = call i32 @freez(%struct.TYPE_4__* %53)
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 2
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = call i32 @freez(%struct.TYPE_4__* %57)
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 1
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = call i32 @freez(%struct.TYPE_4__* %61)
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @simple_pattern_free(i32 %65)
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %68 = call i32 @freez(%struct.TYPE_4__* %67)
  br label %69

69:                                               ; preds = %10, %9
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @expression_free(i32) #1

declare dso_local i32 @freez(%struct.TYPE_4__*) #1

declare dso_local i32 @simple_pattern_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
