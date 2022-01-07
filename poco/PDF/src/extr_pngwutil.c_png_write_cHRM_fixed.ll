; ModuleID = '/home/carl/AnghaBench/poco/PDF/src/extr_pngwutil.c_png_write_cHRM_fixed.c'
source_filename = "/home/carl/AnghaBench/poco/PDF/src/extr_pngwutil.c_png_write_cHRM_fixed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [19 x i8] c"in png_write_cHRM\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"Invalid fixed cHRM white point specified\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"white_x=%ld, white_y=%ld\0A\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"Invalid cHRM fixed red point specified\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"Invalid fixed cHRM green point specified\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"Invalid fixed cHRM blue point specified\00", align 1
@png_cHRM = common dso_local global i32 0, align 4
@PNG_cHRM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @png_write_cHRM_fixed(i32 %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5, i64 %6, i64 %7, i64 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca [32 x i32], align 16
  store i32 %0, i32* %10, align 4
  store i64 %1, i64* %11, align 8
  store i64 %2, i64* %12, align 8
  store i64 %3, i64* %13, align 8
  store i64 %4, i64* %14, align 8
  store i64 %5, i64* %15, align 8
  store i64 %6, i64* %16, align 8
  store i64 %7, i64* %17, align 8
  store i64 %8, i64* %18, align 8
  %20 = call i32 @png_debug(i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %21 = load i64, i64* %11, align 8
  %22 = icmp sgt i64 %21, 80000
  br i1 %22, label %31, label %23

23:                                               ; preds = %9
  %24 = load i64, i64* %12, align 8
  %25 = icmp sgt i64 %24, 80000
  br i1 %25, label %31, label %26

26:                                               ; preds = %23
  %27 = load i64, i64* %11, align 8
  %28 = load i64, i64* %12, align 8
  %29 = add nsw i64 %27, %28
  %30 = icmp sgt i64 %29, 100000
  br i1 %30, label %31, label %38

31:                                               ; preds = %26, %23, %9
  %32 = load i32, i32* %10, align 4
  %33 = call i32 @png_warning(i32 %32, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %34 = load i32, i32* @stderr, align 4
  %35 = load i64, i64* %11, align 8
  %36 = load i64, i64* %12, align 8
  %37 = call i32 @fprintf(i32 %34, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i64 %35, i64 %36)
  br label %106

38:                                               ; preds = %26
  %39 = getelementptr inbounds [32 x i32], [32 x i32]* %19, i64 0, i64 0
  %40 = load i64, i64* %11, align 8
  %41 = trunc i64 %40 to i32
  %42 = call i32 @png_save_uint_32(i32* %39, i32 %41)
  %43 = getelementptr inbounds [32 x i32], [32 x i32]* %19, i64 0, i64 0
  %44 = getelementptr inbounds i32, i32* %43, i64 4
  %45 = load i64, i64* %12, align 8
  %46 = trunc i64 %45 to i32
  %47 = call i32 @png_save_uint_32(i32* %44, i32 %46)
  %48 = load i64, i64* %13, align 8
  %49 = load i64, i64* %14, align 8
  %50 = add nsw i64 %48, %49
  %51 = icmp sgt i64 %50, 100000
  br i1 %51, label %52, label %55

52:                                               ; preds = %38
  %53 = load i32, i32* %10, align 4
  %54 = call i32 @png_warning(i32 %53, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  br label %106

55:                                               ; preds = %38
  %56 = getelementptr inbounds [32 x i32], [32 x i32]* %19, i64 0, i64 0
  %57 = getelementptr inbounds i32, i32* %56, i64 8
  %58 = load i64, i64* %13, align 8
  %59 = trunc i64 %58 to i32
  %60 = call i32 @png_save_uint_32(i32* %57, i32 %59)
  %61 = getelementptr inbounds [32 x i32], [32 x i32]* %19, i64 0, i64 0
  %62 = getelementptr inbounds i32, i32* %61, i64 12
  %63 = load i64, i64* %14, align 8
  %64 = trunc i64 %63 to i32
  %65 = call i32 @png_save_uint_32(i32* %62, i32 %64)
  %66 = load i64, i64* %15, align 8
  %67 = load i64, i64* %16, align 8
  %68 = add nsw i64 %66, %67
  %69 = icmp sgt i64 %68, 100000
  br i1 %69, label %70, label %73

70:                                               ; preds = %55
  %71 = load i32, i32* %10, align 4
  %72 = call i32 @png_warning(i32 %71, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0))
  br label %106

73:                                               ; preds = %55
  %74 = getelementptr inbounds [32 x i32], [32 x i32]* %19, i64 0, i64 0
  %75 = getelementptr inbounds i32, i32* %74, i64 16
  %76 = load i64, i64* %15, align 8
  %77 = trunc i64 %76 to i32
  %78 = call i32 @png_save_uint_32(i32* %75, i32 %77)
  %79 = getelementptr inbounds [32 x i32], [32 x i32]* %19, i64 0, i64 0
  %80 = getelementptr inbounds i32, i32* %79, i64 20
  %81 = load i64, i64* %16, align 8
  %82 = trunc i64 %81 to i32
  %83 = call i32 @png_save_uint_32(i32* %80, i32 %82)
  %84 = load i64, i64* %17, align 8
  %85 = load i64, i64* %18, align 8
  %86 = add nsw i64 %84, %85
  %87 = icmp sgt i64 %86, 100000
  br i1 %87, label %88, label %91

88:                                               ; preds = %73
  %89 = load i32, i32* %10, align 4
  %90 = call i32 @png_warning(i32 %89, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0))
  br label %106

91:                                               ; preds = %73
  %92 = getelementptr inbounds [32 x i32], [32 x i32]* %19, i64 0, i64 0
  %93 = getelementptr inbounds i32, i32* %92, i64 24
  %94 = load i64, i64* %17, align 8
  %95 = trunc i64 %94 to i32
  %96 = call i32 @png_save_uint_32(i32* %93, i32 %95)
  %97 = getelementptr inbounds [32 x i32], [32 x i32]* %19, i64 0, i64 0
  %98 = getelementptr inbounds i32, i32* %97, i64 28
  %99 = load i64, i64* %18, align 8
  %100 = trunc i64 %99 to i32
  %101 = call i32 @png_save_uint_32(i32* %98, i32 %100)
  %102 = load i32, i32* %10, align 4
  %103 = load i32, i32* @png_cHRM, align 4
  %104 = getelementptr inbounds [32 x i32], [32 x i32]* %19, i64 0, i64 0
  %105 = call i32 @png_write_chunk(i32 %102, i32 %103, i32* %104, i32 32)
  br label %106

106:                                              ; preds = %91, %88, %70, %52, %31
  ret void
}

declare dso_local i32 @png_debug(i32, i8*) #1

declare dso_local i32 @png_warning(i32, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i64, i64) #1

declare dso_local i32 @png_save_uint_32(i32*, i32) #1

declare dso_local i32 @png_write_chunk(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
