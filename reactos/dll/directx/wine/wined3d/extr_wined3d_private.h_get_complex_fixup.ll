; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_wined3d_private.h_get_complex_fixup.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_wined3d_private.h_get_complex_fixup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.color_fixup_desc = type { i64, i64, i64, i64 }

@CHANNEL_SOURCE_COMPLEX1 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.color_fixup_desc*)* @get_complex_fixup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_complex_fixup(%struct.color_fixup_desc* byval(%struct.color_fixup_desc) align 8 %0) #0 {
  %2 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  %3 = getelementptr inbounds %struct.color_fixup_desc, %struct.color_fixup_desc* %0, i32 0, i32 0
  %4 = load i64, i64* %3, align 8
  %5 = load i64, i64* @CHANNEL_SOURCE_COMPLEX1, align 8
  %6 = icmp eq i64 %4, %5
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load i32, i32* %2, align 4
  %9 = or i32 %8, 1
  store i32 %9, i32* %2, align 4
  br label %10

10:                                               ; preds = %7, %1
  %11 = getelementptr inbounds %struct.color_fixup_desc, %struct.color_fixup_desc* %0, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @CHANNEL_SOURCE_COMPLEX1, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %10
  %16 = load i32, i32* %2, align 4
  %17 = or i32 %16, 2
  store i32 %17, i32* %2, align 4
  br label %18

18:                                               ; preds = %15, %10
  %19 = getelementptr inbounds %struct.color_fixup_desc, %struct.color_fixup_desc* %0, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @CHANNEL_SOURCE_COMPLEX1, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load i32, i32* %2, align 4
  %25 = or i32 %24, 4
  store i32 %25, i32* %2, align 4
  br label %26

26:                                               ; preds = %23, %18
  %27 = getelementptr inbounds %struct.color_fixup_desc, %struct.color_fixup_desc* %0, i32 0, i32 3
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @CHANNEL_SOURCE_COMPLEX1, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load i32, i32* %2, align 4
  %33 = or i32 %32, 8
  store i32 %33, i32* %2, align 4
  br label %34

34:                                               ; preds = %31, %26
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
