; ModuleID = '/home/carl/AnghaBench/radare2/shlr/zip/zip/extr_zip_dirent.c__zip_dirent_process_ef_utf_8.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/zip/zip/extr_zip_dirent.c__zip_dirent_process_ef_utf_8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zip_dirent = type { i32 }
%struct.zip_string = type { i32 }

@ZIP_EF_BOTH = common dso_local global i32 0, align 4
@ZIP_ENCODING_UTF8_KNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.zip_string* (%struct.zip_dirent*, i32, %struct.zip_string*)* @_zip_dirent_process_ef_utf_8 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.zip_string* @_zip_dirent_process_ef_utf_8(%struct.zip_dirent* %0, i32 %1, %struct.zip_string* %2) #0 {
  %4 = alloca %struct.zip_string*, align 8
  %5 = alloca %struct.zip_dirent*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.zip_string*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.zip_string*, align 8
  store %struct.zip_dirent* %0, %struct.zip_dirent** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.zip_string* %2, %struct.zip_string** %7, align 8
  %12 = load %struct.zip_dirent*, %struct.zip_dirent** %5, align 8
  %13 = getelementptr inbounds %struct.zip_dirent, %struct.zip_dirent* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @ZIP_EF_BOTH, align 4
  %17 = call i32* @_zip_ef_get_by_id(i32 %14, i32* %8, i32 %15, i32 0, i32 %16, i32* null)
  store i32* %17, i32** %10, align 8
  %18 = load i32*, i32** %10, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %28, label %20

20:                                               ; preds = %3
  %21 = load i32, i32* %8, align 4
  %22 = icmp slt i32 %21, 5
  br i1 %22, label %28, label %23

23:                                               ; preds = %20
  %24 = load i32*, i32** %10, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 1
  br i1 %27, label %28, label %30

28:                                               ; preds = %23, %20, %3
  %29 = load %struct.zip_string*, %struct.zip_string** %7, align 8
  store %struct.zip_string* %29, %struct.zip_string** %4, align 8
  br label %53

30:                                               ; preds = %23
  %31 = load i32*, i32** %10, align 8
  %32 = getelementptr inbounds i32, i32* %31, i32 1
  store i32* %32, i32** %10, align 8
  %33 = call i64 @_zip_read4(i32** %10)
  store i64 %33, i64* %9, align 8
  %34 = load %struct.zip_string*, %struct.zip_string** %7, align 8
  %35 = call i64 @_zip_string_crc32(%struct.zip_string* %34)
  %36 = load i64, i64* %9, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %51

38:                                               ; preds = %30
  %39 = load i32*, i32** %10, align 8
  %40 = load i32, i32* %8, align 4
  %41 = sub nsw i32 %40, 5
  %42 = load i32, i32* @ZIP_ENCODING_UTF8_KNOWN, align 4
  %43 = call %struct.zip_string* @_zip_string_new(i32* %39, i32 %41, i32 %42, i32* null)
  store %struct.zip_string* %43, %struct.zip_string** %11, align 8
  %44 = load %struct.zip_string*, %struct.zip_string** %11, align 8
  %45 = icmp ne %struct.zip_string* %44, null
  br i1 %45, label %46, label %50

46:                                               ; preds = %38
  %47 = load %struct.zip_string*, %struct.zip_string** %7, align 8
  %48 = call i32 @_zip_string_free(%struct.zip_string* %47)
  %49 = load %struct.zip_string*, %struct.zip_string** %11, align 8
  store %struct.zip_string* %49, %struct.zip_string** %7, align 8
  br label %50

50:                                               ; preds = %46, %38
  br label %51

51:                                               ; preds = %50, %30
  %52 = load %struct.zip_string*, %struct.zip_string** %7, align 8
  store %struct.zip_string* %52, %struct.zip_string** %4, align 8
  br label %53

53:                                               ; preds = %51, %28
  %54 = load %struct.zip_string*, %struct.zip_string** %4, align 8
  ret %struct.zip_string* %54
}

declare dso_local i32* @_zip_ef_get_by_id(i32, i32*, i32, i32, i32, i32*) #1

declare dso_local i64 @_zip_read4(i32**) #1

declare dso_local i64 @_zip_string_crc32(%struct.zip_string*) #1

declare dso_local %struct.zip_string* @_zip_string_new(i32*, i32, i32, i32*) #1

declare dso_local i32 @_zip_string_free(%struct.zip_string*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
