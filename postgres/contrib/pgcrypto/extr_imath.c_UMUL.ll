; ModuleID = '/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_imath.c_UMUL.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_imath.c_UMUL.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, %struct.TYPE_8__*, %struct.TYPE_8__*)* @UMUL to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @UMUL(%struct.TYPE_8__* %0, %struct.TYPE_8__* %1, %struct.TYPE_8__* %2) #0 {
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %5, align 8
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %6, align 8
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %11 = call i64 @MP_USED(%struct.TYPE_8__* %10)
  store i64 %11, i64* %7, align 8
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %13 = call i64 @MP_USED(%struct.TYPE_8__* %12)
  store i64 %13, i64* %8, align 8
  %14 = load i64, i64* %7, align 8
  %15 = load i64, i64* %8, align 8
  %16 = add nsw i64 %14, %15
  store i64 %16, i64* %9, align 8
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %18 = call i32 @MP_DIGITS(%struct.TYPE_8__* %17)
  %19 = load i64, i64* %9, align 8
  %20 = call i32 @ZERO(i32 %18, i64 %19)
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %22 = call i32 @MP_DIGITS(%struct.TYPE_8__* %21)
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %24 = call i32 @MP_DIGITS(%struct.TYPE_8__* %23)
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %26 = call i32 @MP_DIGITS(%struct.TYPE_8__* %25)
  %27 = load i64, i64* %7, align 8
  %28 = load i64, i64* %8, align 8
  %29 = call i32 @s_kmul(i32 %22, i32 %24, i32 %26, i64 %27, i64 %28)
  %30 = load i64, i64* %9, align 8
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  store i64 %30, i64* %32, align 8
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %34 = call i32 @CLAMP(%struct.TYPE_8__* %33)
  ret void
}

declare dso_local i64 @MP_USED(%struct.TYPE_8__*) #1

declare dso_local i32 @ZERO(i32, i64) #1

declare dso_local i32 @MP_DIGITS(%struct.TYPE_8__*) #1

declare dso_local i32 @s_kmul(i32, i32, i32, i64, i64) #1

declare dso_local i32 @CLAMP(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
