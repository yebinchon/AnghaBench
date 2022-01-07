; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/gin/extr_gindatapage.c_dataFindChildPtr.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/gin/extr_gindatapage.c_dataFindChildPtr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@FirstOffsetNumber = common dso_local global i64 0, align 8
@InvalidOffsetNumber = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i32, i64, i64)* @dataFindChildPtr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @dataFindChildPtr(i32 %0, i32 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load i32, i32* %7, align 4
  %14 = call %struct.TYPE_2__* @GinPageGetOpaque(i32 %13)
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %11, align 8
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @GinPageIsLeaf(i32 %17)
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = call i32 @Assert(i32 %21)
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @GinPageIsData(i32 %23)
  %25 = call i32 @Assert(i32 %24)
  %26 = load i64, i64* %9, align 8
  %27 = load i64, i64* @FirstOffsetNumber, align 8
  %28 = icmp sge i64 %26, %27
  br i1 %28, label %29, label %67

29:                                               ; preds = %4
  %30 = load i64, i64* %9, align 8
  %31 = load i64, i64* %11, align 8
  %32 = icmp sle i64 %30, %31
  br i1 %32, label %33, label %67

33:                                               ; preds = %29
  %34 = load i32, i32* %7, align 4
  %35 = load i64, i64* %9, align 8
  %36 = call i32* @GinDataPageGetPostingItem(i32 %34, i64 %35)
  store i32* %36, i32** %12, align 8
  %37 = load i32*, i32** %12, align 8
  %38 = call i64 @PostingItemGetBlockNumber(i32* %37)
  %39 = load i64, i64* %8, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %33
  %42 = load i64, i64* %9, align 8
  store i64 %42, i64* %5, align 8
  br label %89

43:                                               ; preds = %33
  %44 = load i64, i64* %9, align 8
  %45 = add nsw i64 %44, 1
  store i64 %45, i64* %10, align 8
  br label %46

46:                                               ; preds = %61, %43
  %47 = load i64, i64* %10, align 8
  %48 = load i64, i64* %11, align 8
  %49 = icmp sle i64 %47, %48
  br i1 %49, label %50, label %64

50:                                               ; preds = %46
  %51 = load i32, i32* %7, align 4
  %52 = load i64, i64* %10, align 8
  %53 = call i32* @GinDataPageGetPostingItem(i32 %51, i64 %52)
  store i32* %53, i32** %12, align 8
  %54 = load i32*, i32** %12, align 8
  %55 = call i64 @PostingItemGetBlockNumber(i32* %54)
  %56 = load i64, i64* %8, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %50
  %59 = load i64, i64* %10, align 8
  store i64 %59, i64* %5, align 8
  br label %89

60:                                               ; preds = %50
  br label %61

61:                                               ; preds = %60
  %62 = load i64, i64* %10, align 8
  %63 = add nsw i64 %62, 1
  store i64 %63, i64* %10, align 8
  br label %46

64:                                               ; preds = %46
  %65 = load i64, i64* %9, align 8
  %66 = sub nsw i64 %65, 1
  store i64 %66, i64* %11, align 8
  br label %67

67:                                               ; preds = %64, %29, %4
  %68 = load i64, i64* @FirstOffsetNumber, align 8
  store i64 %68, i64* %10, align 8
  br label %69

69:                                               ; preds = %84, %67
  %70 = load i64, i64* %10, align 8
  %71 = load i64, i64* %11, align 8
  %72 = icmp sle i64 %70, %71
  br i1 %72, label %73, label %87

73:                                               ; preds = %69
  %74 = load i32, i32* %7, align 4
  %75 = load i64, i64* %10, align 8
  %76 = call i32* @GinDataPageGetPostingItem(i32 %74, i64 %75)
  store i32* %76, i32** %12, align 8
  %77 = load i32*, i32** %12, align 8
  %78 = call i64 @PostingItemGetBlockNumber(i32* %77)
  %79 = load i64, i64* %8, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %83

81:                                               ; preds = %73
  %82 = load i64, i64* %10, align 8
  store i64 %82, i64* %5, align 8
  br label %89

83:                                               ; preds = %73
  br label %84

84:                                               ; preds = %83
  %85 = load i64, i64* %10, align 8
  %86 = add nsw i64 %85, 1
  store i64 %86, i64* %10, align 8
  br label %69

87:                                               ; preds = %69
  %88 = load i64, i64* @InvalidOffsetNumber, align 8
  store i64 %88, i64* %5, align 8
  br label %89

89:                                               ; preds = %87, %81, %58, %41
  %90 = load i64, i64* %5, align 8
  ret i64 %90
}

declare dso_local %struct.TYPE_2__* @GinPageGetOpaque(i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @GinPageIsLeaf(i32) #1

declare dso_local i32 @GinPageIsData(i32) #1

declare dso_local i32* @GinDataPageGetPostingItem(i32, i64) #1

declare dso_local i64 @PostingItemGetBlockNumber(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
