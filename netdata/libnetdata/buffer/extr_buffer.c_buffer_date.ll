; ModuleID = '/home/carl/AnghaBench/netdata/libnetdata/buffer/extr_buffer.c_buffer_date.c'
source_filename = "/home/carl/AnghaBench/netdata/libnetdata/buffer/extr_buffer.c_buffer_date.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @buffer_date(%struct.TYPE_5__* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %18 = call i32 @buffer_need_bytes(%struct.TYPE_5__* %17, i32 36)
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds i8, i8* %21, i64 %24
  store i8* %25, i8** %15, align 8
  %26 = load i8*, i8** %15, align 8
  store i8* %26, i8** %16, align 8
  %27 = load i32, i32* %9, align 4
  %28 = sdiv i32 %27, 1000
  %29 = add nsw i32 48, %28
  %30 = trunc i32 %29 to i8
  %31 = load i8*, i8** %16, align 8
  %32 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %32, i8** %16, align 8
  store i8 %30, i8* %31, align 1
  %33 = load i32, i32* %9, align 4
  %34 = srem i32 %33, 1000
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = sdiv i32 %35, 100
  %37 = add nsw i32 48, %36
  %38 = trunc i32 %37 to i8
  %39 = load i8*, i8** %16, align 8
  %40 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %40, i8** %16, align 8
  store i8 %38, i8* %39, align 1
  %41 = load i32, i32* %9, align 4
  %42 = srem i32 %41, 100
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %9, align 4
  %44 = sdiv i32 %43, 10
  %45 = add nsw i32 48, %44
  %46 = trunc i32 %45 to i8
  %47 = load i8*, i8** %16, align 8
  %48 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %48, i8** %16, align 8
  store i8 %46, i8* %47, align 1
  %49 = load i32, i32* %9, align 4
  %50 = srem i32 %49, 10
  %51 = add nsw i32 48, %50
  %52 = trunc i32 %51 to i8
  %53 = load i8*, i8** %16, align 8
  %54 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %54, i8** %16, align 8
  store i8 %52, i8* %53, align 1
  %55 = load i8*, i8** %16, align 8
  %56 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %56, i8** %16, align 8
  store i8 45, i8* %55, align 1
  %57 = load i32, i32* %10, align 4
  %58 = sdiv i32 %57, 10
  %59 = add nsw i32 48, %58
  %60 = trunc i32 %59 to i8
  %61 = load i8*, i8** %16, align 8
  %62 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %62, i8** %16, align 8
  store i8 %60, i8* %61, align 1
  %63 = load i32, i32* %10, align 4
  %64 = srem i32 %63, 10
  %65 = add nsw i32 48, %64
  %66 = trunc i32 %65 to i8
  %67 = load i8*, i8** %16, align 8
  %68 = getelementptr inbounds i8, i8* %67, i32 1
  store i8* %68, i8** %16, align 8
  store i8 %66, i8* %67, align 1
  %69 = load i8*, i8** %16, align 8
  %70 = getelementptr inbounds i8, i8* %69, i32 1
  store i8* %70, i8** %16, align 8
  store i8 45, i8* %69, align 1
  %71 = load i32, i32* %11, align 4
  %72 = sdiv i32 %71, 10
  %73 = add nsw i32 48, %72
  %74 = trunc i32 %73 to i8
  %75 = load i8*, i8** %16, align 8
  %76 = getelementptr inbounds i8, i8* %75, i32 1
  store i8* %76, i8** %16, align 8
  store i8 %74, i8* %75, align 1
  %77 = load i32, i32* %11, align 4
  %78 = srem i32 %77, 10
  %79 = add nsw i32 48, %78
  %80 = trunc i32 %79 to i8
  %81 = load i8*, i8** %16, align 8
  %82 = getelementptr inbounds i8, i8* %81, i32 1
  store i8* %82, i8** %16, align 8
  store i8 %80, i8* %81, align 1
  %83 = load i8*, i8** %16, align 8
  %84 = getelementptr inbounds i8, i8* %83, i32 1
  store i8* %84, i8** %16, align 8
  store i8 32, i8* %83, align 1
  %85 = load i32, i32* %12, align 4
  %86 = sdiv i32 %85, 10
  %87 = add nsw i32 48, %86
  %88 = trunc i32 %87 to i8
  %89 = load i8*, i8** %16, align 8
  %90 = getelementptr inbounds i8, i8* %89, i32 1
  store i8* %90, i8** %16, align 8
  store i8 %88, i8* %89, align 1
  %91 = load i32, i32* %12, align 4
  %92 = srem i32 %91, 10
  %93 = add nsw i32 48, %92
  %94 = trunc i32 %93 to i8
  %95 = load i8*, i8** %16, align 8
  %96 = getelementptr inbounds i8, i8* %95, i32 1
  store i8* %96, i8** %16, align 8
  store i8 %94, i8* %95, align 1
  %97 = load i8*, i8** %16, align 8
  %98 = getelementptr inbounds i8, i8* %97, i32 1
  store i8* %98, i8** %16, align 8
  store i8 58, i8* %97, align 1
  %99 = load i32, i32* %13, align 4
  %100 = sdiv i32 %99, 10
  %101 = add nsw i32 48, %100
  %102 = trunc i32 %101 to i8
  %103 = load i8*, i8** %16, align 8
  %104 = getelementptr inbounds i8, i8* %103, i32 1
  store i8* %104, i8** %16, align 8
  store i8 %102, i8* %103, align 1
  %105 = load i32, i32* %13, align 4
  %106 = srem i32 %105, 10
  %107 = add nsw i32 48, %106
  %108 = trunc i32 %107 to i8
  %109 = load i8*, i8** %16, align 8
  %110 = getelementptr inbounds i8, i8* %109, i32 1
  store i8* %110, i8** %16, align 8
  store i8 %108, i8* %109, align 1
  %111 = load i8*, i8** %16, align 8
  %112 = getelementptr inbounds i8, i8* %111, i32 1
  store i8* %112, i8** %16, align 8
  store i8 58, i8* %111, align 1
  %113 = load i32, i32* %14, align 4
  %114 = sdiv i32 %113, 10
  %115 = add nsw i32 48, %114
  %116 = trunc i32 %115 to i8
  %117 = load i8*, i8** %16, align 8
  %118 = getelementptr inbounds i8, i8* %117, i32 1
  store i8* %118, i8** %16, align 8
  store i8 %116, i8* %117, align 1
  %119 = load i32, i32* %14, align 4
  %120 = srem i32 %119, 10
  %121 = add nsw i32 48, %120
  %122 = trunc i32 %121 to i8
  %123 = load i8*, i8** %16, align 8
  %124 = getelementptr inbounds i8, i8* %123, i32 1
  store i8* %124, i8** %16, align 8
  store i8 %122, i8* %123, align 1
  %125 = load i8*, i8** %16, align 8
  store i8 0, i8* %125, align 1
  %126 = load i8*, i8** %16, align 8
  %127 = load i8*, i8** %15, align 8
  %128 = ptrtoint i8* %126 to i64
  %129 = ptrtoint i8* %127 to i64
  %130 = sub i64 %128, %129
  %131 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = add i64 %133, %130
  store i64 %134, i64* %132, align 8
  %135 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 0
  %137 = load i8*, i8** %136, align 8
  %138 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = getelementptr inbounds i8, i8* %137, i64 %140
  store i8 0, i8* %141, align 1
  %142 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %143 = call i32 @buffer_overflow_check(%struct.TYPE_5__* %142)
  ret void
}

declare dso_local i32 @buffer_need_bytes(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @buffer_overflow_check(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
