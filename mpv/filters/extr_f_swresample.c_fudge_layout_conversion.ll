; ModuleID = '/home/carl/AnghaBench/mpv/filters/extr_f_swresample.c_fudge_layout_conversion.c'
source_filename = "/home/carl/AnghaBench/mpv/filters/extr_f_swresample.c_fudge_layout_conversion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.priv = type { i32 }

@fudge_pairs = common dso_local global i32** null, align 8
@.str = private unnamed_addr constant [17 x i8] c"Fudge: %s -> %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.priv*, i32, i32)* @fudge_layout_conversion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fudge_layout_conversion(%struct.priv* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.priv* %0, %struct.priv** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %10

10:                                               ; preds = %75, %3
  %11 = load i32, i32* %7, align 4
  %12 = load i32**, i32*** @fudge_pairs, align 8
  %13 = call i32 @MP_ARRAY_SIZE(i32** %12)
  %14 = icmp slt i32 %11, %13
  br i1 %14, label %15, label %78

15:                                               ; preds = %10
  %16 = load i32**, i32*** @fudge_pairs, align 8
  %17 = load i32, i32* %7, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32*, i32** %16, i64 %18
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = call i32 @mp_chmap_to_lavc(i32* %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32**, i32*** @fudge_pairs, align 8
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32*, i32** %23, i64 %25
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 1
  %29 = call i32 @mp_chmap_to_lavc(i32* %28)
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* %8, align 4
  %32 = and i32 %30, %31
  %33 = load i32, i32* %8, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %74

35:                                               ; preds = %15
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* %9, align 4
  %38 = and i32 %36, %37
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %74

40:                                               ; preds = %35
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* %8, align 4
  %43 = and i32 %41, %42
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %74

45:                                               ; preds = %40
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* %9, align 4
  %48 = and i32 %46, %47
  %49 = load i32, i32* %9, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %74

51:                                               ; preds = %45
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* %9, align 4
  %54 = xor i32 %53, -1
  %55 = and i32 %52, %54
  %56 = load i32, i32* %8, align 4
  %57 = or i32 %55, %56
  store i32 %57, i32* %6, align 4
  %58 = load %struct.priv*, %struct.priv** %4, align 8
  %59 = load i32**, i32*** @fudge_pairs, align 8
  %60 = load i32, i32* %7, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32*, i32** %59, i64 %61
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 0
  %65 = call i32 @mp_chmap_to_str(i32* %64)
  %66 = load i32**, i32*** @fudge_pairs, align 8
  %67 = load i32, i32* %7, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32*, i32** %66, i64 %68
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 1
  %72 = call i32 @mp_chmap_to_str(i32* %71)
  %73 = call i32 @MP_VERBOSE(%struct.priv* %58, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %65, i32 %72)
  br label %74

74:                                               ; preds = %51, %45, %40, %35, %15
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %7, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %7, align 4
  br label %10

78:                                               ; preds = %10
  %79 = load i32, i32* %6, align 4
  ret i32 %79
}

declare dso_local i32 @MP_ARRAY_SIZE(i32**) #1

declare dso_local i32 @mp_chmap_to_lavc(i32*) #1

declare dso_local i32 @MP_VERBOSE(%struct.priv*, i8*, i32, i32) #1

declare dso_local i32 @mp_chmap_to_str(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
