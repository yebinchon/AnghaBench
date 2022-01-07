; ModuleID = '/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_imath.c_s_qsub.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_imath.c_s_qsub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@MP_DIGIT_BIT = common dso_local global i32 0, align 4
@MP_DIGIT_MAX = common dso_local global i64 0, align 8
@MP_ZPOS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32)* @s_qsub to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s_qsub(%struct.TYPE_6__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @MP_DIGIT_BIT, align 4
  %13 = urem i32 %11, %12
  %14 = shl i32 1, %13
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @MP_DIGIT_BIT, align 4
  %17 = udiv i32 %15, %16
  store i32 %17, i32* %8, align 4
  store i32 0, i32* %10, align 4
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %19 = load i32, i32* %8, align 4
  %20 = add i32 %19, 1
  %21 = call i32 @s_pad(%struct.TYPE_6__* %18, i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %77

24:                                               ; preds = %2
  store i32 0, i32* %9, align 4
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %26 = call i32* @MP_DIGITS(%struct.TYPE_6__* %25)
  store i32* %26, i32** %7, align 8
  br label %27

27:                                               ; preds = %48, %24
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp ult i32 %28, %29
  br i1 %30, label %31, label %53

31:                                               ; preds = %27
  %32 = load i64, i64* @MP_DIGIT_MAX, align 8
  %33 = trunc i64 %32 to i32
  %34 = add nsw i32 %33, 1
  %35 = load i32, i32* %10, align 4
  %36 = sub nsw i32 %34, %35
  %37 = load i32*, i32** %7, align 8
  %38 = load i32, i32* %37, align 4
  %39 = sub nsw i32 %36, %38
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %10, align 4
  %41 = call i32 @LOWER_HALF(i32 %40)
  %42 = load i32*, i32** %7, align 8
  store i32 %41, i32* %42, align 4
  %43 = load i32, i32* %10, align 4
  %44 = call i64 @UPPER_HALF(i32 %43)
  %45 = icmp ne i64 %44, 0
  %46 = zext i1 %45 to i64
  %47 = select i1 %45, i32 0, i32 1
  store i32 %47, i32* %10, align 4
  br label %48

48:                                               ; preds = %31
  %49 = load i32, i32* %9, align 4
  %50 = add i32 %49, 1
  store i32 %50, i32* %9, align 4
  %51 = load i32*, i32** %7, align 8
  %52 = getelementptr inbounds i32, i32* %51, i32 1
  store i32* %52, i32** %7, align 8
  br label %27

53:                                               ; preds = %27
  %54 = load i64, i64* @MP_DIGIT_MAX, align 8
  %55 = trunc i64 %54 to i32
  %56 = add nsw i32 %55, 1
  %57 = load i32, i32* %6, align 4
  %58 = add i32 %56, %57
  %59 = load i32, i32* %10, align 4
  %60 = sub i32 %58, %59
  %61 = load i32*, i32** %7, align 8
  %62 = load i32, i32* %61, align 4
  %63 = sub i32 %60, %62
  store i32 %63, i32* %10, align 4
  %64 = load i32, i32* %10, align 4
  %65 = call i32 @LOWER_HALF(i32 %64)
  %66 = load i32*, i32** %7, align 8
  store i32 %65, i32* %66, align 4
  %67 = load i32, i32* %10, align 4
  %68 = call i64 @UPPER_HALF(i32 %67)
  %69 = icmp ne i64 %68, 0
  %70 = zext i1 %69 to i32
  %71 = call i32 @assert(i32 %70)
  %72 = load i32, i32* @MP_ZPOS, align 4
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 4
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %76 = call i32 @CLAMP(%struct.TYPE_6__* %75)
  store i32 1, i32* %3, align 4
  br label %77

77:                                               ; preds = %53, %23
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local i32 @s_pad(%struct.TYPE_6__*, i32) #1

declare dso_local i32* @MP_DIGITS(%struct.TYPE_6__*) #1

declare dso_local i32 @LOWER_HALF(i32) #1

declare dso_local i64 @UPPER_HALF(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @CLAMP(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
