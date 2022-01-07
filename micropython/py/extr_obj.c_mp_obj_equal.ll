; ModuleID = '/home/carl/AnghaBench/micropython/py/extr_obj.c_mp_obj_equal.c'
source_filename = "/home/carl/AnghaBench/micropython/py/extr_obj.c_mp_obj_equal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 (i32, i64, i64)* }

@mp_const_none = common dso_local global i64 0, align 8
@MP_BINARY_OP_EQUAL = common dso_local global i32 0, align 4
@MP_OBJ_NULL = common dso_local global i64 0, align 8
@mp_const_true = common dso_local global i64 0, align 8
@BytesWarning = common dso_local global i32 0, align 4
@mp_type_bytes = common dso_local global i32 0, align 4
@mp_type_complex = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mp_obj_equal(i64 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load i64, i64* %4, align 8
  %10 = load i64, i64* %5, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %82

13:                                               ; preds = %2
  %14 = load i64, i64* %4, align 8
  %15 = load i64, i64* @mp_const_none, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %21, label %17

17:                                               ; preds = %13
  %18 = load i64, i64* %5, align 8
  %19 = load i64, i64* @mp_const_none, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %17, %13
  store i32 0, i32* %3, align 4
  br label %82

22:                                               ; preds = %17
  %23 = load i64, i64* %4, align 8
  %24 = call i64 @mp_obj_is_small_int(i64 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %22
  %27 = load i64, i64* %5, align 8
  %28 = call i64 @mp_obj_is_small_int(i64 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  br label %82

31:                                               ; preds = %26
  %32 = load i64, i64* %5, align 8
  store i64 %32, i64* %6, align 8
  %33 = load i64, i64* %4, align 8
  store i64 %33, i64* %5, align 8
  %34 = load i64, i64* %6, align 8
  store i64 %34, i64* %4, align 8
  br label %35

35:                                               ; preds = %31
  br label %36

36:                                               ; preds = %35, %22
  %37 = load i64, i64* %4, align 8
  %38 = call i64 @mp_obj_is_str(i64 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %36
  %41 = load i64, i64* %5, align 8
  %42 = call i64 @mp_obj_is_str(i64 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %40
  %45 = load i64, i64* %4, align 8
  %46 = load i64, i64* %5, align 8
  %47 = call i32 @mp_obj_str_equal(i64 %45, i64 %46)
  store i32 %47, i32* %3, align 4
  br label %82

48:                                               ; preds = %40
  br label %54

49:                                               ; preds = %36
  %50 = load i64, i64* %5, align 8
  %51 = call i64 @mp_obj_is_str(i64 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %49
  br label %54

54:                                               ; preds = %53, %48
  store i32 0, i32* %3, align 4
  br label %82

55:                                               ; preds = %49
  br label %56

56:                                               ; preds = %55
  %57 = load i64, i64* %4, align 8
  %58 = call %struct.TYPE_3__* @mp_obj_get_type(i64 %57)
  store %struct.TYPE_3__* %58, %struct.TYPE_3__** %7, align 8
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i64 (i32, i64, i64)*, i64 (i32, i64, i64)** %60, align 8
  %62 = icmp ne i64 (i32, i64, i64)* %61, null
  br i1 %62, label %63, label %81

63:                                               ; preds = %56
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i64 (i32, i64, i64)*, i64 (i32, i64, i64)** %65, align 8
  %67 = load i32, i32* @MP_BINARY_OP_EQUAL, align 4
  %68 = load i64, i64* %4, align 8
  %69 = load i64, i64* %5, align 8
  %70 = call i64 %66(i32 %67, i64 %68, i64 %69)
  store i64 %70, i64* %8, align 8
  %71 = load i64, i64* %8, align 8
  %72 = load i64, i64* @MP_OBJ_NULL, align 8
  %73 = icmp ne i64 %71, %72
  br i1 %73, label %74, label %80

74:                                               ; preds = %63
  %75 = load i64, i64* %8, align 8
  %76 = load i64, i64* @mp_const_true, align 8
  %77 = icmp eq i64 %75, %76
  %78 = zext i1 %77 to i64
  %79 = select i1 %77, i32 1, i32 0
  store i32 %79, i32* %3, align 4
  br label %82

80:                                               ; preds = %63
  br label %81

81:                                               ; preds = %80, %56
  store i32 0, i32* %3, align 4
  br label %82

82:                                               ; preds = %81, %74, %54, %44, %30, %21, %12
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local i64 @mp_obj_is_small_int(i64) #1

declare dso_local i64 @mp_obj_is_str(i64) #1

declare dso_local i32 @mp_obj_str_equal(i64, i64) #1

declare dso_local %struct.TYPE_3__* @mp_obj_get_type(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
