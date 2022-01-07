; ModuleID = '/home/carl/AnghaBench/lwan/src/lib/extr_lwan-tables.c_lwan_tables_init.c'
source_filename = "/home/carl/AnghaBench/lwan/src/lib/extr_lwan-tables.c_lwan_tables_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mime_entries_initialized = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"Uncompressing MIME type table: %u->%u bytes, %d entries\00", align 1
@MIME_COMPRESSED_LEN = common dso_local global i32 0, align 4
@MIME_UNCOMPRESSED_LEN = common dso_local global i64 0, align 8
@MIME_ENTRIES = common dso_local global i32 0, align 4
@uncompressed_mime_entries = common dso_local global i8* null, align 8
@mime_entries_compressed = common dso_local global i64 0, align 8
@Z_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"Error while uncompressing table: zlib error %d\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"Expected uncompressed length %d, got %ld\00", align 1
@mime_types = common dso_local global i8** null, align 8
@BROTLI_DECODER_RESULT_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lwan_tables_init() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = load i32, i32* @mime_entries_initialized, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %0
  br label %58

8:                                                ; preds = %0
  %9 = load i32, i32* @MIME_COMPRESSED_LEN, align 4
  %10 = load i64, i64* @MIME_UNCOMPRESSED_LEN, align 8
  %11 = load i32, i32* @MIME_ENTRIES, align 4
  %12 = call i32 @lwan_status_debug(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %9, i64 %10, i32 %11)
  %13 = load i64, i64* @MIME_UNCOMPRESSED_LEN, align 8
  store i64 %13, i64* %1, align 8
  %14 = load i8*, i8** @uncompressed_mime_entries, align 8
  %15 = bitcast i8* %14 to i32*
  %16 = load i64, i64* @mime_entries_compressed, align 8
  %17 = inttoptr i64 %16 to i32*
  %18 = load i32, i32* @MIME_COMPRESSED_LEN, align 4
  %19 = call i32 @uncompress(i32* %15, i64* %1, i32* %17, i32 %18)
  store i32 %19, i32* %2, align 4
  %20 = load i32, i32* %2, align 4
  %21 = load i32, i32* @Z_OK, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %8
  %24 = load i32, i32* %2, align 4
  %25 = call i32 (i8*, ...) @lwan_status_critical(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %24)
  br label %26

26:                                               ; preds = %23, %8
  %27 = load i64, i64* %1, align 8
  %28 = load i64, i64* @MIME_UNCOMPRESSED_LEN, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %26
  %31 = load i64, i64* @MIME_UNCOMPRESSED_LEN, align 8
  %32 = load i64, i64* %1, align 8
  %33 = call i32 (i8*, ...) @lwan_status_critical(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i64 %31, i64 %32)
  br label %34

34:                                               ; preds = %30, %26
  %35 = load i8*, i8** @uncompressed_mime_entries, align 8
  %36 = load i32, i32* @MIME_ENTRIES, align 4
  %37 = mul nsw i32 8, %36
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8, i8* %35, i64 %38
  store i8* %39, i8** %3, align 8
  store i64 0, i64* %4, align 8
  br label %40

40:                                               ; preds = %54, %34
  %41 = load i64, i64* %4, align 8
  %42 = load i32, i32* @MIME_ENTRIES, align 4
  %43 = sext i32 %42 to i64
  %44 = icmp ult i64 %41, %43
  br i1 %44, label %45, label %57

45:                                               ; preds = %40
  %46 = load i8*, i8** %3, align 8
  %47 = load i8**, i8*** @mime_types, align 8
  %48 = load i64, i64* %4, align 8
  %49 = getelementptr inbounds i8*, i8** %47, i64 %48
  store i8* %46, i8** %49, align 8
  %50 = load i8*, i8** %3, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 1
  %52 = call i8* @rawmemchr(i8* %51, i8 signext 0)
  %53 = getelementptr inbounds i8, i8* %52, i64 1
  store i8* %53, i8** %3, align 8
  br label %54

54:                                               ; preds = %45
  %55 = load i64, i64* %4, align 8
  %56 = add i64 %55, 1
  store i64 %56, i64* %4, align 8
  br label %40

57:                                               ; preds = %40
  store i32 1, i32* @mime_entries_initialized, align 4
  br label %58

58:                                               ; preds = %57, %7
  ret void
}

declare dso_local i32 @lwan_status_debug(i8*, i32, i64, i32) #1

declare dso_local i32 @uncompress(i32*, i64*, i32*, i32) #1

declare dso_local i32 @lwan_status_critical(i8*, ...) #1

declare dso_local i8* @rawmemchr(i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
