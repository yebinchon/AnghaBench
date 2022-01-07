; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_ati_fragment_shader.c_atifs_color_fixup_supported.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_ati_fragment_shader.c_atifs_color_fixup_supported.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.color_fixup_desc = type { i32 }

@color_fixup_rg = common dso_local global i32 0, align 4
@color_fixup_rgl = common dso_local global i32 0, align 4
@color_fixup_rgba = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @atifs_color_fixup_supported to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atifs_color_fixup_supported(i32 %0) #0 {
  %2 = alloca %struct.color_fixup_desc, align 4
  %3 = getelementptr inbounds %struct.color_fixup_desc, %struct.color_fixup_desc* %2, i32 0, i32 0
  store i32 %0, i32* %3, align 4
  %4 = getelementptr inbounds %struct.color_fixup_desc, %struct.color_fixup_desc* %2, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = call i64 @is_identity_fixup(i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %26, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* @color_fixup_rg, align 4
  %10 = getelementptr inbounds %struct.color_fixup_desc, %struct.color_fixup_desc* %2, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i64 @is_same_fixup(i32 %11, i32 %9)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %26, label %14

14:                                               ; preds = %8
  %15 = load i32, i32* @color_fixup_rgl, align 4
  %16 = getelementptr inbounds %struct.color_fixup_desc, %struct.color_fixup_desc* %2, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @is_same_fixup(i32 %17, i32 %15)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %14
  %21 = load i32, i32* @color_fixup_rgba, align 4
  %22 = getelementptr inbounds %struct.color_fixup_desc, %struct.color_fixup_desc* %2, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @is_same_fixup(i32 %23, i32 %21)
  %25 = icmp ne i64 %24, 0
  br label %26

26:                                               ; preds = %20, %14, %8, %1
  %27 = phi i1 [ true, %14 ], [ true, %8 ], [ true, %1 ], [ %25, %20 ]
  %28 = zext i1 %27 to i32
  ret i32 %28
}

declare dso_local i64 @is_identity_fixup(i32) #1

declare dso_local i64 @is_same_fixup(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
