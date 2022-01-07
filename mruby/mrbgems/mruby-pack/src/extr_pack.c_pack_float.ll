; ModuleID = '/home/carl/AnghaBench/mruby/mrbgems/mruby-pack/src/extr_pack.c_pack_float.c'
source_filename = "/home/carl/AnghaBench/mruby/mrbgems/mruby-pack/src/extr_pack.c_pack_float.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PACK_FLAG_LITTLEENDIAN = common dso_local global i32 0, align 4
@littleendian = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, i32, i32)* @pack_float to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pack_float(i32* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca float, align 4
  %13 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = bitcast float* %12 to i32*
  store i32* %14, i32** %13, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* %9, align 4
  %18 = add nsw i32 %17, 4
  %19 = call i32 @str_len_ensure(i32* %15, i32 %16, i32 %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %7, align 4
  %21 = call i64 @mrb_float(i32 %20)
  %22 = sitofp i64 %21 to float
  store float %22, float* %12, align 4
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* @PACK_FLAG_LITTLEENDIAN, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %62

27:                                               ; preds = %5
  %28 = load i64, i64* @littleendian, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %27
  %31 = load i32, i32* %8, align 4
  %32 = call i32* @RSTRING_PTR(i32 %31)
  %33 = load i32, i32* %9, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32*, i32** %13, align 8
  %37 = call i32 @memcpy(i32* %35, i32* %36, i32 4)
  br label %61

38:                                               ; preds = %27
  store i32 0, i32* %11, align 4
  br label %39

39:                                               ; preds = %57, %38
  %40 = load i32, i32* %11, align 4
  %41 = icmp slt i32 %40, 4
  br i1 %41, label %42, label %60

42:                                               ; preds = %39
  %43 = load i32*, i32** %13, align 8
  %44 = load i32, i32* %11, align 4
  %45 = sub nsw i32 4, %44
  %46 = sub nsw i32 %45, 1
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %43, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %8, align 4
  %51 = call i32* @RSTRING_PTR(i32 %50)
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* %11, align 4
  %54 = add nsw i32 %52, %53
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %51, i64 %55
  store i32 %49, i32* %56, align 4
  br label %57

57:                                               ; preds = %42
  %58 = load i32, i32* %11, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %11, align 4
  br label %39

60:                                               ; preds = %39
  br label %61

61:                                               ; preds = %60, %30
  br label %97

62:                                               ; preds = %5
  %63 = load i64, i64* @littleendian, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %88

65:                                               ; preds = %62
  store i32 0, i32* %11, align 4
  br label %66

66:                                               ; preds = %84, %65
  %67 = load i32, i32* %11, align 4
  %68 = icmp slt i32 %67, 4
  br i1 %68, label %69, label %87

69:                                               ; preds = %66
  %70 = load i32*, i32** %13, align 8
  %71 = load i32, i32* %11, align 4
  %72 = sub nsw i32 4, %71
  %73 = sub nsw i32 %72, 1
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %70, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %8, align 4
  %78 = call i32* @RSTRING_PTR(i32 %77)
  %79 = load i32, i32* %9, align 4
  %80 = load i32, i32* %11, align 4
  %81 = add nsw i32 %79, %80
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %78, i64 %82
  store i32 %76, i32* %83, align 4
  br label %84

84:                                               ; preds = %69
  %85 = load i32, i32* %11, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %11, align 4
  br label %66

87:                                               ; preds = %66
  br label %96

88:                                               ; preds = %62
  %89 = load i32, i32* %8, align 4
  %90 = call i32* @RSTRING_PTR(i32 %89)
  %91 = load i32, i32* %9, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  %94 = load i32*, i32** %13, align 8
  %95 = call i32 @memcpy(i32* %93, i32* %94, i32 4)
  br label %96

96:                                               ; preds = %88, %87
  br label %97

97:                                               ; preds = %96, %61
  ret i32 4
}

declare dso_local i32 @str_len_ensure(i32*, i32, i32) #1

declare dso_local i64 @mrb_float(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32* @RSTRING_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
