; ModuleID = '/home/carl/AnghaBench/phpredis/extr_cluster_library.c_cluster_dist_add_key.c'
source_filename = "/home/carl/AnghaBench/phpredis/extr_cluster_library.c_cluster_dist_add_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32**, i32 }

@FAILURE = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cluster_dist_add_key(%struct.TYPE_3__* %0, i32* %1, i8* %2, i64 %3, i32** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i16, align 2
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32** %4, i32*** %11, align 8
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @redis_key_prefix(i32 %18, i8** %9, i64* %10)
  store i32 %19, i32* %12, align 4
  %20 = load i8*, i8** %9, align 8
  %21 = load i64, i64* %10, align 8
  %22 = call signext i16 @cluster_hash_key(i8* %20, i64 %21)
  store i16 %22, i16* %13, align 2
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32**, i32*** %24, align 8
  %26 = load i16, i16* %13, align 2
  %27 = sext i16 %26 to i64
  %28 = getelementptr inbounds i32*, i32** %25, i64 %27
  %29 = load i32*, i32** %28, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %39

31:                                               ; preds = %5
  %32 = load i32, i32* %12, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = load i8*, i8** %9, align 8
  %36 = call i32 @efree(i8* %35)
  br label %37

37:                                               ; preds = %34, %31
  %38 = load i32, i32* @FAILURE, align 4
  store i32 %38, i32* %6, align 4
  br label %65

39:                                               ; preds = %5
  %40 = load i32*, i32** %8, align 8
  %41 = load i16, i16* %13, align 2
  %42 = sext i16 %41 to i32
  %43 = call i32* @zend_hash_index_find_ptr(i32* %40, i32 %42)
  store i32* %43, i32** %14, align 8
  %44 = icmp eq i32* %43, null
  br i1 %44, label %45, label %52

45:                                               ; preds = %39
  %46 = call i32* (...) @cluster_dl_create()
  store i32* %46, i32** %14, align 8
  %47 = load i32*, i32** %8, align 8
  %48 = load i16, i16* %13, align 2
  %49 = sext i16 %48 to i32
  %50 = load i32*, i32** %14, align 8
  %51 = call i32 @zend_hash_index_update_ptr(i32* %47, i32 %49, i32* %50)
  br label %52

52:                                               ; preds = %45, %39
  %53 = load i32*, i32** %14, align 8
  %54 = load i8*, i8** %9, align 8
  %55 = load i64, i64* %10, align 8
  %56 = load i32, i32* %12, align 4
  %57 = call i32* @cluster_dl_add_key(i32* %53, i8* %54, i64 %55, i32 %56)
  store i32* %57, i32** %15, align 8
  %58 = load i32**, i32*** %11, align 8
  %59 = icmp ne i32** %58, null
  br i1 %59, label %60, label %63

60:                                               ; preds = %52
  %61 = load i32*, i32** %15, align 8
  %62 = load i32**, i32*** %11, align 8
  store i32* %61, i32** %62, align 8
  br label %63

63:                                               ; preds = %60, %52
  %64 = load i32, i32* @SUCCESS, align 4
  store i32 %64, i32* %6, align 4
  br label %65

65:                                               ; preds = %63, %37
  %66 = load i32, i32* %6, align 4
  ret i32 %66
}

declare dso_local i32 @redis_key_prefix(i32, i8**, i64*) #1

declare dso_local signext i16 @cluster_hash_key(i8*, i64) #1

declare dso_local i32 @efree(i8*) #1

declare dso_local i32* @zend_hash_index_find_ptr(i32*, i32) #1

declare dso_local i32* @cluster_dl_create(...) #1

declare dso_local i32 @zend_hash_index_update_ptr(i32*, i32, i32*) #1

declare dso_local i32* @cluster_dl_add_key(i32*, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
