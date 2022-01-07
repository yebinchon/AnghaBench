; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_mapping.c_get_item_pointer.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_mapping.c_get_item_pointer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8**, %struct.TYPE_3__*, i32)* @get_item_pointer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_item_pointer(i32* %0, i8** %1, %struct.TYPE_3__* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i8** %1, i8*** %7, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load i32*, i32** %6, align 8
  %12 = call i8* @PyArray_BYTES(i32* %11)
  %13 = load i8**, i8*** %7, align 8
  store i8* %12, i8** %13, align 8
  store i32 0, i32* %10, align 4
  br label %14

14:                                               ; preds = %49, %4
  %15 = load i32, i32* %10, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %52

18:                                               ; preds = %14
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %20 = load i32, i32* %10, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32*, i32** %6, align 8
  %25 = call i32* @PyArray_DIMS(i32* %24)
  %26 = load i32, i32* %10, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %10, align 4
  %31 = call i64 @check_and_adjust_index(i32* %23, i32 %29, i32 %30, i32* null)
  %32 = icmp slt i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %18
  store i32 -1, i32* %5, align 4
  br label %53

34:                                               ; preds = %18
  %35 = load i32*, i32** %6, align 8
  %36 = load i32, i32* %10, align 4
  %37 = call i32 @PyArray_STRIDE(i32* %35, i32 %36)
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %39 = load i32, i32* %10, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = mul nsw i32 %37, %43
  %45 = load i8**, i8*** %7, align 8
  %46 = load i8*, i8** %45, align 8
  %47 = sext i32 %44 to i64
  %48 = getelementptr inbounds i8, i8* %46, i64 %47
  store i8* %48, i8** %45, align 8
  br label %49

49:                                               ; preds = %34
  %50 = load i32, i32* %10, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %10, align 4
  br label %14

52:                                               ; preds = %14
  store i32 0, i32* %5, align 4
  br label %53

53:                                               ; preds = %52, %33
  %54 = load i32, i32* %5, align 4
  ret i32 %54
}

declare dso_local i8* @PyArray_BYTES(i32*) #1

declare dso_local i64 @check_and_adjust_index(i32*, i32, i32, i32*) #1

declare dso_local i32* @PyArray_DIMS(i32*) #1

declare dso_local i32 @PyArray_STRIDE(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
