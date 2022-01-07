; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/brin/extr_brin_tuple.c_brin_form_placeholder_tuple.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/brin/extr_brin_tuple.c_brin_form_placeholder_tuple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }

@SizeOfBrinTuple = common dso_local global i32 0, align 4
@BRIN_NULLS_MASK = common dso_local global i32 0, align 4
@BRIN_PLACEHOLDER_MASK = common dso_local global i32 0, align 4
@HIGHBIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_8__* @brin_form_placeholder_tuple(%struct.TYPE_9__* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %13 = load i32, i32* @SizeOfBrinTuple, align 4
  store i32 %13, i32* %7, align 4
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = mul nsw i32 %18, 2
  %20 = call i64 @BITMAPLEN(i32 %19)
  %21 = load i32, i32* %7, align 4
  %22 = sext i32 %21 to i64
  %23 = add nsw i64 %22, %20
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @MAXALIGN(i32 %25)
  store i32 %26, i32* %8, align 4
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = call %struct.TYPE_8__* @palloc0(i32 %27)
  store %struct.TYPE_8__* %28, %struct.TYPE_8__** %9, align 8
  %29 = load i32, i32* %5, align 4
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* %8, align 4
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* @BRIN_NULLS_MASK, align 4
  %36 = load i32, i32* @BRIN_PLACEHOLDER_MASK, align 4
  %37 = or i32 %35, %36
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %40, %37
  store i32 %41, i32* %39, align 4
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %43 = bitcast %struct.TYPE_8__* %42 to i8*
  %44 = load i32, i32* @SizeOfBrinTuple, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %43, i64 %45
  %47 = bitcast i8* %46 to i32*
  %48 = getelementptr inbounds i32, i32* %47, i64 -1
  store i32* %48, i32** %11, align 8
  %49 = load i32, i32* @HIGHBIT, align 4
  store i32 %49, i32* %12, align 4
  store i32 0, i32* %10, align 4
  br label %50

50:                                               ; preds = %74, %3
  %51 = load i32, i32* %10, align 4
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp slt i32 %51, %56
  br i1 %57, label %58, label %77

58:                                               ; preds = %50
  %59 = load i32, i32* %12, align 4
  %60 = load i32, i32* @HIGHBIT, align 4
  %61 = icmp ne i32 %59, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %58
  %63 = load i32, i32* %12, align 4
  %64 = shl i32 %63, 1
  store i32 %64, i32* %12, align 4
  br label %69

65:                                               ; preds = %58
  %66 = load i32*, i32** %11, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 1
  store i32* %67, i32** %11, align 8
  %68 = load i32*, i32** %11, align 8
  store i32 0, i32* %68, align 4
  store i32 1, i32* %12, align 4
  br label %69

69:                                               ; preds = %65, %62
  %70 = load i32, i32* %12, align 4
  %71 = load i32*, i32** %11, align 8
  %72 = load i32, i32* %71, align 4
  %73 = or i32 %72, %70
  store i32 %73, i32* %71, align 4
  br label %74

74:                                               ; preds = %69
  %75 = load i32, i32* %10, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %10, align 4
  br label %50

77:                                               ; preds = %50
  %78 = load i32, i32* %7, align 4
  %79 = load i32*, i32** %6, align 8
  store i32 %78, i32* %79, align 4
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  ret %struct.TYPE_8__* %80
}

declare dso_local i64 @BITMAPLEN(i32) #1

declare dso_local i32 @MAXALIGN(i32) #1

declare dso_local %struct.TYPE_8__* @palloc0(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
