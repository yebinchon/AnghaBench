; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/parser/extr_parse_clause.c_getRTEForSpecialRelationTypes.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/parser/extr_parse_clause.c_getRTEForSpecialRelationTypes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, %struct.TYPE_5__*)* @getRTEForSpecialRelationTypes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @getRTEForSpecialRelationTypes(i32* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32* null, i32** %3, align 8
  br label %43

14:                                               ; preds = %2
  %15 = load i32*, i32** %4, align 8
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32* @scanNameSpaceForCTE(i32* %15, i32 %18, i32* %7)
  store i32* %19, i32** %6, align 8
  %20 = load i32*, i32** %6, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %28

22:                                               ; preds = %14
  %23 = load i32*, i32** %4, align 8
  %24 = load i32*, i32** %6, align 8
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %27 = call i32* @addRangeTableEntryForCTE(i32* %23, i32* %24, i32 %25, %struct.TYPE_5__* %26, i32 1)
  store i32* %27, i32** %8, align 8
  br label %41

28:                                               ; preds = %14
  %29 = load i32*, i32** %4, align 8
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i64 @scanNameSpaceForENR(i32* %29, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %28
  %36 = load i32*, i32** %4, align 8
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %38 = call i32* @addRangeTableEntryForENR(i32* %36, %struct.TYPE_5__* %37, i32 1)
  store i32* %38, i32** %8, align 8
  br label %40

39:                                               ; preds = %28
  store i32* null, i32** %8, align 8
  br label %40

40:                                               ; preds = %39, %35
  br label %41

41:                                               ; preds = %40, %22
  %42 = load i32*, i32** %8, align 8
  store i32* %42, i32** %3, align 8
  br label %43

43:                                               ; preds = %41, %13
  %44 = load i32*, i32** %3, align 8
  ret i32* %44
}

declare dso_local i32* @scanNameSpaceForCTE(i32*, i32, i32*) #1

declare dso_local i32* @addRangeTableEntryForCTE(i32*, i32*, i32, %struct.TYPE_5__*, i32) #1

declare dso_local i64 @scanNameSpaceForENR(i32*, i32) #1

declare dso_local i32* @addRangeTableEntryForENR(i32*, %struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
