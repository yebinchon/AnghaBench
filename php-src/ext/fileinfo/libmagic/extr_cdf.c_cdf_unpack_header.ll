; ModuleID = '/home/carl/AnghaBench/php-src/ext/fileinfo/libmagic/extr_cdf.c_cdf_unpack_header.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/fileinfo/libmagic/extr_cdf.c_cdf_unpack_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cdf_unpack_header(%struct.TYPE_3__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i8* %1, i8** %4, align 8
  store i64 0, i64* %6, align 8
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 16
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @CDF_UNPACK(i32 %9)
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 15
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @CDF_UNPACKA(i32 %13)
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 14
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @CDF_UNPACK(i32 %17)
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 13
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @CDF_UNPACK(i32 %21)
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 12
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @CDF_UNPACK(i32 %25)
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 11
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @CDF_UNPACK(i32 %29)
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 10
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @CDF_UNPACK(i32 %33)
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 9
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @CDF_UNPACKA(i32 %37)
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 8
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @CDF_UNPACK(i32 %41)
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 7
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @CDF_UNPACK(i32 %45)
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 6
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @CDF_UNPACKA(i32 %49)
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 5
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @CDF_UNPACK(i32 %53)
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @CDF_UNPACK(i32 %57)
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @CDF_UNPACK(i32 %61)
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @CDF_UNPACK(i32 %65)
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @CDF_UNPACK(i32 %69)
  store i64 0, i64* %5, align 8
  br label %71

71:                                               ; preds = %86, %2
  %72 = load i64, i64* %5, align 8
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = call i64 @__arraycount(i32* %75)
  %77 = icmp ult i64 %72, %76
  br i1 %77, label %78, label %89

78:                                               ; preds = %71
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = load i64, i64* %5, align 8
  %83 = getelementptr inbounds i32, i32* %81, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @CDF_UNPACK(i32 %84)
  br label %86

86:                                               ; preds = %78
  %87 = load i64, i64* %5, align 8
  %88 = add i64 %87, 1
  store i64 %88, i64* %5, align 8
  br label %71

89:                                               ; preds = %71
  ret void
}

declare dso_local i32 @CDF_UNPACK(i32) #1

declare dso_local i32 @CDF_UNPACKA(i32) #1

declare dso_local i64 @__arraycount(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
