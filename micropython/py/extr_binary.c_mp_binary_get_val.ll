; ModuleID = '/home/carl/AnghaBench/micropython/py/extr_binary.c_mp_binary_get_val.c'
source_filename = "/home/carl/AnghaBench/micropython/py/extr_binary.c_mp_binary_get_val.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MP_SMALL_INT_MIN = common dso_local global i64 0, align 8
@MP_SMALL_INT_MAX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mp_binary_get_val(i8 signext %0, i8 signext %1, i32* %2, i32** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i32*, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  store i8 %0, i8* %6, align 1
  store i8 %1, i8* %7, align 1
  store i32* %2, i32** %8, align 8
  store i32** %3, i32*** %9, align 8
  %15 = load i32**, i32*** %9, align 8
  %16 = load i32*, i32** %15, align 8
  store i32* %16, i32** %10, align 8
  %17 = load i8, i8* %6, align 1
  %18 = load i8, i8* %7, align 1
  %19 = call i64 @mp_binary_get_size(i8 signext %17, i8 signext %18, i64* %11)
  store i64 %19, i64* %12, align 8
  %20 = load i8, i8* %6, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %21, 64
  br i1 %22, label %23, label %35

23:                                               ; preds = %4
  %24 = load i32*, i32** %8, align 8
  %25 = load i32*, i32** %10, align 8
  %26 = load i32*, i32** %8, align 8
  %27 = ptrtoint i32* %25 to i64
  %28 = ptrtoint i32* %26 to i64
  %29 = sub i64 %27, %28
  %30 = sdiv exact i64 %29, 4
  %31 = trunc i64 %30 to i32
  %32 = load i64, i64* %11, align 8
  %33 = call i64 @MP_ALIGN(i32 %31, i64 %32)
  %34 = getelementptr inbounds i32, i32* %24, i64 %33
  store i32* %34, i32** %10, align 8
  store i8 62, i8* %6, align 1
  br label %35

35:                                               ; preds = %23, %4
  %36 = load i32*, i32** %10, align 8
  %37 = load i64, i64* %12, align 8
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  %39 = load i32**, i32*** %9, align 8
  store i32* %38, i32** %39, align 8
  %40 = load i64, i64* %12, align 8
  %41 = load i8, i8* %7, align 1
  %42 = call i64 @is_signed(i8 signext %41)
  %43 = load i8, i8* %6, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 62
  %46 = zext i1 %45 to i32
  %47 = load i32*, i32** %10, align 8
  %48 = call i64 @mp_binary_get_int(i64 %40, i64 %42, i32 %46, i32* %47)
  store i64 %48, i64* %13, align 8
  %49 = load i8, i8* %7, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %50, 79
  br i1 %51, label %52, label %55

52:                                               ; preds = %35
  %53 = load i64, i64* %13, align 8
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %5, align 4
  br label %95

55:                                               ; preds = %35
  %56 = load i8, i8* %7, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp eq i32 %57, 83
  br i1 %58, label %59, label %66

59:                                               ; preds = %55
  %60 = load i64, i64* %13, align 8
  %61 = inttoptr i64 %60 to i8*
  store i8* %61, i8** %14, align 8
  %62 = load i8*, i8** %14, align 8
  %63 = load i8*, i8** %14, align 8
  %64 = call i32 @strlen(i8* %63)
  %65 = call i32 @mp_obj_new_str(i8* %62, i32 %64)
  store i32 %65, i32* %5, align 4
  br label %95

66:                                               ; preds = %55
  %67 = load i8, i8* %7, align 1
  %68 = call i64 @is_signed(i8 signext %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %85

70:                                               ; preds = %66
  %71 = load i64, i64* @MP_SMALL_INT_MIN, align 8
  %72 = load i64, i64* %13, align 8
  %73 = icmp sle i64 %71, %72
  br i1 %73, label %74, label %82

74:                                               ; preds = %70
  %75 = load i64, i64* %13, align 8
  %76 = load i64, i64* @MP_SMALL_INT_MAX, align 8
  %77 = icmp sle i64 %75, %76
  br i1 %77, label %78, label %82

78:                                               ; preds = %74
  %79 = load i64, i64* %13, align 8
  %80 = trunc i64 %79 to i32
  %81 = call i32 @mp_obj_new_int(i32 %80)
  store i32 %81, i32* %5, align 4
  br label %95

82:                                               ; preds = %74, %70
  %83 = load i64, i64* %13, align 8
  %84 = call i32 @mp_obj_new_int_from_ll(i64 %83)
  store i32 %84, i32* %5, align 4
  br label %95

85:                                               ; preds = %66
  %86 = load i64, i64* %13, align 8
  %87 = load i64, i64* @MP_SMALL_INT_MAX, align 8
  %88 = icmp ule i64 %86, %87
  br i1 %88, label %89, label %92

89:                                               ; preds = %85
  %90 = load i64, i64* %13, align 8
  %91 = call i32 @mp_obj_new_int_from_uint(i64 %90)
  store i32 %91, i32* %5, align 4
  br label %95

92:                                               ; preds = %85
  %93 = load i64, i64* %13, align 8
  %94 = call i32 @mp_obj_new_int_from_ull(i64 %93)
  store i32 %94, i32* %5, align 4
  br label %95

95:                                               ; preds = %92, %89, %82, %78, %59, %52
  %96 = load i32, i32* %5, align 4
  ret i32 %96
}

declare dso_local i64 @mp_binary_get_size(i8 signext, i8 signext, i64*) #1

declare dso_local i64 @MP_ALIGN(i32, i64) #1

declare dso_local i64 @mp_binary_get_int(i64, i64, i32, i32*) #1

declare dso_local i64 @is_signed(i8 signext) #1

declare dso_local i32 @mp_obj_new_str(i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @mp_obj_new_int(i32) #1

declare dso_local i32 @mp_obj_new_int_from_ll(i64) #1

declare dso_local i32 @mp_obj_new_int_from_uint(i64) #1

declare dso_local i32 @mp_obj_new_int_from_ull(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
