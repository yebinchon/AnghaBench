; ModuleID = '/home/carl/AnghaBench/openssl/crypto/ec/curve448/extr_curve448.c_prepare_wnaf_table.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/ec/curve448/extr_curve448.c_prepare_wnaf_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32)* @prepare_wnaf_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prepare_wnaf_table(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32*, i32** %4, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @pt_to_pniels(i32 %12, i32 %13)
  %15 = load i32, i32* %6, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  br label %59

18:                                               ; preds = %3
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @curve448_point_double(i32 %19, i32 %20)
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @pt_to_pniels(i32 %22, i32 %23)
  %25 = load i32, i32* %7, align 4
  %26 = load i32*, i32** %4, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @add_pniels_to_pt(i32 %25, i32 %28, i32 0)
  %30 = load i32*, i32** %4, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @pt_to_pniels(i32 %32, i32 %33)
  store i32 2, i32* %8, align 4
  br label %35

35:                                               ; preds = %51, %18
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* %6, align 4
  %38 = shl i32 1, %37
  %39 = icmp slt i32 %36, %38
  br i1 %39, label %40, label %54

40:                                               ; preds = %35
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @add_pniels_to_pt(i32 %41, i32 %42, i32 0)
  %44 = load i32*, i32** %4, align 8
  %45 = load i32, i32* %8, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @pt_to_pniels(i32 %48, i32 %49)
  br label %51

51:                                               ; preds = %40
  %52 = load i32, i32* %8, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %8, align 4
  br label %35

54:                                               ; preds = %35
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @curve448_point_destroy(i32 %55)
  %57 = load i32, i32* %9, align 4
  %58 = call i32 @OPENSSL_cleanse(i32 %57, i32 4)
  br label %59

59:                                               ; preds = %54, %17
  ret void
}

declare dso_local i32 @pt_to_pniels(i32, i32) #1

declare dso_local i32 @curve448_point_double(i32, i32) #1

declare dso_local i32 @add_pniels_to_pt(i32, i32, i32) #1

declare dso_local i32 @curve448_point_destroy(i32) #1

declare dso_local i32 @OPENSSL_cleanse(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
