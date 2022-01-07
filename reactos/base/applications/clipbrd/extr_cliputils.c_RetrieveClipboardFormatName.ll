; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/clipbrd/extr_cliputils.c_RetrieveClipboardFormatName.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/clipbrd/extr_cliputils.c_RetrieveClipboardFormatName.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CF_OWNERDISPLAY = common dso_local global i32 0, align 4
@WM_ASKCBFORMATNAME = common dso_local global i32 0, align 4
@STRING_CF_UNKNOWN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @RetrieveClipboardFormatName(i32 %0, i32 %1, i64 %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  %11 = load i64, i64* %9, align 8
  %12 = load i32, i32* %10, align 4
  %13 = sext i32 %12 to i64
  %14 = load i64, i64* %8, align 8
  %15 = icmp ne i64 %14, 0
  %16 = zext i1 %15 to i64
  %17 = select i1 %15, i64 4, i64 4
  %18 = mul i64 %13, %17
  %19 = trunc i64 %18 to i32
  %20 = call i32 @ZeroMemory(i64 %11, i32 %19)
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* %7, align 4
  %23 = load i64, i64* %8, align 8
  %24 = load i64, i64* %9, align 8
  %25 = load i32, i32* %10, align 4
  %26 = call i64 @GetPredefinedClipboardFormatName(i32 %21, i32 %22, i64 %23, i64 %24, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %5
  br label %93

29:                                               ; preds = %5
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @CF_OWNERDISPLAY, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %60

33:                                               ; preds = %29
  %34 = load i64, i64* %8, align 8
  %35 = load i32, i32* @WM_ASKCBFORMATNAME, align 4
  %36 = load i32, i32* %10, align 4
  %37 = load i64, i64* %9, align 8
  %38 = trunc i64 %37 to i32
  %39 = call i64 @SendClipboardOwnerMessage(i64 %34, i32 %35, i32 %36, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %59

41:                                               ; preds = %33
  %42 = load i64, i64* %8, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %41
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* @STRING_CF_UNKNOWN, align 4
  %47 = load i64, i64* %9, align 8
  %48 = trunc i64 %47 to i32
  %49 = load i32, i32* %10, align 4
  %50 = call i32 @LoadStringW(i32 %45, i32 %46, i32 %48, i32 %49)
  br label %58

51:                                               ; preds = %41
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* @STRING_CF_UNKNOWN, align 4
  %54 = load i64, i64* %9, align 8
  %55 = trunc i64 %54 to i32
  %56 = load i32, i32* %10, align 4
  %57 = call i32 @LoadStringA(i32 %52, i32 %53, i32 %55, i32 %56)
  br label %58

58:                                               ; preds = %51, %44
  br label %59

59:                                               ; preds = %58, %33
  br label %93

60:                                               ; preds = %29
  %61 = load i64, i64* %8, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %78

63:                                               ; preds = %60
  %64 = load i32, i32* %7, align 4
  %65 = load i64, i64* %9, align 8
  %66 = trunc i64 %65 to i32
  %67 = load i32, i32* %10, align 4
  %68 = call i32 @GetClipboardFormatNameW(i32 %64, i32 %66, i32 %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %77, label %70

70:                                               ; preds = %63
  %71 = load i32, i32* %6, align 4
  %72 = load i32, i32* @STRING_CF_UNKNOWN, align 4
  %73 = load i64, i64* %9, align 8
  %74 = trunc i64 %73 to i32
  %75 = load i32, i32* %10, align 4
  %76 = call i32 @LoadStringW(i32 %71, i32 %72, i32 %74, i32 %75)
  br label %77

77:                                               ; preds = %70, %63
  br label %93

78:                                               ; preds = %60
  %79 = load i32, i32* %7, align 4
  %80 = load i64, i64* %9, align 8
  %81 = trunc i64 %80 to i32
  %82 = load i32, i32* %10, align 4
  %83 = call i32 @GetClipboardFormatNameA(i32 %79, i32 %81, i32 %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %92, label %85

85:                                               ; preds = %78
  %86 = load i32, i32* %6, align 4
  %87 = load i32, i32* @STRING_CF_UNKNOWN, align 4
  %88 = load i64, i64* %9, align 8
  %89 = trunc i64 %88 to i32
  %90 = load i32, i32* %10, align 4
  %91 = call i32 @LoadStringA(i32 %86, i32 %87, i32 %89, i32 %90)
  br label %92

92:                                               ; preds = %85, %78
  br label %93

93:                                               ; preds = %28, %59, %92, %77
  ret void
}

declare dso_local i32 @ZeroMemory(i64, i32) #1

declare dso_local i64 @GetPredefinedClipboardFormatName(i32, i32, i64, i64, i32) #1

declare dso_local i64 @SendClipboardOwnerMessage(i64, i32, i32, i32) #1

declare dso_local i32 @LoadStringW(i32, i32, i32, i32) #1

declare dso_local i32 @LoadStringA(i32, i32, i32, i32) #1

declare dso_local i32 @GetClipboardFormatNameW(i32, i32, i32) #1

declare dso_local i32 @GetClipboardFormatNameA(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
