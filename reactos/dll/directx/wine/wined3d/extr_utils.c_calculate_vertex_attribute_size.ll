; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_utils.c_calculate_vertex_attribute_size.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_utils.c_calculate_vertex_attribute_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [24 x i8] c"Unhandled GL type %#x.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @calculate_vertex_attribute_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @calculate_vertex_attribute_size(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %48 [
    i32 134, label %7
    i32 135, label %12
    i32 136, label %17
    i32 131, label %22
    i32 132, label %27
    i32 128, label %32
    i32 133, label %37
    i32 130, label %42
    i32 129, label %47
  ]

7:                                                ; preds = %2
  %8 = load i32, i32* %5, align 4
  %9 = zext i32 %8 to i64
  %10 = mul i64 %9, 4
  %11 = trunc i64 %10 to i32
  store i32 %11, i32* %3, align 4
  br label %51

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  %14 = zext i32 %13 to i64
  %15 = mul i64 %14, 4
  %16 = trunc i64 %15 to i32
  store i32 %16, i32* %3, align 4
  br label %51

17:                                               ; preds = %2
  %18 = load i32, i32* %5, align 4
  %19 = zext i32 %18 to i64
  %20 = mul i64 %19, 4
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %3, align 4
  br label %51

22:                                               ; preds = %2
  %23 = load i32, i32* %5, align 4
  %24 = zext i32 %23 to i64
  %25 = mul i64 %24, 4
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %3, align 4
  br label %51

27:                                               ; preds = %2
  %28 = load i32, i32* %5, align 4
  %29 = zext i32 %28 to i64
  %30 = mul i64 %29, 4
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %3, align 4
  br label %51

32:                                               ; preds = %2
  %33 = load i32, i32* %5, align 4
  %34 = zext i32 %33 to i64
  %35 = mul i64 %34, 4
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %3, align 4
  br label %51

37:                                               ; preds = %2
  %38 = load i32, i32* %5, align 4
  %39 = zext i32 %38 to i64
  %40 = mul i64 %39, 4
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %3, align 4
  br label %51

42:                                               ; preds = %2
  %43 = load i32, i32* %5, align 4
  %44 = zext i32 %43 to i64
  %45 = mul i64 %44, 4
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %3, align 4
  br label %51

47:                                               ; preds = %2
  store i32 4, i32* %3, align 4
  br label %51

48:                                               ; preds = %2
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @FIXME(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %49)
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %48, %47, %42, %37, %32, %27, %22, %17, %12, %7
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i32 @FIXME(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
