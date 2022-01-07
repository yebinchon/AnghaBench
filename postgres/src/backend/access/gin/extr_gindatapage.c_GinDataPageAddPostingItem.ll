; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/gin/extr_gindatapage.c_GinDataPageAddPostingItem.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/gin/extr_gindatapage.c_GinDataPageAddPostingItem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@InvalidBlockNumber = common dso_local global i64 0, align 8
@InvalidOffsetNumber = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @GinDataPageAddPostingItem(i32 %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call %struct.TYPE_2__* @GinPageGetOpaque(i32 %9)
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %7, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = call i64 @PostingItemGetBlockNumber(i32* %13)
  %15 = load i64, i64* @InvalidBlockNumber, align 8
  %16 = icmp ne i64 %14, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 @Assert(i32 %17)
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @GinPageIsLeaf(i32 %19)
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = call i32 @Assert(i32 %23)
  %25 = load i64, i64* %6, align 8
  %26 = load i64, i64* @InvalidOffsetNumber, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %3
  %29 = load i32, i32* %4, align 4
  %30 = load i64, i64* %7, align 8
  %31 = add nsw i64 %30, 1
  %32 = call i64 @GinDataPageGetPostingItem(i32 %29, i64 %31)
  %33 = inttoptr i64 %32 to i8*
  store i8* %33, i8** %8, align 8
  br label %54

34:                                               ; preds = %3
  %35 = load i32, i32* %4, align 4
  %36 = load i64, i64* %6, align 8
  %37 = call i64 @GinDataPageGetPostingItem(i32 %35, i64 %36)
  %38 = inttoptr i64 %37 to i8*
  store i8* %38, i8** %8, align 8
  %39 = load i64, i64* %6, align 8
  %40 = load i64, i64* %7, align 8
  %41 = add nsw i64 %40, 1
  %42 = icmp ne i64 %39, %41
  br i1 %42, label %43, label %53

43:                                               ; preds = %34
  %44 = load i8*, i8** %8, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 4
  %46 = load i8*, i8** %8, align 8
  %47 = load i64, i64* %7, align 8
  %48 = load i64, i64* %6, align 8
  %49 = sub nsw i64 %47, %48
  %50 = add nsw i64 %49, 1
  %51 = mul i64 %50, 4
  %52 = call i32 @memmove(i8* %45, i8* %46, i64 %51)
  br label %53

53:                                               ; preds = %43, %34
  br label %54

54:                                               ; preds = %53, %28
  %55 = load i8*, i8** %8, align 8
  %56 = load i32*, i32** %5, align 8
  %57 = call i32 @memcpy(i8* %55, i32* %56, i32 4)
  %58 = load i64, i64* %7, align 8
  %59 = add nsw i64 %58, 1
  store i64 %59, i64* %7, align 8
  %60 = load i64, i64* %7, align 8
  %61 = load i32, i32* %4, align 4
  %62 = call %struct.TYPE_2__* @GinPageGetOpaque(i32 %61)
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  store i64 %60, i64* %63, align 8
  %64 = load i32, i32* %4, align 4
  %65 = load i64, i64* %7, align 8
  %66 = mul i64 %65, 4
  %67 = call i32 @GinDataPageSetDataSize(i32 %64, i64 %66)
  ret void
}

declare dso_local %struct.TYPE_2__* @GinPageGetOpaque(i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i64 @PostingItemGetBlockNumber(i32*) #1

declare dso_local i32 @GinPageIsLeaf(i32) #1

declare dso_local i64 @GinDataPageGetPostingItem(i32, i64) #1

declare dso_local i32 @memmove(i8*, i8*, i64) #1

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

declare dso_local i32 @GinDataPageSetDataSize(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
