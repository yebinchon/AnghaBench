; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_tsrank.c_SortAndUniqItems.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_tsrank.c_SortAndUniqItems.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@QI_VAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32** (i32, i32*)* @SortAndUniqItems to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32** @SortAndUniqItems(i32 %0, i32* %1) #0 {
  %3 = alloca i32**, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i32**, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  %11 = load i32, i32* %4, align 4
  %12 = call i8* @GETOPERAND(i32 %11)
  store i8* %12, i8** %6, align 8
  %13 = load i32, i32* %4, align 4
  %14 = call %struct.TYPE_3__* @GETQUERY(i32 %13)
  store %struct.TYPE_3__* %14, %struct.TYPE_3__** %7, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = load i32, i32* %15, align 4
  %17 = sext i32 %16 to i64
  %18 = mul i64 8, %17
  %19 = trunc i64 %18 to i32
  %20 = call i64 @palloc(i32 %19)
  %21 = inttoptr i64 %20 to i32**
  store i32** %21, i32*** %8, align 8
  store i32** %21, i32*** %9, align 8
  br label %22

22:                                               ; preds = %39, %2
  %23 = load i32*, i32** %5, align 8
  %24 = load i32, i32* %23, align 4
  %25 = add nsw i32 %24, -1
  store i32 %25, i32* %23, align 4
  %26 = icmp ne i32 %24, 0
  br i1 %26, label %27, label %42

27:                                               ; preds = %22
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @QI_VAL, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %27
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %35 = bitcast %struct.TYPE_3__* %34 to i32*
  %36 = load i32**, i32*** %9, align 8
  store i32* %35, i32** %36, align 8
  %37 = load i32**, i32*** %9, align 8
  %38 = getelementptr inbounds i32*, i32** %37, i32 1
  store i32** %38, i32*** %9, align 8
  br label %39

39:                                               ; preds = %33, %27
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 1
  store %struct.TYPE_3__* %41, %struct.TYPE_3__** %7, align 8
  br label %22

42:                                               ; preds = %22
  %43 = load i32**, i32*** %9, align 8
  %44 = load i32**, i32*** %8, align 8
  %45 = ptrtoint i32** %43 to i64
  %46 = ptrtoint i32** %44 to i64
  %47 = sub i64 %45, %46
  %48 = sdiv exact i64 %47, 8
  %49 = trunc i64 %48 to i32
  %50 = load i32*, i32** %5, align 8
  store i32 %49, i32* %50, align 4
  %51 = load i32*, i32** %5, align 8
  %52 = load i32, i32* %51, align 4
  %53 = icmp slt i32 %52, 2
  br i1 %53, label %54, label %56

54:                                               ; preds = %42
  %55 = load i32**, i32*** %8, align 8
  store i32** %55, i32*** %3, align 8
  br label %104

56:                                               ; preds = %42
  %57 = load i32**, i32*** %8, align 8
  %58 = load i32*, i32** %5, align 8
  %59 = load i32, i32* %58, align 4
  %60 = load i8*, i8** %6, align 8
  %61 = call i32 @qsort_arg(i32** %57, i32 %59, i32 8, i64 (i8*, i8*, i8*)* @compareQueryOperand, i8* %60)
  %62 = load i32**, i32*** %8, align 8
  %63 = getelementptr inbounds i32*, i32** %62, i64 1
  store i32** %63, i32*** %9, align 8
  %64 = load i32**, i32*** %8, align 8
  store i32** %64, i32*** %10, align 8
  br label %65

65:                                               ; preds = %90, %56
  %66 = load i32**, i32*** %9, align 8
  %67 = load i32**, i32*** %8, align 8
  %68 = ptrtoint i32** %66 to i64
  %69 = ptrtoint i32** %67 to i64
  %70 = sub i64 %68, %69
  %71 = sdiv exact i64 %70, 8
  %72 = load i32*, i32** %5, align 8
  %73 = load i32, i32* %72, align 4
  %74 = sext i32 %73 to i64
  %75 = icmp slt i64 %71, %74
  br i1 %75, label %76, label %93

76:                                               ; preds = %65
  %77 = load i32**, i32*** %9, align 8
  %78 = bitcast i32** %77 to i8*
  %79 = load i32**, i32*** %10, align 8
  %80 = bitcast i32** %79 to i8*
  %81 = load i8*, i8** %6, align 8
  %82 = call i64 @compareQueryOperand(i8* %78, i8* %80, i8* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %76
  %85 = load i32**, i32*** %10, align 8
  %86 = getelementptr inbounds i32*, i32** %85, i32 1
  store i32** %86, i32*** %10, align 8
  %87 = load i32**, i32*** %9, align 8
  %88 = load i32*, i32** %87, align 8
  %89 = load i32**, i32*** %10, align 8
  store i32* %88, i32** %89, align 8
  br label %90

90:                                               ; preds = %84, %76
  %91 = load i32**, i32*** %9, align 8
  %92 = getelementptr inbounds i32*, i32** %91, i32 1
  store i32** %92, i32*** %9, align 8
  br label %65

93:                                               ; preds = %65
  %94 = load i32**, i32*** %10, align 8
  %95 = getelementptr inbounds i32*, i32** %94, i64 1
  %96 = load i32**, i32*** %8, align 8
  %97 = ptrtoint i32** %95 to i64
  %98 = ptrtoint i32** %96 to i64
  %99 = sub i64 %97, %98
  %100 = sdiv exact i64 %99, 8
  %101 = trunc i64 %100 to i32
  %102 = load i32*, i32** %5, align 8
  store i32 %101, i32* %102, align 4
  %103 = load i32**, i32*** %8, align 8
  store i32** %103, i32*** %3, align 8
  br label %104

104:                                              ; preds = %93, %54
  %105 = load i32**, i32*** %3, align 8
  ret i32** %105
}

declare dso_local i8* @GETOPERAND(i32) #1

declare dso_local %struct.TYPE_3__* @GETQUERY(i32) #1

declare dso_local i64 @palloc(i32) #1

declare dso_local i32 @qsort_arg(i32**, i32, i32, i64 (i8*, i8*, i8*)*, i8*) #1

declare dso_local i64 @compareQueryOperand(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
