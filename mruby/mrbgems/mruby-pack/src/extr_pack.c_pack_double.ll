; ModuleID = '/home/carl/AnghaBench/mruby/mrbgems/mruby-pack/src/extr_pack.c_pack_double.c'
source_filename = "/home/carl/AnghaBench/mruby/mrbgems/mruby-pack/src/extr_pack.c_pack_double.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PACK_FLAG_LITTLEENDIAN = common dso_local global i32 0, align 4
@littleendian = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, i32, i32)* @pack_double to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pack_double(i32* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca double, align 8
  %13 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = bitcast double* %12 to i32*
  store i32* %14, i32** %13, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* %9, align 4
  %18 = add nsw i32 %17, 8
  %19 = call i32 @str_len_ensure(i32* %15, i32 %16, i32 %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %7, align 4
  %21 = call double @mrb_float(i32 %20)
  store double %21, double* %12, align 8
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* @PACK_FLAG_LITTLEENDIAN, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %61

26:                                               ; preds = %5
  %27 = load i64, i64* @littleendian, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %26
  %30 = load i32, i32* %8, align 4
  %31 = call i32* @RSTRING_PTR(i32 %30)
  %32 = load i32, i32* %9, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32*, i32** %13, align 8
  %36 = call i32 @memcpy(i32* %34, i32* %35, i32 8)
  br label %60

37:                                               ; preds = %26
  store i32 0, i32* %11, align 4
  br label %38

38:                                               ; preds = %56, %37
  %39 = load i32, i32* %11, align 4
  %40 = icmp slt i32 %39, 8
  br i1 %40, label %41, label %59

41:                                               ; preds = %38
  %42 = load i32*, i32** %13, align 8
  %43 = load i32, i32* %11, align 4
  %44 = sub nsw i32 8, %43
  %45 = sub nsw i32 %44, 1
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %42, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %8, align 4
  %50 = call i32* @RSTRING_PTR(i32 %49)
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* %11, align 4
  %53 = add nsw i32 %51, %52
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %50, i64 %54
  store i32 %48, i32* %55, align 4
  br label %56

56:                                               ; preds = %41
  %57 = load i32, i32* %11, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %11, align 4
  br label %38

59:                                               ; preds = %38
  br label %60

60:                                               ; preds = %59, %29
  br label %96

61:                                               ; preds = %5
  %62 = load i64, i64* @littleendian, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %87

64:                                               ; preds = %61
  store i32 0, i32* %11, align 4
  br label %65

65:                                               ; preds = %83, %64
  %66 = load i32, i32* %11, align 4
  %67 = icmp slt i32 %66, 8
  br i1 %67, label %68, label %86

68:                                               ; preds = %65
  %69 = load i32*, i32** %13, align 8
  %70 = load i32, i32* %11, align 4
  %71 = sub nsw i32 8, %70
  %72 = sub nsw i32 %71, 1
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %69, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %8, align 4
  %77 = call i32* @RSTRING_PTR(i32 %76)
  %78 = load i32, i32* %9, align 4
  %79 = load i32, i32* %11, align 4
  %80 = add nsw i32 %78, %79
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %77, i64 %81
  store i32 %75, i32* %82, align 4
  br label %83

83:                                               ; preds = %68
  %84 = load i32, i32* %11, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %11, align 4
  br label %65

86:                                               ; preds = %65
  br label %95

87:                                               ; preds = %61
  %88 = load i32, i32* %8, align 4
  %89 = call i32* @RSTRING_PTR(i32 %88)
  %90 = load i32, i32* %9, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  %93 = load i32*, i32** %13, align 8
  %94 = call i32 @memcpy(i32* %92, i32* %93, i32 8)
  br label %95

95:                                               ; preds = %87, %86
  br label %96

96:                                               ; preds = %95, %60
  ret i32 8
}

declare dso_local i32 @str_len_ensure(i32*, i32, i32) #1

declare dso_local double @mrb_float(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32* @RSTRING_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
