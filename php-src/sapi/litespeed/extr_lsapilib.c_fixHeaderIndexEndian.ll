; ModuleID = '/home/carl/AnghaBench/php-src/sapi/litespeed/extr_lsapilib.c_fixHeaderIndexEndian.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/litespeed/extr_lsapilib.c_fixHeaderIndexEndian.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__*, %struct.lsapi_header_offset*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i64 }
%struct.lsapi_header_offset = type { i64, i64, i64, i64 }
%struct.TYPE_5__ = type { i64*, i32* }

@H_TRANSFER_ENCODING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*)* @fixHeaderIndexEndian to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fixHeaderIndexEndian(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  %5 = alloca i8*, align 8
  %6 = alloca %struct.lsapi_header_offset*, align 8
  %7 = alloca %struct.lsapi_header_offset*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  store i32 0, i32* %3, align 4
  br label %8

8:                                                ; preds = %54, %1
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @H_TRANSFER_ENCODING, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %57

12:                                               ; preds = %8
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 2
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i64*, i64** %16, align 8
  %18 = load i32, i32* %3, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i64, i64* %17, i64 %19
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %53

23:                                               ; preds = %12
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 2
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %3, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = bitcast i32* %31 to i8*
  store i8* %32, i8** %5, align 8
  %33 = load i8*, i8** %5, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 0
  %35 = load i8, i8* %34, align 1
  store i8 %35, i8* %4, align 1
  %36 = load i8*, i8** %5, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 1
  %38 = load i8, i8* %37, align 1
  %39 = load i8*, i8** %5, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 0
  store i8 %38, i8* %40, align 1
  %41 = load i8, i8* %4, align 1
  %42 = load i8*, i8** %5, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 1
  store i8 %41, i8* %43, align 1
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 2
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i64*, i64** %47, align 8
  %49 = load i32, i32* %3, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i64, i64* %48, i64 %50
  %52 = call i32 @swapIntEndian(i64* %51)
  br label %53

53:                                               ; preds = %23, %12
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %3, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %3, align 4
  br label %8

57:                                               ; preds = %8
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp sgt i64 %62, 0
  br i1 %63, label %64, label %95

64:                                               ; preds = %57
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 1
  %67 = load %struct.lsapi_header_offset*, %struct.lsapi_header_offset** %66, align 8
  store %struct.lsapi_header_offset* %67, %struct.lsapi_header_offset** %6, align 8
  %68 = load %struct.lsapi_header_offset*, %struct.lsapi_header_offset** %6, align 8
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = getelementptr inbounds %struct.lsapi_header_offset, %struct.lsapi_header_offset* %68, i64 %73
  store %struct.lsapi_header_offset* %74, %struct.lsapi_header_offset** %7, align 8
  br label %75

75:                                               ; preds = %79, %64
  %76 = load %struct.lsapi_header_offset*, %struct.lsapi_header_offset** %6, align 8
  %77 = load %struct.lsapi_header_offset*, %struct.lsapi_header_offset** %7, align 8
  %78 = icmp ult %struct.lsapi_header_offset* %76, %77
  br i1 %78, label %79, label %94

79:                                               ; preds = %75
  %80 = load %struct.lsapi_header_offset*, %struct.lsapi_header_offset** %6, align 8
  %81 = getelementptr inbounds %struct.lsapi_header_offset, %struct.lsapi_header_offset* %80, i32 0, i32 3
  %82 = call i32 @swapIntEndian(i64* %81)
  %83 = load %struct.lsapi_header_offset*, %struct.lsapi_header_offset** %6, align 8
  %84 = getelementptr inbounds %struct.lsapi_header_offset, %struct.lsapi_header_offset* %83, i32 0, i32 2
  %85 = call i32 @swapIntEndian(i64* %84)
  %86 = load %struct.lsapi_header_offset*, %struct.lsapi_header_offset** %6, align 8
  %87 = getelementptr inbounds %struct.lsapi_header_offset, %struct.lsapi_header_offset* %86, i32 0, i32 1
  %88 = call i32 @swapIntEndian(i64* %87)
  %89 = load %struct.lsapi_header_offset*, %struct.lsapi_header_offset** %6, align 8
  %90 = getelementptr inbounds %struct.lsapi_header_offset, %struct.lsapi_header_offset* %89, i32 0, i32 0
  %91 = call i32 @swapIntEndian(i64* %90)
  %92 = load %struct.lsapi_header_offset*, %struct.lsapi_header_offset** %6, align 8
  %93 = getelementptr inbounds %struct.lsapi_header_offset, %struct.lsapi_header_offset* %92, i32 1
  store %struct.lsapi_header_offset* %93, %struct.lsapi_header_offset** %6, align 8
  br label %75

94:                                               ; preds = %75
  br label %95

95:                                               ; preds = %94, %57
  ret void
}

declare dso_local i32 @swapIntEndian(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
