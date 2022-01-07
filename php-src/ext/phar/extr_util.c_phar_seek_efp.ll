; ModuleID = '/home/carl/AnghaBench/php-src/ext/phar/extr_util.c_phar_seek_efp.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/phar/extr_util.c_phar_seek_efp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @phar_seek_efp(%struct.TYPE_7__* %0, i64 %1, i32 %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %17 = load i32, i32* %11, align 4
  %18 = call i32* @phar_get_efp(%struct.TYPE_7__* %16, i32 %17)
  store i32* %18, i32** %12, align 8
  %19 = load i32*, i32** %12, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %80

22:                                               ; preds = %5
  %23 = load i32, i32* %11, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %22
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %27 = call %struct.TYPE_7__* @phar_get_link_source(%struct.TYPE_7__* %26)
  store %struct.TYPE_7__* %27, %struct.TYPE_7__** %15, align 8
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %29 = icmp ne %struct.TYPE_7__* %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  store %struct.TYPE_7__* %31, %struct.TYPE_7__** %7, align 8
  br label %32

32:                                               ; preds = %30, %25
  br label %33

33:                                               ; preds = %32, %22
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  store i32 0, i32* %6, align 4
  br label %80

39:                                               ; preds = %33
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %41 = call i64 @phar_get_fp_offset(%struct.TYPE_7__* %40)
  store i64 %41, i64* %14, align 8
  %42 = load i32, i32* %9, align 4
  switch i32 %42, label %61 [
    i32 129, label %43
    i32 130, label %51
    i32 128, label %57
  ]

43:                                               ; preds = %39
  %44 = load i64, i64* %14, align 8
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %44, %47
  %49 = load i64, i64* %8, align 8
  %50 = add nsw i64 %48, %49
  store i64 %50, i64* %13, align 8
  br label %62

51:                                               ; preds = %39
  %52 = load i64, i64* %14, align 8
  %53 = load i64, i64* %10, align 8
  %54 = add nsw i64 %52, %53
  %55 = load i64, i64* %8, align 8
  %56 = add nsw i64 %54, %55
  store i64 %56, i64* %13, align 8
  br label %62

57:                                               ; preds = %39
  %58 = load i64, i64* %14, align 8
  %59 = load i64, i64* %8, align 8
  %60 = add nsw i64 %58, %59
  store i64 %60, i64* %13, align 8
  br label %62

61:                                               ; preds = %39
  store i64 0, i64* %13, align 8
  br label %62

62:                                               ; preds = %61, %57, %51, %43
  %63 = load i64, i64* %13, align 8
  %64 = load i64, i64* %14, align 8
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = add nsw i64 %64, %67
  %69 = icmp sgt i64 %63, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %62
  store i32 -1, i32* %6, align 4
  br label %80

71:                                               ; preds = %62
  %72 = load i64, i64* %13, align 8
  %73 = load i64, i64* %14, align 8
  %74 = icmp slt i64 %72, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %71
  store i32 -1, i32* %6, align 4
  br label %80

76:                                               ; preds = %71
  %77 = load i32*, i32** %12, align 8
  %78 = load i64, i64* %13, align 8
  %79 = call i32 @php_stream_seek(i32* %77, i64 %78, i32 128)
  store i32 %79, i32* %6, align 4
  br label %80

80:                                               ; preds = %76, %75, %70, %38, %21
  %81 = load i32, i32* %6, align 4
  ret i32 %81
}

declare dso_local i32* @phar_get_efp(%struct.TYPE_7__*, i32) #1

declare dso_local %struct.TYPE_7__* @phar_get_link_source(%struct.TYPE_7__*) #1

declare dso_local i64 @phar_get_fp_offset(%struct.TYPE_7__*) #1

declare dso_local i32 @php_stream_seek(i32*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
