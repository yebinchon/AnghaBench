; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libpng/extr_pngwutil.c_png_setup_sub_row.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libpng/extr_pngwutil.c_png_setup_sub_row.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32* }

@PNG_FILTER_VALUE_SUB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_3__*, i64, i64, i64)* @png_setup_sub_row to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @png_setup_sub_row(%struct.TYPE_3__* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  store i64 0, i64* %13, align 8
  %15 = load i32, i32* @PNG_FILTER_VALUE_SUB, align 4
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  store i32 %15, i32* %19, align 4
  store i64 0, i64* %12, align 8
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 1
  store i32* %23, i32** %9, align 8
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 1
  store i32* %27, i32** %10, align 8
  br label %28

28:                                               ; preds = %48, %4
  %29 = load i64, i64* %12, align 8
  %30 = load i64, i64* %6, align 8
  %31 = icmp ult i64 %29, %30
  br i1 %31, label %32, label %55

32:                                               ; preds = %28
  %33 = load i32*, i32** %9, align 8
  %34 = load i32, i32* %33, align 4
  %35 = load i32*, i32** %10, align 8
  store i32 %34, i32* %35, align 4
  store i32 %34, i32* %14, align 4
  %36 = load i32, i32* %14, align 4
  %37 = icmp ult i32 %36, 128
  br i1 %37, label %38, label %40

38:                                               ; preds = %32
  %39 = load i32, i32* %14, align 4
  br label %43

40:                                               ; preds = %32
  %41 = load i32, i32* %14, align 4
  %42 = sub i32 256, %41
  br label %43

43:                                               ; preds = %40, %38
  %44 = phi i32 [ %39, %38 ], [ %42, %40 ]
  %45 = zext i32 %44 to i64
  %46 = load i64, i64* %13, align 8
  %47 = add i64 %46, %45
  store i64 %47, i64* %13, align 8
  br label %48

48:                                               ; preds = %43
  %49 = load i64, i64* %12, align 8
  %50 = add i64 %49, 1
  store i64 %50, i64* %12, align 8
  %51 = load i32*, i32** %9, align 8
  %52 = getelementptr inbounds i32, i32* %51, i32 1
  store i32* %52, i32** %9, align 8
  %53 = load i32*, i32** %10, align 8
  %54 = getelementptr inbounds i32, i32* %53, i32 1
  store i32* %54, i32** %10, align 8
  br label %28

55:                                               ; preds = %28
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 1
  store i32* %59, i32** %11, align 8
  br label %60

60:                                               ; preds = %89, %55
  %61 = load i64, i64* %12, align 8
  %62 = load i64, i64* %7, align 8
  %63 = icmp ult i64 %61, %62
  br i1 %63, label %64, label %98

64:                                               ; preds = %60
  %65 = load i32*, i32** %9, align 8
  %66 = load i32, i32* %65, align 4
  %67 = load i32*, i32** %11, align 8
  %68 = load i32, i32* %67, align 4
  %69 = sub nsw i32 %66, %68
  %70 = and i32 %69, 255
  %71 = load i32*, i32** %10, align 8
  store i32 %70, i32* %71, align 4
  store i32 %70, i32* %14, align 4
  %72 = load i32, i32* %14, align 4
  %73 = icmp ult i32 %72, 128
  br i1 %73, label %74, label %76

74:                                               ; preds = %64
  %75 = load i32, i32* %14, align 4
  br label %79

76:                                               ; preds = %64
  %77 = load i32, i32* %14, align 4
  %78 = sub i32 256, %77
  br label %79

79:                                               ; preds = %76, %74
  %80 = phi i32 [ %75, %74 ], [ %78, %76 ]
  %81 = zext i32 %80 to i64
  %82 = load i64, i64* %13, align 8
  %83 = add i64 %82, %81
  store i64 %83, i64* %13, align 8
  %84 = load i64, i64* %13, align 8
  %85 = load i64, i64* %8, align 8
  %86 = icmp ugt i64 %84, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %79
  br label %98

88:                                               ; preds = %79
  br label %89

89:                                               ; preds = %88
  %90 = load i64, i64* %12, align 8
  %91 = add i64 %90, 1
  store i64 %91, i64* %12, align 8
  %92 = load i32*, i32** %9, align 8
  %93 = getelementptr inbounds i32, i32* %92, i32 1
  store i32* %93, i32** %9, align 8
  %94 = load i32*, i32** %11, align 8
  %95 = getelementptr inbounds i32, i32* %94, i32 1
  store i32* %95, i32** %11, align 8
  %96 = load i32*, i32** %10, align 8
  %97 = getelementptr inbounds i32, i32* %96, i32 1
  store i32* %97, i32** %10, align 8
  br label %60

98:                                               ; preds = %87, %60
  %99 = load i64, i64* %13, align 8
  ret i64 %99
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
