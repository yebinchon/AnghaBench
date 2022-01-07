; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/gin/extr_ginentrypage.c_entryFindChildPtr.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/gin/extr_ginentrypage.c_entryFindChildPtr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FirstOffsetNumber = common dso_local global i64 0, align 8
@InvalidOffsetNumber = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i32, i64, i64)* @entryFindChildPtr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @entryFindChildPtr(i32 %0, i32 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load i32, i32* %7, align 4
  %14 = call i64 @PageGetMaxOffsetNumber(i32 %13)
  store i64 %14, i64* %11, align 8
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @GinPageIsLeaf(i32 %15)
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i32 @Assert(i32 %19)
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @GinPageIsData(i32 %21)
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = call i32 @Assert(i32 %25)
  %27 = load i64, i64* %9, align 8
  %28 = load i64, i64* @FirstOffsetNumber, align 8
  %29 = icmp sge i64 %27, %28
  br i1 %29, label %30, label %72

30:                                               ; preds = %4
  %31 = load i64, i64* %9, align 8
  %32 = load i64, i64* %11, align 8
  %33 = icmp sle i64 %31, %32
  br i1 %33, label %34, label %72

34:                                               ; preds = %30
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = load i64, i64* %9, align 8
  %38 = call i32 @PageGetItemId(i32 %36, i64 %37)
  %39 = call i64 @PageGetItem(i32 %35, i32 %38)
  store i64 %39, i64* %12, align 8
  %40 = load i64, i64* %12, align 8
  %41 = call i64 @GinGetDownlink(i64 %40)
  %42 = load i64, i64* %8, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %34
  %45 = load i64, i64* %9, align 8
  store i64 %45, i64* %5, align 8
  br label %96

46:                                               ; preds = %34
  %47 = load i64, i64* %9, align 8
  %48 = add nsw i64 %47, 1
  store i64 %48, i64* %10, align 8
  br label %49

49:                                               ; preds = %66, %46
  %50 = load i64, i64* %10, align 8
  %51 = load i64, i64* %11, align 8
  %52 = icmp sle i64 %50, %51
  br i1 %52, label %53, label %69

53:                                               ; preds = %49
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* %7, align 4
  %56 = load i64, i64* %10, align 8
  %57 = call i32 @PageGetItemId(i32 %55, i64 %56)
  %58 = call i64 @PageGetItem(i32 %54, i32 %57)
  store i64 %58, i64* %12, align 8
  %59 = load i64, i64* %12, align 8
  %60 = call i64 @GinGetDownlink(i64 %59)
  %61 = load i64, i64* %8, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %53
  %64 = load i64, i64* %10, align 8
  store i64 %64, i64* %5, align 8
  br label %96

65:                                               ; preds = %53
  br label %66

66:                                               ; preds = %65
  %67 = load i64, i64* %10, align 8
  %68 = add nsw i64 %67, 1
  store i64 %68, i64* %10, align 8
  br label %49

69:                                               ; preds = %49
  %70 = load i64, i64* %9, align 8
  %71 = sub nsw i64 %70, 1
  store i64 %71, i64* %11, align 8
  br label %72

72:                                               ; preds = %69, %30, %4
  %73 = load i64, i64* @FirstOffsetNumber, align 8
  store i64 %73, i64* %10, align 8
  br label %74

74:                                               ; preds = %91, %72
  %75 = load i64, i64* %10, align 8
  %76 = load i64, i64* %11, align 8
  %77 = icmp sle i64 %75, %76
  br i1 %77, label %78, label %94

78:                                               ; preds = %74
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* %7, align 4
  %81 = load i64, i64* %10, align 8
  %82 = call i32 @PageGetItemId(i32 %80, i64 %81)
  %83 = call i64 @PageGetItem(i32 %79, i32 %82)
  store i64 %83, i64* %12, align 8
  %84 = load i64, i64* %12, align 8
  %85 = call i64 @GinGetDownlink(i64 %84)
  %86 = load i64, i64* %8, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %90

88:                                               ; preds = %78
  %89 = load i64, i64* %10, align 8
  store i64 %89, i64* %5, align 8
  br label %96

90:                                               ; preds = %78
  br label %91

91:                                               ; preds = %90
  %92 = load i64, i64* %10, align 8
  %93 = add nsw i64 %92, 1
  store i64 %93, i64* %10, align 8
  br label %74

94:                                               ; preds = %74
  %95 = load i64, i64* @InvalidOffsetNumber, align 8
  store i64 %95, i64* %5, align 8
  br label %96

96:                                               ; preds = %94, %88, %63, %44
  %97 = load i64, i64* %5, align 8
  ret i64 %97
}

declare dso_local i64 @PageGetMaxOffsetNumber(i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @GinPageIsLeaf(i32) #1

declare dso_local i32 @GinPageIsData(i32) #1

declare dso_local i64 @PageGetItem(i32, i32) #1

declare dso_local i32 @PageGetItemId(i32, i64) #1

declare dso_local i64 @GinGetDownlink(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
