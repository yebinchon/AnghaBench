; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_utils.c_get_format_internal.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_utils.c_get_format_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_format = type { i32 }
%struct.wined3d_gl_info = type { %struct.wined3d_format* }

@.str = private unnamed_addr constant [28 x i8] c"Format %s (%#x) not found.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wined3d_format* (%struct.wined3d_gl_info*, i32)* @get_format_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wined3d_format* @get_format_internal(%struct.wined3d_gl_info* %0, i32 %1) #0 {
  %3 = alloca %struct.wined3d_format*, align 8
  %4 = alloca %struct.wined3d_gl_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.wined3d_gl_info* %0, %struct.wined3d_gl_info** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = call i32 @get_format_idx(i32 %7)
  store i32 %8, i32* %6, align 4
  %9 = icmp eq i32 %8, -1
  br i1 %9, label %10, label %15

10:                                               ; preds = %2
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @debug_d3dformat(i32 %11)
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @ERR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %13)
  store %struct.wined3d_format* null, %struct.wined3d_format** %3, align 8
  br label %22

15:                                               ; preds = %2
  %16 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %4, align 8
  %17 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %16, i32 0, i32 0
  %18 = load %struct.wined3d_format*, %struct.wined3d_format** %17, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %18, i64 %20
  store %struct.wined3d_format* %21, %struct.wined3d_format** %3, align 8
  br label %22

22:                                               ; preds = %15, %10
  %23 = load %struct.wined3d_format*, %struct.wined3d_format** %3, align 8
  ret %struct.wined3d_format* %23
}

declare dso_local i32 @get_format_idx(i32) #1

declare dso_local i32 @ERR(i8*, i32, i32) #1

declare dso_local i32 @debug_d3dformat(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
