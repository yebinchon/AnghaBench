; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_jsonb.c_array_to_jsonb_internal.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_jsonb.c_array_to_jsonb_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i8* }

@WJB_BEGIN_ARRAY = common dso_local global i32 0, align 4
@WJB_END_ARRAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_4__*)* @array_to_jsonb_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @array_to_jsonb_internal(i32 %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8, align 1
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %4, align 8
  %18 = load i32, i32* %3, align 4
  %19 = call i32* @DatumGetArrayTypeP(i32 %18)
  store i32* %19, i32** %5, align 8
  %20 = load i32*, i32** %5, align 8
  %21 = call i32 @ARR_ELEMTYPE(i32* %20)
  store i32 %21, i32* %6, align 4
  store i32 0, i32* %10, align 4
  %22 = load i32*, i32** %5, align 8
  %23 = call i32 @ARR_NDIM(i32* %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32*, i32** %5, align 8
  %25 = call i32* @ARR_DIMS(i32* %24)
  store i32* %25, i32** %7, align 8
  %26 = load i32, i32* %8, align 4
  %27 = load i32*, i32** %7, align 8
  %28 = call i32 @ArrayGetNItems(i32 %26, i32* %27)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp sle i32 %29, 0
  br i1 %30, label %31, label %44

31:                                               ; preds = %2
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* @WJB_BEGIN_ARRAY, align 4
  %35 = call i8* @pushJsonbValue(i32* %33, i32 %34, i32* null)
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  store i8* %35, i8** %37, align 8
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* @WJB_END_ARRAY, align 4
  %41 = call i8* @pushJsonbValue(i32* %39, i32 %40, i32* null)
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  store i8* %41, i8** %43, align 8
  br label %67

44:                                               ; preds = %2
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @get_typlenbyvalalign(i32 %45, i32* %13, i32* %14, i8* %15)
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @jsonb_categorize_type(i32 %47, i32* %16, i32* %17)
  %49 = load i32*, i32** %5, align 8
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* %13, align 4
  %52 = load i32, i32* %14, align 4
  %53 = load i8, i8* %15, align 1
  %54 = call i32 @deconstruct_array(i32* %49, i32 %50, i32 %51, i32 %52, i8 signext %53, i32** %11, i32** %12, i32* %9)
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %56 = load i32, i32* %8, align 4
  %57 = load i32*, i32** %7, align 8
  %58 = load i32*, i32** %11, align 8
  %59 = load i32*, i32** %12, align 8
  %60 = load i32, i32* %16, align 4
  %61 = load i32, i32* %17, align 4
  %62 = call i32 @array_dim_to_jsonb(%struct.TYPE_4__* %55, i32 0, i32 %56, i32* %57, i32* %58, i32* %59, i32* %10, i32 %60, i32 %61)
  %63 = load i32*, i32** %11, align 8
  %64 = call i32 @pfree(i32* %63)
  %65 = load i32*, i32** %12, align 8
  %66 = call i32 @pfree(i32* %65)
  br label %67

67:                                               ; preds = %44, %31
  ret void
}

declare dso_local i32* @DatumGetArrayTypeP(i32) #1

declare dso_local i32 @ARR_ELEMTYPE(i32*) #1

declare dso_local i32 @ARR_NDIM(i32*) #1

declare dso_local i32* @ARR_DIMS(i32*) #1

declare dso_local i32 @ArrayGetNItems(i32, i32*) #1

declare dso_local i8* @pushJsonbValue(i32*, i32, i32*) #1

declare dso_local i32 @get_typlenbyvalalign(i32, i32*, i32*, i8*) #1

declare dso_local i32 @jsonb_categorize_type(i32, i32*, i32*) #1

declare dso_local i32 @deconstruct_array(i32*, i32, i32, i32, i8 signext, i32**, i32**, i32*) #1

declare dso_local i32 @array_dim_to_jsonb(%struct.TYPE_4__*, i32, i32, i32*, i32*, i32*, i32*, i32, i32) #1

declare dso_local i32 @pfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
