; ModuleID = '/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_imath.c_mp_int_expt_full.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_imath.c_mp_int_expt_full.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32* }

@MP_NEG = common dso_local global i64 0, align 8
@MP_RANGE = common dso_local global i32 0, align 4
@MP_DIGIT_BIT = common dso_local global i32 0, align 4
@MP_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mp_int_expt_full(%struct.TYPE_11__* %0, %struct.TYPE_11__* %1, %struct.TYPE_11__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %6, align 8
  store %struct.TYPE_11__* %2, %struct.TYPE_11__** %7, align 8
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %12 = icmp ne %struct.TYPE_11__* %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %3
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %15 = icmp ne %struct.TYPE_11__* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %18 = icmp ne %struct.TYPE_11__* %17, null
  br label %19

19:                                               ; preds = %16, %13, %3
  %20 = phi i1 [ false, %13 ], [ false, %3 ], [ %18, %16 ]
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %24 = call i64 @MP_SIGN(%struct.TYPE_11__* %23)
  %25 = load i64, i64* @MP_NEG, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %19
  %28 = load i32, i32* @MP_RANGE, align 4
  store i32 %28, i32* %4, align 4
  br label %91

29:                                               ; preds = %19
  %30 = call i32 @DECLARE_TEMP(i32 1)
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %32 = call i32 @TEMP(i32 0)
  %33 = call i32 @mp_int_copy(%struct.TYPE_11__* %31, i32 %32)
  %34 = call i32 @REQUIRE(i32 %33)
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %36 = call i32 @mp_int_set_value(%struct.TYPE_11__* %35, i32 1)
  store i32 0, i32* %8, align 4
  br label %37

37:                                               ; preds = %85, %29
  %38 = load i32, i32* %8, align 4
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %40 = call i32 @MP_USED(%struct.TYPE_11__* %39)
  %41 = icmp ult i32 %38, %40
  br i1 %41, label %42, label %88

42:                                               ; preds = %37
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %8, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %50

50:                                               ; preds = %81, %42
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* @MP_DIGIT_BIT, align 4
  %53 = icmp ult i32 %51, %52
  br i1 %53, label %54, label %84

54:                                               ; preds = %50
  %55 = load i32, i32* %9, align 4
  %56 = and i32 %55, 1
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %54
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %60 = call i32 @TEMP(i32 0)
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %62 = call i32 @mp_int_mul(%struct.TYPE_11__* %59, i32 %60, %struct.TYPE_11__* %61)
  %63 = call i32 @REQUIRE(i32 %62)
  br label %64

64:                                               ; preds = %58, %54
  %65 = load i32, i32* %9, align 4
  %66 = ashr i32 %65, 1
  store i32 %66, i32* %9, align 4
  %67 = load i32, i32* %9, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %76

69:                                               ; preds = %64
  %70 = load i32, i32* %8, align 4
  %71 = add i32 %70, 1
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %73 = call i32 @MP_USED(%struct.TYPE_11__* %72)
  %74 = icmp eq i32 %71, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %69
  br label %84

76:                                               ; preds = %69, %64
  %77 = call i32 @TEMP(i32 0)
  %78 = call i32 @TEMP(i32 0)
  %79 = call i32 @mp_int_sqr(i32 %77, i32 %78)
  %80 = call i32 @REQUIRE(i32 %79)
  br label %81

81:                                               ; preds = %76
  %82 = load i32, i32* %10, align 4
  %83 = add i32 %82, 1
  store i32 %83, i32* %10, align 4
  br label %50

84:                                               ; preds = %75, %50
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %8, align 4
  %87 = add i32 %86, 1
  store i32 %87, i32* %8, align 4
  br label %37

88:                                               ; preds = %37
  %89 = call i32 (...) @CLEANUP_TEMP()
  %90 = load i32, i32* @MP_OK, align 4
  store i32 %90, i32* %4, align 4
  br label %91

91:                                               ; preds = %88, %27
  %92 = load i32, i32* %4, align 4
  ret i32 %92
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @MP_SIGN(%struct.TYPE_11__*) #1

declare dso_local i32 @DECLARE_TEMP(i32) #1

declare dso_local i32 @REQUIRE(i32) #1

declare dso_local i32 @mp_int_copy(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @TEMP(i32) #1

declare dso_local i32 @mp_int_set_value(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @MP_USED(%struct.TYPE_11__*) #1

declare dso_local i32 @mp_int_mul(%struct.TYPE_11__*, i32, %struct.TYPE_11__*) #1

declare dso_local i32 @mp_int_sqr(i32, i32) #1

declare dso_local i32 @CLEANUP_TEMP(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
