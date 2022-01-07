; ModuleID = '/home/carl/AnghaBench/mruby/mrbgems/mruby-pack/src/extr_pack.c_unpack_double.c'
source_filename = "/home/carl/AnghaBench/mruby/mrbgems/mruby-pack/src/extr_pack.c_unpack_double.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PACK_FLAG_LITTLEENDIAN = common dso_local global i32 0, align 4
@littleendian = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32, i32, i32)* @unpack_double to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unpack_double(i32* %0, i8* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca double, align 8
  %13 = alloca i8*, align 8
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = bitcast double* %12 to i8*
  store i8* %14, i8** %13, align 8
  %15 = load i32, i32* %10, align 4
  %16 = load i32, i32* @PACK_FLAG_LITTLEENDIAN, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %47

19:                                               ; preds = %5
  %20 = load i64, i64* @littleendian, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  %23 = load i8*, i8** %13, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = call i32 @memcpy(i8* %23, i8* %24, i32 8)
  br label %46

26:                                               ; preds = %19
  store i32 0, i32* %11, align 4
  br label %27

27:                                               ; preds = %42, %26
  %28 = load i32, i32* %11, align 4
  %29 = icmp slt i32 %28, 8
  br i1 %29, label %30, label %45

30:                                               ; preds = %27
  %31 = load i8*, i8** %7, align 8
  %32 = load i32, i32* %11, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8, i8* %31, i64 %33
  %35 = load i8, i8* %34, align 1
  %36 = load i8*, i8** %13, align 8
  %37 = load i32, i32* %11, align 4
  %38 = sub nsw i32 8, %37
  %39 = sub nsw i32 %38, 1
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %36, i64 %40
  store i8 %35, i8* %41, align 1
  br label %42

42:                                               ; preds = %30
  %43 = load i32, i32* %11, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %11, align 4
  br label %27

45:                                               ; preds = %27
  br label %46

46:                                               ; preds = %45, %22
  br label %75

47:                                               ; preds = %5
  %48 = load i64, i64* @littleendian, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %70

50:                                               ; preds = %47
  store i32 0, i32* %11, align 4
  br label %51

51:                                               ; preds = %66, %50
  %52 = load i32, i32* %11, align 4
  %53 = icmp slt i32 %52, 8
  br i1 %53, label %54, label %69

54:                                               ; preds = %51
  %55 = load i8*, i8** %7, align 8
  %56 = load i32, i32* %11, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %55, i64 %57
  %59 = load i8, i8* %58, align 1
  %60 = load i8*, i8** %13, align 8
  %61 = load i32, i32* %11, align 4
  %62 = sub nsw i32 8, %61
  %63 = sub nsw i32 %62, 1
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8, i8* %60, i64 %64
  store i8 %59, i8* %65, align 1
  br label %66

66:                                               ; preds = %54
  %67 = load i32, i32* %11, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %11, align 4
  br label %51

69:                                               ; preds = %51
  br label %74

70:                                               ; preds = %47
  %71 = load i8*, i8** %13, align 8
  %72 = load i8*, i8** %7, align 8
  %73 = call i32 @memcpy(i8* %71, i8* %72, i32 8)
  br label %74

74:                                               ; preds = %70, %69
  br label %75

75:                                               ; preds = %74, %46
  %76 = load i32*, i32** %6, align 8
  %77 = load i32, i32* %9, align 4
  %78 = load i32*, i32** %6, align 8
  %79 = load double, double* %12, align 8
  %80 = call i32 @mrb_float_value(i32* %78, double %79)
  %81 = call i32 @mrb_ary_push(i32* %76, i32 %77, i32 %80)
  ret i32 8
}

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @mrb_ary_push(i32*, i32, i32) #1

declare dso_local i32 @mrb_float_value(i32*, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
