; ModuleID = '/home/carl/AnghaBench/openssl/crypto/ec/extr_ec_lib.c_EC_POINT_dup.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/ec/extr_ec_lib.c_EC_POINT_dup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @EC_POINT_dup(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = icmp eq i32* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i32* null, i32** %3, align 8
  br label %28

11:                                               ; preds = %2
  %12 = load i32*, i32** %5, align 8
  %13 = call i32* @EC_POINT_new(i32* %12)
  store i32* %13, i32** %6, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  store i32* null, i32** %3, align 8
  br label %28

17:                                               ; preds = %11
  %18 = load i32*, i32** %6, align 8
  %19 = load i32*, i32** %4, align 8
  %20 = call i32 @EC_POINT_copy(i32* %18, i32* %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %17
  %24 = load i32*, i32** %6, align 8
  %25 = call i32 @EC_POINT_free(i32* %24)
  store i32* null, i32** %3, align 8
  br label %28

26:                                               ; preds = %17
  %27 = load i32*, i32** %6, align 8
  store i32* %27, i32** %3, align 8
  br label %28

28:                                               ; preds = %26, %23, %16, %10
  %29 = load i32*, i32** %3, align 8
  ret i32* %29
}

declare dso_local i32* @EC_POINT_new(i32*) #1

declare dso_local i32 @EC_POINT_copy(i32*, i32*) #1

declare dso_local i32 @EC_POINT_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
