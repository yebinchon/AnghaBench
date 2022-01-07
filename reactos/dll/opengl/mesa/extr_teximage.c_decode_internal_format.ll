; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_teximage.c_decode_internal_format.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_teximage.c_decode_internal_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GL_COLOR_INDEX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @decode_internal_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_internal_format(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %13 [
    i32 171, label %5
    i32 168, label %5
    i32 167, label %5
    i32 170, label %5
    i32 169, label %5
    i32 1, label %6
    i32 155, label %6
    i32 149, label %6
    i32 146, label %6
    i32 154, label %6
    i32 151, label %6
    i32 2, label %7
    i32 144, label %7
    i32 148, label %7
    i32 147, label %7
    i32 145, label %7
    i32 152, label %7
    i32 153, label %7
    i32 150, label %7
    i32 160, label %8
    i32 157, label %8
    i32 156, label %8
    i32 159, label %8
    i32 158, label %8
    i32 3, label %9
    i32 142, label %9
    i32 143, label %9
    i32 137, label %9
    i32 136, label %9
    i32 134, label %9
    i32 141, label %9
    i32 139, label %9
    i32 138, label %9
    i32 4, label %10
    i32 133, label %10
    i32 130, label %10
    i32 129, label %10
    i32 135, label %10
    i32 128, label %10
    i32 140, label %10
    i32 132, label %10
    i32 131, label %10
    i32 164, label %11
    i32 163, label %11
    i32 162, label %11
    i32 161, label %11
    i32 166, label %11
    i32 165, label %11
  ]

5:                                                ; preds = %1, %1, %1, %1, %1
  store i32 171, i32* %2, align 4
  br label %14

6:                                                ; preds = %1, %1, %1, %1, %1, %1
  store i32 155, i32* %2, align 4
  br label %14

7:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1
  store i32 144, i32* %2, align 4
  br label %14

8:                                                ; preds = %1, %1, %1, %1, %1
  store i32 160, i32* %2, align 4
  br label %14

9:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1
  store i32 142, i32* %2, align 4
  br label %14

10:                                               ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1
  store i32 133, i32* %2, align 4
  br label %14

11:                                               ; preds = %1, %1, %1, %1, %1, %1
  %12 = load i32, i32* @GL_COLOR_INDEX, align 4
  store i32 %12, i32* %2, align 4
  br label %14

13:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %14

14:                                               ; preds = %13, %11, %10, %9, %8, %7, %6, %5
  %15 = load i32, i32* %2, align 4
  ret i32 %15
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
