; ModuleID = '/home/carl/AnghaBench/mpv/audio/extr_format.c_af_format_conversion_score.c'
source_filename = "/home/carl/AnghaBench/mpv/audio/extr_format.c_af_format_conversion_score.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AF_FORMAT_UNKNOWN = common dso_local global i32 0, align 4
@INT_MIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @af_format_conversion_score(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @AF_FORMAT_UNKNOWN, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %17, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @AF_FORMAT_UNKNOWN, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %13, %2
  %18 = load i32, i32* @INT_MIN, align 4
  store i32 %18, i32* %3, align 4
  br label %112

19:                                               ; preds = %13
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  store i32 1024, i32* %3, align 4
  br label %112

24:                                               ; preds = %19
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @af_fmt_is_pcm(i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @af_fmt_is_pcm(i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %28, %24
  %33 = load i32, i32* @INT_MIN, align 4
  store i32 %33, i32* %3, align 4
  br label %112

34:                                               ; preds = %28
  store i32 1024, i32* %6, align 4
  %35 = load i32, i32* %4, align 4
  %36 = call i64 @af_fmt_is_planar(i32 %35)
  %37 = load i32, i32* %5, align 4
  %38 = call i64 @af_fmt_is_planar(i32 %37)
  %39 = icmp ne i64 %36, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %34
  %41 = load i32, i32* %6, align 4
  %42 = sub nsw i32 %41, 1
  store i32 %42, i32* %6, align 4
  br label %43

43:                                               ; preds = %40, %34
  %44 = load i32, i32* %4, align 4
  %45 = call i64 @af_fmt_is_float(i32 %44)
  %46 = load i32, i32* %5, align 4
  %47 = call i64 @af_fmt_is_float(i32 %46)
  %48 = icmp ne i64 %45, %47
  br i1 %48, label %49, label %86

49:                                               ; preds = %43
  %50 = load i32, i32* %4, align 4
  %51 = call i32 @af_fmt_to_bytes(i32 %50)
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %4, align 4
  %53 = call i64 @af_fmt_is_float(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %77

55:                                               ; preds = %49
  %56 = load i32, i32* %7, align 4
  %57 = icmp eq i32 %56, 4
  %58 = zext i1 %57 to i64
  %59 = select i1 %57, i32 3, i32 6
  %60 = load i32, i32* %5, align 4
  %61 = call i32 @af_fmt_to_bytes(i32 %60)
  %62 = sub nsw i32 %59, %61
  store i32 %62, i32* %8, align 4
  %63 = load i32, i32* %8, align 4
  %64 = icmp sge i32 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %55
  %66 = load i32, i32* %8, align 4
  %67 = mul nsw i32 8, %66
  %68 = load i32, i32* %6, align 4
  %69 = sub nsw i32 %68, %67
  store i32 %69, i32* %6, align 4
  br label %76

70:                                               ; preds = %55
  %71 = load i32, i32* %8, align 4
  %72 = sub nsw i32 %71, 1
  %73 = mul nsw i32 1024, %72
  %74 = load i32, i32* %6, align 4
  %75 = add nsw i32 %74, %73
  store i32 %75, i32* %6, align 4
  br label %76

76:                                               ; preds = %70, %65
  br label %83

77:                                               ; preds = %49
  %78 = load i32, i32* %7, align 4
  %79 = sub nsw i32 8, %78
  %80 = mul nsw i32 1048576, %79
  %81 = load i32, i32* %6, align 4
  %82 = sub nsw i32 %81, %80
  store i32 %82, i32* %6, align 4
  br label %83

83:                                               ; preds = %77, %76
  %84 = load i32, i32* %6, align 4
  %85 = sub nsw i32 %84, 512
  store i32 %85, i32* %6, align 4
  br label %110

86:                                               ; preds = %43
  %87 = load i32, i32* %4, align 4
  %88 = call i32 @af_fmt_to_bytes(i32 %87)
  %89 = load i32, i32* %5, align 4
  %90 = call i32 @af_fmt_to_bytes(i32 %89)
  %91 = sub nsw i32 %88, %90
  store i32 %91, i32* %9, align 4
  %92 = load i32, i32* %9, align 4
  %93 = icmp sgt i32 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %86
  %95 = load i32, i32* %9, align 4
  %96 = mul nsw i32 8, %95
  %97 = load i32, i32* %6, align 4
  %98 = sub nsw i32 %97, %96
  store i32 %98, i32* %6, align 4
  br label %109

99:                                               ; preds = %86
  %100 = load i32, i32* %9, align 4
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %102, label %108

102:                                              ; preds = %99
  %103 = load i32, i32* %9, align 4
  %104 = sub nsw i32 %103, 1
  %105 = mul nsw i32 1024, %104
  %106 = load i32, i32* %6, align 4
  %107 = add nsw i32 %106, %105
  store i32 %107, i32* %6, align 4
  br label %108

108:                                              ; preds = %102, %99
  br label %109

109:                                              ; preds = %108, %94
  br label %110

110:                                              ; preds = %109, %83
  %111 = load i32, i32* %6, align 4
  store i32 %111, i32* %3, align 4
  br label %112

112:                                              ; preds = %110, %32, %23, %17
  %113 = load i32, i32* %3, align 4
  ret i32 %113
}

declare dso_local i32 @af_fmt_is_pcm(i32) #1

declare dso_local i64 @af_fmt_is_planar(i32) #1

declare dso_local i64 @af_fmt_is_float(i32) #1

declare dso_local i32 @af_fmt_to_bytes(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
