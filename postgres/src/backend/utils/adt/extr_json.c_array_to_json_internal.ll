; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_json.c_array_to_json_internal.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_json.c_array_to_json_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"[]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32)* @array_to_json_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @array_to_json_internal(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8, align 1
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %20 = load i32, i32* %4, align 4
  %21 = call i32* @DatumGetArrayTypeP(i32 %20)
  store i32* %21, i32** %7, align 8
  %22 = load i32*, i32** %7, align 8
  %23 = call i32 @ARR_ELEMTYPE(i32* %22)
  store i32 %23, i32* %8, align 4
  store i32 0, i32* %12, align 4
  %24 = load i32*, i32** %7, align 8
  %25 = call i32 @ARR_NDIM(i32* %24)
  store i32 %25, i32* %10, align 4
  %26 = load i32*, i32** %7, align 8
  %27 = call i32* @ARR_DIMS(i32* %26)
  store i32* %27, i32** %9, align 8
  %28 = load i32, i32* %10, align 4
  %29 = load i32*, i32** %9, align 8
  %30 = call i32 @ArrayGetNItems(i32 %28, i32* %29)
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %11, align 4
  %32 = icmp sle i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %3
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @appendStringInfoString(i32 %34, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  br label %60

36:                                               ; preds = %3
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @get_typlenbyvalalign(i32 %37, i32* %15, i32* %16, i8* %17)
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @json_categorize_type(i32 %39, i32* %18, i32* %19)
  %41 = load i32*, i32** %7, align 8
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* %15, align 4
  %44 = load i32, i32* %16, align 4
  %45 = load i8, i8* %17, align 1
  %46 = call i32 @deconstruct_array(i32* %41, i32 %42, i32 %43, i32 %44, i8 signext %45, i32** %13, i32** %14, i32* %11)
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* %10, align 4
  %49 = load i32*, i32** %9, align 8
  %50 = load i32*, i32** %13, align 8
  %51 = load i32*, i32** %14, align 8
  %52 = load i32, i32* %18, align 4
  %53 = load i32, i32* %19, align 4
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @array_dim_to_json(i32 %47, i32 0, i32 %48, i32* %49, i32* %50, i32* %51, i32* %12, i32 %52, i32 %53, i32 %54)
  %56 = load i32*, i32** %13, align 8
  %57 = call i32 @pfree(i32* %56)
  %58 = load i32*, i32** %14, align 8
  %59 = call i32 @pfree(i32* %58)
  br label %60

60:                                               ; preds = %36, %33
  ret void
}

declare dso_local i32* @DatumGetArrayTypeP(i32) #1

declare dso_local i32 @ARR_ELEMTYPE(i32*) #1

declare dso_local i32 @ARR_NDIM(i32*) #1

declare dso_local i32* @ARR_DIMS(i32*) #1

declare dso_local i32 @ArrayGetNItems(i32, i32*) #1

declare dso_local i32 @appendStringInfoString(i32, i8*) #1

declare dso_local i32 @get_typlenbyvalalign(i32, i32*, i32*, i8*) #1

declare dso_local i32 @json_categorize_type(i32, i32*, i32*) #1

declare dso_local i32 @deconstruct_array(i32*, i32, i32, i32, i8 signext, i32**, i32**, i32*) #1

declare dso_local i32 @array_dim_to_json(i32, i32, i32, i32*, i32*, i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @pfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
