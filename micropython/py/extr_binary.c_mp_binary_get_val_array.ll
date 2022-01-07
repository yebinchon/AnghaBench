; ModuleID = '/home/carl/AnghaBench/micropython/py/extr_binary.c_mp_binary_get_val_array.c'
source_filename = "/home/carl/AnghaBench/micropython/py/extr_binary.c_mp_binary_get_val_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mp_binary_get_val_array(i8 signext %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i8 %0, i8* %5, align 1
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 0, i64* %8, align 8
  %9 = load i8, i8* %5, align 1
  %10 = sext i8 %9 to i32
  switch i32 %10, label %81 [
    i32 98, label %11
    i32 128, label %17
    i32 66, label %17
    i32 104, label %23
    i32 72, label %30
    i32 105, label %37
    i32 73, label %45
    i32 108, label %53
    i32 76, label %60
    i32 79, label %67
    i32 80, label %73
  ]

11:                                               ; preds = %3
  %12 = load i8*, i8** %6, align 8
  %13 = load i64, i64* %7, align 8
  %14 = getelementptr inbounds i8, i8* %12, i64 %13
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i64
  store i64 %16, i64* %8, align 8
  br label %81

17:                                               ; preds = %3, %3
  %18 = load i8*, i8** %6, align 8
  %19 = load i64, i64* %7, align 8
  %20 = getelementptr inbounds i8, i8* %18, i64 %19
  %21 = load i8, i8* %20, align 1
  %22 = zext i8 %21 to i64
  store i64 %22, i64* %8, align 8
  br label %81

23:                                               ; preds = %3
  %24 = load i8*, i8** %6, align 8
  %25 = bitcast i8* %24 to i16*
  %26 = load i64, i64* %7, align 8
  %27 = getelementptr inbounds i16, i16* %25, i64 %26
  %28 = load i16, i16* %27, align 2
  %29 = sext i16 %28 to i64
  store i64 %29, i64* %8, align 8
  br label %81

30:                                               ; preds = %3
  %31 = load i8*, i8** %6, align 8
  %32 = bitcast i8* %31 to i16*
  %33 = load i64, i64* %7, align 8
  %34 = getelementptr inbounds i16, i16* %32, i64 %33
  %35 = load i16, i16* %34, align 2
  %36 = zext i16 %35 to i64
  store i64 %36, i64* %8, align 8
  br label %81

37:                                               ; preds = %3
  %38 = load i8*, i8** %6, align 8
  %39 = bitcast i8* %38 to i32*
  %40 = load i64, i64* %7, align 8
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = sext i32 %42 to i64
  %44 = call i32 @mp_obj_new_int(i64 %43)
  store i32 %44, i32* %4, align 4
  br label %84

45:                                               ; preds = %3
  %46 = load i8*, i8** %6, align 8
  %47 = bitcast i8* %46 to i32*
  %48 = load i64, i64* %7, align 8
  %49 = getelementptr inbounds i32, i32* %47, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = zext i32 %50 to i64
  %52 = call i32 @mp_obj_new_int_from_uint(i64 %51)
  store i32 %52, i32* %4, align 4
  br label %84

53:                                               ; preds = %3
  %54 = load i8*, i8** %6, align 8
  %55 = bitcast i8* %54 to i64*
  %56 = load i64, i64* %7, align 8
  %57 = getelementptr inbounds i64, i64* %55, i64 %56
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @mp_obj_new_int(i64 %58)
  store i32 %59, i32* %4, align 4
  br label %84

60:                                               ; preds = %3
  %61 = load i8*, i8** %6, align 8
  %62 = bitcast i8* %61 to i64*
  %63 = load i64, i64* %7, align 8
  %64 = getelementptr inbounds i64, i64* %62, i64 %63
  %65 = load i64, i64* %64, align 8
  %66 = call i32 @mp_obj_new_int_from_uint(i64 %65)
  store i32 %66, i32* %4, align 4
  br label %84

67:                                               ; preds = %3
  %68 = load i8*, i8** %6, align 8
  %69 = bitcast i8* %68 to i32*
  %70 = load i64, i64* %7, align 8
  %71 = getelementptr inbounds i32, i32* %69, i64 %70
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %4, align 4
  br label %84

73:                                               ; preds = %3
  %74 = load i8*, i8** %6, align 8
  %75 = bitcast i8* %74 to i8**
  %76 = load i64, i64* %7, align 8
  %77 = getelementptr inbounds i8*, i8** %75, i64 %76
  %78 = load i8*, i8** %77, align 8
  %79 = ptrtoint i8* %78 to i64
  %80 = call i32 @mp_obj_new_int(i64 %79)
  store i32 %80, i32* %4, align 4
  br label %84

81:                                               ; preds = %3, %30, %23, %17, %11
  %82 = load i64, i64* %8, align 8
  %83 = call i32 @MP_OBJ_NEW_SMALL_INT(i64 %82)
  store i32 %83, i32* %4, align 4
  br label %84

84:                                               ; preds = %81, %73, %67, %60, %53, %45, %37
  %85 = load i32, i32* %4, align 4
  ret i32 %85
}

declare dso_local i32 @mp_obj_new_int(i64) #1

declare dso_local i32 @mp_obj_new_int_from_uint(i64) #1

declare dso_local i32 @MP_OBJ_NEW_SMALL_INT(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
