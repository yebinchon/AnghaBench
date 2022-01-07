; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_pqexpbuffer.c_appendPQExpBufferVA.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_pqexpbuffer.c_appendPQExpBufferVA.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64, i64 }

@INT_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i8*, i32)* @appendPQExpBufferVA to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @appendPQExpBufferVA(%struct.TYPE_5__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = add nsw i64 %16, 16
  %18 = icmp sgt i64 %13, %17
  br i1 %18, label %19, label %73

19:                                               ; preds = %3
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = sub nsw i64 %22, %25
  store i64 %26, i64* %8, align 8
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = add i64 %29, %32
  %34 = load i64, i64* %8, align 8
  %35 = load i8*, i8** %6, align 8
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @vsnprintf(i64 %33, i64 %34, i8* %35, i32 %36)
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %10, align 4
  %39 = icmp slt i32 %38, 0
  %40 = zext i1 %39 to i32
  %41 = call i64 @unlikely(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %19
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %45 = call i32 @markPQExpBufferBroken(%struct.TYPE_5__* %44)
  store i32 1, i32* %4, align 4
  br label %81

46:                                               ; preds = %19
  %47 = load i32, i32* %10, align 4
  %48 = sext i32 %47 to i64
  %49 = load i64, i64* %8, align 8
  %50 = icmp ult i64 %48, %49
  br i1 %50, label %51, label %58

51:                                               ; preds = %46
  %52 = load i32, i32* %10, align 4
  %53 = sext i32 %52 to i64
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = add nsw i64 %56, %53
  store i64 %57, i64* %55, align 8
  store i32 1, i32* %4, align 4
  br label %81

58:                                               ; preds = %46
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* @INT_MAX, align 4
  %61 = sub nsw i32 %60, 1
  %62 = icmp sgt i32 %59, %61
  %63 = zext i1 %62 to i32
  %64 = call i64 @unlikely(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %58
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %68 = call i32 @markPQExpBufferBroken(%struct.TYPE_5__* %67)
  store i32 1, i32* %4, align 4
  br label %81

69:                                               ; preds = %58
  %70 = load i32, i32* %10, align 4
  %71 = add nsw i32 %70, 1
  %72 = sext i32 %71 to i64
  store i64 %72, i64* %9, align 8
  br label %74

73:                                               ; preds = %3
  store i64 32, i64* %9, align 8
  br label %74

74:                                               ; preds = %73, %69
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %76 = load i64, i64* %9, align 8
  %77 = call i32 @enlargePQExpBuffer(%struct.TYPE_5__* %75, i64 %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %74
  store i32 1, i32* %4, align 4
  br label %81

80:                                               ; preds = %74
  store i32 0, i32* %4, align 4
  br label %81

81:                                               ; preds = %80, %79, %66, %51, %43
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare dso_local i32 @vsnprintf(i64, i64, i8*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @markPQExpBufferBroken(%struct.TYPE_5__*) #1

declare dso_local i32 @enlargePQExpBuffer(%struct.TYPE_5__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
