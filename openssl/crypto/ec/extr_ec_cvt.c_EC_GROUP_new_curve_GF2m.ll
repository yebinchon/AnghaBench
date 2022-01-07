; ModuleID = '/home/carl/AnghaBench/openssl/crypto/ec/extr_ec_cvt.c_EC_GROUP_new_curve_GF2m.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/ec/extr_ec_cvt.c_EC_GROUP_new_curve_GF2m.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @EC_GROUP_new_curve_GF2m(i32* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = call i32* (...) @EC_GF2m_simple_method()
  store i32* %12, i32** %10, align 8
  %13 = load i32*, i32** %9, align 8
  %14 = call i32 @bn_get_lib_ctx(i32* %13)
  %15 = load i32*, i32** %10, align 8
  %16 = call i32* @EC_GROUP_new_ex(i32 %14, i32* %15)
  store i32* %16, i32** %11, align 8
  %17 = load i32*, i32** %11, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %4
  store i32* null, i32** %5, align 8
  br label %33

20:                                               ; preds = %4
  %21 = load i32*, i32** %11, align 8
  %22 = load i32*, i32** %6, align 8
  %23 = load i32*, i32** %7, align 8
  %24 = load i32*, i32** %8, align 8
  %25 = load i32*, i32** %9, align 8
  %26 = call i32 @EC_GROUP_set_curve(i32* %21, i32* %22, i32* %23, i32* %24, i32* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %20
  %29 = load i32*, i32** %11, align 8
  %30 = call i32 @EC_GROUP_free(i32* %29)
  store i32* null, i32** %5, align 8
  br label %33

31:                                               ; preds = %20
  %32 = load i32*, i32** %11, align 8
  store i32* %32, i32** %5, align 8
  br label %33

33:                                               ; preds = %31, %28, %19
  %34 = load i32*, i32** %5, align 8
  ret i32* %34
}

declare dso_local i32* @EC_GF2m_simple_method(...) #1

declare dso_local i32* @EC_GROUP_new_ex(i32, i32*) #1

declare dso_local i32 @bn_get_lib_ctx(i32*) #1

declare dso_local i32 @EC_GROUP_set_curve(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @EC_GROUP_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
