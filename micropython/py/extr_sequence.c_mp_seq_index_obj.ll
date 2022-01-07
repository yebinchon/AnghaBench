; ModuleID = '/home/carl/AnghaBench/micropython/py/extr_sequence.c_mp_seq_index_obj.c'
source_filename = "/home/carl/AnghaBench/micropython/py/extr_sequence.c_mp_seq_index_obj.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [23 x i8] c"object not in sequence\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mp_seq_index_obj(i32* %0, i64 %1, i64 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  %15 = load i32*, i32** %9, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32* @mp_obj_get_type(i32 %17)
  store i32* %18, i32** %10, align 8
  %19 = load i32*, i32** %9, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 1
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %11, align 4
  store i64 0, i64* %12, align 8
  %22 = load i64, i64* %7, align 8
  store i64 %22, i64* %13, align 8
  %23 = load i64, i64* %8, align 8
  %24 = icmp uge i64 %23, 3
  br i1 %24, label %25, label %42

25:                                               ; preds = %4
  %26 = load i32*, i32** %10, align 8
  %27 = load i64, i64* %7, align 8
  %28 = load i32*, i32** %9, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 2
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @mp_get_index(i32* %26, i64 %27, i32 %30, i32 1)
  store i64 %31, i64* %12, align 8
  %32 = load i64, i64* %8, align 8
  %33 = icmp uge i64 %32, 4
  br i1 %33, label %34, label %41

34:                                               ; preds = %25
  %35 = load i32*, i32** %10, align 8
  %36 = load i64, i64* %7, align 8
  %37 = load i32*, i32** %9, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 3
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @mp_get_index(i32* %35, i64 %36, i32 %39, i32 1)
  store i64 %40, i64* %13, align 8
  br label %41

41:                                               ; preds = %34, %25
  br label %42

42:                                               ; preds = %41, %4
  %43 = load i64, i64* %12, align 8
  store i64 %43, i64* %14, align 8
  br label %44

44:                                               ; preds = %60, %42
  %45 = load i64, i64* %14, align 8
  %46 = load i64, i64* %13, align 8
  %47 = icmp ult i64 %45, %46
  br i1 %47, label %48, label %63

48:                                               ; preds = %44
  %49 = load i32*, i32** %6, align 8
  %50 = load i64, i64* %14, align 8
  %51 = getelementptr inbounds i32, i32* %49, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %11, align 4
  %54 = call i64 @mp_obj_equal(i32 %52, i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %48
  %57 = load i64, i64* %14, align 8
  %58 = call i32 @MP_OBJ_NEW_SMALL_INT(i64 %57)
  store i32 %58, i32* %5, align 4
  br label %65

59:                                               ; preds = %48
  br label %60

60:                                               ; preds = %59
  %61 = load i64, i64* %14, align 8
  %62 = add i64 %61, 1
  store i64 %62, i64* %14, align 8
  br label %44

63:                                               ; preds = %44
  %64 = call i32 @mp_raise_ValueError(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %65

65:                                               ; preds = %63, %56
  %66 = load i32, i32* %5, align 4
  ret i32 %66
}

declare dso_local i32* @mp_obj_get_type(i32) #1

declare dso_local i64 @mp_get_index(i32*, i64, i32, i32) #1

declare dso_local i64 @mp_obj_equal(i32, i32) #1

declare dso_local i32 @MP_OBJ_NEW_SMALL_INT(i64) #1

declare dso_local i32 @mp_raise_ValueError(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
