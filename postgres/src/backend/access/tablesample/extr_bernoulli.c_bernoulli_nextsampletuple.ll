; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/tablesample/extr_bernoulli.c_bernoulli_nextsampletuple.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/tablesample/extr_bernoulli.c_bernoulli_nextsampletuple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.TYPE_5__ = type { i64, i64, i64 }

@InvalidOffsetNumber = common dso_local global i64 0, align 8
@FirstOffsetNumber = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_4__*, i64, i64)* @bernoulli_nextsampletuple to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @bernoulli_nextsampletuple(%struct.TYPE_4__* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca [3 x i64], align 16
  %10 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %14, %struct.TYPE_5__** %7, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %8, align 8
  %18 = load i64, i64* %8, align 8
  %19 = load i64, i64* @InvalidOffsetNumber, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i64, i64* @FirstOffsetNumber, align 8
  store i64 %22, i64* %8, align 8
  br label %26

23:                                               ; preds = %3
  %24 = load i64, i64* %8, align 8
  %25 = add nsw i64 %24, 1
  store i64 %25, i64* %8, align 8
  br label %26

26:                                               ; preds = %23, %21
  %27 = load i64, i64* %5, align 8
  %28 = getelementptr inbounds [3 x i64], [3 x i64]* %9, i64 0, i64 0
  store i64 %27, i64* %28, align 16
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds [3 x i64], [3 x i64]* %9, i64 0, i64 2
  store i64 %31, i64* %32, align 16
  br label %33

33:                                               ; preds = %51, %26
  %34 = load i64, i64* %8, align 8
  %35 = load i64, i64* %6, align 8
  %36 = icmp sle i64 %34, %35
  br i1 %36, label %37, label %54

37:                                               ; preds = %33
  %38 = load i64, i64* %8, align 8
  %39 = getelementptr inbounds [3 x i64], [3 x i64]* %9, i64 0, i64 1
  store i64 %38, i64* %39, align 8
  %40 = getelementptr inbounds [3 x i64], [3 x i64]* %9, i64 0, i64 0
  %41 = bitcast i64* %40 to i8*
  %42 = call i32 @hash_any(i8* %41, i32 24)
  %43 = call i64 @DatumGetUInt32(i32 %42)
  store i64 %43, i64* %10, align 8
  %44 = load i64, i64* %10, align 8
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = icmp slt i64 %44, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %37
  br label %54

50:                                               ; preds = %37
  br label %51

51:                                               ; preds = %50
  %52 = load i64, i64* %8, align 8
  %53 = add nsw i64 %52, 1
  store i64 %53, i64* %8, align 8
  br label %33

54:                                               ; preds = %49, %33
  %55 = load i64, i64* %8, align 8
  %56 = load i64, i64* %6, align 8
  %57 = icmp sgt i64 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %54
  %59 = load i64, i64* @InvalidOffsetNumber, align 8
  store i64 %59, i64* %8, align 8
  br label %60

60:                                               ; preds = %58, %54
  %61 = load i64, i64* %8, align 8
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  store i64 %61, i64* %63, align 8
  %64 = load i64, i64* %8, align 8
  ret i64 %64
}

declare dso_local i64 @DatumGetUInt32(i32) #1

declare dso_local i32 @hash_any(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
