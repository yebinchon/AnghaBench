; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/spgist/extr_spgproc.c_spg_key_orderbys_distances.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/spgist/extr_spgproc.c_spg_key_orderbys_distances.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double* @spg_key_orderbys_distances(i32 %0, i32 %1, %struct.TYPE_3__* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca double*, align 8
  %11 = alloca double*, align 8
  %12 = alloca i32*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = sext i32 %13 to i64
  %15 = mul i64 %14, 8
  %16 = trunc i64 %15 to i32
  %17 = call i64 @palloc(i32 %16)
  %18 = inttoptr i64 %17 to double*
  store double* %18, double** %10, align 8
  %19 = load double*, double** %10, align 8
  store double* %19, double** %11, align 8
  store i32 0, i32* %9, align 4
  br label %20

20:                                               ; preds = %44, %4
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %51

24:                                               ; preds = %20
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32* @DatumGetPointP(i32 %27)
  store i32* %28, i32** %12, align 8
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %24
  %32 = load i32*, i32** %12, align 8
  %33 = load i32, i32* %5, align 4
  %34 = call i32* @DatumGetPointP(i32 %33)
  %35 = call double @point_point_distance(i32* %32, i32* %34)
  br label %41

36:                                               ; preds = %24
  %37 = load i32*, i32** %12, align 8
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @DatumGetBoxP(i32 %38)
  %40 = call double @point_box_distance(i32* %37, i32 %39)
  br label %41

41:                                               ; preds = %36, %31
  %42 = phi double [ %35, %31 ], [ %40, %36 ]
  %43 = load double*, double** %11, align 8
  store double %42, double* %43, align 8
  br label %44

44:                                               ; preds = %41
  %45 = load i32, i32* %9, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %9, align 4
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 1
  store %struct.TYPE_3__* %48, %struct.TYPE_3__** %7, align 8
  %49 = load double*, double** %11, align 8
  %50 = getelementptr inbounds double, double* %49, i32 1
  store double* %50, double** %11, align 8
  br label %20

51:                                               ; preds = %20
  %52 = load double*, double** %10, align 8
  ret double* %52
}

declare dso_local i64 @palloc(i32) #1

declare dso_local i32* @DatumGetPointP(i32) #1

declare dso_local double @point_point_distance(i32*, i32*) #1

declare dso_local double @point_box_distance(i32*, i32) #1

declare dso_local i32 @DatumGetBoxP(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
