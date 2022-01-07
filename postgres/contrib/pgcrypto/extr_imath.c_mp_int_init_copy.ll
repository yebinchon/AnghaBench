; ModuleID = '/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_imath.c_mp_int_init_copy.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_imath.c_mp_int_init_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }

@default_precision = common dso_local global i32 0, align 4
@MP_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mp_int_init_copy(%struct.TYPE_8__* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %5, align 8
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %10 = icmp ne %struct.TYPE_8__* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %13 = icmp ne %struct.TYPE_8__* %12, null
  br label %14

14:                                               ; preds = %11, %2
  %15 = phi i1 [ false, %2 ], [ %13, %11 ]
  %16 = zext i1 %15 to i32
  %17 = call i32 @assert(i32 %16)
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %19 = call i32 @MP_USED(%struct.TYPE_8__* %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %22, label %25

22:                                               ; preds = %14
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %24 = call i32 @mp_int_init(%struct.TYPE_8__* %23)
  br label %38

25:                                               ; preds = %14
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @default_precision, align 4
  %28 = call i32 @MAX(i32 %26, i32 %27)
  store i32 %28, i32* %7, align 4
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %30 = load i32, i32* %7, align 4
  %31 = call i64 @mp_int_init_size(%struct.TYPE_8__* %29, i32 %30)
  store i64 %31, i64* %8, align 8
  %32 = load i64, i64* %8, align 8
  %33 = load i64, i64* @MP_OK, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %25
  %36 = load i64, i64* %8, align 8
  store i64 %36, i64* %3, align 8
  br label %54

37:                                               ; preds = %25
  br label %38

38:                                               ; preds = %37, %22
  %39 = load i32, i32* %6, align 4
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %48 = call i32 @MP_DIGITS(%struct.TYPE_8__* %47)
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %50 = call i32 @MP_DIGITS(%struct.TYPE_8__* %49)
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @COPY(i32 %48, i32 %50, i32 %51)
  %53 = load i64, i64* @MP_OK, align 8
  store i64 %53, i64* %3, align 8
  br label %54

54:                                               ; preds = %38, %35
  %55 = load i64, i64* %3, align 8
  ret i64 %55
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @MP_USED(%struct.TYPE_8__*) #1

declare dso_local i32 @mp_int_init(%struct.TYPE_8__*) #1

declare dso_local i32 @MAX(i32, i32) #1

declare dso_local i64 @mp_int_init_size(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @COPY(i32, i32, i32) #1

declare dso_local i32 @MP_DIGITS(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
