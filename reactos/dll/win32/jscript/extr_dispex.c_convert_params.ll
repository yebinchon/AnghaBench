; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_dispex.c_convert_params.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_dispex.c_convert_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }

@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32*, i32*, i32**)* @convert_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @convert_params(%struct.TYPE_3__* %0, i32* %1, i32* %2, i32** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32** %3, i32*** %9, align 8
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = sub i32 %16, %19
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* %11, align 4
  %22 = icmp ugt i32 %21, 6
  br i1 %22, label %23, label %34

23:                                               ; preds = %4
  %24 = load i32, i32* %11, align 4
  %25 = zext i32 %24 to i64
  %26 = mul i64 %25, 4
  %27 = trunc i64 %26 to i32
  %28 = call i32* @heap_alloc(i32 %27)
  store i32* %28, i32** %10, align 8
  %29 = load i32*, i32** %10, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %23
  %32 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %32, i32* %5, align 4
  br label %91

33:                                               ; preds = %23
  br label %36

34:                                               ; preds = %4
  %35 = load i32*, i32** %7, align 8
  store i32* %35, i32** %10, align 8
  br label %36

36:                                               ; preds = %34, %33
  store i32 0, i32* %12, align 4
  br label %37

37:                                               ; preds = %82, %36
  %38 = load i32, i32* %12, align 4
  %39 = load i32, i32* %11, align 4
  %40 = icmp ult i32 %38, %39
  br i1 %40, label %41, label %85

41:                                               ; preds = %37
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = add i32 %44, %47
  %49 = load i32, i32* %12, align 4
  %50 = sub i32 %48, %49
  %51 = sub i32 %50, 1
  %52 = load i32*, i32** %10, align 8
  %53 = load i32, i32* %12, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = call i32 @variant_to_jsval(i32 %51, i32* %55)
  store i32 %56, i32* %13, align 4
  %57 = load i32, i32* %13, align 4
  %58 = call i64 @FAILED(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %81

60:                                               ; preds = %41
  br label %61

61:                                               ; preds = %65, %60
  %62 = load i32, i32* %12, align 4
  %63 = add i32 %62, -1
  store i32 %63, i32* %12, align 4
  %64 = icmp ne i32 %62, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %61
  %66 = load i32*, i32** %10, align 8
  %67 = load i32, i32* %12, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @jsval_release(i32 %70)
  br label %61

72:                                               ; preds = %61
  %73 = load i32*, i32** %10, align 8
  %74 = load i32*, i32** %7, align 8
  %75 = icmp ne i32* %73, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %72
  %77 = load i32*, i32** %10, align 8
  %78 = call i32 @heap_free(i32* %77)
  br label %79

79:                                               ; preds = %76, %72
  %80 = load i32, i32* %13, align 4
  store i32 %80, i32* %5, align 4
  br label %91

81:                                               ; preds = %41
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %12, align 4
  %84 = add i32 %83, 1
  store i32 %84, i32* %12, align 4
  br label %37

85:                                               ; preds = %37
  %86 = load i32, i32* %11, align 4
  %87 = load i32*, i32** %8, align 8
  store i32 %86, i32* %87, align 4
  %88 = load i32*, i32** %10, align 8
  %89 = load i32**, i32*** %9, align 8
  store i32* %88, i32** %89, align 8
  %90 = load i32, i32* @S_OK, align 4
  store i32 %90, i32* %5, align 4
  br label %91

91:                                               ; preds = %85, %79, %31
  %92 = load i32, i32* %5, align 4
  ret i32 %92
}

declare dso_local i32* @heap_alloc(i32) #1

declare dso_local i32 @variant_to_jsval(i32, i32*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @jsval_release(i32) #1

declare dso_local i32 @heap_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
