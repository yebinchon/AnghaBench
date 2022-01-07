; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/gdiplus/extr_graphics.c_convert_path_point_type.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/gdiplus/extr_graphics.c_convert_path_point_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PathPointTypePathTypeMask = common dso_local global i32 0, align 4
@PT_BEZIERTO = common dso_local global i32 0, align 4
@PT_LINETO = common dso_local global i32 0, align 4
@PT_MOVETO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"Bad point type\0A\00", align 1
@PathPointTypeCloseSubpath = common dso_local global i32 0, align 4
@PT_CLOSEFIGURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @convert_path_point_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @convert_path_point_type(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @PathPointTypePathTypeMask, align 4
  %7 = and i32 %5, %6
  switch i32 %7, label %14 [
    i32 130, label %8
    i32 129, label %10
    i32 128, label %12
  ]

8:                                                ; preds = %1
  %9 = load i32, i32* @PT_BEZIERTO, align 4
  store i32 %9, i32* %4, align 4
  br label %16

10:                                               ; preds = %1
  %11 = load i32, i32* @PT_LINETO, align 4
  store i32 %11, i32* %4, align 4
  br label %16

12:                                               ; preds = %1
  %13 = load i32, i32* @PT_MOVETO, align 4
  store i32 %13, i32* %4, align 4
  br label %16

14:                                               ; preds = %1
  %15 = call i32 @ERR(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %27

16:                                               ; preds = %12, %10, %8
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @PathPointTypeCloseSubpath, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %16
  %22 = load i32, i32* @PT_CLOSEFIGURE, align 4
  %23 = load i32, i32* %4, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %4, align 4
  br label %25

25:                                               ; preds = %21, %16
  %26 = load i32, i32* %4, align 4
  store i32 %26, i32* %2, align 4
  br label %27

27:                                               ; preds = %25, %14
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local i32 @ERR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
