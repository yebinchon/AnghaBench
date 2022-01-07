; ModuleID = '/home/carl/AnghaBench/openssl/crypto/dh/extr_dh_ameth.c_int_dh_bn_cpy.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/dh/extr_dh_ameth.c_int_dh_bn_cpy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BN_FLG_STATIC_DATA = common dso_local global i32 0, align 4
@BN_FLG_MALLOCED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32**, i32*)* @int_dh_bn_cpy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @int_dh_bn_cpy(i32** %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32**, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store i32** %0, i32*** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load i32*, i32** %5, align 8
  %8 = icmp eq i32* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store i32* null, i32** %6, align 8
  br label %29

10:                                               ; preds = %2
  %11 = load i32*, i32** %5, align 8
  %12 = load i32, i32* @BN_FLG_STATIC_DATA, align 4
  %13 = call i64 @BN_get_flags(i32* %11, i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %10
  %16 = load i32*, i32** %5, align 8
  %17 = load i32, i32* @BN_FLG_MALLOCED, align 4
  %18 = call i64 @BN_get_flags(i32* %16, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %15
  %21 = load i32*, i32** %5, align 8
  store i32* %21, i32** %6, align 8
  br label %28

22:                                               ; preds = %15, %10
  %23 = load i32*, i32** %5, align 8
  %24 = call i32* @BN_dup(i32* %23)
  store i32* %24, i32** %6, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  store i32 0, i32* %3, align 4
  br label %35

27:                                               ; preds = %22
  br label %28

28:                                               ; preds = %27, %20
  br label %29

29:                                               ; preds = %28, %9
  %30 = load i32**, i32*** %4, align 8
  %31 = load i32*, i32** %30, align 8
  %32 = call i32 @BN_clear_free(i32* %31)
  %33 = load i32*, i32** %6, align 8
  %34 = load i32**, i32*** %4, align 8
  store i32* %33, i32** %34, align 8
  store i32 1, i32* %3, align 4
  br label %35

35:                                               ; preds = %29, %26
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i64 @BN_get_flags(i32*, i32) #1

declare dso_local i32* @BN_dup(i32*) #1

declare dso_local i32 @BN_clear_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
