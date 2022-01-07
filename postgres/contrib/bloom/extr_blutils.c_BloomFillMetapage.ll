; ModuleID = '/home/carl/AnghaBench/postgres/contrib/bloom/extr_blutils.c_BloomFillMetapage.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/bloom/extr_blutils.c_BloomFillMetapage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i64, i64 }

@BLOOM_META = common dso_local global i32 0, align 4
@BLOOM_MAGICK_NUMBER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @BloomFillMetapage(%struct.TYPE_7__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to i32*
  store i32* %10, i32** %5, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %2
  %14 = call i32* (...) @makeDefaultBloomOptions()
  store i32* %14, i32** %5, align 8
  br label %15

15:                                               ; preds = %13, %2
  %16 = load i64, i64* %4, align 8
  %17 = load i32, i32* @BLOOM_META, align 4
  %18 = call i32 @BloomInitPage(i64 %16, i32 %17)
  %19 = load i64, i64* %4, align 8
  %20 = call %struct.TYPE_9__* @BloomPageGetMeta(i64 %19)
  store %struct.TYPE_9__* %20, %struct.TYPE_9__** %6, align 8
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %22 = call i32 @memset(%struct.TYPE_9__* %21, i32 0, i32 8)
  %23 = load i32, i32* @BLOOM_MAGICK_NUMBER, align 4
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  %26 = load i32*, i32** %5, align 8
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  %30 = load i64, i64* %4, align 8
  %31 = inttoptr i64 %30 to %struct.TYPE_8__*
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = add i64 %33, 8
  store i64 %34, i64* %32, align 8
  %35 = load i64, i64* %4, align 8
  %36 = inttoptr i64 %35 to %struct.TYPE_8__*
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* %4, align 8
  %40 = inttoptr i64 %39 to %struct.TYPE_8__*
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp sle i64 %38, %42
  %44 = zext i1 %43 to i32
  %45 = call i32 @Assert(i32 %44)
  ret void
}

declare dso_local i32* @makeDefaultBloomOptions(...) #1

declare dso_local i32 @BloomInitPage(i64, i32) #1

declare dso_local %struct.TYPE_9__* @BloomPageGetMeta(i64) #1

declare dso_local i32 @memset(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @Assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
