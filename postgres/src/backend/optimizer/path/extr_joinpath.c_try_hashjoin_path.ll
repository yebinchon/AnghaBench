; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/optimizer/path/extr_joinpath.c_try_hashjoin_path.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/optimizer/path/extr_joinpath.c_try_hashjoin_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }

@NIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*, i32*, i32*, i32, %struct.TYPE_8__*)* @try_hashjoin_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @try_hashjoin_path(i32* %0, i32* %1, i32* %2, i32* %3, i32* %4, i32 %5, %struct.TYPE_8__* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_8__*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_9__, align 4
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  store %struct.TYPE_8__* %6, %struct.TYPE_8__** %14, align 8
  %17 = load i32*, i32** %10, align 8
  %18 = load i32*, i32** %11, align 8
  %19 = call i64 @calc_non_nestloop_required_outer(i32* %17, i32* %18)
  store i64 %19, i64* %15, align 8
  %20 = load i64, i64* %15, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %32

22:                                               ; preds = %7
  %23 = load i64, i64* %15, align 8
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @bms_overlap(i64 %23, i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %22
  %30 = load i64, i64* %15, align 8
  %31 = call i32 @bms_free(i64 %30)
  br label %68

32:                                               ; preds = %22, %7
  %33 = load i32*, i32** %8, align 8
  %34 = load i32, i32* %13, align 4
  %35 = load i32*, i32** %12, align 8
  %36 = load i32*, i32** %10, align 8
  %37 = load i32*, i32** %11, align 8
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %39 = call i32 @initial_cost_hashjoin(i32* %33, %struct.TYPE_9__* %16, i32 %34, i32* %35, i32* %36, i32* %37, %struct.TYPE_8__* %38, i32 0)
  %40 = load i32*, i32** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @NIL, align 4
  %46 = load i64, i64* %15, align 8
  %47 = call i64 @add_path_precheck(i32* %40, i32 %42, i32 %44, i32 %45, i64 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %65

49:                                               ; preds = %32
  %50 = load i32*, i32** %9, align 8
  %51 = load i32*, i32** %8, align 8
  %52 = load i32*, i32** %9, align 8
  %53 = load i32, i32* %13, align 4
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %55 = load i32*, i32** %10, align 8
  %56 = load i32*, i32** %11, align 8
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i64, i64* %15, align 8
  %61 = load i32*, i32** %12, align 8
  %62 = call i64 @create_hashjoin_path(i32* %51, i32* %52, i32 %53, %struct.TYPE_9__* %16, %struct.TYPE_8__* %54, i32* %55, i32* %56, i32 0, i32 %59, i64 %60, i32* %61)
  %63 = inttoptr i64 %62 to i32*
  %64 = call i32 @add_path(i32* %50, i32* %63)
  br label %68

65:                                               ; preds = %32
  %66 = load i64, i64* %15, align 8
  %67 = call i32 @bms_free(i64 %66)
  br label %68

68:                                               ; preds = %29, %65, %49
  ret void
}

declare dso_local i64 @calc_non_nestloop_required_outer(i32*, i32*) #1

declare dso_local i32 @bms_overlap(i64, i32) #1

declare dso_local i32 @bms_free(i64) #1

declare dso_local i32 @initial_cost_hashjoin(i32*, %struct.TYPE_9__*, i32, i32*, i32*, i32*, %struct.TYPE_8__*, i32) #1

declare dso_local i64 @add_path_precheck(i32*, i32, i32, i32, i64) #1

declare dso_local i32 @add_path(i32*, i32*) #1

declare dso_local i64 @create_hashjoin_path(i32*, i32*, i32, %struct.TYPE_9__*, %struct.TYPE_8__*, i32*, i32*, i32, i32, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
