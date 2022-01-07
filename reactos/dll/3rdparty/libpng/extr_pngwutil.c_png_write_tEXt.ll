; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libpng/extr_pngwutil.c_png_write_tEXt.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libpng/extr_pngwutil.c_png_write_tEXt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [18 x i8] c"in png_write_tEXt\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"tEXt: invalid keyword\00", align 1
@PNG_UINT_31_MAX = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [20 x i8] c"tEXt: text too long\00", align 1
@png_tEXt = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @png_write_tEXt(i32 %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca [80 x i32], align 16
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %11 = call i32 @png_debug(i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %12 = load i32, i32* %5, align 4
  %13 = load i8*, i8** %6, align 8
  %14 = getelementptr inbounds [80 x i32], [80 x i32]* %10, i64 0, i64 0
  %15 = call i64 @png_check_keyword(i32 %12, i8* %13, i32* %14)
  store i64 %15, i64* %9, align 8
  %16 = load i64, i64* %9, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @png_error(i32 %19, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %21

21:                                               ; preds = %18, %4
  %22 = load i8*, i8** %7, align 8
  %23 = icmp eq i8* %22, null
  br i1 %23, label %29, label %24

24:                                               ; preds = %21
  %25 = load i8*, i8** %7, align 8
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24, %21
  store i64 0, i64* %8, align 8
  br label %33

30:                                               ; preds = %24
  %31 = load i8*, i8** %7, align 8
  %32 = call i64 @strlen(i8* %31)
  store i64 %32, i64* %8, align 8
  br label %33

33:                                               ; preds = %30, %29
  %34 = load i64, i64* %8, align 8
  %35 = load i64, i64* @PNG_UINT_31_MAX, align 8
  %36 = load i64, i64* %9, align 8
  %37 = add nsw i64 %36, 1
  %38 = sub nsw i64 %35, %37
  %39 = icmp ugt i64 %34, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %33
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @png_error(i32 %41, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  br label %43

43:                                               ; preds = %40, %33
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* @png_tEXt, align 4
  %46 = load i64, i64* %9, align 8
  %47 = load i64, i64* %8, align 8
  %48 = add i64 %46, %47
  %49 = add i64 %48, 1
  %50 = call i32 @png_write_chunk_header(i32 %44, i32 %45, i64 %49)
  %51 = load i32, i32* %5, align 4
  %52 = getelementptr inbounds [80 x i32], [80 x i32]* %10, i64 0, i64 0
  %53 = load i64, i64* %9, align 8
  %54 = add nsw i64 %53, 1
  %55 = call i32 @png_write_chunk_data(i32 %51, i32* %52, i64 %54)
  %56 = load i64, i64* %8, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %43
  %59 = load i32, i32* %5, align 4
  %60 = load i8*, i8** %7, align 8
  %61 = bitcast i8* %60 to i32*
  %62 = load i64, i64* %8, align 8
  %63 = call i32 @png_write_chunk_data(i32 %59, i32* %61, i64 %62)
  br label %64

64:                                               ; preds = %58, %43
  %65 = load i32, i32* %5, align 4
  %66 = call i32 @png_write_chunk_end(i32 %65)
  ret void
}

declare dso_local i32 @png_debug(i32, i8*) #1

declare dso_local i64 @png_check_keyword(i32, i8*, i32*) #1

declare dso_local i32 @png_error(i32, i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @png_write_chunk_header(i32, i32, i64) #1

declare dso_local i32 @png_write_chunk_data(i32, i32*, i64) #1

declare dso_local i32 @png_write_chunk_end(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
