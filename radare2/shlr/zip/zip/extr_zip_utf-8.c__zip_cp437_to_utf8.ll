; ModuleID = '/home/carl/AnghaBench/radare2/shlr/zip/zip/extr_zip_utf-8.c__zip_cp437_to_utf8.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/zip/zip/extr_zip_utf-8.c__zip_cp437_to_utf8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zip_error = type { i32 }

@_cp437_to_unicode = common dso_local global i32* null, align 8
@ZIP_ER_MEMORY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64* @_zip_cp437_to_utf8(i64* %0, i64 %1, i64* %2, %struct.zip_error* %3) #0 {
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca %struct.zip_error*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i64* %0, i64** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64* %2, i64** %8, align 8
  store %struct.zip_error* %3, %struct.zip_error** %9, align 8
  %15 = load i64*, i64** %6, align 8
  store i64* %15, i64** %10, align 8
  %16 = load i64, i64* %7, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %4
  %19 = load i64*, i64** %8, align 8
  %20 = icmp ne i64* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = load i64*, i64** %8, align 8
  store i64 0, i64* %22, align 8
  br label %23

23:                                               ; preds = %21, %18
  store i64* null, i64** %5, align 8
  br label %96

24:                                               ; preds = %4
  store i64 1, i64* %12, align 8
  store i64 0, i64* %13, align 8
  br label %25

25:                                               ; preds = %40, %24
  %26 = load i64, i64* %13, align 8
  %27 = load i64, i64* %7, align 8
  %28 = icmp ult i64 %26, %27
  br i1 %28, label %29, label %43

29:                                               ; preds = %25
  %30 = load i32*, i32** @_cp437_to_unicode, align 8
  %31 = load i64*, i64** %10, align 8
  %32 = load i64, i64* %13, align 8
  %33 = getelementptr inbounds i64, i64* %31, i64 %32
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds i32, i32* %30, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @_zip_unicode_to_utf8_len(i32 %36)
  %38 = load i64, i64* %12, align 8
  %39 = add i64 %38, %37
  store i64 %39, i64* %12, align 8
  br label %40

40:                                               ; preds = %29
  %41 = load i64, i64* %13, align 8
  %42 = add i64 %41, 1
  store i64 %42, i64* %13, align 8
  br label %25

43:                                               ; preds = %25
  %44 = load i64, i64* %12, align 8
  %45 = call i64 @malloc(i64 %44)
  %46 = inttoptr i64 %45 to i64*
  store i64* %46, i64** %11, align 8
  %47 = icmp eq i64* %46, null
  br i1 %47, label %48, label %52

48:                                               ; preds = %43
  %49 = load %struct.zip_error*, %struct.zip_error** %9, align 8
  %50 = load i32, i32* @ZIP_ER_MEMORY, align 4
  %51 = call i32 @_zip_error_set(%struct.zip_error* %49, i32 %50, i32 0)
  store i64* null, i64** %5, align 8
  br label %96

52:                                               ; preds = %43
  store i64 0, i64* %14, align 8
  store i64 0, i64* %13, align 8
  br label %53

53:                                               ; preds = %80, %52
  %54 = load i64, i64* %13, align 8
  %55 = load i64, i64* %7, align 8
  %56 = icmp ult i64 %54, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %53
  %58 = load i64, i64* %14, align 8
  %59 = load i64, i64* %12, align 8
  %60 = icmp ult i64 %58, %59
  br label %61

61:                                               ; preds = %57, %53
  %62 = phi i1 [ false, %53 ], [ %60, %57 ]
  br i1 %62, label %63, label %83

63:                                               ; preds = %61
  %64 = load i32*, i32** @_cp437_to_unicode, align 8
  %65 = load i64*, i64** %10, align 8
  %66 = load i64, i64* %13, align 8
  %67 = getelementptr inbounds i64, i64* %65, i64 %66
  %68 = load i64, i64* %67, align 8
  %69 = getelementptr inbounds i32, i32* %64, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = load i64*, i64** %11, align 8
  %72 = load i64, i64* %14, align 8
  %73 = getelementptr inbounds i64, i64* %71, i64 %72
  %74 = load i64, i64* %12, align 8
  %75 = load i64, i64* %14, align 8
  %76 = sub i64 %74, %75
  %77 = call i64 @_zip_unicode_to_utf8(i32 %70, i64* %73, i64 %76)
  %78 = load i64, i64* %14, align 8
  %79 = add i64 %78, %77
  store i64 %79, i64* %14, align 8
  br label %80

80:                                               ; preds = %63
  %81 = load i64, i64* %13, align 8
  %82 = add i64 %81, 1
  store i64 %82, i64* %13, align 8
  br label %53

83:                                               ; preds = %61
  %84 = load i64*, i64** %11, align 8
  %85 = load i64, i64* %12, align 8
  %86 = sub i64 %85, 1
  %87 = getelementptr inbounds i64, i64* %84, i64 %86
  store i64 0, i64* %87, align 8
  %88 = load i64*, i64** %8, align 8
  %89 = icmp ne i64* %88, null
  br i1 %89, label %90, label %94

90:                                               ; preds = %83
  %91 = load i64, i64* %12, align 8
  %92 = sub i64 %91, 1
  %93 = load i64*, i64** %8, align 8
  store i64 %92, i64* %93, align 8
  br label %94

94:                                               ; preds = %90, %83
  %95 = load i64*, i64** %11, align 8
  store i64* %95, i64** %5, align 8
  br label %96

96:                                               ; preds = %94, %48, %23
  %97 = load i64*, i64** %5, align 8
  ret i64* %97
}

declare dso_local i64 @_zip_unicode_to_utf8_len(i32) #1

declare dso_local i64 @malloc(i64) #1

declare dso_local i32 @_zip_error_set(%struct.zip_error*, i32, i32) #1

declare dso_local i64 @_zip_unicode_to_utf8(i32, i64*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
