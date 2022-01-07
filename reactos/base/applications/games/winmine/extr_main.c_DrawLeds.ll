; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/games/winmine/extr_main.c_DrawLeds.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/games/winmine/extr_main.c_DrawLeds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@LED_WIDTH = common dso_local global i32 0, align 4
@LED_HEIGHT = common dso_local global i32 0, align 4
@SRCCOPY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, %struct.TYPE_3__*, i32, i32, i32)* @DrawLeds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @DrawLeds(i32 %0, i32 %1, %struct.TYPE_3__* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_3__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [3 x i32], align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %17 = load i32, i32* %10, align 4
  store i32 %17, i32* %16, align 4
  %18 = load i32, i32* %16, align 4
  %19 = icmp slt i32 %18, 1000
  br i1 %19, label %20, label %47

20:                                               ; preds = %6
  %21 = load i32, i32* %16, align 4
  %22 = icmp sge i32 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %20
  %24 = load i32, i32* %16, align 4
  %25 = sdiv i32 %24, 100
  %26 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 0
  store i32 %25, i32* %26, align 4
  %27 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 0
  %28 = load i32, i32* %27, align 4
  %29 = mul i32 %28, 100
  %30 = load i32, i32* %16, align 4
  %31 = sub i32 %30, %29
  store i32 %31, i32* %16, align 4
  br label %36

32:                                               ; preds = %20
  %33 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 0
  store i32 10, i32* %33, align 4
  %34 = load i32, i32* %16, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %16, align 4
  br label %36

36:                                               ; preds = %32, %23
  %37 = load i32, i32* %16, align 4
  %38 = sdiv i32 %37, 10
  %39 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 1
  store i32 %38, i32* %39, align 4
  %40 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 1
  %41 = load i32, i32* %40, align 4
  %42 = mul i32 %41, 10
  %43 = load i32, i32* %16, align 4
  %44 = sub i32 %43, %42
  store i32 %44, i32* %16, align 4
  %45 = load i32, i32* %16, align 4
  %46 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 2
  store i32 %45, i32* %46, align 4
  br label %59

47:                                               ; preds = %6
  store i32 0, i32* %15, align 4
  br label %48

48:                                               ; preds = %55, %47
  %49 = load i32, i32* %15, align 4
  %50 = icmp ult i32 %49, 3
  br i1 %50, label %51, label %58

51:                                               ; preds = %48
  %52 = load i32, i32* %15, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 %53
  store i32 10, i32* %54, align 4
  br label %55

55:                                               ; preds = %51
  %56 = load i32, i32* %15, align 4
  %57 = add i32 %56, 1
  store i32 %57, i32* %15, align 4
  br label %48

58:                                               ; preds = %48
  br label %59

59:                                               ; preds = %58, %36
  %60 = load i32, i32* %8, align 4
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @SelectObject(i32 %60, i32 %63)
  store i32 %64, i32* %13, align 4
  store i32 0, i32* %15, align 4
  br label %65

65:                                               ; preds = %87, %59
  %66 = load i32, i32* %15, align 4
  %67 = icmp ult i32 %66, 3
  br i1 %67, label %68, label %90

68:                                               ; preds = %65
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* %15, align 4
  %71 = load i32, i32* @LED_WIDTH, align 4
  %72 = mul i32 %70, %71
  %73 = load i32, i32* %11, align 4
  %74 = add i32 %72, %73
  %75 = load i32, i32* %12, align 4
  %76 = load i32, i32* @LED_WIDTH, align 4
  %77 = load i32, i32* @LED_HEIGHT, align 4
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* %15, align 4
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @LED_HEIGHT, align 4
  %84 = mul i32 %82, %83
  %85 = load i32, i32* @SRCCOPY, align 4
  %86 = call i32 @BitBlt(i32 %69, i32 %74, i32 %75, i32 %76, i32 %77, i32 %78, i32 0, i32 %84, i32 %85)
  br label %87

87:                                               ; preds = %68
  %88 = load i32, i32* %15, align 4
  %89 = add i32 %88, 1
  store i32 %89, i32* %15, align 4
  br label %65

90:                                               ; preds = %65
  %91 = load i32, i32* %8, align 4
  %92 = load i32, i32* %13, align 4
  %93 = call i32 @SelectObject(i32 %91, i32 %92)
  ret void
}

declare dso_local i32 @SelectObject(i32, i32) #1

declare dso_local i32 @BitBlt(i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
