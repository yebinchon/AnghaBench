; ModuleID = '/home/carl/AnghaBench/oss-fuzz/projects/libwebp/extr_fuzz.h_ExtractWebPConfig.c'
source_filename = "/home/carl/AnghaBench/oss-fuzz/projects/libwebp/extr_fuzz.h_ExtractWebPConfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }

@WEBP_HINT_LAST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32*, i64, i32*)* @ExtractWebPConfig to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ExtractWebPConfig(%struct.TYPE_5__* %0, i32* %1, i64 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %11 = icmp eq %struct.TYPE_5__* %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %4
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %14 = call i32 @WebPConfigInit(%struct.TYPE_5__* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %12, %4
  store i32 0, i32* %5, align 4
  br label %173

17:                                               ; preds = %12
  %18 = load i32*, i32** %7, align 8
  %19 = load i64, i64* %8, align 8
  %20 = load i32*, i32** %9, align 8
  %21 = call i32 @Extract(i32 1, i32* %18, i64 %19, i32* %20)
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  %24 = load i32*, i32** %7, align 8
  %25 = load i64, i64* %8, align 8
  %26 = load i32*, i32** %9, align 8
  %27 = call i32 @Extract(i32 100, i32* %24, i64 %25, i32* %26)
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  %30 = load i32*, i32** %7, align 8
  %31 = load i64, i64* %8, align 8
  %32 = load i32*, i32** %9, align 8
  %33 = call i32 @Extract(i32 6, i32* %30, i64 %31, i32* %32)
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 8
  %36 = load i32, i32* @WEBP_HINT_LAST, align 4
  %37 = sub nsw i32 %36, 1
  %38 = load i32*, i32** %7, align 8
  %39 = load i64, i64* %8, align 8
  %40 = load i32*, i32** %9, align 8
  %41 = call i32 @Extract(i32 %37, i32* %38, i64 %39, i32* %40)
  %42 = sext i32 %41 to i64
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 24
  store i64 %42, i64* %44, align 8
  %45 = load i32*, i32** %7, align 8
  %46 = load i64, i64* %8, align 8
  %47 = load i32*, i32** %9, align 8
  %48 = call i32 @Extract(i32 3, i32* %45, i64 %46, i32* %47)
  %49 = add nsw i32 1, %48
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 3
  store i32 %49, i32* %51, align 4
  %52 = load i32*, i32** %7, align 8
  %53 = load i64, i64* %8, align 8
  %54 = load i32*, i32** %9, align 8
  %55 = call i32 @Extract(i32 100, i32* %52, i64 %53, i32* %54)
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 4
  store i32 %55, i32* %57, align 8
  %58 = load i32*, i32** %7, align 8
  %59 = load i64, i64* %8, align 8
  %60 = load i32*, i32** %9, align 8
  %61 = call i32 @Extract(i32 100, i32* %58, i64 %59, i32* %60)
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 5
  store i32 %61, i32* %63, align 4
  %64 = load i32*, i32** %7, align 8
  %65 = load i64, i64* %8, align 8
  %66 = load i32*, i32** %9, align 8
  %67 = call i32 @Extract(i32 7, i32* %64, i64 %65, i32* %66)
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 6
  store i32 %67, i32* %69, align 8
  %70 = load i32*, i32** %7, align 8
  %71 = load i64, i64* %8, align 8
  %72 = load i32*, i32** %9, align 8
  %73 = call i32 @Extract(i32 1, i32* %70, i64 %71, i32* %72)
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 7
  store i32 %73, i32* %75, align 4
  %76 = load i32*, i32** %7, align 8
  %77 = load i64, i64* %8, align 8
  %78 = load i32*, i32** %9, align 8
  %79 = call i32 @Extract(i32 1, i32* %76, i64 %77, i32* %78)
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 8
  store i32 %79, i32* %81, align 8
  %82 = load i32*, i32** %7, align 8
  %83 = load i64, i64* %8, align 8
  %84 = load i32*, i32** %9, align 8
  %85 = call i32 @Extract(i32 1, i32* %82, i64 %83, i32* %84)
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 9
  store i32 %85, i32* %87, align 4
  %88 = load i32*, i32** %7, align 8
  %89 = load i64, i64* %8, align 8
  %90 = load i32*, i32** %9, align 8
  %91 = call i32 @Extract(i32 2, i32* %88, i64 %89, i32* %90)
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 10
  store i32 %91, i32* %93, align 8
  %94 = load i32*, i32** %7, align 8
  %95 = load i64, i64* %8, align 8
  %96 = load i32*, i32** %9, align 8
  %97 = call i32 @Extract(i32 100, i32* %94, i64 %95, i32* %96)
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 11
  store i32 %97, i32* %99, align 4
  %100 = load i32*, i32** %7, align 8
  %101 = load i64, i64* %8, align 8
  %102 = load i32*, i32** %9, align 8
  %103 = call i32 @Extract(i32 9, i32* %100, i64 %101, i32* %102)
  %104 = add nsw i32 1, %103
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 12
  store i32 %104, i32* %106, align 8
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 13
  store i32 1, i32* %108, align 4
  %109 = load i32*, i32** %7, align 8
  %110 = load i64, i64* %8, align 8
  %111 = load i32*, i32** %9, align 8
  %112 = call i32 @Extract(i32 2, i32* %109, i64 %110, i32* %111)
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 14
  store i32 %112, i32* %114, align 8
  %115 = load i32*, i32** %7, align 8
  %116 = load i64, i64* %8, align 8
  %117 = load i32*, i32** %9, align 8
  %118 = call i32 @Extract(i32 3, i32* %115, i64 %116, i32* %117)
  %119 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 15
  store i32 %118, i32* %120, align 4
  %121 = load i32*, i32** %7, align 8
  %122 = load i64, i64* %8, align 8
  %123 = load i32*, i32** %9, align 8
  %124 = call i32 @Extract(i32 10, i32* %121, i64 %122, i32* %123)
  %125 = mul nsw i32 10, %124
  %126 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 16
  store i32 %125, i32* %127, align 8
  %128 = load i32*, i32** %7, align 8
  %129 = load i64, i64* %8, align 8
  %130 = load i32*, i32** %9, align 8
  %131 = call i32 @Extract(i32 1, i32* %128, i64 %129, i32* %130)
  %132 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 17
  store i32 %131, i32* %133, align 4
  %134 = load i32*, i32** %7, align 8
  %135 = load i64, i64* %8, align 8
  %136 = load i32*, i32** %9, align 8
  %137 = call i32 @Extract(i32 1, i32* %134, i64 %135, i32* %136)
  %138 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i32 0, i32 18
  store i32 %137, i32* %139, align 8
  %140 = load i32*, i32** %7, align 8
  %141 = load i64, i64* %8, align 8
  %142 = load i32*, i32** %9, align 8
  %143 = call i32 @Extract(i32 1, i32* %140, i64 %141, i32* %142)
  %144 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %144, i32 0, i32 19
  store i32 %143, i32* %145, align 4
  %146 = load i32*, i32** %7, align 8
  %147 = load i64, i64* %8, align 8
  %148 = load i32*, i32** %9, align 8
  %149 = call i32 @Extract(i32 5, i32* %146, i64 %147, i32* %148)
  %150 = mul nsw i32 20, %149
  %151 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %151, i32 0, i32 20
  store i32 %150, i32* %152, align 8
  %153 = load i32*, i32** %7, align 8
  %154 = load i64, i64* %8, align 8
  %155 = load i32*, i32** %9, align 8
  %156 = call i32 @Extract(i32 1, i32* %153, i64 %154, i32* %155)
  %157 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %158 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %157, i32 0, i32 21
  store i32 %156, i32* %158, align 4
  %159 = load i32*, i32** %7, align 8
  %160 = load i64, i64* %8, align 8
  %161 = load i32*, i32** %9, align 8
  %162 = call i32 @Extract(i32 1, i32* %159, i64 %160, i32* %161)
  %163 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %164 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %163, i32 0, i32 22
  store i32 %162, i32* %164, align 8
  %165 = load i32*, i32** %7, align 8
  %166 = load i64, i64* %8, align 8
  %167 = load i32*, i32** %9, align 8
  %168 = call i32 @Extract(i32 1, i32* %165, i64 %166, i32* %167)
  %169 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %170 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %169, i32 0, i32 23
  store i32 %168, i32* %170, align 4
  %171 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %172 = call i32 @WebPValidateConfig(%struct.TYPE_5__* %171)
  store i32 %172, i32* %5, align 4
  br label %173

173:                                              ; preds = %17, %16
  %174 = load i32, i32* %5, align 4
  ret i32 %174
}

declare dso_local i32 @WebPConfigInit(%struct.TYPE_5__*) #1

declare dso_local i32 @Extract(i32, i32*, i64, i32*) #1

declare dso_local i32 @WebPValidateConfig(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
