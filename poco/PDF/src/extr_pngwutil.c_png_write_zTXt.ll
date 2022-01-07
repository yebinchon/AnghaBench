; ModuleID = '/home/carl/AnghaBench/poco/PDF/src/extr_pngwutil.c_png_write_zTXt.c'
source_filename = "/home/carl/AnghaBench/poco/PDF/src/extr_pngwutil.c_png_write_zTXt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32*, i32*, i64, i64 }

@.str = private unnamed_addr constant [19 x i8] c"in png_write_zTXt\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Empty keyword in zTXt chunk\00", align 1
@PNG_TEXT_COMPRESSION_NONE = common dso_local global i32 0, align 4
@png_zTXt = common dso_local global i32 0, align 4
@PNG_zTXt = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @png_write_zTXt(i32 %0, i8* %1, i8* %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca [1 x i8], align 1
  %13 = alloca i8*, align 8
  %14 = alloca %struct.TYPE_4__, align 8
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  %15 = call i32 @png_debug(i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 4
  store i64 0, i64* %16, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 3
  store i64 0, i64* %17, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 2
  store i32* null, i32** %18, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  store i32* null, i32** %19, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  store i64 0, i64* %20, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = icmp eq i8* %21, null
  br i1 %22, label %28, label %23

23:                                               ; preds = %5
  %24 = load i32, i32* %6, align 4
  %25 = load i8*, i8** %7, align 8
  %26 = call i64 @png_check_keyword(i32 %24, i8* %25, i8** %13)
  store i64 %26, i64* %11, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %23, %5
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @png_warning(i32 %29, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %87

31:                                               ; preds = %23
  %32 = load i8*, i8** %8, align 8
  %33 = icmp eq i8* %32, null
  br i1 %33, label %43, label %34

34:                                               ; preds = %31
  %35 = load i8*, i8** %8, align 8
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %34
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* @PNG_TEXT_COMPRESSION_NONE, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %51

43:                                               ; preds = %39, %34, %31
  %44 = load i32, i32* %6, align 4
  %45 = load i8*, i8** %13, align 8
  %46 = load i8*, i8** %8, align 8
  %47 = call i32 @png_write_tEXt(i32 %44, i8* %45, i8* %46, i64 0)
  %48 = load i32, i32* %6, align 4
  %49 = load i8*, i8** %13, align 8
  %50 = call i32 @png_free(i32 %48, i8* %49)
  br label %87

51:                                               ; preds = %39
  %52 = load i8*, i8** %8, align 8
  %53 = call i64 @png_strlen(i8* %52)
  store i64 %53, i64* %9, align 8
  %54 = load i32, i32* %6, align 4
  %55 = load i8*, i8** %8, align 8
  %56 = load i64, i64* %9, align 8
  %57 = load i32, i32* %10, align 4
  %58 = call i64 @png_text_compress(i32 %54, i8* %55, i64 %56, i32 %57, %struct.TYPE_4__* %14)
  store i64 %58, i64* %9, align 8
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* @png_zTXt, align 4
  %61 = load i64, i64* %11, align 8
  %62 = load i64, i64* %9, align 8
  %63 = add nsw i64 %61, %62
  %64 = add nsw i64 %63, 2
  %65 = trunc i64 %64 to i32
  %66 = call i32 @png_write_chunk_start(i32 %59, i32 %60, i32 %65)
  %67 = load i32, i32* %6, align 4
  %68 = load i8*, i8** %13, align 8
  %69 = ptrtoint i8* %68 to i32
  %70 = load i64, i64* %11, align 8
  %71 = add nsw i64 %70, 1
  %72 = call i32 @png_write_chunk_data(i32 %67, i32 %69, i64 %71)
  %73 = load i32, i32* %6, align 4
  %74 = load i8*, i8** %13, align 8
  %75 = call i32 @png_free(i32 %73, i8* %74)
  %76 = load i32, i32* %10, align 4
  %77 = trunc i32 %76 to i8
  %78 = getelementptr inbounds [1 x i8], [1 x i8]* %12, i64 0, i64 0
  store i8 %77, i8* %78, align 1
  %79 = load i32, i32* %6, align 4
  %80 = getelementptr inbounds [1 x i8], [1 x i8]* %12, i64 0, i64 0
  %81 = ptrtoint i8* %80 to i32
  %82 = call i32 @png_write_chunk_data(i32 %79, i32 %81, i64 1)
  %83 = load i32, i32* %6, align 4
  %84 = call i32 @png_write_compressed_data_out(i32 %83, %struct.TYPE_4__* %14)
  %85 = load i32, i32* %6, align 4
  %86 = call i32 @png_write_chunk_end(i32 %85)
  br label %87

87:                                               ; preds = %51, %43, %28
  ret void
}

declare dso_local i32 @png_debug(i32, i8*) #1

declare dso_local i64 @png_check_keyword(i32, i8*, i8**) #1

declare dso_local i32 @png_warning(i32, i8*) #1

declare dso_local i32 @png_write_tEXt(i32, i8*, i8*, i64) #1

declare dso_local i32 @png_free(i32, i8*) #1

declare dso_local i64 @png_strlen(i8*) #1

declare dso_local i64 @png_text_compress(i32, i8*, i64, i32, %struct.TYPE_4__*) #1

declare dso_local i32 @png_write_chunk_start(i32, i32, i32) #1

declare dso_local i32 @png_write_chunk_data(i32, i32, i64) #1

declare dso_local i32 @png_write_compressed_data_out(i32, %struct.TYPE_4__*) #1

declare dso_local i32 @png_write_chunk_end(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
