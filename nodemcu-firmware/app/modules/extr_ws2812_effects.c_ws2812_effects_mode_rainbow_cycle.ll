; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_ws2812_effects.c_ws2812_effects_mode_rainbow_cycle.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_ws2812_effects.c_ws2812_effects_mode_rainbow_cycle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i8**, i32, i32 }

@state = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ws2812_effects_mode_rainbow_cycle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ws2812_effects_mode_rainbow_cycle(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** @state, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  store %struct.TYPE_3__* %14, %struct.TYPE_3__** %3, align 8
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i8**, i8*** %16, align 8
  %18 = getelementptr inbounds i8*, i8** %17, i64 0
  store i8** %18, i8*** %6, align 8
  store i32 0, i32* %4, align 4
  br label %19

19:                                               ; preds = %89, %1
  %20 = load i32, i32* %4, align 4
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = icmp slt i32 %20, %23
  br i1 %24, label %25, label %92

25:                                               ; preds = %19
  %26 = load i32, i32* %4, align 4
  %27 = mul nsw i32 %26, 360
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = sdiv i32 %27, %30
  %32 = load i32, i32* %2, align 4
  %33 = mul nsw i32 %31, %32
  %34 = srem i32 %33, 360
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @color_wheel(i32 %35)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = and i32 %37, 16711680
  %39 = ashr i32 %38, 16
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** @state, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = mul nsw i32 %39, %42
  %44 = sdiv i32 %43, 255
  %45 = sext i32 %44 to i64
  %46 = inttoptr i64 %45 to i8*
  store i8* %46, i8** %9, align 8
  %47 = load i32, i32* %8, align 4
  %48 = and i32 %47, 65280
  %49 = ashr i32 %48, 8
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** @state, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = mul nsw i32 %49, %52
  %54 = sdiv i32 %53, 255
  %55 = sext i32 %54 to i64
  %56 = inttoptr i64 %55 to i8*
  store i8* %56, i8** %10, align 8
  %57 = load i32, i32* %8, align 4
  %58 = and i32 %57, 255
  %59 = ashr i32 %58, 0
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** @state, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = mul nsw i32 %59, %62
  %64 = sdiv i32 %63, 255
  %65 = sext i32 %64 to i64
  %66 = inttoptr i64 %65 to i8*
  store i8* %66, i8** %11, align 8
  %67 = load i8*, i8** %10, align 8
  %68 = load i8**, i8*** %6, align 8
  %69 = getelementptr inbounds i8*, i8** %68, i32 1
  store i8** %69, i8*** %6, align 8
  store i8* %67, i8** %68, align 8
  %70 = load i8*, i8** %9, align 8
  %71 = load i8**, i8*** %6, align 8
  %72 = getelementptr inbounds i8*, i8** %71, i32 1
  store i8** %72, i8*** %6, align 8
  store i8* %70, i8** %71, align 8
  %73 = load i8*, i8** %11, align 8
  %74 = load i8**, i8*** %6, align 8
  %75 = getelementptr inbounds i8*, i8** %74, i32 1
  store i8** %75, i8*** %6, align 8
  store i8* %73, i8** %74, align 8
  store i32 3, i32* %5, align 4
  br label %76

76:                                               ; preds = %85, %25
  %77 = load i32, i32* %5, align 4
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = icmp slt i32 %77, %80
  br i1 %81, label %82, label %88

82:                                               ; preds = %76
  %83 = load i8**, i8*** %6, align 8
  %84 = getelementptr inbounds i8*, i8** %83, i32 1
  store i8** %84, i8*** %6, align 8
  store i8* null, i8** %83, align 8
  br label %85

85:                                               ; preds = %82
  %86 = load i32, i32* %5, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %5, align 4
  br label %76

88:                                               ; preds = %76
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* %4, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %4, align 4
  br label %19

92:                                               ; preds = %19
  ret i32 0
}

declare dso_local i32 @color_wheel(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
