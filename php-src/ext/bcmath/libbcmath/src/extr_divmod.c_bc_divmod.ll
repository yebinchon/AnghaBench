; ModuleID = '/home/carl/AnghaBench/php-src/ext/bcmath/libbcmath/src/extr_divmod.c_bc_divmod.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/bcmath/libbcmath/src/extr_divmod.c_bc_divmod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bc_divmod(%struct.TYPE_20__* %0, %struct.TYPE_20__* %1, %struct.TYPE_20__** %2, %struct.TYPE_20__** %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_20__*, align 8
  %8 = alloca %struct.TYPE_20__*, align 8
  %9 = alloca %struct.TYPE_20__**, align 8
  %10 = alloca %struct.TYPE_20__**, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_20__*, align 8
  %13 = alloca %struct.TYPE_20__*, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %7, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %8, align 8
  store %struct.TYPE_20__** %2, %struct.TYPE_20__*** %9, align 8
  store %struct.TYPE_20__** %3, %struct.TYPE_20__*** %10, align 8
  store i32 %4, i32* %11, align 4
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %12, align 8
  %15 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %16 = call i64 @bc_is_zero(%struct.TYPE_20__* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %58

19:                                               ; preds = %5
  %20 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i32, i32* %11, align 4
  %27 = sext i32 %26 to i64
  %28 = add nsw i64 %25, %27
  %29 = call i32 @MAX(i64 %22, i64 %28)
  store i32 %29, i32* %14, align 4
  %30 = call i32 @bc_init_num(%struct.TYPE_20__** %13)
  %31 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %32 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %33 = call i32 @bc_divide(%struct.TYPE_20__* %31, %struct.TYPE_20__* %32, %struct.TYPE_20__** %13, i32 0)
  %34 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %9, align 8
  %35 = icmp ne %struct.TYPE_20__** %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %19
  %37 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %38 = call %struct.TYPE_20__* @bc_copy_num(%struct.TYPE_20__* %37)
  store %struct.TYPE_20__* %38, %struct.TYPE_20__** %12, align 8
  br label %39

39:                                               ; preds = %36, %19
  %40 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %41 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %42 = load i32, i32* %14, align 4
  %43 = call i32 @bc_multiply(%struct.TYPE_20__* %40, %struct.TYPE_20__* %41, %struct.TYPE_20__** %13, i32 %42)
  %44 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %45 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %46 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %10, align 8
  %47 = load i32, i32* %14, align 4
  %48 = call i32 @bc_sub(%struct.TYPE_20__* %44, %struct.TYPE_20__* %45, %struct.TYPE_20__** %46, i32 %47)
  %49 = call i32 @bc_free_num(%struct.TYPE_20__** %13)
  %50 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %9, align 8
  %51 = icmp ne %struct.TYPE_20__** %50, null
  br i1 %51, label %52, label %57

52:                                               ; preds = %39
  %53 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %9, align 8
  %54 = call i32 @bc_free_num(%struct.TYPE_20__** %53)
  %55 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %56 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %9, align 8
  store %struct.TYPE_20__* %55, %struct.TYPE_20__** %56, align 8
  br label %57

57:                                               ; preds = %52, %39
  store i32 0, i32* %6, align 4
  br label %58

58:                                               ; preds = %57, %18
  %59 = load i32, i32* %6, align 4
  ret i32 %59
}

declare dso_local i64 @bc_is_zero(%struct.TYPE_20__*) #1

declare dso_local i32 @MAX(i64, i64) #1

declare dso_local i32 @bc_init_num(%struct.TYPE_20__**) #1

declare dso_local i32 @bc_divide(%struct.TYPE_20__*, %struct.TYPE_20__*, %struct.TYPE_20__**, i32) #1

declare dso_local %struct.TYPE_20__* @bc_copy_num(%struct.TYPE_20__*) #1

declare dso_local i32 @bc_multiply(%struct.TYPE_20__*, %struct.TYPE_20__*, %struct.TYPE_20__**, i32) #1

declare dso_local i32 @bc_sub(%struct.TYPE_20__*, %struct.TYPE_20__*, %struct.TYPE_20__**, i32) #1

declare dso_local i32 @bc_free_num(%struct.TYPE_20__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
