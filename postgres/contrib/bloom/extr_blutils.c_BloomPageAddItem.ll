; ModuleID = '/home/carl/AnghaBench/postgres/contrib/bloom/extr_blutils.c_BloomPageAddItem.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/bloom/extr_blutils.c_BloomPageAddItem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_8__ = type { i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BloomPageAddItem(%struct.TYPE_9__* %0, i64 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load i64, i64* %6, align 8
  %12 = call i32 @PageIsNew(i64 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %3
  %15 = load i64, i64* %6, align 8
  %16 = call i32 @BloomPageIsDeleted(i64 %15)
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  br label %19

19:                                               ; preds = %14, %3
  %20 = phi i1 [ false, %3 ], [ %18, %14 ]
  %21 = zext i1 %20 to i32
  %22 = call i32 @Assert(i32 %21)
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %24 = load i64, i64* %6, align 8
  %25 = call i32 @BloomPageGetFreeSpace(%struct.TYPE_9__* %23, i64 %24)
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %19
  store i32 0, i32* %4, align 4
  br label %78

31:                                               ; preds = %19
  %32 = load i64, i64* %6, align 8
  %33 = call %struct.TYPE_10__* @BloomPageGetOpaque(i64 %32)
  store %struct.TYPE_10__* %33, %struct.TYPE_10__** %9, align 8
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %35 = load i64, i64* %6, align 8
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %38, 1
  %40 = call i32* @BloomPageGetTuple(%struct.TYPE_9__* %34, i64 %35, i64 %39)
  store i32* %40, i32** %8, align 8
  %41 = load i32*, i32** %8, align 8
  %42 = ptrtoint i32* %41 to i64
  %43 = load i32*, i32** %7, align 8
  %44 = ptrtoint i32* %43 to i64
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @memcpy(i64 %42, i64 %44, i32 %47)
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = add nsw i64 %51, 1
  store i64 %52, i64* %50, align 8
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %54 = load i64, i64* %6, align 8
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = add nsw i64 %57, 1
  %59 = call i32* @BloomPageGetTuple(%struct.TYPE_9__* %53, i64 %54, i64 %58)
  %60 = ptrtoint i32* %59 to i64
  store i64 %60, i64* %10, align 8
  %61 = load i64, i64* %10, align 8
  %62 = load i64, i64* %6, align 8
  %63 = sub nsw i64 %61, %62
  %64 = load i64, i64* %6, align 8
  %65 = inttoptr i64 %64 to %struct.TYPE_8__*
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  store i64 %63, i64* %66, align 8
  %67 = load i64, i64* %6, align 8
  %68 = inttoptr i64 %67 to %struct.TYPE_8__*
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* %6, align 8
  %72 = inttoptr i64 %71 to %struct.TYPE_8__*
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = icmp sle i64 %70, %74
  %76 = zext i1 %75 to i32
  %77 = call i32 @Assert(i32 %76)
  store i32 1, i32* %4, align 4
  br label %78

78:                                               ; preds = %31, %30
  %79 = load i32, i32* %4, align 4
  ret i32 %79
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @PageIsNew(i64) #1

declare dso_local i32 @BloomPageIsDeleted(i64) #1

declare dso_local i32 @BloomPageGetFreeSpace(%struct.TYPE_9__*, i64) #1

declare dso_local %struct.TYPE_10__* @BloomPageGetOpaque(i64) #1

declare dso_local i32* @BloomPageGetTuple(%struct.TYPE_9__*, i64, i64) #1

declare dso_local i32 @memcpy(i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
