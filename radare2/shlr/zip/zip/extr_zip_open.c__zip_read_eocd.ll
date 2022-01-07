; ModuleID = '/home/carl/AnghaBench/radare2/shlr/zip/zip/extr_zip_open.c__zip_read_eocd.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/zip/zip/extr_zip_open.c__zip_read_eocd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zip_cdir = type { i8*, i8* }
%struct.zip_error = type { i32 }

@EOCDLEN = common dso_local global i32 0, align 4
@ZIP_ER_INCONS = common dso_local global i32 0, align 4
@ZIP_ER_NOZIP = common dso_local global i32 0, align 4
@ZIP_OFF_MAX = common dso_local global i64 0, align 8
@ZIP_ER_SEEK = common dso_local global i32 0, align 4
@EFBIG = common dso_local global i32 0, align 4
@ZIP_CHECKCONS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.zip_cdir* (i8*, i8*, i8*, i64, i32, %struct.zip_error*)* @_zip_read_eocd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.zip_cdir* @_zip_read_eocd(i8* %0, i8* %1, i8* %2, i64 %3, i32 %4, %struct.zip_error* %5) #0 {
  %7 = alloca %struct.zip_cdir*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.zip_error*, align 8
  %14 = alloca %struct.zip_cdir*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  store i8* %0, i8** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i64 %3, i64* %11, align 8
  store i32 %4, i32* %12, align 4
  store %struct.zip_error* %5, %struct.zip_error** %13, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = load i32, i32* @EOCDLEN, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i8, i8* %20, i64 %22
  %24 = load i8*, i8** %9, align 8
  %25 = load i64, i64* %11, align 8
  %26 = getelementptr inbounds i8, i8* %24, i64 %25
  %27 = icmp ugt i8* %23, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %6
  %29 = load %struct.zip_error*, %struct.zip_error** %13, align 8
  %30 = load i32, i32* @ZIP_ER_INCONS, align 4
  %31 = call i32 @_zip_error_set(%struct.zip_error* %29, i32 %30, i32 0)
  store %struct.zip_cdir* null, %struct.zip_cdir** %7, align 8
  br label %120

32:                                               ; preds = %6
  %33 = load i8*, i8** %8, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 8
  store i8* %34, i8** %15, align 8
  %35 = call i64 @_zip_read2(i8** %15)
  store i64 %35, i64* %16, align 8
  %36 = call i64 @_zip_read2(i8** %15)
  store i64 %36, i64* %17, align 8
  %37 = load i64, i64* %17, align 8
  %38 = load i64, i64* %16, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %32
  %41 = load %struct.zip_error*, %struct.zip_error** %13, align 8
  %42 = load i32, i32* @ZIP_ER_NOZIP, align 4
  %43 = call i32 @_zip_error_set(%struct.zip_error* %41, i32 %42, i32 0)
  store %struct.zip_cdir* null, %struct.zip_cdir** %7, align 8
  br label %120

44:                                               ; preds = %32
  %45 = call i64 @_zip_read4(i8** %15)
  store i64 %45, i64* %18, align 8
  %46 = call i64 @_zip_read4(i8** %15)
  store i64 %46, i64* %19, align 8
  %47 = load i64, i64* %18, align 8
  %48 = load i64, i64* @ZIP_OFF_MAX, align 8
  %49 = icmp sgt i64 %47, %48
  br i1 %49, label %60, label %50

50:                                               ; preds = %44
  %51 = load i64, i64* %19, align 8
  %52 = load i64, i64* @ZIP_OFF_MAX, align 8
  %53 = icmp sgt i64 %51, %52
  br i1 %53, label %60, label %54

54:                                               ; preds = %50
  %55 = load i64, i64* %19, align 8
  %56 = load i64, i64* %18, align 8
  %57 = add nsw i64 %55, %56
  %58 = load i64, i64* @ZIP_OFF_MAX, align 8
  %59 = icmp sgt i64 %57, %58
  br i1 %59, label %60, label %65

60:                                               ; preds = %54, %50, %44
  %61 = load %struct.zip_error*, %struct.zip_error** %13, align 8
  %62 = load i32, i32* @ZIP_ER_SEEK, align 4
  %63 = load i32, i32* @EFBIG, align 4
  %64 = call i32 @_zip_error_set(%struct.zip_error* %61, i32 %62, i32 %63)
  store %struct.zip_cdir* null, %struct.zip_cdir** %7, align 8
  br label %120

65:                                               ; preds = %54
  %66 = load i64, i64* %19, align 8
  %67 = load i64, i64* %18, align 8
  %68 = add nsw i64 %66, %67
  %69 = load i8*, i8** %10, align 8
  %70 = load i8*, i8** %8, align 8
  %71 = load i8*, i8** %9, align 8
  %72 = ptrtoint i8* %70 to i64
  %73 = ptrtoint i8* %71 to i64
  %74 = sub i64 %72, %73
  %75 = getelementptr i8, i8* %69, i64 %74
  %76 = ptrtoint i8* %75 to i64
  %77 = icmp sgt i64 %68, %76
  br i1 %77, label %78, label %82

78:                                               ; preds = %65
  %79 = load %struct.zip_error*, %struct.zip_error** %13, align 8
  %80 = load i32, i32* @ZIP_ER_INCONS, align 4
  %81 = call i32 @_zip_error_set(%struct.zip_error* %79, i32 %80, i32 0)
  store %struct.zip_cdir* null, %struct.zip_cdir** %7, align 8
  br label %120

82:                                               ; preds = %65
  %83 = load i32, i32* %12, align 4
  %84 = load i32, i32* @ZIP_CHECKCONS, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %104

87:                                               ; preds = %82
  %88 = load i64, i64* %19, align 8
  %89 = load i64, i64* %18, align 8
  %90 = add nsw i64 %88, %89
  %91 = load i8*, i8** %10, align 8
  %92 = load i8*, i8** %8, align 8
  %93 = load i8*, i8** %9, align 8
  %94 = ptrtoint i8* %92 to i64
  %95 = ptrtoint i8* %93 to i64
  %96 = sub i64 %94, %95
  %97 = getelementptr i8, i8* %91, i64 %96
  %98 = ptrtoint i8* %97 to i64
  %99 = icmp ne i64 %90, %98
  br i1 %99, label %100, label %104

100:                                              ; preds = %87
  %101 = load %struct.zip_error*, %struct.zip_error** %13, align 8
  %102 = load i32, i32* @ZIP_ER_INCONS, align 4
  %103 = call i32 @_zip_error_set(%struct.zip_error* %101, i32 %102, i32 0)
  store %struct.zip_cdir* null, %struct.zip_cdir** %7, align 8
  br label %120

104:                                              ; preds = %87, %82
  %105 = load i64, i64* %17, align 8
  %106 = load %struct.zip_error*, %struct.zip_error** %13, align 8
  %107 = call %struct.zip_cdir* @_zip_cdir_new(i64 %105, %struct.zip_error* %106)
  store %struct.zip_cdir* %107, %struct.zip_cdir** %14, align 8
  %108 = icmp eq %struct.zip_cdir* %107, null
  br i1 %108, label %109, label %110

109:                                              ; preds = %104
  store %struct.zip_cdir* null, %struct.zip_cdir** %7, align 8
  br label %120

110:                                              ; preds = %104
  %111 = load i64, i64* %18, align 8
  %112 = inttoptr i64 %111 to i8*
  %113 = load %struct.zip_cdir*, %struct.zip_cdir** %14, align 8
  %114 = getelementptr inbounds %struct.zip_cdir, %struct.zip_cdir* %113, i32 0, i32 1
  store i8* %112, i8** %114, align 8
  %115 = load i64, i64* %19, align 8
  %116 = inttoptr i64 %115 to i8*
  %117 = load %struct.zip_cdir*, %struct.zip_cdir** %14, align 8
  %118 = getelementptr inbounds %struct.zip_cdir, %struct.zip_cdir* %117, i32 0, i32 0
  store i8* %116, i8** %118, align 8
  %119 = load %struct.zip_cdir*, %struct.zip_cdir** %14, align 8
  store %struct.zip_cdir* %119, %struct.zip_cdir** %7, align 8
  br label %120

120:                                              ; preds = %110, %109, %100, %78, %60, %40, %28
  %121 = load %struct.zip_cdir*, %struct.zip_cdir** %7, align 8
  ret %struct.zip_cdir* %121
}

declare dso_local i32 @_zip_error_set(%struct.zip_error*, i32, i32) #1

declare dso_local i64 @_zip_read2(i8**) #1

declare dso_local i64 @_zip_read4(i8**) #1

declare dso_local %struct.zip_cdir* @_zip_cdir_new(i64, %struct.zip_error*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
