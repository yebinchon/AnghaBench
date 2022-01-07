; ModuleID = '/home/carl/AnghaBench/php-src/ext/pcre/pcre2lib/extr_pcre2_dfa_match.c_do_callout.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/pcre/pcre2lib/extr_pcre2_dfa_match.c_do_callout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 (%struct.TYPE_5__*, i32)*, i64*, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64*, i64, i64, i64, i64*, i64, i8*, i8*, i8* }

@OP_CALLOUT = common dso_local global i64 0, align 8
@OP_lengths = common dso_local global i32 0, align 4
@LINK_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, i64*, i64*, i64*, %struct.TYPE_6__*, i64, i64*)* @do_callout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_callout(i64* %0, i64* %1, i64* %2, i64* %3, %struct.TYPE_6__* %4, i64 %5, i64* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca %struct.TYPE_6__*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64*, align 8
  %16 = alloca %struct.TYPE_5__*, align 8
  store i64* %0, i64** %9, align 8
  store i64* %1, i64** %10, align 8
  store i64* %2, i64** %11, align 8
  store i64* %3, i64** %12, align 8
  store %struct.TYPE_6__* %4, %struct.TYPE_6__** %13, align 8
  store i64 %5, i64* %14, align 8
  store i64* %6, i64** %15, align 8
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 3
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  store %struct.TYPE_5__* %19, %struct.TYPE_5__** %16, align 8
  %20 = load i64*, i64** %9, align 8
  %21 = load i64, i64* %14, align 8
  %22 = getelementptr inbounds i64, i64* %20, i64 %21
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @OP_CALLOUT, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %7
  %27 = load i32, i32* @OP_lengths, align 4
  %28 = call i64* @PRIV(i32 %27)
  %29 = load i64, i64* @OP_CALLOUT, align 8
  %30 = getelementptr inbounds i64, i64* %28, i64 %29
  %31 = load i64, i64* %30, align 8
  br label %43

32:                                               ; preds = %7
  %33 = load i64*, i64** %9, align 8
  %34 = load i32, i32* @LINK_SIZE, align 4
  %35 = mul nsw i32 2, %34
  %36 = add nsw i32 1, %35
  %37 = sext i32 %36 to i64
  %38 = load i64, i64* %14, align 8
  %39 = add i64 %37, %38
  %40 = trunc i64 %39 to i32
  %41 = call i8* @GET(i64* %33, i32 %40)
  %42 = ptrtoint i8* %41 to i64
  br label %43

43:                                               ; preds = %32, %26
  %44 = phi i64 [ %31, %26 ], [ %42, %32 ]
  %45 = load i64*, i64** %15, align 8
  store i64 %44, i64* %45, align 8
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i32 (%struct.TYPE_5__*, i32)*, i32 (%struct.TYPE_5__*, i32)** %47, align 8
  %49 = icmp eq i32 (%struct.TYPE_5__*, i32)* %48, null
  br i1 %49, label %50, label %51

50:                                               ; preds = %43
  store i32 0, i32* %8, align 4
  br label %160

51:                                               ; preds = %43
  %52 = load i64*, i64** %10, align 8
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  store i64* %52, i64** %54, align 8
  %55 = load i64*, i64** %11, align 8
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 1
  %58 = load i64*, i64** %57, align 8
  %59 = ptrtoint i64* %55 to i64
  %60 = ptrtoint i64* %58 to i64
  %61 = sub i64 %59, %60
  %62 = sdiv exact i64 %61, 8
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 1
  store i64 %62, i64* %64, align 8
  %65 = load i64*, i64** %12, align 8
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 1
  %68 = load i64*, i64** %67, align 8
  %69 = ptrtoint i64* %65 to i64
  %70 = ptrtoint i64* %68 to i64
  %71 = sub i64 %69, %70
  %72 = sdiv exact i64 %71, 8
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 2
  store i64 %72, i64* %74, align 8
  %75 = load i64*, i64** %9, align 8
  %76 = load i64, i64* %14, align 8
  %77 = add i64 1, %76
  %78 = trunc i64 %77 to i32
  %79 = call i8* @GET(i64* %75, i32 %78)
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 8
  store i8* %79, i8** %81, align 8
  %82 = load i64*, i64** %9, align 8
  %83 = load i32, i32* @LINK_SIZE, align 4
  %84 = add nsw i32 1, %83
  %85 = sext i32 %84 to i64
  %86 = load i64, i64* %14, align 8
  %87 = add i64 %85, %86
  %88 = trunc i64 %87 to i32
  %89 = call i8* @GET(i64* %82, i32 %88)
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 7
  store i8* %89, i8** %91, align 8
  %92 = load i64*, i64** %9, align 8
  %93 = load i64, i64* %14, align 8
  %94 = getelementptr inbounds i64, i64* %92, i64 %93
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @OP_CALLOUT, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %116

98:                                               ; preds = %51
  %99 = load i64*, i64** %9, align 8
  %100 = load i32, i32* @LINK_SIZE, align 4
  %101 = mul nsw i32 2, %100
  %102 = add nsw i32 1, %101
  %103 = sext i32 %102 to i64
  %104 = load i64, i64* %14, align 8
  %105 = add i64 %103, %104
  %106 = getelementptr inbounds i64, i64* %99, i64 %105
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 3
  store i64 %107, i64* %109, align 8
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 6
  store i8* null, i8** %111, align 8
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 4
  store i64* null, i64** %113, align 8
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 5
  store i64 0, i64* %115, align 8
  br label %151

116:                                              ; preds = %51
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 3
  store i64 0, i64* %118, align 8
  %119 = load i64*, i64** %9, align 8
  %120 = load i32, i32* @LINK_SIZE, align 4
  %121 = mul nsw i32 3, %120
  %122 = add nsw i32 1, %121
  %123 = sext i32 %122 to i64
  %124 = load i64, i64* %14, align 8
  %125 = add i64 %123, %124
  %126 = trunc i64 %125 to i32
  %127 = call i8* @GET(i64* %119, i32 %126)
  %128 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 6
  store i8* %127, i8** %129, align 8
  %130 = load i64*, i64** %9, align 8
  %131 = load i32, i32* @LINK_SIZE, align 4
  %132 = mul nsw i32 4, %131
  %133 = add nsw i32 1, %132
  %134 = sext i32 %133 to i64
  %135 = load i64, i64* %14, align 8
  %136 = add i64 %134, %135
  %137 = getelementptr inbounds i64, i64* %130, i64 %136
  %138 = getelementptr inbounds i64, i64* %137, i64 1
  %139 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 4
  store i64* %138, i64** %140, align 8
  %141 = load i64*, i64** %15, align 8
  %142 = load i64, i64* %141, align 8
  %143 = load i32, i32* @LINK_SIZE, align 4
  %144 = mul nsw i32 4, %143
  %145 = add nsw i32 1, %144
  %146 = sext i32 %145 to i64
  %147 = sub i64 %142, %146
  %148 = sub i64 %147, 2
  %149 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %150 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %149, i32 0, i32 5
  store i64 %148, i64* %150, align 8
  br label %151

151:                                              ; preds = %116, %98
  %152 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 0
  %154 = load i32 (%struct.TYPE_5__*, i32)*, i32 (%struct.TYPE_5__*, i32)** %153, align 8
  %155 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %156 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 8
  %159 = call i32 %154(%struct.TYPE_5__* %155, i32 %158)
  store i32 %159, i32* %8, align 4
  br label %160

160:                                              ; preds = %151, %50
  %161 = load i32, i32* %8, align 4
  ret i32 %161
}

declare dso_local i64* @PRIV(i32) #1

declare dso_local i8* @GET(i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
