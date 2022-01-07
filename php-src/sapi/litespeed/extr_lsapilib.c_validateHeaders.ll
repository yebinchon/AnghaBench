; ModuleID = '/home/carl/AnghaBench/php-src/sapi/litespeed/extr_lsapilib.c_validateHeaders.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/litespeed/extr_lsapilib.c_validateHeaders.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__*, %struct.lsapi_header_offset*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32, i64 }
%struct.lsapi_header_offset = type { i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32*, i32* }

@H_TRANSFER_ENCODING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*)* @validateHeaders to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @validateHeaders(%struct.TYPE_7__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.lsapi_header_offset*, align 8
  %7 = alloca %struct.lsapi_header_offset*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %13

13:                                               ; preds = %65, %1
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @H_TRANSFER_ENCODING, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %68

17:                                               ; preds = %13
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 2
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %64

28:                                               ; preds = %17
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 2
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %4, align 4
  %39 = icmp sgt i32 %37, %38
  br i1 %39, label %62, label %40

40:                                               ; preds = %28
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 2
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %5, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 2
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %5, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 %49, %58
  %60 = load i32, i32* %4, align 4
  %61 = icmp sgt i32 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %40, %28
  store i32 -1, i32* %2, align 4
  br label %128

63:                                               ; preds = %40
  br label %64

64:                                               ; preds = %63, %17
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %5, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %5, align 4
  br label %13

68:                                               ; preds = %13
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = icmp sgt i64 %73, 0
  br i1 %74, label %75, label %127

75:                                               ; preds = %68
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 1
  %78 = load %struct.lsapi_header_offset*, %struct.lsapi_header_offset** %77, align 8
  store %struct.lsapi_header_offset* %78, %struct.lsapi_header_offset** %6, align 8
  %79 = load %struct.lsapi_header_offset*, %struct.lsapi_header_offset** %6, align 8
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = getelementptr inbounds %struct.lsapi_header_offset, %struct.lsapi_header_offset* %79, i64 %84
  store %struct.lsapi_header_offset* %85, %struct.lsapi_header_offset** %7, align 8
  br label %86

86:                                               ; preds = %123, %75
  %87 = load %struct.lsapi_header_offset*, %struct.lsapi_header_offset** %6, align 8
  %88 = load %struct.lsapi_header_offset*, %struct.lsapi_header_offset** %7, align 8
  %89 = icmp ult %struct.lsapi_header_offset* %87, %88
  br i1 %89, label %90, label %126

90:                                               ; preds = %86
  %91 = load %struct.lsapi_header_offset*, %struct.lsapi_header_offset** %6, align 8
  %92 = getelementptr inbounds %struct.lsapi_header_offset, %struct.lsapi_header_offset* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* %4, align 4
  %95 = icmp sgt i32 %93, %94
  br i1 %95, label %122, label %96

96:                                               ; preds = %90
  %97 = load %struct.lsapi_header_offset*, %struct.lsapi_header_offset** %6, align 8
  %98 = getelementptr inbounds %struct.lsapi_header_offset, %struct.lsapi_header_offset* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.lsapi_header_offset*, %struct.lsapi_header_offset** %6, align 8
  %101 = getelementptr inbounds %struct.lsapi_header_offset, %struct.lsapi_header_offset* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = add nsw i32 %99, %102
  %104 = load i32, i32* %4, align 4
  %105 = icmp sgt i32 %103, %104
  br i1 %105, label %122, label %106

106:                                              ; preds = %96
  %107 = load %struct.lsapi_header_offset*, %struct.lsapi_header_offset** %6, align 8
  %108 = getelementptr inbounds %struct.lsapi_header_offset, %struct.lsapi_header_offset* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* %4, align 4
  %111 = icmp sgt i32 %109, %110
  br i1 %111, label %122, label %112

112:                                              ; preds = %106
  %113 = load %struct.lsapi_header_offset*, %struct.lsapi_header_offset** %6, align 8
  %114 = getelementptr inbounds %struct.lsapi_header_offset, %struct.lsapi_header_offset* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.lsapi_header_offset*, %struct.lsapi_header_offset** %6, align 8
  %117 = getelementptr inbounds %struct.lsapi_header_offset, %struct.lsapi_header_offset* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 4
  %119 = add nsw i32 %115, %118
  %120 = load i32, i32* %4, align 4
  %121 = icmp sgt i32 %119, %120
  br i1 %121, label %122, label %123

122:                                              ; preds = %112, %106, %96, %90
  store i32 -1, i32* %2, align 4
  br label %128

123:                                              ; preds = %112
  %124 = load %struct.lsapi_header_offset*, %struct.lsapi_header_offset** %6, align 8
  %125 = getelementptr inbounds %struct.lsapi_header_offset, %struct.lsapi_header_offset* %124, i32 1
  store %struct.lsapi_header_offset* %125, %struct.lsapi_header_offset** %6, align 8
  br label %86

126:                                              ; preds = %86
  br label %127

127:                                              ; preds = %126, %68
  store i32 0, i32* %2, align 4
  br label %128

128:                                              ; preds = %127, %122, %62
  %129 = load i32, i32* %2, align 4
  ret i32 %129
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
