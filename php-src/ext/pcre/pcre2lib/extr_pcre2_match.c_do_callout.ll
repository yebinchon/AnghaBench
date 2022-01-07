; ModuleID = '/home/carl/AnghaBench/php-src/ext/pcre/pcre2lib/extr_pcre2_match.c_do_callout.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/pcre/pcre2lib/extr_pcre2_match.c_do_callout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 (%struct.TYPE_5__*, i32)*, i32, i64, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32*, i32, i64, i64*, i32, i64, i8*, i8*, i8*, i32, i32 }

@Fecode = common dso_local global i64* null, align 8
@OP_CALLOUT = common dso_local global i64 0, align 8
@OP_lengths = common dso_local global i32 0, align 4
@LINK_SIZE = common dso_local global i32 0, align 4
@Foffset_top = common dso_local global i64 0, align 8
@Fcapture_last = common dso_local global i32 0, align 4
@Feptr = common dso_local global i64 0, align 8
@PCRE2_UNSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_6__*, i32*)* @do_callout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_callout(i32* %0, %struct.TYPE_6__* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_5__*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %6, align 8
  store i32* %2, i32** %7, align 8
  %13 = load i64*, i64** @Fecode, align 8
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @OP_CALLOUT, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %23

17:                                               ; preds = %3
  %18 = load i32, i32* @OP_lengths, align 4
  %19 = call i8** @PRIV(i32 %18)
  %20 = load i64, i64* @OP_CALLOUT, align 8
  %21 = getelementptr inbounds i8*, i8** %19, i64 %20
  %22 = load i8*, i8** %21, align 8
  br label %29

23:                                               ; preds = %3
  %24 = load i64*, i64** @Fecode, align 8
  %25 = load i32, i32* @LINK_SIZE, align 4
  %26 = mul nsw i32 2, %25
  %27 = add nsw i32 1, %26
  %28 = call i8* @GET(i64* %24, i32 %27)
  br label %29

29:                                               ; preds = %23, %17
  %30 = phi i8* [ %22, %17 ], [ %28, %23 ]
  %31 = ptrtoint i8* %30 to i32
  %32 = load i32*, i32** %7, align 8
  store i32 %31, i32* %32, align 4
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i32 (%struct.TYPE_5__*, i32)*, i32 (%struct.TYPE_5__*, i32)** %34, align 8
  %36 = icmp eq i32 (%struct.TYPE_5__*, i32)* %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %29
  store i32 0, i32* %4, align 4
  br label %154

38:                                               ; preds = %29
  store i32* inttoptr (i64 -2 to i32*), i32** %11, align 8
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 4
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  store %struct.TYPE_5__* %41, %struct.TYPE_5__** %12, align 8
  %42 = load i64, i64* @Foffset_top, align 8
  %43 = trunc i64 %42 to i32
  %44 = sdiv i32 %43, 2
  %45 = add nsw i32 %44, 1
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  %48 = load i32, i32* @Fcapture_last, align 4
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 11
  store i32 %48, i32* %50, align 4
  %51 = load i32*, i32** %11, align 8
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 1
  store i32* %51, i32** %53, align 8
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 10
  store i32 %56, i32* %58, align 8
  %59 = load i64, i64* @Feptr, align 8
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = sub nsw i64 %59, %62
  %64 = trunc i64 %63 to i32
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 2
  store i32 %64, i32* %66, align 8
  %67 = load i64*, i64** @Fecode, align 8
  %68 = call i8* @GET(i64* %67, i32 1)
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 9
  store i8* %68, i8** %70, align 8
  %71 = load i64*, i64** @Fecode, align 8
  %72 = load i32, i32* @LINK_SIZE, align 4
  %73 = add nsw i32 1, %72
  %74 = call i8* @GET(i64* %71, i32 %73)
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 8
  store i8* %74, i8** %76, align 8
  %77 = load i64*, i64** @Fecode, align 8
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @OP_CALLOUT, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %97

81:                                               ; preds = %38
  %82 = load i64*, i64** @Fecode, align 8
  %83 = load i32, i32* @LINK_SIZE, align 4
  %84 = mul nsw i32 2, %83
  %85 = add nsw i32 1, %84
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i64, i64* %82, i64 %86
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 3
  store i64 %88, i64* %90, align 8
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 7
  store i8* null, i8** %92, align 8
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 4
  store i64* null, i64** %94, align 8
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 5
  store i32 0, i32* %96, align 8
  br label %125

97:                                               ; preds = %38
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 3
  store i64 0, i64* %99, align 8
  %100 = load i64*, i64** @Fecode, align 8
  %101 = load i32, i32* @LINK_SIZE, align 4
  %102 = mul nsw i32 3, %101
  %103 = add nsw i32 1, %102
  %104 = call i8* @GET(i64* %100, i32 %103)
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 7
  store i8* %104, i8** %106, align 8
  %107 = load i64*, i64** @Fecode, align 8
  %108 = load i32, i32* @LINK_SIZE, align 4
  %109 = mul nsw i32 4, %108
  %110 = add nsw i32 1, %109
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i64, i64* %107, i64 %111
  %113 = getelementptr inbounds i64, i64* %112, i64 1
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 4
  store i64* %113, i64** %115, align 8
  %116 = load i32*, i32** %7, align 8
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @LINK_SIZE, align 4
  %119 = mul nsw i32 4, %118
  %120 = add nsw i32 1, %119
  %121 = sub nsw i32 %117, %120
  %122 = sub nsw i32 %121, 2
  %123 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 5
  store i32 %122, i32* %124, align 8
  br label %125

125:                                              ; preds = %97, %81
  %126 = load i32*, i32** %11, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 0
  %128 = load i32, i32* %127, align 4
  store i32 %128, i32* %9, align 4
  %129 = load i32*, i32** %11, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 1
  %131 = load i32, i32* %130, align 4
  store i32 %131, i32* %10, align 4
  %132 = load i32, i32* @PCRE2_UNSET, align 4
  %133 = load i32*, i32** %11, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 1
  store i32 %132, i32* %134, align 4
  %135 = load i32*, i32** %11, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 0
  store i32 %132, i32* %136, align 4
  %137 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 0
  %139 = load i32 (%struct.TYPE_5__*, i32)*, i32 (%struct.TYPE_5__*, i32)** %138, align 8
  %140 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %141 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 8
  %144 = call i32 %139(%struct.TYPE_5__* %140, i32 %143)
  store i32 %144, i32* %8, align 4
  %145 = load i32, i32* %9, align 4
  %146 = load i32*, i32** %11, align 8
  %147 = getelementptr inbounds i32, i32* %146, i64 0
  store i32 %145, i32* %147, align 4
  %148 = load i32, i32* %10, align 4
  %149 = load i32*, i32** %11, align 8
  %150 = getelementptr inbounds i32, i32* %149, i64 1
  store i32 %148, i32* %150, align 4
  %151 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %151, i32 0, i32 6
  store i64 0, i64* %152, align 8
  %153 = load i32, i32* %8, align 4
  store i32 %153, i32* %4, align 4
  br label %154

154:                                              ; preds = %125, %37
  %155 = load i32, i32* %4, align 4
  ret i32 %155
}

declare dso_local i8** @PRIV(i32) #1

declare dso_local i8* @GET(i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
