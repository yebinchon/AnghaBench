; ModuleID = '/home/carl/AnghaBench/php-src/ext/soap/extr_php_sdl.c_make_persistent_sdl_encoder_ref.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/soap/extr_php_sdl.c_make_persistent_sdl_encoder_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@defaultEncoding = common dso_local global i64 0, align 8
@numDefaultEncodings = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64*, i32*, i32*)* @make_persistent_sdl_encoder_ref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @make_persistent_sdl_encoder_ref(i64* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i64*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  store i64* %0, i64** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = load i64*, i64** %4, align 8
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @defaultEncoding, align 8
  %11 = icmp sge i64 %9, %10
  br i1 %11, label %12, label %20

12:                                               ; preds = %3
  %13 = load i64*, i64** %4, align 8
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @defaultEncoding, align 8
  %16 = load i64, i64* @numDefaultEncodings, align 8
  %17 = add nsw i64 %15, %16
  %18 = icmp slt i64 %14, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %12
  br label %34

20:                                               ; preds = %12, %3
  %21 = load i32*, i32** %5, align 8
  %22 = load i64*, i64** %4, align 8
  %23 = bitcast i64* %22 to i8*
  %24 = call i64 @zend_hash_str_find_ptr(i32* %21, i8* %23, i32 8)
  store i64 %24, i64* %7, align 8
  %25 = inttoptr i64 %24 to i8*
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %20
  %28 = load i64, i64* %7, align 8
  %29 = load i64*, i64** %4, align 8
  store i64 %28, i64* %29, align 8
  br label %34

30:                                               ; preds = %20
  %31 = load i32*, i32** %6, align 8
  %32 = load i64*, i64** %4, align 8
  %33 = call i32 @zend_hash_next_index_insert_ptr(i32* %31, i64* %32)
  br label %34

34:                                               ; preds = %19, %30, %27
  ret void
}

declare dso_local i64 @zend_hash_str_find_ptr(i32*, i8*, i32) #1

declare dso_local i32 @zend_hash_next_index_insert_ptr(i32*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
