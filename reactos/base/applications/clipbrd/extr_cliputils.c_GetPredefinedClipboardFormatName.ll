; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/clipbrd/extr_cliputils.c_GetPredefinedClipboardFormatName.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/clipbrd/extr_cliputils.c_GetPredefinedClipboardFormatName.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.FORMAT_NAME = type { i32, i32 }

@GetPredefinedClipboardFormatName.uFormatList = internal global [14 x %struct.FORMAT_NAME] [%struct.FORMAT_NAME { i32 144, i32 129 }, %struct.FORMAT_NAME { i32 157, i32 140 }, %struct.FORMAT_NAME { i32 150, i32 133 }, %struct.FORMAT_NAME { i32 145, i32 130 }, %struct.FORMAT_NAME { i32 154, i32 137 }, %struct.FORMAT_NAME { i32 143, i32 0 }, %struct.FORMAT_NAME { i32 149, i32 132 }, %struct.FORMAT_NAME { i32 156, i32 139 }, %struct.FORMAT_NAME { i32 148, i32 131 }, %struct.FORMAT_NAME { i32 147, i32 0 }, %struct.FORMAT_NAME { i32 146, i32 0 }, %struct.FORMAT_NAME { i32 141, i32 0 }, %struct.FORMAT_NAME { i32 142, i32 128 }, %struct.FORMAT_NAME { i32 153, i32 136 }], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32)* @GetPredefinedClipboardFormatName to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @GetPredefinedClipboardFormatName(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %12 = load i32, i32* %8, align 4
  switch i32 %12, label %38 [
    i32 144, label %13
    i32 157, label %13
    i32 150, label %13
    i32 145, label %13
    i32 154, label %13
    i32 149, label %13
    i32 156, label %13
    i32 148, label %13
    i32 142, label %13
    i32 153, label %13
  ]

13:                                               ; preds = %5, %5, %5, %5, %5, %5, %5, %5, %5, %5
  %14 = load i32, i32* %9, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %27

16:                                               ; preds = %13
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* %8, align 4
  %19 = sub nsw i32 %18, 1
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [14 x %struct.FORMAT_NAME], [14 x %struct.FORMAT_NAME]* @GetPredefinedClipboardFormatName.uFormatList, i64 0, i64 %20
  %22 = getelementptr inbounds %struct.FORMAT_NAME, %struct.FORMAT_NAME* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* %11, align 4
  %26 = call i32 @LoadStringW(i32 %17, i32 %23, i32 %24, i32 %25)
  store i32 %26, i32* %6, align 4
  br label %39

27:                                               ; preds = %13
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* %8, align 4
  %30 = sub nsw i32 %29, 1
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [14 x %struct.FORMAT_NAME], [14 x %struct.FORMAT_NAME]* @GetPredefinedClipboardFormatName.uFormatList, i64 0, i64 %31
  %33 = getelementptr inbounds %struct.FORMAT_NAME, %struct.FORMAT_NAME* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* %11, align 4
  %37 = call i32 @LoadStringA(i32 %28, i32 %34, i32 %35, i32 %36)
  store i32 %37, i32* %6, align 4
  br label %39

38:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %39

39:                                               ; preds = %38, %27, %16
  %40 = load i32, i32* %6, align 4
  ret i32 %40
}

declare dso_local i32 @LoadStringW(i32, i32, i32, i32) #1

declare dso_local i32 @LoadStringA(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
