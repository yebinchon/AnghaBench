; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/wordpad/extr_print.c_target_device.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/wordpad/extr_print.c_target_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@IDC_EDITOR = common dso_local global i32 0, align 4
@ID_WORDWRAP_MARGIN = common dso_local global i64 0, align 8
@EM_SETTARGETDEVICE = common dso_local global i32 0, align 4
@ID_WORDWRAP_NONE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @target_device(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_3__, align 4
  %10 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i64 %1, i64* %4, align 8
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @IDC_EDITOR, align 4
  %13 = call i32 @GetDlgItem(i32 %11, i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load i64, i64* %4, align 8
  %15 = load i64, i64* @ID_WORDWRAP_MARGIN, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %50

17:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  %18 = call i64 (...) @make_dc()
  store i64 %18, i64* %8, align 8
  %19 = load i64, i64* %8, align 8
  %20 = call i64 @get_print_rect(i64 %19)
  %21 = bitcast %struct.TYPE_3__* %9 to i64*
  store i64 %20, i64* %21, align 4
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = sub nsw i32 %23, %25
  store i32 %26, i32* %6, align 4
  %27 = load i64, i64* %8, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %37, label %29

29:                                               ; preds = %17
  %30 = load i32, i32* %3, align 4
  %31 = call i64 @GetDC(i32 %30)
  store i64 %31, i64* %10, align 8
  %32 = load i64, i64* %10, align 8
  %33 = call i64 @CreateCompatibleDC(i64 %32)
  store i64 %33, i64* %8, align 8
  %34 = load i32, i32* %3, align 4
  %35 = load i64, i64* %10, align 8
  %36 = call i32 @ReleaseDC(i32 %34, i64 %35)
  br label %37

37:                                               ; preds = %29, %17
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @EM_SETTARGETDEVICE, align 4
  %40 = load i64, i64* %8, align 8
  %41 = trunc i64 %40 to i32
  %42 = load i32, i32* %6, align 4
  %43 = call i64 @SendMessageW(i32 %38, i32 %39, i32 %41, i32 %42)
  store i64 %43, i64* %7, align 8
  %44 = load i64, i64* %8, align 8
  %45 = call i32 @DeleteDC(i64 %44)
  %46 = load i64, i64* %7, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %37
  br label %62

49:                                               ; preds = %37
  br label %50

50:                                               ; preds = %49, %2
  %51 = load i64, i64* %4, align 8
  %52 = load i64, i64* @ID_WORDWRAP_NONE, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %50
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* @EM_SETTARGETDEVICE, align 4
  %57 = call i64 @SendMessageW(i32 %55, i32 %56, i32 0, i32 0)
  br label %62

58:                                               ; preds = %50
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* @EM_SETTARGETDEVICE, align 4
  %61 = call i64 @SendMessageW(i32 %59, i32 %60, i32 0, i32 1)
  br label %62

62:                                               ; preds = %48, %58, %54
  ret void
}

declare dso_local i32 @GetDlgItem(i32, i32) #1

declare dso_local i64 @make_dc(...) #1

declare dso_local i64 @get_print_rect(i64) #1

declare dso_local i64 @GetDC(i32) #1

declare dso_local i64 @CreateCompatibleDC(i64) #1

declare dso_local i32 @ReleaseDC(i32, i64) #1

declare dso_local i64 @SendMessageW(i32, i32, i32, i32) #1

declare dso_local i32 @DeleteDC(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
