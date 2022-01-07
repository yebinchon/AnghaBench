; ModuleID = '/home/carl/AnghaBench/reactos/dll/cpl/timedate/extr_clock.c_RotatePoint.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/cpl/timedate/extr_clock.c_RotatePoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32 }

@TWOPI = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i64, i64)* @RotatePoint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @RotatePoint(%struct.TYPE_3__* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_3__, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 0, i64* %8, align 8
  br label %10

10:                                               ; preds = %73, %3
  %11 = load i64, i64* %8, align 8
  %12 = load i64, i64* %6, align 8
  %13 = icmp ult i64 %11, %12
  br i1 %13, label %14, label %76

14:                                               ; preds = %10
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %16 = load i64, i64* %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @TWOPI, align 8
  %21 = load i64, i64* %7, align 8
  %22 = mul i64 %20, %21
  %23 = udiv i64 %22, 360
  %24 = call i32 @cos(i64 %23)
  %25 = sext i32 %24 to i64
  %26 = mul i64 %19, %25
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %28 = load i64, i64* %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load i64, i64* @TWOPI, align 8
  %33 = load i64, i64* %7, align 8
  %34 = mul i64 %32, %33
  %35 = udiv i64 %34, 360
  %36 = call i32 @sin(i64 %35)
  %37 = mul nsw i32 %31, %36
  %38 = sext i32 %37 to i64
  %39 = add i64 %26, %38
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  store i64 %39, i64* %40, align 8
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %42 = load i64, i64* %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load i64, i64* @TWOPI, align 8
  %47 = load i64, i64* %7, align 8
  %48 = mul i64 %46, %47
  %49 = udiv i64 %48, 360
  %50 = call i32 @cos(i64 %49)
  %51 = mul nsw i32 %45, %50
  %52 = sext i32 %51 to i64
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %54 = load i64, i64* %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @TWOPI, align 8
  %59 = load i64, i64* %7, align 8
  %60 = mul i64 %58, %59
  %61 = udiv i64 %60, 360
  %62 = call i32 @sin(i64 %61)
  %63 = sext i32 %62 to i64
  %64 = mul i64 %57, %63
  %65 = sub i64 %52, %64
  %66 = trunc i64 %65 to i32
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 1
  store i32 %66, i32* %67, align 8
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %69 = load i64, i64* %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i64 %69
  %71 = bitcast %struct.TYPE_3__* %70 to i8*
  %72 = bitcast %struct.TYPE_3__* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %71, i8* align 8 %72, i64 16, i1 false)
  br label %73

73:                                               ; preds = %14
  %74 = load i64, i64* %8, align 8
  %75 = add i64 %74, 1
  store i64 %75, i64* %8, align 8
  br label %10

76:                                               ; preds = %10
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

declare dso_local i32 @cos(i64) #1

declare dso_local i32 @sin(i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
