; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_numeric.c_compute_bucket.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_numeric.c_compute_bucket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i64 }

@const_one = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, %struct.TYPE_23__*, %struct.TYPE_23__*)* @compute_bucket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @compute_bucket(i32 %0, i32 %1, i32 %2, %struct.TYPE_23__* %3, %struct.TYPE_23__* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_23__*, align 8
  %10 = alloca %struct.TYPE_23__*, align 8
  %11 = alloca %struct.TYPE_23__, align 8
  %12 = alloca %struct.TYPE_23__, align 8
  %13 = alloca %struct.TYPE_23__, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.TYPE_23__* %3, %struct.TYPE_23__** %9, align 8
  store %struct.TYPE_23__* %4, %struct.TYPE_23__** %10, align 8
  %14 = load i32, i32* %7, align 4
  %15 = call i32 @init_var_from_num(i32 %14, %struct.TYPE_23__* %11)
  %16 = load i32, i32* %8, align 4
  %17 = call i32 @init_var_from_num(i32 %16, %struct.TYPE_23__* %12)
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @init_var_from_num(i32 %18, %struct.TYPE_23__* %13)
  %20 = call i64 @cmp_var(%struct.TYPE_23__* %11, %struct.TYPE_23__* %12)
  %21 = icmp slt i64 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %5
  %23 = call i32 @sub_var(%struct.TYPE_23__* %13, %struct.TYPE_23__* %11, %struct.TYPE_23__* %13)
  %24 = call i32 @sub_var(%struct.TYPE_23__* %12, %struct.TYPE_23__* %11, %struct.TYPE_23__* %12)
  %25 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %26 = call i32 @select_div_scale(%struct.TYPE_23__* %13, %struct.TYPE_23__* %12)
  %27 = call i32 @div_var(%struct.TYPE_23__* %13, %struct.TYPE_23__* %12, %struct.TYPE_23__* %25, i32 %26, i32 1)
  br label %34

28:                                               ; preds = %5
  %29 = call i32 @sub_var(%struct.TYPE_23__* %11, %struct.TYPE_23__* %13, %struct.TYPE_23__* %13)
  %30 = call i32 @sub_var(%struct.TYPE_23__* %11, %struct.TYPE_23__* %12, %struct.TYPE_23__* %11)
  %31 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %32 = call i32 @select_div_scale(%struct.TYPE_23__* %13, %struct.TYPE_23__* %11)
  %33 = call i32 @div_var(%struct.TYPE_23__* %13, %struct.TYPE_23__* %11, %struct.TYPE_23__* %31, i32 %32, i32 1)
  br label %34

34:                                               ; preds = %28, %22
  %35 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %36 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %37 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %38 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = add nsw i64 %40, %43
  %45 = call i32 @mul_var(%struct.TYPE_23__* %35, %struct.TYPE_23__* %36, %struct.TYPE_23__* %37, i64 %44)
  %46 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %47 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %48 = call i32 @add_var(%struct.TYPE_23__* %46, i32* @const_one, %struct.TYPE_23__* %47)
  %49 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %50 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %51 = call i32 @floor_var(%struct.TYPE_23__* %49, %struct.TYPE_23__* %50)
  %52 = call i32 @free_var(%struct.TYPE_23__* %11)
  %53 = call i32 @free_var(%struct.TYPE_23__* %12)
  %54 = call i32 @free_var(%struct.TYPE_23__* %13)
  ret void
}

declare dso_local i32 @init_var_from_num(i32, %struct.TYPE_23__*) #1

declare dso_local i64 @cmp_var(%struct.TYPE_23__*, %struct.TYPE_23__*) #1

declare dso_local i32 @sub_var(%struct.TYPE_23__*, %struct.TYPE_23__*, %struct.TYPE_23__*) #1

declare dso_local i32 @div_var(%struct.TYPE_23__*, %struct.TYPE_23__*, %struct.TYPE_23__*, i32, i32) #1

declare dso_local i32 @select_div_scale(%struct.TYPE_23__*, %struct.TYPE_23__*) #1

declare dso_local i32 @mul_var(%struct.TYPE_23__*, %struct.TYPE_23__*, %struct.TYPE_23__*, i64) #1

declare dso_local i32 @add_var(%struct.TYPE_23__*, i32*, %struct.TYPE_23__*) #1

declare dso_local i32 @floor_var(%struct.TYPE_23__*, %struct.TYPE_23__*) #1

declare dso_local i32 @free_var(%struct.TYPE_23__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
