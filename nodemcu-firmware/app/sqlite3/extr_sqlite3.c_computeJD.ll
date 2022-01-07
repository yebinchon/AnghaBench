; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/sqlite3/extr_sqlite3.c_computeJD.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/sqlite3/extr_sqlite3.c_computeJD.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*)* @computeJD to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @computeJD(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %130

15:                                               ; preds = %1
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 10
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %15
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %3, align 4
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %4, align 4
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %5, align 4
  br label %31

30:                                               ; preds = %15
  store i32 2000, i32* %3, align 4
  store i32 1, i32* %4, align 4
  store i32 1, i32* %5, align 4
  br label %31

31:                                               ; preds = %30, %20
  %32 = load i32, i32* %3, align 4
  %33 = icmp slt i32 %32, -4713
  br i1 %33, label %42, label %34

34:                                               ; preds = %31
  %35 = load i32, i32* %3, align 4
  %36 = icmp sgt i32 %35, 9999
  br i1 %36, label %42, label %37

37:                                               ; preds = %34
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 12
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %37, %34, %31
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %44 = call i32 @datetimeError(%struct.TYPE_4__* %43)
  br label %130

45:                                               ; preds = %37
  %46 = load i32, i32* %4, align 4
  %47 = icmp sle i32 %46, 2
  br i1 %47, label %48, label %53

48:                                               ; preds = %45
  %49 = load i32, i32* %3, align 4
  %50 = add nsw i32 %49, -1
  store i32 %50, i32* %3, align 4
  %51 = load i32, i32* %4, align 4
  %52 = add nsw i32 %51, 12
  store i32 %52, i32* %4, align 4
  br label %53

53:                                               ; preds = %48, %45
  %54 = load i32, i32* %3, align 4
  %55 = sdiv i32 %54, 100
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* %6, align 4
  %57 = sub nsw i32 2, %56
  %58 = load i32, i32* %6, align 4
  %59 = sdiv i32 %58, 4
  %60 = add nsw i32 %57, %59
  store i32 %60, i32* %7, align 4
  %61 = load i32, i32* %3, align 4
  %62 = add nsw i32 %61, 4716
  %63 = mul nsw i32 36525, %62
  %64 = sdiv i32 %63, 100
  store i32 %64, i32* %8, align 4
  %65 = load i32, i32* %4, align 4
  %66 = add nsw i32 %65, 1
  %67 = mul nsw i32 306001, %66
  %68 = sdiv i32 %67, 10000
  store i32 %68, i32* %9, align 4
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* %9, align 4
  %71 = add nsw i32 %69, %70
  %72 = load i32, i32* %5, align 4
  %73 = add nsw i32 %71, %72
  %74 = load i32, i32* %7, align 4
  %75 = add nsw i32 %73, %74
  %76 = sitofp i32 %75 to double
  %77 = fsub double %76, 1.524500e+03
  %78 = fmul double %77, 8.640000e+07
  %79 = fptosi double %78 to i64
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 11
  store i64 %79, i64* %81, align 8
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  store i32 1, i32* %83, align 8
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 9
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %130

88:                                               ; preds = %53
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 4
  %91 = load i32, i32* %90, align 8
  %92 = mul nsw i32 %91, 3600000
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 5
  %95 = load i32, i32* %94, align 4
  %96 = mul nsw i32 %95, 60000
  %97 = add nsw i32 %92, %96
  %98 = sext i32 %97 to i64
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 6
  %101 = load i32, i32* %100, align 8
  %102 = mul nsw i32 %101, 1000
  %103 = sext i32 %102 to i64
  %104 = add nsw i64 %98, %103
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 11
  %107 = load i64, i64* %106, align 8
  %108 = add nsw i64 %107, %104
  store i64 %108, i64* %106, align 8
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 8
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %129

113:                                              ; preds = %88
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 7
  %116 = load i32, i32* %115, align 4
  %117 = mul nsw i32 %116, 60000
  %118 = sext i32 %117 to i64
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 11
  %121 = load i64, i64* %120, align 8
  %122 = sub nsw i64 %121, %118
  store i64 %122, i64* %120, align 8
  %123 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 10
  store i64 0, i64* %124, align 8
  %125 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 9
  store i64 0, i64* %126, align 8
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 8
  store i64 0, i64* %128, align 8
  br label %129

129:                                              ; preds = %113, %88
  br label %130

130:                                              ; preds = %14, %42, %129, %53
  ret void
}

declare dso_local i32 @datetimeError(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
