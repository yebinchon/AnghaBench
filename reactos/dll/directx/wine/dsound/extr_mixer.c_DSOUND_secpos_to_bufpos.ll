; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/dsound/extr_mixer.c_DSOUND_secpos_to_bufpos.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/dsound/extr_mixer.c_DSOUND_secpos_to_bufpos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32, %struct.TYPE_8__*, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i64 }

@DSOUND_FREQSHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @DSOUND_secpos_to_bufpos(%struct.TYPE_9__* %0, i64 %1, i64 %2, i64* %3) #0 {
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64* %3, i64** %8, align 8
  %14 = load i64, i64* %6, align 8
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 4
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = sdiv i64 %14, %19
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %9, align 4
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %10, align 4
  %25 = load i64, i64* %6, align 8
  %26 = load i64, i64* %7, align 8
  %27 = icmp slt i64 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %4
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %12, align 4
  br label %36

32:                                               ; preds = %4
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  store i32 %35, i32* %12, align 4
  br label %36

36:                                               ; preds = %32, %28
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* @DSOUND_FREQSHIFT, align 4
  %39 = shl i32 %37, %38
  %40 = load i32, i32* %10, align 4
  %41 = sub nsw i32 %40, 1
  %42 = load i32, i32* %12, align 4
  %43 = sub nsw i32 %41, %42
  %44 = add nsw i32 %39, %43
  store i32 %44, i32* %11, align 4
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* %11, align 4
  %47 = sdiv i32 %46, %45
  store i32 %47, i32* %11, align 4
  %48 = load i64*, i64** %8, align 8
  %49 = icmp ne i64* %48, null
  br i1 %49, label %50, label %80

50:                                               ; preds = %36
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* %10, align 4
  %53 = mul nsw i32 %51, %52
  %54 = load i32, i32* %12, align 4
  %55 = add nsw i32 %53, %54
  store i32 %55, i32* %13, align 4
  %56 = load i32, i32* %13, align 4
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* @DSOUND_FREQSHIFT, align 4
  %59 = shl i32 %57, %58
  %60 = icmp sge i32 %56, %59
  %61 = zext i1 %60 to i32
  %62 = call i32 @assert(i32 %61)
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* @DSOUND_FREQSHIFT, align 4
  %65 = shl i32 %63, %64
  %66 = load i32, i32* %13, align 4
  %67 = sub nsw i32 %66, %65
  store i32 %67, i32* %13, align 4
  %68 = load i32, i32* %13, align 4
  %69 = sext i32 %68 to i64
  %70 = load i64*, i64** %8, align 8
  store i64 %69, i64* %70, align 8
  %71 = load i64*, i64** %8, align 8
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = sext i32 %75 to i64
  %77 = icmp slt i64 %72, %76
  %78 = zext i1 %77 to i32
  %79 = call i32 @assert(i32 %78)
  br label %80

80:                                               ; preds = %50, %36
  %81 = load i32, i32* %11, align 4
  %82 = sext i32 %81 to i64
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 3
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = mul nsw i64 %82, %89
  ret i64 %90
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
