; ModuleID = '/home/carl/AnghaBench/radare2/shlr/lz4/extr_lz4.c_LZ4_decompress_safe_continue.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/lz4/extr_lz4.c_LZ4_decompress_safe_continue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32*, i32* }

@endOnInputSize = common dso_local global i32 0, align 4
@full = common dso_local global i32 0, align 4
@usingExtDict = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @LZ4_decompress_safe_continue(%struct.TYPE_5__* %0, i8* %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_4__*, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  store %struct.TYPE_4__* %15, %struct.TYPE_4__** %12, align 8
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 2
  %18 = load i32*, i32** %17, align 8
  %19 = load i8*, i8** %9, align 8
  %20 = bitcast i8* %19 to i32*
  %21 = icmp eq i32* %18, %20
  br i1 %21, label %22, label %62

22:                                               ; preds = %5
  %23 = load i8*, i8** %8, align 8
  %24 = load i8*, i8** %9, align 8
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* %11, align 4
  %27 = load i32, i32* @endOnInputSize, align 4
  %28 = load i32, i32* @full, align 4
  %29 = load i32, i32* @usingExtDict, align 4
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 2
  %32 = load i32*, i32** %31, align 8
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = sext i32 %35 to i64
  %37 = sub i64 0, %36
  %38 = getelementptr inbounds i32, i32* %32, i64 %37
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 3
  %41 = load i32*, i32** %40, align 8
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @LZ4_decompress_generic(i8* %23, i8* %24, i32 %25, i32 %26, i32 %27, i32 %28, i32 0, i32 %29, i32* %38, i32* %41, i32 %44)
  store i32 %45, i32* %13, align 4
  %46 = load i32, i32* %13, align 4
  %47 = icmp sle i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %22
  %49 = load i32, i32* %13, align 4
  store i32 %49, i32* %6, align 4
  br label %112

50:                                               ; preds = %22
  %51 = load i32, i32* %13, align 4
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = add nsw i32 %54, %51
  store i32 %55, i32* %53, align 8
  %56 = load i32, i32* %13, align 4
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 2
  %59 = load i32*, i32** %58, align 8
  %60 = sext i32 %56 to i64
  %61 = getelementptr inbounds i32, i32* %59, i64 %60
  store i32* %61, i32** %58, align 8
  br label %110

62:                                               ; preds = %5
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 2
  %70 = load i32*, i32** %69, align 8
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = sext i32 %73 to i64
  %75 = sub i64 0, %74
  %76 = getelementptr inbounds i32, i32* %70, i64 %75
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 3
  store i32* %76, i32** %78, align 8
  %79 = load i8*, i8** %8, align 8
  %80 = load i8*, i8** %9, align 8
  %81 = load i32, i32* %10, align 4
  %82 = load i32, i32* %11, align 4
  %83 = load i32, i32* @endOnInputSize, align 4
  %84 = load i32, i32* @full, align 4
  %85 = load i32, i32* @usingExtDict, align 4
  %86 = load i8*, i8** %9, align 8
  %87 = bitcast i8* %86 to i32*
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 3
  %90 = load i32*, i32** %89, align 8
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @LZ4_decompress_generic(i8* %79, i8* %80, i32 %81, i32 %82, i32 %83, i32 %84, i32 0, i32 %85, i32* %87, i32* %90, i32 %93)
  store i32 %94, i32* %13, align 4
  %95 = load i32, i32* %13, align 4
  %96 = icmp sle i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %62
  %98 = load i32, i32* %13, align 4
  store i32 %98, i32* %6, align 4
  br label %112

99:                                               ; preds = %62
  %100 = load i32, i32* %13, align 4
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  store i32 %100, i32* %102, align 8
  %103 = load i8*, i8** %9, align 8
  %104 = bitcast i8* %103 to i32*
  %105 = load i32, i32* %13, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 2
  store i32* %107, i32** %109, align 8
  br label %110

110:                                              ; preds = %99, %50
  %111 = load i32, i32* %13, align 4
  store i32 %111, i32* %6, align 4
  br label %112

112:                                              ; preds = %110, %97, %48
  %113 = load i32, i32* %6, align 4
  ret i32 %113
}

declare dso_local i32 @LZ4_decompress_generic(i8*, i8*, i32, i32, i32, i32, i32, i32, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
