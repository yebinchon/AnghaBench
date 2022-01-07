; ModuleID = '/home/carl/AnghaBench/phpredis/extr_redis_array_impl.c_ra_move_key.c'
source_filename = "/home/carl/AnghaBench/phpredis/extr_redis_array_impl.c_ra_move_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MULTI = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ra_move_key(i8* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca [2 x i64], align 16
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %13 = bitcast [2 x i64]* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %13, i8 0, i64 16, i1 false)
  store i64 0, i64* %12, align 8
  %14 = load i32*, i32** %7, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = load i32, i32* %6, align 4
  %17 = load i32*, i32** %7, align 8
  %18 = getelementptr inbounds [2 x i64], [2 x i64]* %9, i64 0, i64 0
  %19 = call i64 @ra_get_key_type(i32* %14, i8* %15, i32 %16, i32* %17, i64* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %67

21:                                               ; preds = %4
  %22 = getelementptr inbounds [2 x i64], [2 x i64]* %9, i64 0, i64 0
  %23 = load i64, i64* %22, align 16
  store i64 %23, i64* %10, align 8
  %24 = getelementptr inbounds [2 x i64], [2 x i64]* %9, i64 0, i64 1
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %11, align 8
  %26 = load i32*, i32** %8, align 8
  %27 = load i32, i32* @MULTI, align 4
  %28 = call i32 @ra_index_multi(i32* %26, i32 %27)
  %29 = load i64, i64* %10, align 8
  switch i64 %29, label %65 [
    i64 129, label %30
    i64 130, label %37
    i64 131, label %44
    i64 128, label %51
    i64 132, label %58
  ]

30:                                               ; preds = %21
  %31 = load i8*, i8** %5, align 8
  %32 = load i32, i32* %6, align 4
  %33 = load i32*, i32** %7, align 8
  %34 = load i32*, i32** %8, align 8
  %35 = load i64, i64* %11, align 8
  %36 = call i64 @ra_move_string(i8* %31, i32 %32, i32* %33, i32* %34, i64 %35)
  store i64 %36, i64* %12, align 8
  br label %66

37:                                               ; preds = %21
  %38 = load i8*, i8** %5, align 8
  %39 = load i32, i32* %6, align 4
  %40 = load i32*, i32** %7, align 8
  %41 = load i32*, i32** %8, align 8
  %42 = load i64, i64* %11, align 8
  %43 = call i64 @ra_move_set(i8* %38, i32 %39, i32* %40, i32* %41, i64 %42)
  store i64 %43, i64* %12, align 8
  br label %66

44:                                               ; preds = %21
  %45 = load i8*, i8** %5, align 8
  %46 = load i32, i32* %6, align 4
  %47 = load i32*, i32** %7, align 8
  %48 = load i32*, i32** %8, align 8
  %49 = load i64, i64* %11, align 8
  %50 = call i64 @ra_move_list(i8* %45, i32 %46, i32* %47, i32* %48, i64 %49)
  store i64 %50, i64* %12, align 8
  br label %66

51:                                               ; preds = %21
  %52 = load i8*, i8** %5, align 8
  %53 = load i32, i32* %6, align 4
  %54 = load i32*, i32** %7, align 8
  %55 = load i32*, i32** %8, align 8
  %56 = load i64, i64* %11, align 8
  %57 = call i64 @ra_move_zset(i8* %52, i32 %53, i32* %54, i32* %55, i64 %56)
  store i64 %57, i64* %12, align 8
  br label %66

58:                                               ; preds = %21
  %59 = load i8*, i8** %5, align 8
  %60 = load i32, i32* %6, align 4
  %61 = load i32*, i32** %7, align 8
  %62 = load i32*, i32** %8, align 8
  %63 = load i64, i64* %11, align 8
  %64 = call i64 @ra_move_hash(i8* %59, i32 %60, i32* %61, i32* %62, i64 %63)
  store i64 %64, i64* %12, align 8
  br label %66

65:                                               ; preds = %21
  br label %66

66:                                               ; preds = %65, %58, %51, %44, %37, %30
  br label %67

67:                                               ; preds = %66, %4
  %68 = load i64, i64* %12, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %79

70:                                               ; preds = %67
  %71 = load i8*, i8** %5, align 8
  %72 = load i32, i32* %6, align 4
  %73 = load i32*, i32** %7, align 8
  %74 = call i32 @ra_del_key(i8* %71, i32 %72, i32* %73)
  %75 = load i8*, i8** %5, align 8
  %76 = load i32, i32* %6, align 4
  %77 = load i32*, i32** %8, align 8
  %78 = call i32 @ra_index_key(i8* %75, i32 %76, i32* %77)
  br label %79

79:                                               ; preds = %70, %67
  %80 = load i32*, i32** %8, align 8
  %81 = call i32 @ra_index_exec(i32* %80, i32* null, i32 0)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @ra_get_key_type(i32*, i8*, i32, i32*, i64*) #2

declare dso_local i32 @ra_index_multi(i32*, i32) #2

declare dso_local i64 @ra_move_string(i8*, i32, i32*, i32*, i64) #2

declare dso_local i64 @ra_move_set(i8*, i32, i32*, i32*, i64) #2

declare dso_local i64 @ra_move_list(i8*, i32, i32*, i32*, i64) #2

declare dso_local i64 @ra_move_zset(i8*, i32, i32*, i32*, i64) #2

declare dso_local i64 @ra_move_hash(i8*, i32, i32*, i32*, i64) #2

declare dso_local i32 @ra_del_key(i8*, i32, i32*) #2

declare dso_local i32 @ra_index_key(i8*, i32, i32*) #2

declare dso_local i32 @ra_index_exec(i32*, i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
