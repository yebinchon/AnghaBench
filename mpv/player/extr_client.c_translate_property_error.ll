; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_client.c_translate_property_error.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_client.c_translate_property_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MPV_ERROR_PROPERTY_ERROR = common dso_local global i32 0, align 4
@MPV_ERROR_PROPERTY_UNAVAILABLE = common dso_local global i32 0, align 4
@MPV_ERROR_PROPERTY_NOT_FOUND = common dso_local global i32 0, align 4
@MPV_ERROR_PROPERTY_FORMAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @translate_property_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @translate_property_error(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %16 [
    i32 130, label %5
    i32 133, label %6
    i32 129, label %8
    i32 131, label %10
    i32 128, label %12
    i32 132, label %14
  ]

5:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %18

6:                                                ; preds = %1
  %7 = load i32, i32* @MPV_ERROR_PROPERTY_ERROR, align 4
  store i32 %7, i32* %2, align 4
  br label %18

8:                                                ; preds = %1
  %9 = load i32, i32* @MPV_ERROR_PROPERTY_UNAVAILABLE, align 4
  store i32 %9, i32* %2, align 4
  br label %18

10:                                               ; preds = %1
  %11 = load i32, i32* @MPV_ERROR_PROPERTY_ERROR, align 4
  store i32 %11, i32* %2, align 4
  br label %18

12:                                               ; preds = %1
  %13 = load i32, i32* @MPV_ERROR_PROPERTY_NOT_FOUND, align 4
  store i32 %13, i32* %2, align 4
  br label %18

14:                                               ; preds = %1
  %15 = load i32, i32* @MPV_ERROR_PROPERTY_FORMAT, align 4
  store i32 %15, i32* %2, align 4
  br label %18

16:                                               ; preds = %1
  %17 = load i32, i32* @MPV_ERROR_PROPERTY_ERROR, align 4
  store i32 %17, i32* %2, align 4
  br label %18

18:                                               ; preds = %16, %14, %12, %10, %8, %6, %5
  %19 = load i32, i32* %2, align 4
  ret i32 %19
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
