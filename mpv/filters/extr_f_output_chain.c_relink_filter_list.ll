; ModuleID = '/home/carl/AnghaBench/mpv/filters/extr_f_output_chain.c_relink_filter_list.c'
source_filename = "/home/carl/AnghaBench/mpv/filters/extr_f_output_chain.c_relink_filter_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chain = type { i32, i32, i32, i64, i32*, i32*, %struct.TYPE_2__**, %struct.mp_user_filter**, %struct.mp_user_filter**, %struct.mp_user_filter** }
%struct.TYPE_2__ = type { %struct.mp_filter* }
%struct.mp_filter = type { i32** }
%struct.mp_user_filter = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.chain*)* @relink_filter_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @relink_filter_list(%struct.chain* %0) #0 {
  %2 = alloca %struct.chain*, align 8
  %3 = alloca [3 x %struct.mp_user_filter**], align 16
  %4 = alloca [3 x i32], align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.mp_user_filter**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.mp_filter*, align 8
  store %struct.chain* %0, %struct.chain** %2, align 8
  %11 = getelementptr inbounds [3 x %struct.mp_user_filter**], [3 x %struct.mp_user_filter**]* %3, i64 0, i64 0
  %12 = load %struct.chain*, %struct.chain** %2, align 8
  %13 = getelementptr inbounds %struct.chain, %struct.chain* %12, i32 0, i32 9
  %14 = load %struct.mp_user_filter**, %struct.mp_user_filter*** %13, align 8
  store %struct.mp_user_filter** %14, %struct.mp_user_filter*** %11, align 8
  %15 = getelementptr inbounds %struct.mp_user_filter**, %struct.mp_user_filter*** %11, i64 1
  %16 = load %struct.chain*, %struct.chain** %2, align 8
  %17 = getelementptr inbounds %struct.chain, %struct.chain* %16, i32 0, i32 8
  %18 = load %struct.mp_user_filter**, %struct.mp_user_filter*** %17, align 8
  store %struct.mp_user_filter** %18, %struct.mp_user_filter*** %15, align 8
  %19 = getelementptr inbounds %struct.mp_user_filter**, %struct.mp_user_filter*** %15, i64 1
  %20 = load %struct.chain*, %struct.chain** %2, align 8
  %21 = getelementptr inbounds %struct.chain, %struct.chain* %20, i32 0, i32 7
  %22 = load %struct.mp_user_filter**, %struct.mp_user_filter*** %21, align 8
  store %struct.mp_user_filter** %22, %struct.mp_user_filter*** %19, align 8
  %23 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 0
  %24 = load %struct.chain*, %struct.chain** %2, align 8
  %25 = getelementptr inbounds %struct.chain, %struct.chain* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %23, align 4
  %27 = getelementptr inbounds i32, i32* %23, i64 1
  %28 = load %struct.chain*, %struct.chain** %2, align 8
  %29 = getelementptr inbounds %struct.chain, %struct.chain* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %27, align 4
  %31 = getelementptr inbounds i32, i32* %27, i64 1
  %32 = load %struct.chain*, %struct.chain** %2, align 8
  %33 = getelementptr inbounds %struct.chain, %struct.chain* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %31, align 4
  %35 = load %struct.chain*, %struct.chain** %2, align 8
  %36 = getelementptr inbounds %struct.chain, %struct.chain* %35, i32 0, i32 3
  store i64 0, i64* %36, align 8
  store i32 0, i32* %5, align 4
  br label %37

37:                                               ; preds = %71, %1
  %38 = load i32, i32* %5, align 4
  %39 = icmp slt i32 %38, 3
  br i1 %39, label %40, label %74

40:                                               ; preds = %37
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [3 x %struct.mp_user_filter**], [3 x %struct.mp_user_filter**]* %3, i64 0, i64 %42
  %44 = load %struct.mp_user_filter**, %struct.mp_user_filter*** %43, align 8
  store %struct.mp_user_filter** %44, %struct.mp_user_filter*** %6, align 8
  %45 = load i32, i32* %5, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 %46
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %49

49:                                               ; preds = %67, %40
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* %7, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %70

53:                                               ; preds = %49
  %54 = load %struct.chain*, %struct.chain** %2, align 8
  %55 = load %struct.chain*, %struct.chain** %2, align 8
  %56 = getelementptr inbounds %struct.chain, %struct.chain* %55, i32 0, i32 6
  %57 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %56, align 8
  %58 = load %struct.chain*, %struct.chain** %2, align 8
  %59 = getelementptr inbounds %struct.chain, %struct.chain* %58, i32 0, i32 3
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.mp_user_filter**, %struct.mp_user_filter*** %6, align 8
  %62 = load i32, i32* %8, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.mp_user_filter*, %struct.mp_user_filter** %61, i64 %63
  %65 = load %struct.mp_user_filter*, %struct.mp_user_filter** %64, align 8
  %66 = call i32 @MP_TARRAY_APPEND(%struct.chain* %54, %struct.TYPE_2__** %57, i64 %60, %struct.mp_user_filter* %65)
  br label %67

67:                                               ; preds = %53
  %68 = load i32, i32* %8, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %8, align 4
  br label %49

70:                                               ; preds = %49
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %5, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %5, align 4
  br label %37

74:                                               ; preds = %37
  %75 = load %struct.chain*, %struct.chain** %2, align 8
  %76 = getelementptr inbounds %struct.chain, %struct.chain* %75, i32 0, i32 3
  %77 = load i64, i64* %76, align 8
  %78 = icmp sgt i64 %77, 0
  %79 = zext i1 %78 to i32
  %80 = call i32 @assert(i32 %79)
  %81 = load %struct.chain*, %struct.chain** %2, align 8
  %82 = getelementptr inbounds %struct.chain, %struct.chain* %81, i32 0, i32 5
  store i32* null, i32** %82, align 8
  %83 = load %struct.chain*, %struct.chain** %2, align 8
  %84 = getelementptr inbounds %struct.chain, %struct.chain* %83, i32 0, i32 4
  store i32* null, i32** %84, align 8
  store i32 0, i32* %9, align 4
  br label %85

85:                                               ; preds = %135, %74
  %86 = load i32, i32* %9, align 4
  %87 = sext i32 %86 to i64
  %88 = load %struct.chain*, %struct.chain** %2, align 8
  %89 = getelementptr inbounds %struct.chain, %struct.chain* %88, i32 0, i32 3
  %90 = load i64, i64* %89, align 8
  %91 = icmp slt i64 %87, %90
  br i1 %91, label %92, label %138

92:                                               ; preds = %85
  %93 = load %struct.chain*, %struct.chain** %2, align 8
  %94 = getelementptr inbounds %struct.chain, %struct.chain* %93, i32 0, i32 6
  %95 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %94, align 8
  %96 = load i32, i32* %9, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %95, i64 %97
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 0
  %101 = load %struct.mp_filter*, %struct.mp_filter** %100, align 8
  store %struct.mp_filter* %101, %struct.mp_filter** %10, align 8
  %102 = load i32, i32* %9, align 4
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %112

104:                                              ; preds = %92
  %105 = load %struct.mp_filter*, %struct.mp_filter** %10, align 8
  %106 = getelementptr inbounds %struct.mp_filter, %struct.mp_filter* %105, i32 0, i32 0
  %107 = load i32**, i32*** %106, align 8
  %108 = getelementptr inbounds i32*, i32** %107, i64 0
  %109 = load i32*, i32** %108, align 8
  %110 = load %struct.chain*, %struct.chain** %2, align 8
  %111 = getelementptr inbounds %struct.chain, %struct.chain* %110, i32 0, i32 5
  store i32* %109, i32** %111, align 8
  br label %112

112:                                              ; preds = %104, %92
  %113 = load %struct.chain*, %struct.chain** %2, align 8
  %114 = getelementptr inbounds %struct.chain, %struct.chain* %113, i32 0, i32 4
  %115 = load i32*, i32** %114, align 8
  %116 = icmp ne i32* %115, null
  br i1 %116, label %117, label %127

117:                                              ; preds = %112
  %118 = load %struct.mp_filter*, %struct.mp_filter** %10, align 8
  %119 = getelementptr inbounds %struct.mp_filter, %struct.mp_filter* %118, i32 0, i32 0
  %120 = load i32**, i32*** %119, align 8
  %121 = getelementptr inbounds i32*, i32** %120, i64 0
  %122 = load i32*, i32** %121, align 8
  %123 = load %struct.chain*, %struct.chain** %2, align 8
  %124 = getelementptr inbounds %struct.chain, %struct.chain* %123, i32 0, i32 4
  %125 = load i32*, i32** %124, align 8
  %126 = call i32 @mp_pin_connect(i32* %122, i32* %125)
  br label %127

127:                                              ; preds = %117, %112
  %128 = load %struct.mp_filter*, %struct.mp_filter** %10, align 8
  %129 = getelementptr inbounds %struct.mp_filter, %struct.mp_filter* %128, i32 0, i32 0
  %130 = load i32**, i32*** %129, align 8
  %131 = getelementptr inbounds i32*, i32** %130, i64 1
  %132 = load i32*, i32** %131, align 8
  %133 = load %struct.chain*, %struct.chain** %2, align 8
  %134 = getelementptr inbounds %struct.chain, %struct.chain* %133, i32 0, i32 4
  store i32* %132, i32** %134, align 8
  br label %135

135:                                              ; preds = %127
  %136 = load i32, i32* %9, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %9, align 4
  br label %85

138:                                              ; preds = %85
  ret void
}

declare dso_local i32 @MP_TARRAY_APPEND(%struct.chain*, %struct.TYPE_2__**, i64, %struct.mp_user_filter*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @mp_pin_connect(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
