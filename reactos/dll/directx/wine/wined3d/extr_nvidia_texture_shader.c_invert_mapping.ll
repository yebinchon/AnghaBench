; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_nvidia_texture_shader.c_invert_mapping.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_nvidia_texture_shader.c_invert_mapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GL_UNSIGNED_INVERT_NV = common dso_local global i64 0, align 8
@GL_UNSIGNED_IDENTITY_NV = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"Unhandled mapping %#x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64)* @invert_mapping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @invert_mapping(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %4 = load i64, i64* %3, align 8
  %5 = load i64, i64* @GL_UNSIGNED_INVERT_NV, align 8
  %6 = icmp eq i64 %4, %5
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = load i64, i64* @GL_UNSIGNED_IDENTITY_NV, align 8
  store i64 %8, i64* %2, align 8
  br label %20

9:                                                ; preds = %1
  %10 = load i64, i64* %3, align 8
  %11 = load i64, i64* @GL_UNSIGNED_IDENTITY_NV, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = load i64, i64* @GL_UNSIGNED_INVERT_NV, align 8
  store i64 %14, i64* %2, align 8
  br label %20

15:                                               ; preds = %9
  br label %16

16:                                               ; preds = %15
  %17 = load i64, i64* %3, align 8
  %18 = call i32 @FIXME(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i64 %17)
  %19 = load i64, i64* %3, align 8
  store i64 %19, i64* %2, align 8
  br label %20

20:                                               ; preds = %16, %13, %7
  %21 = load i64, i64* %2, align 8
  ret i64 %21
}

declare dso_local i32 @FIXME(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
