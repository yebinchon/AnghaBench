; ModuleID = '/home/carl/AnghaBench/php-src/ext/phar/extr_phar_object.c_phar_test_compression.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/phar/extr_phar_object.c_phar_test_compression.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64 }

@ZEND_HASH_APPLY_KEEP = common dso_local global i32 0, align 4
@has_bz2 = common dso_local global i32 0, align 4
@PHAR_ENT_COMPRESSED_BZ2 = common dso_local global i32 0, align 4
@has_zlib = common dso_local global i32 0, align 4
@PHAR_ENT_COMPRESSED_GZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*)* @phar_test_compression to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @phar_test_compression(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_2__*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = call i64 @Z_PTR_P(i32* %7)
  %9 = inttoptr i64 %8 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %9, %struct.TYPE_2__** %6, align 8
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* @ZEND_HASH_APPLY_KEEP, align 4
  store i32 %15, i32* %3, align 4
  br label %48

16:                                               ; preds = %2
  %17 = load i32, i32* @has_bz2, align 4
  %18 = call i32 @PHAR_G(i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %31, label %20

20:                                               ; preds = %16
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @PHAR_ENT_COMPRESSED_BZ2, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %20
  %28 = load i8*, i8** %5, align 8
  %29 = bitcast i8* %28 to i32*
  store i32 0, i32* %29, align 4
  br label %30

30:                                               ; preds = %27, %20
  br label %31

31:                                               ; preds = %30, %16
  %32 = load i32, i32* @has_zlib, align 4
  %33 = call i32 @PHAR_G(i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %46, label %35

35:                                               ; preds = %31
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @PHAR_ENT_COMPRESSED_GZ, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %35
  %43 = load i8*, i8** %5, align 8
  %44 = bitcast i8* %43 to i32*
  store i32 0, i32* %44, align 4
  br label %45

45:                                               ; preds = %42, %35
  br label %46

46:                                               ; preds = %45, %31
  %47 = load i32, i32* @ZEND_HASH_APPLY_KEEP, align 4
  store i32 %47, i32* %3, align 4
  br label %48

48:                                               ; preds = %46, %14
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i64 @Z_PTR_P(i32*) #1

declare dso_local i32 @PHAR_G(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
