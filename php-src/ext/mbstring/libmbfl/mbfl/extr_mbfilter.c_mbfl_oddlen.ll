; ModuleID = '/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/mbfl/extr_mbfilter.c_mbfl_oddlen.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/mbfl/extr_mbfilter.c_mbfl_oddlen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i8* }

@MBFL_ENCTYPE_SBCS = common dso_local global i32 0, align 4
@MBFL_ENCTYPE_WCS2BE = common dso_local global i32 0, align 4
@MBFL_ENCTYPE_WCS2LE = common dso_local global i32 0, align 4
@MBFL_ENCTYPE_WCS4BE = common dso_local global i32 0, align 4
@MBFL_ENCTYPE_WCS4LE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mbfl_oddlen(%struct.TYPE_4__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 2
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  store %struct.TYPE_5__* %13, %struct.TYPE_5__** %8, align 8
  store i64 0, i64* %4, align 8
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @MBFL_ENCTYPE_SBCS, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  store i64 0, i64* %2, align 8
  br label %89

21:                                               ; preds = %1
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @MBFL_ENCTYPE_WCS2BE, align 4
  %26 = load i32, i32* @MBFL_ENCTYPE_WCS2LE, align 4
  %27 = or i32 %25, %26
  %28 = and i32 %24, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %21
  %31 = load i64, i64* %4, align 8
  %32 = urem i64 %31, 2
  store i64 %32, i64* %2, align 8
  br label %89

33:                                               ; preds = %21
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @MBFL_ENCTYPE_WCS4BE, align 4
  %38 = load i32, i32* @MBFL_ENCTYPE_WCS4LE, align 4
  %39 = or i32 %37, %38
  %40 = and i32 %36, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %33
  %43 = load i64, i64* %4, align 8
  %44 = urem i64 %43, 4
  store i64 %44, i64* %2, align 8
  br label %89

45:                                               ; preds = %33
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  %48 = load i8*, i8** %47, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %50, label %88

50:                                               ; preds = %45
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 1
  %53 = load i8*, i8** %52, align 8
  store i8* %53, i8** %9, align 8
  store i64 0, i64* %5, align 8
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  store i8* %56, i8** %7, align 8
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  store i64 %59, i64* %6, align 8
  %60 = load i8*, i8** %7, align 8
  %61 = icmp ne i8* %60, null
  br i1 %61, label %62, label %84

62:                                               ; preds = %50
  br label %63

63:                                               ; preds = %67, %62
  %64 = load i64, i64* %5, align 8
  %65 = load i64, i64* %6, align 8
  %66 = icmp ult i64 %64, %65
  br i1 %66, label %67, label %83

67:                                               ; preds = %63
  %68 = load i8*, i8** %9, align 8
  %69 = load i8*, i8** %7, align 8
  %70 = load i8, i8* %69, align 1
  %71 = zext i8 %70 to i64
  %72 = getelementptr inbounds i8, i8* %68, i64 %71
  %73 = load i8, i8* %72, align 1
  %74 = zext i8 %73 to i32
  store i32 %74, i32* %10, align 4
  %75 = load i32, i32* %10, align 4
  %76 = zext i32 %75 to i64
  %77 = load i64, i64* %5, align 8
  %78 = add i64 %77, %76
  store i64 %78, i64* %5, align 8
  %79 = load i32, i32* %10, align 4
  %80 = load i8*, i8** %7, align 8
  %81 = zext i32 %79 to i64
  %82 = getelementptr inbounds i8, i8* %80, i64 %81
  store i8* %82, i8** %7, align 8
  br label %63

83:                                               ; preds = %63
  br label %84

84:                                               ; preds = %83, %50
  %85 = load i64, i64* %5, align 8
  %86 = load i64, i64* %6, align 8
  %87 = sub i64 %85, %86
  store i64 %87, i64* %2, align 8
  br label %89

88:                                               ; preds = %45
  store i64 0, i64* %2, align 8
  br label %89

89:                                               ; preds = %88, %84, %42, %30, %20
  %90 = load i64, i64* %2, align 8
  ret i64 %90
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
