; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_utils.c_wined3d_release_dc.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_utils.c_wined3d_release_dc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [37 x i8] c"DC %p does not belong to window %p.\0A\00", align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"Failed to release device context %p, last error %#x.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wined3d_release_dc(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = call i64 @WindowFromDC(i32 %5)
  %7 = load i64, i64* %3, align 8
  %8 = icmp ne i64 %6, %7
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  %11 = load i64, i64* %3, align 8
  %12 = call i32 @WARN(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %10, i64 %11)
  br label %23

13:                                               ; preds = %2
  %14 = load i64, i64* %3, align 8
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @ReleaseDC(i64 %14, i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %13
  %19 = load i32, i32* %4, align 4
  %20 = call i32 (...) @GetLastError()
  %21 = call i32 @ERR(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i32 %19, i32 %20)
  br label %22

22:                                               ; preds = %18, %13
  br label %23

23:                                               ; preds = %22, %9
  ret void
}

declare dso_local i64 @WindowFromDC(i32) #1

declare dso_local i32 @WARN(i8*, i32, i64) #1

declare dso_local i32 @ReleaseDC(i64, i32) #1

declare dso_local i32 @ERR(i8*, i32, i32) #1

declare dso_local i32 @GetLastError(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
