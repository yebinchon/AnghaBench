; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_error.c_alloc_error.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_error.c_alloc_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32* }

@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@Error_info = common dso_local global i32 0, align 4
@ErrorInst_info = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32*, i32*, i32**)* @alloc_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alloc_error(%struct.TYPE_5__* %0, i32* %1, i32* %2, i32** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32** %3, i32*** %9, align 8
  %12 = call i32* @heap_alloc_zero(i32 4)
  store i32* %12, i32** %10, align 8
  %13 = load i32*, i32** %10, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %4
  %16 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %16, i32* %5, align 4
  br label %51

17:                                               ; preds = %4
  %18 = load i32*, i32** %7, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %25

20:                                               ; preds = %17
  %21 = load i32*, i32** %10, align 8
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %23 = load i32*, i32** %7, align 8
  %24 = call i32 @init_dispex(i32* %21, %struct.TYPE_5__* %22, i32* @Error_info, i32* %23)
  store i32 %24, i32* %11, align 4
  br label %39

25:                                               ; preds = %17
  %26 = load i32*, i32** %10, align 8
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %28 = load i32*, i32** %8, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i32*, i32** %8, align 8
  br label %36

32:                                               ; preds = %25
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  br label %36

36:                                               ; preds = %32, %30
  %37 = phi i32* [ %31, %30 ], [ %35, %32 ]
  %38 = call i32 @init_dispex_from_constr(i32* %26, %struct.TYPE_5__* %27, i32* @ErrorInst_info, i32* %37)
  store i32 %38, i32* %11, align 4
  br label %39

39:                                               ; preds = %36, %20
  %40 = load i32, i32* %11, align 4
  %41 = call i64 @FAILED(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %39
  %44 = load i32*, i32** %10, align 8
  %45 = call i32 @heap_free(i32* %44)
  %46 = load i32, i32* %11, align 4
  store i32 %46, i32* %5, align 4
  br label %51

47:                                               ; preds = %39
  %48 = load i32*, i32** %10, align 8
  %49 = load i32**, i32*** %9, align 8
  store i32* %48, i32** %49, align 8
  %50 = load i32, i32* @S_OK, align 4
  store i32 %50, i32* %5, align 4
  br label %51

51:                                               ; preds = %47, %43, %15
  %52 = load i32, i32* %5, align 4
  ret i32 %52
}

declare dso_local i32* @heap_alloc_zero(i32) #1

declare dso_local i32 @init_dispex(i32*, %struct.TYPE_5__*, i32*, i32*) #1

declare dso_local i32 @init_dispex_from_constr(i32*, %struct.TYPE_5__*, i32*, i32*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @heap_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
