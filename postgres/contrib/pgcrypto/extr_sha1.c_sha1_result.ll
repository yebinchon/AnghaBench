; ModuleID = '/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_sha1.c_sha1_result.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_sha1.c_sha1_result.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sha1_ctxt = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sha1_result(%struct.sha1_ctxt* %0, i32* %1) #0 {
  %3 = alloca %struct.sha1_ctxt*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  store %struct.sha1_ctxt* %0, %struct.sha1_ctxt** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load i32*, i32** %4, align 8
  store i32* %6, i32** %5, align 8
  %7 = load %struct.sha1_ctxt*, %struct.sha1_ctxt** %3, align 8
  %8 = call i32 @sha1_pad(%struct.sha1_ctxt* %7)
  %9 = load %struct.sha1_ctxt*, %struct.sha1_ctxt** %3, align 8
  %10 = getelementptr inbounds %struct.sha1_ctxt, %struct.sha1_ctxt* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 3
  %14 = load i32, i32* %13, align 4
  %15 = load i32*, i32** %5, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  store i32 %14, i32* %16, align 4
  %17 = load %struct.sha1_ctxt*, %struct.sha1_ctxt** %3, align 8
  %18 = getelementptr inbounds %struct.sha1_ctxt, %struct.sha1_ctxt* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 2
  %22 = load i32, i32* %21, align 4
  %23 = load i32*, i32** %5, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 1
  store i32 %22, i32* %24, align 4
  %25 = load %struct.sha1_ctxt*, %struct.sha1_ctxt** %3, align 8
  %26 = getelementptr inbounds %struct.sha1_ctxt, %struct.sha1_ctxt* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32*, i32** %5, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 2
  store i32 %30, i32* %32, align 4
  %33 = load %struct.sha1_ctxt*, %struct.sha1_ctxt** %3, align 8
  %34 = getelementptr inbounds %struct.sha1_ctxt, %struct.sha1_ctxt* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32*, i32** %5, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 3
  store i32 %38, i32* %40, align 4
  %41 = load %struct.sha1_ctxt*, %struct.sha1_ctxt** %3, align 8
  %42 = getelementptr inbounds %struct.sha1_ctxt, %struct.sha1_ctxt* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 7
  %46 = load i32, i32* %45, align 4
  %47 = load i32*, i32** %5, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 4
  store i32 %46, i32* %48, align 4
  %49 = load %struct.sha1_ctxt*, %struct.sha1_ctxt** %3, align 8
  %50 = getelementptr inbounds %struct.sha1_ctxt, %struct.sha1_ctxt* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 6
  %54 = load i32, i32* %53, align 4
  %55 = load i32*, i32** %5, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 5
  store i32 %54, i32* %56, align 4
  %57 = load %struct.sha1_ctxt*, %struct.sha1_ctxt** %3, align 8
  %58 = getelementptr inbounds %struct.sha1_ctxt, %struct.sha1_ctxt* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 5
  %62 = load i32, i32* %61, align 4
  %63 = load i32*, i32** %5, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 6
  store i32 %62, i32* %64, align 4
  %65 = load %struct.sha1_ctxt*, %struct.sha1_ctxt** %3, align 8
  %66 = getelementptr inbounds %struct.sha1_ctxt, %struct.sha1_ctxt* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 4
  %70 = load i32, i32* %69, align 4
  %71 = load i32*, i32** %5, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 7
  store i32 %70, i32* %72, align 4
  %73 = load %struct.sha1_ctxt*, %struct.sha1_ctxt** %3, align 8
  %74 = getelementptr inbounds %struct.sha1_ctxt, %struct.sha1_ctxt* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 11
  %78 = load i32, i32* %77, align 4
  %79 = load i32*, i32** %5, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 8
  store i32 %78, i32* %80, align 4
  %81 = load %struct.sha1_ctxt*, %struct.sha1_ctxt** %3, align 8
  %82 = getelementptr inbounds %struct.sha1_ctxt, %struct.sha1_ctxt* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 10
  %86 = load i32, i32* %85, align 4
  %87 = load i32*, i32** %5, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 9
  store i32 %86, i32* %88, align 4
  %89 = load %struct.sha1_ctxt*, %struct.sha1_ctxt** %3, align 8
  %90 = getelementptr inbounds %struct.sha1_ctxt, %struct.sha1_ctxt* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 9
  %94 = load i32, i32* %93, align 4
  %95 = load i32*, i32** %5, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 10
  store i32 %94, i32* %96, align 4
  %97 = load %struct.sha1_ctxt*, %struct.sha1_ctxt** %3, align 8
  %98 = getelementptr inbounds %struct.sha1_ctxt, %struct.sha1_ctxt* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 8
  %102 = load i32, i32* %101, align 4
  %103 = load i32*, i32** %5, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 11
  store i32 %102, i32* %104, align 4
  %105 = load %struct.sha1_ctxt*, %struct.sha1_ctxt** %3, align 8
  %106 = getelementptr inbounds %struct.sha1_ctxt, %struct.sha1_ctxt* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 0
  %108 = load i32*, i32** %107, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 15
  %110 = load i32, i32* %109, align 4
  %111 = load i32*, i32** %5, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 12
  store i32 %110, i32* %112, align 4
  %113 = load %struct.sha1_ctxt*, %struct.sha1_ctxt** %3, align 8
  %114 = getelementptr inbounds %struct.sha1_ctxt, %struct.sha1_ctxt* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 0
  %116 = load i32*, i32** %115, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 14
  %118 = load i32, i32* %117, align 4
  %119 = load i32*, i32** %5, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 13
  store i32 %118, i32* %120, align 4
  %121 = load %struct.sha1_ctxt*, %struct.sha1_ctxt** %3, align 8
  %122 = getelementptr inbounds %struct.sha1_ctxt, %struct.sha1_ctxt* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 0
  %124 = load i32*, i32** %123, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 13
  %126 = load i32, i32* %125, align 4
  %127 = load i32*, i32** %5, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 14
  store i32 %126, i32* %128, align 4
  %129 = load %struct.sha1_ctxt*, %struct.sha1_ctxt** %3, align 8
  %130 = getelementptr inbounds %struct.sha1_ctxt, %struct.sha1_ctxt* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 0
  %132 = load i32*, i32** %131, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 12
  %134 = load i32, i32* %133, align 4
  %135 = load i32*, i32** %5, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 15
  store i32 %134, i32* %136, align 4
  %137 = load %struct.sha1_ctxt*, %struct.sha1_ctxt** %3, align 8
  %138 = getelementptr inbounds %struct.sha1_ctxt, %struct.sha1_ctxt* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i32 0, i32 0
  %140 = load i32*, i32** %139, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 19
  %142 = load i32, i32* %141, align 4
  %143 = load i32*, i32** %5, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 16
  store i32 %142, i32* %144, align 4
  %145 = load %struct.sha1_ctxt*, %struct.sha1_ctxt** %3, align 8
  %146 = getelementptr inbounds %struct.sha1_ctxt, %struct.sha1_ctxt* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %146, i32 0, i32 0
  %148 = load i32*, i32** %147, align 8
  %149 = getelementptr inbounds i32, i32* %148, i64 18
  %150 = load i32, i32* %149, align 4
  %151 = load i32*, i32** %5, align 8
  %152 = getelementptr inbounds i32, i32* %151, i64 17
  store i32 %150, i32* %152, align 4
  %153 = load %struct.sha1_ctxt*, %struct.sha1_ctxt** %3, align 8
  %154 = getelementptr inbounds %struct.sha1_ctxt, %struct.sha1_ctxt* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %154, i32 0, i32 0
  %156 = load i32*, i32** %155, align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 17
  %158 = load i32, i32* %157, align 4
  %159 = load i32*, i32** %5, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 18
  store i32 %158, i32* %160, align 4
  %161 = load %struct.sha1_ctxt*, %struct.sha1_ctxt** %3, align 8
  %162 = getelementptr inbounds %struct.sha1_ctxt, %struct.sha1_ctxt* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %162, i32 0, i32 0
  %164 = load i32*, i32** %163, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 16
  %166 = load i32, i32* %165, align 4
  %167 = load i32*, i32** %5, align 8
  %168 = getelementptr inbounds i32, i32* %167, i64 19
  store i32 %166, i32* %168, align 4
  ret void
}

declare dso_local i32 @sha1_pad(%struct.sha1_ctxt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
