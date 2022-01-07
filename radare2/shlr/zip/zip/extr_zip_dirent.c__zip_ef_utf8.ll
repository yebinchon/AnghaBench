; ModuleID = '/home/carl/AnghaBench/radare2/shlr/zip/zip/extr_zip_dirent.c__zip_ef_utf8.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/zip/zip/extr_zip_dirent.c__zip_ef_utf8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zip_extra_field = type { i32 }
%struct.zip_string = type { i32 }
%struct.zip_error = type { i32 }

@ZIP_FL_ENC_RAW = common dso_local global i32 0, align 4
@ZIP_UINT16_MAX = common dso_local global i64 0, align 8
@ZIP_ER_MEMORY = common dso_local global i32 0, align 4
@ZIP_EF_BOTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.zip_extra_field* (i32, %struct.zip_string*, %struct.zip_error*)* @_zip_ef_utf8 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.zip_extra_field* @_zip_ef_utf8(i32 %0, %struct.zip_string* %1, %struct.zip_error* %2) #0 {
  %4 = alloca %struct.zip_extra_field*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.zip_string*, align 8
  %7 = alloca %struct.zip_error*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.zip_extra_field*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.zip_string* %1, %struct.zip_string** %6, align 8
  store %struct.zip_error* %2, %struct.zip_error** %7, align 8
  %13 = load %struct.zip_string*, %struct.zip_string** %6, align 8
  %14 = load i32, i32* @ZIP_FL_ENC_RAW, align 4
  %15 = call i32* @_zip_string_get(%struct.zip_string* %13, i64* %11, i32 %14, i32* null)
  store i32* %15, i32** %8, align 8
  %16 = load i64, i64* %11, align 8
  %17 = add nsw i64 %16, 5
  %18 = load i64, i64* @ZIP_UINT16_MAX, align 8
  %19 = icmp sgt i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  br label %21

21:                                               ; preds = %20, %3
  %22 = load i64, i64* %11, align 8
  %23 = add nsw i64 %22, 5
  %24 = call i64 @malloc(i64 %23)
  %25 = inttoptr i64 %24 to i32*
  store i32* %25, i32** %9, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %21
  %28 = load %struct.zip_error*, %struct.zip_error** %7, align 8
  %29 = load i32, i32* @ZIP_ER_MEMORY, align 4
  %30 = call i32 @_zip_error_set(%struct.zip_error* %28, i32 %29, i32 0)
  store %struct.zip_extra_field* null, %struct.zip_extra_field** %4, align 8
  br label %59

31:                                               ; preds = %21
  %32 = load i32*, i32** %9, align 8
  store i32* %32, i32** %10, align 8
  %33 = load i32*, i32** %10, align 8
  %34 = getelementptr inbounds i32, i32* %33, i32 1
  store i32* %34, i32** %10, align 8
  store i32 1, i32* %33, align 4
  %35 = load %struct.zip_string*, %struct.zip_string** %6, align 8
  %36 = call i32 @_zip_string_crc32(%struct.zip_string* %35)
  %37 = call i32 @_zip_poke4(i32 %36, i32** %10)
  %38 = load i32*, i32** %10, align 8
  %39 = load i32*, i32** %8, align 8
  %40 = load i64, i64* %11, align 8
  %41 = call i32 @memcpy(i32* %38, i32* %39, i64 %40)
  %42 = load i64, i64* %11, align 8
  %43 = load i32*, i32** %10, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 %42
  store i32* %44, i32** %10, align 8
  %45 = load i32, i32* %5, align 4
  %46 = load i32*, i32** %10, align 8
  %47 = load i32*, i32** %9, align 8
  %48 = ptrtoint i32* %46 to i64
  %49 = ptrtoint i32* %47 to i64
  %50 = sub i64 %48, %49
  %51 = sdiv exact i64 %50, 4
  %52 = trunc i64 %51 to i32
  %53 = load i32*, i32** %9, align 8
  %54 = load i32, i32* @ZIP_EF_BOTH, align 4
  %55 = call %struct.zip_extra_field* @_zip_ef_new(i32 %45, i32 %52, i32* %53, i32 %54)
  store %struct.zip_extra_field* %55, %struct.zip_extra_field** %12, align 8
  %56 = load i32*, i32** %9, align 8
  %57 = call i32 @free(i32* %56)
  %58 = load %struct.zip_extra_field*, %struct.zip_extra_field** %12, align 8
  store %struct.zip_extra_field* %58, %struct.zip_extra_field** %4, align 8
  br label %59

59:                                               ; preds = %31, %27
  %60 = load %struct.zip_extra_field*, %struct.zip_extra_field** %4, align 8
  ret %struct.zip_extra_field* %60
}

declare dso_local i32* @_zip_string_get(%struct.zip_string*, i64*, i32, i32*) #1

declare dso_local i64 @malloc(i64) #1

declare dso_local i32 @_zip_error_set(%struct.zip_error*, i32, i32) #1

declare dso_local i32 @_zip_poke4(i32, i32**) #1

declare dso_local i32 @_zip_string_crc32(%struct.zip_string*) #1

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

declare dso_local %struct.zip_extra_field* @_zip_ef_new(i32, i32, i32*, i32) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
