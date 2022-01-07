; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_wined3d_private.h_is_same_fixup.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_wined3d_private.h_is_same_fixup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.color_fixup_desc = type { i64, i64, i64, i64, i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.color_fixup_desc*, %struct.color_fixup_desc*)* @is_same_fixup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_same_fixup(%struct.color_fixup_desc* byval(%struct.color_fixup_desc) align 8 %0, %struct.color_fixup_desc* byval(%struct.color_fixup_desc) align 8 %1) #0 {
  %3 = getelementptr inbounds %struct.color_fixup_desc, %struct.color_fixup_desc* %0, i32 0, i32 0
  %4 = load i64, i64* %3, align 8
  %5 = getelementptr inbounds %struct.color_fixup_desc, %struct.color_fixup_desc* %1, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = icmp eq i64 %4, %6
  br i1 %7, label %8, label %50

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.color_fixup_desc, %struct.color_fixup_desc* %0, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = getelementptr inbounds %struct.color_fixup_desc, %struct.color_fixup_desc* %1, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp eq i64 %10, %12
  br i1 %13, label %14, label %50

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.color_fixup_desc, %struct.color_fixup_desc* %0, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds %struct.color_fixup_desc, %struct.color_fixup_desc* %1, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %16, %18
  br i1 %19, label %20, label %50

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.color_fixup_desc, %struct.color_fixup_desc* %0, i32 0, i32 3
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds %struct.color_fixup_desc, %struct.color_fixup_desc* %1, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %22, %24
  br i1 %25, label %26, label %50

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.color_fixup_desc, %struct.color_fixup_desc* %0, i32 0, i32 4
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds %struct.color_fixup_desc, %struct.color_fixup_desc* %1, i32 0, i32 4
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %28, %30
  br i1 %31, label %32, label %50

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.color_fixup_desc, %struct.color_fixup_desc* %0, i32 0, i32 5
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds %struct.color_fixup_desc, %struct.color_fixup_desc* %1, i32 0, i32 5
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %34, %36
  br i1 %37, label %38, label %50

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.color_fixup_desc, %struct.color_fixup_desc* %0, i32 0, i32 6
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds %struct.color_fixup_desc, %struct.color_fixup_desc* %1, i32 0, i32 6
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %40, %42
  br i1 %43, label %44, label %50

44:                                               ; preds = %38
  %45 = getelementptr inbounds %struct.color_fixup_desc, %struct.color_fixup_desc* %0, i32 0, i32 7
  %46 = load i64, i64* %45, align 8
  %47 = getelementptr inbounds %struct.color_fixup_desc, %struct.color_fixup_desc* %1, i32 0, i32 7
  %48 = load i64, i64* %47, align 8
  %49 = icmp eq i64 %46, %48
  br label %50

50:                                               ; preds = %44, %38, %32, %26, %20, %14, %8, %2
  %51 = phi i1 [ false, %38 ], [ false, %32 ], [ false, %26 ], [ false, %20 ], [ false, %14 ], [ false, %8 ], [ false, %2 ], [ %49, %44 ]
  %52 = zext i1 %51 to i32
  ret i32 %52
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
