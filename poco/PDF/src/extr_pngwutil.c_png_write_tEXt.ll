; ModuleID = '/home/carl/AnghaBench/poco/PDF/src/extr_pngwutil.c_png_write_tEXt.c'
source_filename = "/home/carl/AnghaBench/poco/PDF/src/extr_pngwutil.c_png_write_tEXt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [19 x i8] c"in png_write_tEXt\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Empty keyword in tEXt chunk\00", align 1
@png_tEXt = common dso_local global i32 0, align 4
@PNG_tEXt = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @png_write_tEXt(i32 %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %11 = call i32 @png_debug(i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %12 = load i8*, i8** %6, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %4
  %15 = load i32, i32* %5, align 4
  %16 = load i8*, i8** %6, align 8
  %17 = call i64 @png_check_keyword(i32 %15, i8* %16, i8** %10)
  store i64 %17, i64* %9, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %14, %4
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @png_warning(i32 %20, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %62

22:                                               ; preds = %14
  %23 = load i8*, i8** %7, align 8
  %24 = icmp eq i8* %23, null
  br i1 %24, label %30, label %25

25:                                               ; preds = %22
  %26 = load i8*, i8** %7, align 8
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25, %22
  store i64 0, i64* %8, align 8
  br label %34

31:                                               ; preds = %25
  %32 = load i8*, i8** %7, align 8
  %33 = call i64 @png_strlen(i8* %32)
  store i64 %33, i64* %8, align 8
  br label %34

34:                                               ; preds = %31, %30
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @png_tEXt, align 4
  %37 = load i64, i64* %9, align 8
  %38 = load i64, i64* %8, align 8
  %39 = add nsw i64 %37, %38
  %40 = add nsw i64 %39, 1
  %41 = call i32 @png_write_chunk_start(i32 %35, i32 %36, i64 %40)
  %42 = load i32, i32* %5, align 4
  %43 = load i8*, i8** %10, align 8
  %44 = ptrtoint i8* %43 to i32
  %45 = load i64, i64* %9, align 8
  %46 = add nsw i64 %45, 1
  %47 = call i32 @png_write_chunk_data(i32 %42, i32 %44, i64 %46)
  %48 = load i64, i64* %8, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %34
  %51 = load i32, i32* %5, align 4
  %52 = load i8*, i8** %7, align 8
  %53 = ptrtoint i8* %52 to i32
  %54 = load i64, i64* %8, align 8
  %55 = call i32 @png_write_chunk_data(i32 %51, i32 %53, i64 %54)
  br label %56

56:                                               ; preds = %50, %34
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @png_write_chunk_end(i32 %57)
  %59 = load i32, i32* %5, align 4
  %60 = load i8*, i8** %10, align 8
  %61 = call i32 @png_free(i32 %59, i8* %60)
  br label %62

62:                                               ; preds = %56, %19
  ret void
}

declare dso_local i32 @png_debug(i32, i8*) #1

declare dso_local i64 @png_check_keyword(i32, i8*, i8**) #1

declare dso_local i32 @png_warning(i32, i8*) #1

declare dso_local i64 @png_strlen(i8*) #1

declare dso_local i32 @png_write_chunk_start(i32, i32, i64) #1

declare dso_local i32 @png_write_chunk_data(i32, i32, i64) #1

declare dso_local i32 @png_write_chunk_end(i32) #1

declare dso_local i32 @png_free(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
