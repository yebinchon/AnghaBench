; ModuleID = '/home/carl/AnghaBench/php-src/ext/phar/extr_dirstream.c_phar_dir_seek.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/phar/extr_dirstream.c_phar_dir_seek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@SEEK_END = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i64, i32, i64*)* @phar_dir_seek to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @phar_dir_seek(%struct.TYPE_3__* %0, i64 %1, i32 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i64* %3, i64** %9, align 8
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to i32*
  store i32* %14, i32** %10, align 8
  %15 = load i32*, i32** %10, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %58

18:                                               ; preds = %4
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @SEEK_END, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %28

22:                                               ; preds = %18
  %23 = load i32, i32* @SEEK_SET, align 4
  store i32 %23, i32* %8, align 4
  %24 = load i32*, i32** %10, align 8
  %25 = call i64 @zend_hash_num_elements(i32* %24)
  %26 = load i64, i64* %7, align 8
  %27 = add nsw i64 %25, %26
  store i64 %27, i64* %7, align 8
  br label %28

28:                                               ; preds = %22, %18
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @SEEK_SET, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = load i32*, i32** %10, align 8
  %34 = call i32 @zend_hash_internal_pointer_reset(i32* %33)
  br label %35

35:                                               ; preds = %32, %28
  %36 = load i64, i64* %7, align 8
  %37 = icmp slt i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  store i32 -1, i32* %5, align 4
  br label %58

39:                                               ; preds = %35
  %40 = load i64*, i64** %9, align 8
  store i64 0, i64* %40, align 8
  br label %41

41:                                               ; preds = %53, %39
  %42 = load i64*, i64** %9, align 8
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* %7, align 8
  %45 = icmp slt i64 %43, %44
  br i1 %45, label %46, label %51

46:                                               ; preds = %41
  %47 = load i32*, i32** %10, align 8
  %48 = call i64 @zend_hash_move_forward(i32* %47)
  %49 = load i64, i64* @SUCCESS, align 8
  %50 = icmp eq i64 %48, %49
  br label %51

51:                                               ; preds = %46, %41
  %52 = phi i1 [ false, %41 ], [ %50, %46 ]
  br i1 %52, label %53, label %57

53:                                               ; preds = %51
  %54 = load i64*, i64** %9, align 8
  %55 = load i64, i64* %54, align 8
  %56 = add nsw i64 %55, 1
  store i64 %56, i64* %54, align 8
  br label %41

57:                                               ; preds = %51
  store i32 0, i32* %5, align 4
  br label %58

58:                                               ; preds = %57, %38, %17
  %59 = load i32, i32* %5, align 4
  ret i32 %59
}

declare dso_local i64 @zend_hash_num_elements(i32*) #1

declare dso_local i32 @zend_hash_internal_pointer_reset(i32*) #1

declare dso_local i64 @zend_hash_move_forward(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
