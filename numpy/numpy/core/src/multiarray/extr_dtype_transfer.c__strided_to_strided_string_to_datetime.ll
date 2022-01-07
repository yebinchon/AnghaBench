; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_dtype_transfer.c__strided_to_strided_string_to_datetime.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_dtype_transfer.c__strided_to_strided_string_to_datetime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@NPY_DATETIME_NAT = common dso_local global i8 0, align 1
@NPY_SAME_KIND_CASTING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64, i8*, i64, i64, i64, i32*)* @_strided_to_strided_string_to_datetime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_strided_to_strided_string_to_datetime(i8* %0, i64 %1, i8* %2, i64 %3, i64 %4, i64 %5, i32* %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_3__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8, align 1
  store i8* %0, i8** %8, align 8
  store i64 %1, i64* %9, align 8
  store i8* %2, i8** %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  store i32* %6, i32** %14, align 8
  %20 = load i32*, i32** %14, align 8
  %21 = bitcast i32* %20 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %21, %struct.TYPE_3__** %15, align 8
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  store i8* %24, i8** %17, align 8
  br label %25

25:                                               ; preds = %91, %7
  %26 = load i64, i64* %12, align 8
  %27 = icmp sgt i64 %26, 0
  br i1 %27, label %28, label %102

28:                                               ; preds = %25
  %29 = load i8, i8* @NPY_DATETIME_NAT, align 1
  %30 = sext i8 %29 to i32
  %31 = xor i32 %30, -1
  %32 = trunc i32 %31 to i8
  store i8 %32, i8* %19, align 1
  %33 = load i8*, i8** %10, align 8
  %34 = load i64, i64* %13, align 8
  %35 = call i8* @memchr(i8* %33, i8 signext 0, i64 %34)
  store i8* %35, i8** %18, align 8
  %36 = load i8*, i8** %18, align 8
  %37 = icmp eq i8* %36, null
  br i1 %37, label %38, label %60

38:                                               ; preds = %28
  %39 = load i8*, i8** %17, align 8
  %40 = load i8*, i8** %10, align 8
  %41 = load i64, i64* %13, align 8
  %42 = trunc i64 %41 to i32
  %43 = call i32 @memcpy(i8* %39, i8* %40, i32 %42)
  %44 = load i8*, i8** %17, align 8
  %45 = load i64, i64* %13, align 8
  %46 = getelementptr inbounds i8, i8* %44, i64 %45
  store i8 0, i8* %46, align 1
  %47 = load i8*, i8** %17, align 8
  %48 = load i64, i64* %13, align 8
  %49 = trunc i64 %48 to i32
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @NPY_SAME_KIND_CASTING, align 4
  %55 = call i64 @parse_iso_8601_datetime(i8* %47, i32 %49, i32 %53, i32 %54, i32* %16, i32* null, i32* null)
  %56 = icmp slt i64 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %38
  %58 = load i8, i8* @NPY_DATETIME_NAT, align 1
  store i8 %58, i8* %19, align 1
  br label %59

59:                                               ; preds = %57, %38
  br label %78

60:                                               ; preds = %28
  %61 = load i8*, i8** %10, align 8
  %62 = load i8*, i8** %18, align 8
  %63 = load i8*, i8** %10, align 8
  %64 = ptrtoint i8* %62 to i64
  %65 = ptrtoint i8* %63 to i64
  %66 = sub i64 %64, %65
  %67 = trunc i64 %66 to i32
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @NPY_SAME_KIND_CASTING, align 4
  %73 = call i64 @parse_iso_8601_datetime(i8* %61, i32 %67, i32 %71, i32 %72, i32* %16, i32* null, i32* null)
  %74 = icmp slt i64 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %60
  %76 = load i8, i8* @NPY_DATETIME_NAT, align 1
  store i8 %76, i8* %19, align 1
  br label %77

77:                                               ; preds = %75, %60
  br label %78

78:                                               ; preds = %77, %59
  %79 = load i8, i8* %19, align 1
  %80 = sext i8 %79 to i32
  %81 = load i8, i8* @NPY_DATETIME_NAT, align 1
  %82 = sext i8 %81 to i32
  %83 = icmp ne i32 %80, %82
  br i1 %83, label %84, label %91

84:                                               ; preds = %78
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 1
  %87 = call i64 @convert_datetimestruct_to_datetime(%struct.TYPE_4__* %86, i32* %16, i8* %19)
  %88 = icmp slt i64 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %84
  %90 = load i8, i8* @NPY_DATETIME_NAT, align 1
  store i8 %90, i8* %19, align 1
  br label %91

91:                                               ; preds = %89, %84, %78
  %92 = load i8*, i8** %8, align 8
  %93 = call i32 @memcpy(i8* %92, i8* %19, i32 1)
  %94 = load i64, i64* %9, align 8
  %95 = load i8*, i8** %8, align 8
  %96 = getelementptr inbounds i8, i8* %95, i64 %94
  store i8* %96, i8** %8, align 8
  %97 = load i64, i64* %11, align 8
  %98 = load i8*, i8** %10, align 8
  %99 = getelementptr inbounds i8, i8* %98, i64 %97
  store i8* %99, i8** %10, align 8
  %100 = load i64, i64* %12, align 8
  %101 = add nsw i64 %100, -1
  store i64 %101, i64* %12, align 8
  br label %25

102:                                              ; preds = %25
  ret void
}

declare dso_local i8* @memchr(i8*, i8 signext, i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i64 @parse_iso_8601_datetime(i8*, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i64 @convert_datetimestruct_to_datetime(%struct.TYPE_4__*, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
