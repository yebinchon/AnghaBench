; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_proto-banout.c_banout_append_unicode.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_proto-banout.c_banout_append_unicode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.BannerOutput = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @banout_append_unicode(%struct.BannerOutput* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.BannerOutput*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.BannerOutput* %0, %struct.BannerOutput** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = and i32 %10, -65536
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %46

13:                                               ; preds = %3
  %14 = load i32, i32* %6, align 4
  %15 = lshr i32 %14, 18
  %16 = and i32 %15, 3
  %17 = or i32 240, %16
  store i32 %17, i32* %7, align 4
  %18 = load %struct.BannerOutput*, %struct.BannerOutput** %4, align 8
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @banout_append_char(%struct.BannerOutput* %18, i32 %19, i32 %20)
  %22 = load i32, i32* %6, align 4
  %23 = lshr i32 %22, 12
  %24 = and i32 %23, 63
  %25 = or i32 128, %24
  store i32 %25, i32* %7, align 4
  %26 = load %struct.BannerOutput*, %struct.BannerOutput** %4, align 8
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @banout_append_char(%struct.BannerOutput* %26, i32 %27, i32 %28)
  %30 = load i32, i32* %6, align 4
  %31 = lshr i32 %30, 6
  %32 = and i32 %31, 63
  %33 = or i32 128, %32
  store i32 %33, i32* %7, align 4
  %34 = load %struct.BannerOutput*, %struct.BannerOutput** %4, align 8
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @banout_append_char(%struct.BannerOutput* %34, i32 %35, i32 %36)
  %38 = load i32, i32* %6, align 4
  %39 = lshr i32 %38, 0
  %40 = and i32 %39, 63
  %41 = or i32 128, %40
  store i32 %41, i32* %7, align 4
  %42 = load %struct.BannerOutput*, %struct.BannerOutput** %4, align 8
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @banout_append_char(%struct.BannerOutput* %42, i32 %43, i32 %44)
  br label %103

46:                                               ; preds = %3
  %47 = load i32, i32* %6, align 4
  %48 = and i32 %47, -2048
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %75

50:                                               ; preds = %46
  %51 = load i32, i32* %6, align 4
  %52 = lshr i32 %51, 12
  %53 = and i32 %52, 15
  %54 = or i32 224, %53
  store i32 %54, i32* %8, align 4
  %55 = load %struct.BannerOutput*, %struct.BannerOutput** %4, align 8
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @banout_append_char(%struct.BannerOutput* %55, i32 %56, i32 %57)
  %59 = load i32, i32* %6, align 4
  %60 = lshr i32 %59, 6
  %61 = and i32 %60, 63
  %62 = or i32 128, %61
  store i32 %62, i32* %8, align 4
  %63 = load %struct.BannerOutput*, %struct.BannerOutput** %4, align 8
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* %8, align 4
  %66 = call i32 @banout_append_char(%struct.BannerOutput* %63, i32 %64, i32 %65)
  %67 = load i32, i32* %6, align 4
  %68 = lshr i32 %67, 0
  %69 = and i32 %68, 63
  %70 = or i32 128, %69
  store i32 %70, i32* %8, align 4
  %71 = load %struct.BannerOutput*, %struct.BannerOutput** %4, align 8
  %72 = load i32, i32* %5, align 4
  %73 = load i32, i32* %8, align 4
  %74 = call i32 @banout_append_char(%struct.BannerOutput* %71, i32 %72, i32 %73)
  br label %102

75:                                               ; preds = %46
  %76 = load i32, i32* %6, align 4
  %77 = and i32 %76, -128
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %96

79:                                               ; preds = %75
  %80 = load i32, i32* %6, align 4
  %81 = lshr i32 %80, 6
  %82 = and i32 %81, 31
  %83 = or i32 192, %82
  store i32 %83, i32* %9, align 4
  %84 = load %struct.BannerOutput*, %struct.BannerOutput** %4, align 8
  %85 = load i32, i32* %5, align 4
  %86 = load i32, i32* %9, align 4
  %87 = call i32 @banout_append_char(%struct.BannerOutput* %84, i32 %85, i32 %86)
  %88 = load i32, i32* %6, align 4
  %89 = lshr i32 %88, 0
  %90 = and i32 %89, 63
  %91 = or i32 128, %90
  store i32 %91, i32* %9, align 4
  %92 = load %struct.BannerOutput*, %struct.BannerOutput** %4, align 8
  %93 = load i32, i32* %5, align 4
  %94 = load i32, i32* %9, align 4
  %95 = call i32 @banout_append_char(%struct.BannerOutput* %92, i32 %93, i32 %94)
  br label %101

96:                                               ; preds = %75
  %97 = load %struct.BannerOutput*, %struct.BannerOutput** %4, align 8
  %98 = load i32, i32* %5, align 4
  %99 = load i32, i32* %6, align 4
  %100 = call i32 @banout_append_char(%struct.BannerOutput* %97, i32 %98, i32 %99)
  br label %101

101:                                              ; preds = %96, %79
  br label %102

102:                                              ; preds = %101, %50
  br label %103

103:                                              ; preds = %102, %13
  ret void
}

declare dso_local i32 @banout_append_char(%struct.BannerOutput*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
