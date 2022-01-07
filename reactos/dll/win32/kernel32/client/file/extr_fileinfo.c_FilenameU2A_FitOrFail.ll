; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/kernel32/client/file/extr_fileinfo.c_FilenameU2A_FitOrFail.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/kernel32/client/file/extr_fileinfo.c_FilenameU2A_FitOrFail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, i64 }

@MAX_PATH = common dso_local global i64 0, align 8
@bIsFileApiAnsi = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @FilenameU2A_FitOrFail(i64 %0, i64 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_4__, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i64, i64* %5, align 8
  %10 = load i64, i64* @MAX_PATH, align 8
  %11 = icmp sgt i64 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %3
  %13 = load i64, i64* @MAX_PATH, align 8
  store i64 %13, i64* %5, align 8
  br label %14

14:                                               ; preds = %12, %3
  %15 = load i64, i64* @bIsFileApiAnsi, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = load i32, i32* %6, align 4
  %19 = call i64 @RtlUnicodeStringToAnsiSize(i32 %18)
  br label %23

20:                                               ; preds = %14
  %21 = load i32, i32* %6, align 4
  %22 = call i64 @RtlUnicodeStringToOemSize(i32 %21)
  br label %23

23:                                               ; preds = %20, %17
  %24 = phi i64 [ %19, %17 ], [ %22, %20 ]
  store i64 %24, i64* %7, align 8
  %25 = load i64, i64* %4, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %49

27:                                               ; preds = %23
  %28 = load i64, i64* %7, align 8
  %29 = load i64, i64* %5, align 8
  %30 = icmp sle i64 %28, %29
  br i1 %30, label %31, label %49

31:                                               ; preds = %27
  %32 = load i64, i64* %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 2
  store i64 %32, i64* %33, align 8
  %34 = load i64, i64* %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  store i64 %34, i64* %35, align 8
  %36 = load i64, i64* @bIsFileApiAnsi, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %31
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @FALSE, align 4
  %41 = call i32 @RtlUnicodeStringToAnsiString(%struct.TYPE_4__* %8, i32 %39, i32 %40)
  br label %46

42:                                               ; preds = %31
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* @FALSE, align 4
  %45 = call i32 @RtlUnicodeStringToOemString(%struct.TYPE_4__* %8, i32 %43, i32 %44)
  br label %46

46:                                               ; preds = %42, %38
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  store i64 %48, i64* %7, align 8
  br label %49

49:                                               ; preds = %46, %27, %23
  %50 = load i64, i64* %7, align 8
  ret i64 %50
}

declare dso_local i64 @RtlUnicodeStringToAnsiSize(i32) #1

declare dso_local i64 @RtlUnicodeStringToOemSize(i32) #1

declare dso_local i32 @RtlUnicodeStringToAnsiString(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @RtlUnicodeStringToOemString(%struct.TYPE_4__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
