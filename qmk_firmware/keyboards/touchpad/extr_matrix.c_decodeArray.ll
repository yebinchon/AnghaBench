; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/touchpad/extr_matrix.c_decodeArray.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/touchpad/extr_matrix.c_decodeArray.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SENr = common dso_local global i32* null, align 8
@SENc = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @decodeArray(i32 %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32 20, i32* %7, align 4
  store i32 20, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %11

11:                                               ; preds = %33, %3
  %12 = load i32, i32* %9, align 4
  %13 = icmp slt i32 %12, 12
  br i1 %13, label %14, label %36

14:                                               ; preds = %11
  %15 = load i32, i32* %4, align 4
  %16 = and i32 %15, 1
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %18, label %30

18:                                               ; preds = %14
  %19 = load i32, i32* %7, align 4
  %20 = icmp eq i32 %19, 20
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = load i32, i32* %9, align 4
  store i32 %22, i32* %7, align 4
  br label %29

23:                                               ; preds = %18
  %24 = load i32, i32* %8, align 4
  %25 = icmp eq i32 %24, 20
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = load i32, i32* %9, align 4
  store i32 %27, i32* %8, align 4
  br label %28

28:                                               ; preds = %26, %23
  br label %29

29:                                               ; preds = %28, %21
  br label %30

30:                                               ; preds = %29, %14
  %31 = load i32, i32* %4, align 4
  %32 = ashr i32 %31, 1
  store i32 %32, i32* %4, align 4
  br label %33

33:                                               ; preds = %30
  %34 = load i32, i32* %9, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %9, align 4
  br label %11

36:                                               ; preds = %11
  store i32 0, i32* %10, align 4
  br label %37

37:                                               ; preds = %79, %36
  %38 = load i32, i32* %10, align 4
  %39 = icmp slt i32 %38, 6
  br i1 %39, label %40, label %82

40:                                               ; preds = %37
  %41 = load i32*, i32** @SENr, align 8
  %42 = load i32, i32* %10, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %7, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %56, label %48

48:                                               ; preds = %40
  %49 = load i32*, i32** @SENr, align 8
  %50 = load i32, i32* %10, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %8, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %48, %40
  %57 = load i32, i32* %10, align 4
  %58 = load i32*, i32** %6, align 8
  store i32 %57, i32* %58, align 4
  br label %59

59:                                               ; preds = %56, %48
  %60 = load i32*, i32** @SENc, align 8
  %61 = load i32, i32* %10, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %7, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %75, label %67

67:                                               ; preds = %59
  %68 = load i32*, i32** @SENc, align 8
  %69 = load i32, i32* %10, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %8, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %67, %59
  %76 = load i32, i32* %10, align 4
  %77 = load i32*, i32** %5, align 8
  store i32 %76, i32* %77, align 4
  br label %78

78:                                               ; preds = %75, %67
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %10, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %10, align 4
  br label %37

82:                                               ; preds = %37
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
