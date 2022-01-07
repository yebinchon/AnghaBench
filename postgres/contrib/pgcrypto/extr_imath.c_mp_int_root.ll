; ModuleID = '/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_imath.c_mp_int_root.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_imath.c_mp_int_root.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i8* }

@MP_NEG = common dso_local global i64 0, align 8
@MP_UNDEF = common dso_local global i32 0, align 4
@MP_ZPOS = common dso_local global i8* null, align 8
@MP_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mp_int_root(%struct.TYPE_24__* %0, i32 %1, %struct.TYPE_24__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_24__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_24__*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_24__* %2, %struct.TYPE_24__** %7, align 8
  %9 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %10 = icmp ne %struct.TYPE_24__* %9, null
  br i1 %10, label %11, label %17

11:                                               ; preds = %3
  %12 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %13 = icmp ne %struct.TYPE_24__* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %11
  %15 = load i32, i32* %6, align 4
  %16 = icmp sgt i32 %15, 0
  br label %17

17:                                               ; preds = %14, %11, %3
  %18 = phi i1 [ false, %11 ], [ false, %3 ], [ %16, %14 ]
  %19 = zext i1 %18 to i32
  %20 = call i32 @assert(i32 %19)
  %21 = load i32, i32* %6, align 4
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %23, label %27

23:                                               ; preds = %17
  %24 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %25 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %26 = call i32 @mp_int_copy(%struct.TYPE_24__* %24, %struct.TYPE_24__* %25)
  store i32 %26, i32* %4, align 4
  br label %122

27:                                               ; preds = %17
  store i32 0, i32* %8, align 4
  %28 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %29 = call i64 @MP_SIGN(%struct.TYPE_24__* %28)
  %30 = load i64, i64* @MP_NEG, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %40

32:                                               ; preds = %27
  %33 = load i32, i32* %6, align 4
  %34 = srem i32 %33, 2
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %32
  %37 = load i32, i32* @MP_UNDEF, align 4
  store i32 %37, i32* %4, align 4
  br label %122

38:                                               ; preds = %32
  store i32 1, i32* %8, align 4
  br label %39

39:                                               ; preds = %38
  br label %40

40:                                               ; preds = %39, %27
  %41 = call i32 @DECLARE_TEMP(i32 5)
  %42 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %43 = call %struct.TYPE_24__* @TEMP(i32 0)
  %44 = call i32 @mp_int_copy(%struct.TYPE_24__* %42, %struct.TYPE_24__* %43)
  %45 = call i32 @REQUIRE(i32 %44)
  %46 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %47 = call %struct.TYPE_24__* @TEMP(i32 1)
  %48 = call i32 @mp_int_copy(%struct.TYPE_24__* %46, %struct.TYPE_24__* %47)
  %49 = call i32 @REQUIRE(i32 %48)
  %50 = load i8*, i8** @MP_ZPOS, align 8
  %51 = call %struct.TYPE_24__* @TEMP(i32 0)
  %52 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %51, i32 0, i32 0
  store i8* %50, i8** %52, align 8
  %53 = load i8*, i8** @MP_ZPOS, align 8
  %54 = call %struct.TYPE_24__* @TEMP(i32 1)
  %55 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %54, i32 0, i32 0
  store i8* %53, i8** %55, align 8
  br label %56

56:                                               ; preds = %103, %40
  %57 = call %struct.TYPE_24__* @TEMP(i32 1)
  %58 = load i32, i32* %6, align 4
  %59 = call %struct.TYPE_24__* @TEMP(i32 2)
  %60 = call i32 @mp_int_expt(%struct.TYPE_24__* %57, i32 %58, %struct.TYPE_24__* %59)
  %61 = call i32 @REQUIRE(i32 %60)
  %62 = call %struct.TYPE_24__* @TEMP(i32 2)
  %63 = call %struct.TYPE_24__* @TEMP(i32 0)
  %64 = call i64 @mp_int_compare_unsigned(%struct.TYPE_24__* %62, %struct.TYPE_24__* %63)
  %65 = icmp sle i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %56
  br label %108

67:                                               ; preds = %56
  %68 = call %struct.TYPE_24__* @TEMP(i32 2)
  %69 = call %struct.TYPE_24__* @TEMP(i32 0)
  %70 = call %struct.TYPE_24__* @TEMP(i32 2)
  %71 = call i32 @mp_int_sub(%struct.TYPE_24__* %68, %struct.TYPE_24__* %69, %struct.TYPE_24__* %70)
  %72 = call i32 @REQUIRE(i32 %71)
  %73 = call %struct.TYPE_24__* @TEMP(i32 1)
  %74 = load i32, i32* %6, align 4
  %75 = sub nsw i32 %74, 1
  %76 = call %struct.TYPE_24__* @TEMP(i32 3)
  %77 = call i32 @mp_int_expt(%struct.TYPE_24__* %73, i32 %75, %struct.TYPE_24__* %76)
  %78 = call i32 @REQUIRE(i32 %77)
  %79 = call %struct.TYPE_24__* @TEMP(i32 3)
  %80 = load i32, i32* %6, align 4
  %81 = call %struct.TYPE_24__* @TEMP(i32 3)
  %82 = call i32 @mp_int_mul_value(%struct.TYPE_24__* %79, i32 %80, %struct.TYPE_24__* %81)
  %83 = call i32 @REQUIRE(i32 %82)
  %84 = call %struct.TYPE_24__* @TEMP(i32 2)
  %85 = call %struct.TYPE_24__* @TEMP(i32 3)
  %86 = call %struct.TYPE_24__* @TEMP(i32 4)
  %87 = call i32 @mp_int_div(%struct.TYPE_24__* %84, %struct.TYPE_24__* %85, %struct.TYPE_24__* %86, i32* null)
  %88 = call i32 @REQUIRE(i32 %87)
  %89 = call %struct.TYPE_24__* @TEMP(i32 1)
  %90 = call %struct.TYPE_24__* @TEMP(i32 4)
  %91 = call %struct.TYPE_24__* @TEMP(i32 4)
  %92 = call i32 @mp_int_sub(%struct.TYPE_24__* %89, %struct.TYPE_24__* %90, %struct.TYPE_24__* %91)
  %93 = call i32 @REQUIRE(i32 %92)
  %94 = call %struct.TYPE_24__* @TEMP(i32 1)
  %95 = call %struct.TYPE_24__* @TEMP(i32 4)
  %96 = call i64 @mp_int_compare_unsigned(%struct.TYPE_24__* %94, %struct.TYPE_24__* %95)
  %97 = icmp eq i64 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %67
  %99 = call %struct.TYPE_24__* @TEMP(i32 4)
  %100 = call %struct.TYPE_24__* @TEMP(i32 4)
  %101 = call i32 @mp_int_sub_value(%struct.TYPE_24__* %99, i32 1, %struct.TYPE_24__* %100)
  %102 = call i32 @REQUIRE(i32 %101)
  br label %103

103:                                              ; preds = %98, %67
  %104 = call %struct.TYPE_24__* @TEMP(i32 4)
  %105 = call %struct.TYPE_24__* @TEMP(i32 1)
  %106 = call i32 @mp_int_copy(%struct.TYPE_24__* %104, %struct.TYPE_24__* %105)
  %107 = call i32 @REQUIRE(i32 %106)
  br label %56

108:                                              ; preds = %66
  %109 = call %struct.TYPE_24__* @TEMP(i32 1)
  %110 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %111 = call i32 @mp_int_copy(%struct.TYPE_24__* %109, %struct.TYPE_24__* %110)
  %112 = call i32 @REQUIRE(i32 %111)
  %113 = load i32, i32* %8, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %108
  %116 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %117 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %118 = call i32 @mp_int_neg(%struct.TYPE_24__* %116, %struct.TYPE_24__* %117)
  br label %119

119:                                              ; preds = %115, %108
  %120 = call i32 (...) @CLEANUP_TEMP()
  %121 = load i32, i32* @MP_OK, align 4
  store i32 %121, i32* %4, align 4
  br label %122

122:                                              ; preds = %119, %36, %23
  %123 = load i32, i32* %4, align 4
  ret i32 %123
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @mp_int_copy(%struct.TYPE_24__*, %struct.TYPE_24__*) #1

declare dso_local i64 @MP_SIGN(%struct.TYPE_24__*) #1

declare dso_local i32 @DECLARE_TEMP(i32) #1

declare dso_local i32 @REQUIRE(i32) #1

declare dso_local %struct.TYPE_24__* @TEMP(i32) #1

declare dso_local i32 @mp_int_expt(%struct.TYPE_24__*, i32, %struct.TYPE_24__*) #1

declare dso_local i64 @mp_int_compare_unsigned(%struct.TYPE_24__*, %struct.TYPE_24__*) #1

declare dso_local i32 @mp_int_sub(%struct.TYPE_24__*, %struct.TYPE_24__*, %struct.TYPE_24__*) #1

declare dso_local i32 @mp_int_mul_value(%struct.TYPE_24__*, i32, %struct.TYPE_24__*) #1

declare dso_local i32 @mp_int_div(%struct.TYPE_24__*, %struct.TYPE_24__*, %struct.TYPE_24__*, i32*) #1

declare dso_local i32 @mp_int_sub_value(%struct.TYPE_24__*, i32, %struct.TYPE_24__*) #1

declare dso_local i32 @mp_int_neg(%struct.TYPE_24__*, %struct.TYPE_24__*) #1

declare dso_local i32 @CLEANUP_TEMP(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
