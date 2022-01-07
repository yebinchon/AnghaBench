; ModuleID = '/home/carl/AnghaBench/mpv/audio/extr_format.c_af_fmt_to_bytes.c'
source_filename = "/home/carl/AnghaBench/mpv/audio/extr_format.c_af_fmt_to_bytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @af_fmt_to_bytes(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = call i32 @af_fmt_from_planar(i32 %4)
  switch i32 %5, label %12 [
    i32 128, label %6
    i32 131, label %7
    i32 130, label %8
    i32 129, label %9
    i32 132, label %10
    i32 133, label %11
  ]

6:                                                ; preds = %1
  store i32 1, i32* %2, align 4
  br label %18

7:                                                ; preds = %1
  store i32 2, i32* %2, align 4
  br label %18

8:                                                ; preds = %1
  store i32 4, i32* %2, align 4
  br label %18

9:                                                ; preds = %1
  store i32 8, i32* %2, align 4
  br label %18

10:                                               ; preds = %1
  store i32 4, i32* %2, align 4
  br label %18

11:                                               ; preds = %1
  store i32 8, i32* %2, align 4
  br label %18

12:                                               ; preds = %1
  %13 = load i32, i32* %3, align 4
  %14 = call i64 @af_fmt_is_spdif(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  store i32 2, i32* %2, align 4
  br label %18

17:                                               ; preds = %12
  store i32 0, i32* %2, align 4
  br label %18

18:                                               ; preds = %17, %16, %11, %10, %9, %8, %7, %6
  %19 = load i32, i32* %2, align 4
  ret i32 %19
}

declare dso_local i32 @af_fmt_from_planar(i32) #1

declare dso_local i64 @af_fmt_is_spdif(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
