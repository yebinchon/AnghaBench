; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/regex/extr_regcomp.c_rfree.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/regex/extr_regcomp.c_rfree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32*, i32* }
%struct.guts = type { i32, i32, i32*, i32*, i32, i64 }
%struct.vars = type { i32 }

@REMAGIC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*)* @rfree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rfree(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca %struct.guts*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %4 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %5 = icmp eq %struct.TYPE_3__* %4, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %1
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @REMAGIC, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %6, %1
  br label %67

13:                                               ; preds = %6
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  store i64 0, i64* %15, align 8
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 2
  %18 = load i32*, i32** %17, align 8
  %19 = bitcast i32* %18 to %struct.guts*
  store %struct.guts* %19, %struct.guts** %3, align 8
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 2
  store i32* null, i32** %21, align 8
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  store i32* null, i32** %23, align 8
  %24 = load %struct.guts*, %struct.guts** %3, align 8
  %25 = icmp ne %struct.guts* %24, null
  br i1 %25, label %26, label %67

26:                                               ; preds = %13
  %27 = load %struct.guts*, %struct.guts** %3, align 8
  %28 = getelementptr inbounds %struct.guts, %struct.guts* %27, i32 0, i32 5
  store i64 0, i64* %28, align 8
  %29 = load %struct.guts*, %struct.guts** %3, align 8
  %30 = getelementptr inbounds %struct.guts, %struct.guts* %29, i32 0, i32 4
  %31 = call i32 @freecm(i32* %30)
  %32 = load %struct.guts*, %struct.guts** %3, align 8
  %33 = getelementptr inbounds %struct.guts, %struct.guts* %32, i32 0, i32 3
  %34 = load i32*, i32** %33, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %41

36:                                               ; preds = %26
  %37 = load %struct.guts*, %struct.guts** %3, align 8
  %38 = getelementptr inbounds %struct.guts, %struct.guts* %37, i32 0, i32 3
  %39 = load i32*, i32** %38, align 8
  %40 = call i32 @freesubre(%struct.vars* null, i32* %39)
  br label %41

41:                                               ; preds = %36, %26
  %42 = load %struct.guts*, %struct.guts** %3, align 8
  %43 = getelementptr inbounds %struct.guts, %struct.guts* %42, i32 0, i32 2
  %44 = load i32*, i32** %43, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %46, label %54

46:                                               ; preds = %41
  %47 = load %struct.guts*, %struct.guts** %3, align 8
  %48 = getelementptr inbounds %struct.guts, %struct.guts* %47, i32 0, i32 2
  %49 = load i32*, i32** %48, align 8
  %50 = load %struct.guts*, %struct.guts** %3, align 8
  %51 = getelementptr inbounds %struct.guts, %struct.guts* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @freelacons(i32* %49, i32 %52)
  br label %54

54:                                               ; preds = %46, %41
  %55 = load %struct.guts*, %struct.guts** %3, align 8
  %56 = getelementptr inbounds %struct.guts, %struct.guts* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @NULLCNFA(i32 %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %64, label %60

60:                                               ; preds = %54
  %61 = load %struct.guts*, %struct.guts** %3, align 8
  %62 = getelementptr inbounds %struct.guts, %struct.guts* %61, i32 0, i32 0
  %63 = call i32 @freecnfa(i32* %62)
  br label %64

64:                                               ; preds = %60, %54
  %65 = load %struct.guts*, %struct.guts** %3, align 8
  %66 = call i32 @FREE(%struct.guts* %65)
  br label %67

67:                                               ; preds = %12, %64, %13
  ret void
}

declare dso_local i32 @freecm(i32*) #1

declare dso_local i32 @freesubre(%struct.vars*, i32*) #1

declare dso_local i32 @freelacons(i32*, i32) #1

declare dso_local i32 @NULLCNFA(i32) #1

declare dso_local i32 @freecnfa(i32*) #1

declare dso_local i32 @FREE(%struct.guts*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
