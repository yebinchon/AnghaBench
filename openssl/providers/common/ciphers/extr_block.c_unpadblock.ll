; ModuleID = '/home/carl/AnghaBench/openssl/providers/common/ciphers/extr_block.c_unpadblock.c'
source_filename = "/home/carl/AnghaBench/openssl/providers/common/ciphers/extr_block.c_unpadblock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERR_LIB_PROV = common dso_local global i32 0, align 4
@ERR_R_INTERNAL_ERROR = common dso_local global i32 0, align 4
@PROV_R_BAD_DECRYPT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @unpadblock(i8* %0, i64* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load i64*, i64** %6, align 8
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %10, align 8
  %13 = load i64, i64* %10, align 8
  %14 = load i64, i64* %7, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %3
  %17 = load i32, i32* @ERR_LIB_PROV, align 4
  %18 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %19 = call i32 @ERR_raise(i32 %17, i32 %18)
  store i32 0, i32* %4, align 4
  br label %62

20:                                               ; preds = %3
  %21 = load i8*, i8** %5, align 8
  %22 = load i64, i64* %7, align 8
  %23 = sub i64 %22, 1
  %24 = getelementptr inbounds i8, i8* %21, i64 %23
  %25 = load i8, i8* %24, align 1
  %26 = zext i8 %25 to i64
  store i64 %26, i64* %8, align 8
  %27 = load i64, i64* %8, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %20
  %30 = load i64, i64* %8, align 8
  %31 = load i64, i64* %7, align 8
  %32 = icmp ugt i64 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %29, %20
  %34 = load i32, i32* @ERR_LIB_PROV, align 4
  %35 = load i32, i32* @PROV_R_BAD_DECRYPT, align 4
  %36 = call i32 @ERR_raise(i32 %34, i32 %35)
  store i32 0, i32* %4, align 4
  br label %62

37:                                               ; preds = %29
  store i64 0, i64* %9, align 8
  br label %38

38:                                               ; preds = %56, %37
  %39 = load i64, i64* %9, align 8
  %40 = load i64, i64* %8, align 8
  %41 = icmp ult i64 %39, %40
  br i1 %41, label %42, label %59

42:                                               ; preds = %38
  %43 = load i8*, i8** %5, align 8
  %44 = load i64, i64* %10, align 8
  %45 = add i64 %44, -1
  store i64 %45, i64* %10, align 8
  %46 = getelementptr inbounds i8, i8* %43, i64 %45
  %47 = load i8, i8* %46, align 1
  %48 = zext i8 %47 to i64
  %49 = load i64, i64* %8, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %42
  %52 = load i32, i32* @ERR_LIB_PROV, align 4
  %53 = load i32, i32* @PROV_R_BAD_DECRYPT, align 4
  %54 = call i32 @ERR_raise(i32 %52, i32 %53)
  store i32 0, i32* %4, align 4
  br label %62

55:                                               ; preds = %42
  br label %56

56:                                               ; preds = %55
  %57 = load i64, i64* %9, align 8
  %58 = add i64 %57, 1
  store i64 %58, i64* %9, align 8
  br label %38

59:                                               ; preds = %38
  %60 = load i64, i64* %10, align 8
  %61 = load i64*, i64** %6, align 8
  store i64 %60, i64* %61, align 8
  store i32 1, i32* %4, align 4
  br label %62

62:                                               ; preds = %59, %51, %33, %16
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local i32 @ERR_raise(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
