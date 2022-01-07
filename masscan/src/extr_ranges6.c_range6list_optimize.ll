; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_ranges6.c_range6list_optimize.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_ranges6.c_range6list_optimize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Range6List = type { i32, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@SIZE_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @range6list_optimize(%struct.Range6List* %0) #0 {
  %2 = alloca %struct.Range6List*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.Range6List* %0, %struct.Range6List** %2, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.Range6List*, %struct.Range6List** %2, align 8
  %7 = getelementptr inbounds %struct.Range6List, %struct.Range6List* %6, i32 0, i32 1
  %8 = load i32*, i32** %7, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load %struct.Range6List*, %struct.Range6List** %2, align 8
  %12 = getelementptr inbounds %struct.Range6List, %struct.Range6List* %11, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  %14 = call i32 @free(i32* %13)
  br label %15

15:                                               ; preds = %10, %1
  %16 = load %struct.Range6List*, %struct.Range6List** %2, align 8
  %17 = getelementptr inbounds %struct.Range6List, %struct.Range6List* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = sext i32 %18 to i64
  %20 = load i32, i32* @SIZE_MAX, align 4
  %21 = sext i32 %20 to i64
  %22 = udiv i64 %21, 4
  %23 = icmp uge i64 %19, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %15
  %25 = call i32 @exit(i32 1) #3
  unreachable

26:                                               ; preds = %15
  %27 = load %struct.Range6List*, %struct.Range6List** %2, align 8
  %28 = getelementptr inbounds %struct.Range6List, %struct.Range6List* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = sext i32 %29 to i64
  %31 = mul i64 %30, 4
  %32 = trunc i64 %31 to i32
  %33 = call i32* @malloc(i32 %32)
  store i32* %33, i32** %3, align 8
  %34 = load i32*, i32** %3, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %26
  %37 = call i32 @exit(i32 1) #3
  unreachable

38:                                               ; preds = %26
  store i64 0, i64* %4, align 8
  br label %39

39:                                               ; preds = %71, %38
  %40 = load i64, i64* %4, align 8
  %41 = load %struct.Range6List*, %struct.Range6List** %2, align 8
  %42 = getelementptr inbounds %struct.Range6List, %struct.Range6List* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = sext i32 %43 to i64
  %45 = icmp ult i64 %40, %44
  br i1 %45, label %46, label %74

46:                                               ; preds = %39
  %47 = load i32, i32* %5, align 4
  %48 = load i32*, i32** %3, align 8
  %49 = load i64, i64* %4, align 8
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  store i32 %47, i32* %50, align 4
  %51 = load %struct.Range6List*, %struct.Range6List** %2, align 8
  %52 = getelementptr inbounds %struct.Range6List, %struct.Range6List* %51, i32 0, i32 2
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = load i64, i64* %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.Range6List*, %struct.Range6List** %2, align 8
  %59 = getelementptr inbounds %struct.Range6List, %struct.Range6List* %58, i32 0, i32 2
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = load i64, i64* %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i64 @DIFF(i32 %57, i32 %64)
  %66 = add nsw i64 %65, 1
  %67 = load i32, i32* %5, align 4
  %68 = sext i32 %67 to i64
  %69 = add nsw i64 %68, %66
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %5, align 4
  br label %71

71:                                               ; preds = %46
  %72 = load i64, i64* %4, align 8
  %73 = add i64 %72, 1
  store i64 %73, i64* %4, align 8
  br label %39

74:                                               ; preds = %39
  %75 = load i32*, i32** %3, align 8
  %76 = load %struct.Range6List*, %struct.Range6List** %2, align 8
  %77 = getelementptr inbounds %struct.Range6List, %struct.Range6List* %76, i32 0, i32 1
  store i32* %75, i32** %77, align 8
  ret void
}

declare dso_local i32 @free(i32*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32* @malloc(i32) #1

declare dso_local i64 @DIFF(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
