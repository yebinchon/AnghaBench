; ModuleID = '/home/carl/AnghaBench/postgres/contrib/ltree/extr_ltxtquery_io.c_findoprnd.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/ltree/extr_ltxtquery_io.c_findoprnd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i64 }

@VAL = common dso_local global i64 0, align 8
@VALTRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i64*)* @findoprnd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @findoprnd(%struct.TYPE_3__* %0, i64* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i64* %1, i64** %4, align 8
  %7 = call i32 (...) @check_stack_depth()
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %9 = load i64*, i64** %4, align 8
  %10 = load i64, i64* %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i64 %10
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @VAL, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %25, label %16

16:                                               ; preds = %2
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %18 = load i64*, i64** %4, align 8
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @VALTRUE, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %34

25:                                               ; preds = %16, %2
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %27 = load i64*, i64** %4, align 8
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  store i32 0, i32* %30, align 8
  %31 = load i64*, i64** %4, align 8
  %32 = load i64, i64* %31, align 8
  %33 = add i64 %32, 1
  store i64 %33, i64* %31, align 8
  br label %75

34:                                               ; preds = %16
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %36 = load i64*, i64** %4, align 8
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %40, 33
  br i1 %41, label %42, label %53

42:                                               ; preds = %34
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %44 = load i64*, i64** %4, align 8
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  store i32 1, i32* %47, align 8
  %48 = load i64*, i64** %4, align 8
  %49 = load i64, i64* %48, align 8
  %50 = add i64 %49, 1
  store i64 %50, i64* %48, align 8
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %52 = load i64*, i64** %4, align 8
  call void @findoprnd(%struct.TYPE_3__* %51, i64* %52)
  br label %74

53:                                               ; preds = %34
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %55 = load i64*, i64** %4, align 8
  %56 = load i64, i64* %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i64 %56
  store %struct.TYPE_3__* %57, %struct.TYPE_3__** %5, align 8
  %58 = load i64*, i64** %4, align 8
  %59 = load i64, i64* %58, align 8
  store i64 %59, i64* %6, align 8
  %60 = load i64*, i64** %4, align 8
  %61 = load i64, i64* %60, align 8
  %62 = add i64 %61, 1
  store i64 %62, i64* %60, align 8
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %64 = load i64*, i64** %4, align 8
  call void @findoprnd(%struct.TYPE_3__* %63, i64* %64)
  %65 = load i64*, i64** %4, align 8
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* %6, align 8
  %68 = sub i64 %66, %67
  %69 = trunc i64 %68 to i32
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 8
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %73 = load i64*, i64** %4, align 8
  call void @findoprnd(%struct.TYPE_3__* %72, i64* %73)
  br label %74

74:                                               ; preds = %53, %42
  br label %75

75:                                               ; preds = %74, %25
  ret void
}

declare dso_local i32 @check_stack_depth(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
