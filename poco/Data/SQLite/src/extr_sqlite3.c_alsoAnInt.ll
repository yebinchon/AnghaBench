; ModuleID = '/home/carl/AnghaBench/poco/Data/SQLite/src/extr_sqlite3.c_alsoAnInt.c'
source_filename = "/home/carl/AnghaBench/poco/Data/SQLite/src/extr_sqlite3.c_alsoAnInt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, double, double*)* @alsoAnInt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alsoAnInt(%struct.TYPE_3__* %0, double %1, double* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca double, align 8
  %7 = alloca double*, align 8
  %8 = alloca double, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store double %1, double* %6, align 8
  store double* %2, double** %7, align 8
  %9 = load double, double* %6, align 8
  store double %9, double* %8, align 8
  %10 = load double, double* %6, align 8
  %11 = load double, double* %8, align 8
  %12 = call i64 @sqlite3RealSameAsInt(double %10, double %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load double, double* %8, align 8
  %16 = load double*, double** %7, align 8
  store double %15, double* %16, align 8
  store i32 1, i32* %4, align 4
  br label %31

17:                                               ; preds = %3
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load double*, double** %7, align 8
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @sqlite3Atoi64(i32 %20, double* %21, i32 %24, i32 %27)
  %29 = icmp eq i64 0, %28
  %30 = zext i1 %29 to i32
  store i32 %30, i32* %4, align 4
  br label %31

31:                                               ; preds = %17, %14
  %32 = load i32, i32* %4, align 4
  ret i32 %32
}

declare dso_local i64 @sqlite3RealSameAsInt(double, double) #1

declare dso_local i64 @sqlite3Atoi64(i32, double*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
