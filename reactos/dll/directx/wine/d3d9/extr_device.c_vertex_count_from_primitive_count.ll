; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3d9/extr_device.c_vertex_count_from_primitive_count.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3d9/extr_device.c_vertex_count_from_primitive_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [31 x i8] c"Unhandled primitive type %#x.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @vertex_count_from_primitive_count to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vertex_count_from_primitive_count(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %21 [
    i32 131, label %7
    i32 133, label %9
    i32 132, label %12
    i32 129, label %15
    i32 128, label %18
    i32 130, label %18
  ]

7:                                                ; preds = %2
  %8 = load i32, i32* %5, align 4
  store i32 %8, i32* %3, align 4
  br label %24

9:                                                ; preds = %2
  %10 = load i32, i32* %5, align 4
  %11 = mul nsw i32 %10, 2
  store i32 %11, i32* %3, align 4
  br label %24

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* %3, align 4
  br label %24

15:                                               ; preds = %2
  %16 = load i32, i32* %5, align 4
  %17 = mul nsw i32 %16, 3
  store i32 %17, i32* %3, align 4
  br label %24

18:                                               ; preds = %2, %2
  %19 = load i32, i32* %5, align 4
  %20 = add nsw i32 %19, 2
  store i32 %20, i32* %3, align 4
  br label %24

21:                                               ; preds = %2
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @FIXME(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %22)
  store i32 0, i32* %3, align 4
  br label %24

24:                                               ; preds = %21, %18, %15, %12, %9, %7
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

declare dso_local i32 @FIXME(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
