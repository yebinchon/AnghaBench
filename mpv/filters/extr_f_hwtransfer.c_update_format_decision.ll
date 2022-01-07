; ModuleID = '/home/carl/AnghaBench/mpv/filters/extr_f_hwtransfer.c_update_format_decision.c'
source_filename = "/home/carl/AnghaBench/mpv/filters/extr_f_hwtransfer.c_update_format_decision.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.priv = type { i32, i32, i32, %struct.mp_hwupload }
%struct.mp_hwupload = type { i32*, i32, i32, i32*, i32*, i32*, i32 }

@.str = private unnamed_addr constant [22 x i8] c"upload %s -> %s (%s)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.priv*, i32)* @update_format_decision to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @update_format_decision(%struct.priv* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mp_hwupload*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.priv* %0, %struct.priv** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.priv*, %struct.priv** %4, align 8
  %12 = getelementptr inbounds %struct.priv, %struct.priv* %11, i32 0, i32 3
  store %struct.mp_hwupload* %12, %struct.mp_hwupload** %6, align 8
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %142

16:                                               ; preds = %2
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.priv*, %struct.priv** %4, align 8
  %19 = getelementptr inbounds %struct.priv, %struct.priv* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp eq i32 %17, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  store i32 1, i32* %3, align 4
  br label %142

23:                                               ; preds = %16
  %24 = load %struct.priv*, %struct.priv** %4, align 8
  %25 = getelementptr inbounds %struct.priv, %struct.priv* %24, i32 0, i32 0
  store i32 0, i32* %25, align 8
  %26 = load %struct.mp_hwupload*, %struct.mp_hwupload** %6, align 8
  %27 = getelementptr inbounds %struct.mp_hwupload, %struct.mp_hwupload* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = load %struct.mp_hwupload*, %struct.mp_hwupload** %6, align 8
  %30 = getelementptr inbounds %struct.mp_hwupload, %struct.mp_hwupload* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @mp_imgfmt_select_best_list(i32* %28, i32 %31, i32 %32)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %23
  store i32 0, i32* %3, align 4
  br label %142

37:                                               ; preds = %23
  store i32 -1, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %38

38:                                               ; preds = %57, %37
  %39 = load i32, i32* %9, align 4
  %40 = load %struct.mp_hwupload*, %struct.mp_hwupload** %6, align 8
  %41 = getelementptr inbounds %struct.mp_hwupload, %struct.mp_hwupload* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = icmp slt i32 %39, %42
  br i1 %43, label %44, label %60

44:                                               ; preds = %38
  %45 = load %struct.mp_hwupload*, %struct.mp_hwupload** %6, align 8
  %46 = getelementptr inbounds %struct.mp_hwupload, %struct.mp_hwupload* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %9, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %7, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %44
  %55 = load i32, i32* %9, align 4
  store i32 %55, i32* %8, align 4
  br label %56

56:                                               ; preds = %54, %44
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %9, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %9, align 4
  br label %38

60:                                               ; preds = %38
  %61 = load i32, i32* %8, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %60
  store i32 0, i32* %3, align 4
  br label %142

64:                                               ; preds = %60
  store i32 0, i32* %10, align 4
  br label %65

65:                                               ; preds = %138, %64
  %66 = load i32, i32* %10, align 4
  %67 = load %struct.mp_hwupload*, %struct.mp_hwupload** %6, align 8
  %68 = getelementptr inbounds %struct.mp_hwupload, %struct.mp_hwupload* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = icmp slt i32 %66, %69
  br i1 %70, label %71, label %141

71:                                               ; preds = %65
  %72 = load i32, i32* %8, align 4
  %73 = load %struct.mp_hwupload*, %struct.mp_hwupload** %6, align 8
  %74 = getelementptr inbounds %struct.mp_hwupload, %struct.mp_hwupload* %73, i32 0, i32 3
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* %10, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = icmp sge i32 %72, %79
  br i1 %80, label %81, label %137

81:                                               ; preds = %71
  %82 = load i32, i32* %8, align 4
  %83 = load %struct.mp_hwupload*, %struct.mp_hwupload** %6, align 8
  %84 = getelementptr inbounds %struct.mp_hwupload, %struct.mp_hwupload* %83, i32 0, i32 3
  %85 = load i32*, i32** %84, align 8
  %86 = load i32, i32* %10, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.mp_hwupload*, %struct.mp_hwupload** %6, align 8
  %91 = getelementptr inbounds %struct.mp_hwupload, %struct.mp_hwupload* %90, i32 0, i32 4
  %92 = load i32*, i32** %91, align 8
  %93 = load i32, i32* %10, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = add nsw i32 %89, %96
  %98 = icmp slt i32 %82, %97
  br i1 %98, label %99, label %137

99:                                               ; preds = %81
  %100 = load i32, i32* %5, align 4
  %101 = load %struct.priv*, %struct.priv** %4, align 8
  %102 = getelementptr inbounds %struct.priv, %struct.priv* %101, i32 0, i32 0
  store i32 %100, i32* %102, align 8
  %103 = load %struct.mp_hwupload*, %struct.mp_hwupload** %6, align 8
  %104 = getelementptr inbounds %struct.mp_hwupload, %struct.mp_hwupload* %103, i32 0, i32 0
  %105 = load i32*, i32** %104, align 8
  %106 = load i32, i32* %8, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.priv*, %struct.priv** %4, align 8
  %111 = getelementptr inbounds %struct.priv, %struct.priv* %110, i32 0, i32 1
  store i32 %109, i32* %111, align 4
  %112 = load %struct.mp_hwupload*, %struct.mp_hwupload** %6, align 8
  %113 = getelementptr inbounds %struct.mp_hwupload, %struct.mp_hwupload* %112, i32 0, i32 5
  %114 = load i32*, i32** %113, align 8
  %115 = load i32, i32* %10, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.priv*, %struct.priv** %4, align 8
  %120 = getelementptr inbounds %struct.priv, %struct.priv* %119, i32 0, i32 2
  store i32 %118, i32* %120, align 8
  %121 = load %struct.mp_hwupload*, %struct.mp_hwupload** %6, align 8
  %122 = getelementptr inbounds %struct.mp_hwupload, %struct.mp_hwupload* %121, i32 0, i32 6
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.priv*, %struct.priv** %4, align 8
  %125 = getelementptr inbounds %struct.priv, %struct.priv* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = call i32 @mp_imgfmt_to_name(i32 %126)
  %128 = load %struct.priv*, %struct.priv** %4, align 8
  %129 = getelementptr inbounds %struct.priv, %struct.priv* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @mp_imgfmt_to_name(i32 %130)
  %132 = load %struct.priv*, %struct.priv** %4, align 8
  %133 = getelementptr inbounds %struct.priv, %struct.priv* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 8
  %135 = call i32 @mp_imgfmt_to_name(i32 %134)
  %136 = call i32 @MP_INFO(i32 %123, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %127, i32 %131, i32 %135)
  store i32 1, i32* %3, align 4
  br label %142

137:                                              ; preds = %81, %71
  br label %138

138:                                              ; preds = %137
  %139 = load i32, i32* %10, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %10, align 4
  br label %65

141:                                              ; preds = %65
  store i32 0, i32* %3, align 4
  br label %142

142:                                              ; preds = %141, %99, %63, %36, %22, %15
  %143 = load i32, i32* %3, align 4
  ret i32 %143
}

declare dso_local i32 @mp_imgfmt_select_best_list(i32*, i32, i32) #1

declare dso_local i32 @MP_INFO(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @mp_imgfmt_to_name(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
