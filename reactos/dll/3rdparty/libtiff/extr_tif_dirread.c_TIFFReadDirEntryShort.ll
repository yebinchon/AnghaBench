; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libtiff/extr_tif_dirread.c_TIFFReadDirEntryShort.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libtiff/extr_tif_dirread.c_TIFFReadDirEntryShort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32 }

@TIFFReadDirEntryErrCount = common dso_local global i32 0, align 4
@TIFFReadDirEntryErrOk = common dso_local global i32 0, align 4
@TIFFReadDirEntryErrType = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_11__*, i32*)* @TIFFReadDirEntryShort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @TIFFReadDirEntryShort(i32* %0, %struct.TYPE_11__* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %6, align 8
  store i32* %2, i32** %7, align 8
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 1
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i32, i32* @TIFFReadDirEntryErrCount, align 4
  store i32 %21, i32* %4, align 4
  br label %143

22:                                               ; preds = %3
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  switch i32 %25, label %141 [
    i32 135, label %26
    i32 132, label %33
    i32 131, label %48
    i32 128, label %54
    i32 134, label %69
    i32 130, label %84
    i32 133, label %99
    i32 129, label %120
  ]

26:                                               ; preds = %22
  %27 = load i32*, i32** %5, align 8
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %29 = call i32 @TIFFReadDirEntryCheckedByte(i32* %27, %struct.TYPE_11__* %28, i32* %9)
  %30 = load i32, i32* %9, align 4
  %31 = load i32*, i32** %7, align 8
  store i32 %30, i32* %31, align 4
  %32 = load i32, i32* @TIFFReadDirEntryErrOk, align 4
  store i32 %32, i32* %4, align 4
  br label %143

33:                                               ; preds = %22
  %34 = load i32*, i32** %5, align 8
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %36 = call i32 @TIFFReadDirEntryCheckedSbyte(i32* %34, %struct.TYPE_11__* %35, i32* %10)
  %37 = load i32, i32* %10, align 4
  %38 = call i32 @TIFFReadDirEntryCheckRangeShortSbyte(i32 %37)
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* @TIFFReadDirEntryErrOk, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %33
  %43 = load i32, i32* %8, align 4
  store i32 %43, i32* %4, align 4
  br label %143

44:                                               ; preds = %33
  %45 = load i32, i32* %10, align 4
  %46 = load i32*, i32** %7, align 8
  store i32 %45, i32* %46, align 4
  %47 = load i32, i32* @TIFFReadDirEntryErrOk, align 4
  store i32 %47, i32* %4, align 4
  br label %143

48:                                               ; preds = %22
  %49 = load i32*, i32** %5, align 8
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %51 = load i32*, i32** %7, align 8
  %52 = call i32 @TIFFReadDirEntryCheckedShort(i32* %49, %struct.TYPE_11__* %50, i32* %51)
  %53 = load i32, i32* @TIFFReadDirEntryErrOk, align 4
  store i32 %53, i32* %4, align 4
  br label %143

54:                                               ; preds = %22
  %55 = load i32*, i32** %5, align 8
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %57 = call i32 @TIFFReadDirEntryCheckedSshort(i32* %55, %struct.TYPE_11__* %56, i32* %11)
  %58 = load i32, i32* %11, align 4
  %59 = call i32 @TIFFReadDirEntryCheckRangeShortSshort(i32 %58)
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* @TIFFReadDirEntryErrOk, align 4
  %62 = icmp ne i32 %60, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %54
  %64 = load i32, i32* %8, align 4
  store i32 %64, i32* %4, align 4
  br label %143

65:                                               ; preds = %54
  %66 = load i32, i32* %11, align 4
  %67 = load i32*, i32** %7, align 8
  store i32 %66, i32* %67, align 4
  %68 = load i32, i32* @TIFFReadDirEntryErrOk, align 4
  store i32 %68, i32* %4, align 4
  br label %143

69:                                               ; preds = %22
  %70 = load i32*, i32** %5, align 8
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %72 = call i32 @TIFFReadDirEntryCheckedLong(i32* %70, %struct.TYPE_11__* %71, i32* %12)
  %73 = load i32, i32* %12, align 4
  %74 = call i32 @TIFFReadDirEntryCheckRangeShortLong(i32 %73)
  store i32 %74, i32* %8, align 4
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* @TIFFReadDirEntryErrOk, align 4
  %77 = icmp ne i32 %75, %76
  br i1 %77, label %78, label %80

78:                                               ; preds = %69
  %79 = load i32, i32* %8, align 4
  store i32 %79, i32* %4, align 4
  br label %143

80:                                               ; preds = %69
  %81 = load i32, i32* %12, align 4
  %82 = load i32*, i32** %7, align 8
  store i32 %81, i32* %82, align 4
  %83 = load i32, i32* @TIFFReadDirEntryErrOk, align 4
  store i32 %83, i32* %4, align 4
  br label %143

84:                                               ; preds = %22
  %85 = load i32*, i32** %5, align 8
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %87 = call i32 @TIFFReadDirEntryCheckedSlong(i32* %85, %struct.TYPE_11__* %86, i32* %13)
  %88 = load i32, i32* %13, align 4
  %89 = call i32 @TIFFReadDirEntryCheckRangeShortSlong(i32 %88)
  store i32 %89, i32* %8, align 4
  %90 = load i32, i32* %8, align 4
  %91 = load i32, i32* @TIFFReadDirEntryErrOk, align 4
  %92 = icmp ne i32 %90, %91
  br i1 %92, label %93, label %95

93:                                               ; preds = %84
  %94 = load i32, i32* %8, align 4
  store i32 %94, i32* %4, align 4
  br label %143

95:                                               ; preds = %84
  %96 = load i32, i32* %13, align 4
  %97 = load i32*, i32** %7, align 8
  store i32 %96, i32* %97, align 4
  %98 = load i32, i32* @TIFFReadDirEntryErrOk, align 4
  store i32 %98, i32* %4, align 4
  br label %143

99:                                               ; preds = %22
  %100 = load i32*, i32** %5, align 8
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %102 = call i32 @TIFFReadDirEntryCheckedLong8(i32* %100, %struct.TYPE_11__* %101, i32* %14)
  store i32 %102, i32* %8, align 4
  %103 = load i32, i32* %8, align 4
  %104 = load i32, i32* @TIFFReadDirEntryErrOk, align 4
  %105 = icmp ne i32 %103, %104
  br i1 %105, label %106, label %108

106:                                              ; preds = %99
  %107 = load i32, i32* %8, align 4
  store i32 %107, i32* %4, align 4
  br label %143

108:                                              ; preds = %99
  %109 = load i32, i32* %14, align 4
  %110 = call i32 @TIFFReadDirEntryCheckRangeShortLong8(i32 %109)
  store i32 %110, i32* %8, align 4
  %111 = load i32, i32* %8, align 4
  %112 = load i32, i32* @TIFFReadDirEntryErrOk, align 4
  %113 = icmp ne i32 %111, %112
  br i1 %113, label %114, label %116

114:                                              ; preds = %108
  %115 = load i32, i32* %8, align 4
  store i32 %115, i32* %4, align 4
  br label %143

116:                                              ; preds = %108
  %117 = load i32, i32* %14, align 4
  %118 = load i32*, i32** %7, align 8
  store i32 %117, i32* %118, align 4
  %119 = load i32, i32* @TIFFReadDirEntryErrOk, align 4
  store i32 %119, i32* %4, align 4
  br label %143

120:                                              ; preds = %22
  %121 = load i32*, i32** %5, align 8
  %122 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %123 = call i32 @TIFFReadDirEntryCheckedSlong8(i32* %121, %struct.TYPE_11__* %122, i32* %15)
  store i32 %123, i32* %8, align 4
  %124 = load i32, i32* %8, align 4
  %125 = load i32, i32* @TIFFReadDirEntryErrOk, align 4
  %126 = icmp ne i32 %124, %125
  br i1 %126, label %127, label %129

127:                                              ; preds = %120
  %128 = load i32, i32* %8, align 4
  store i32 %128, i32* %4, align 4
  br label %143

129:                                              ; preds = %120
  %130 = load i32, i32* %15, align 4
  %131 = call i32 @TIFFReadDirEntryCheckRangeShortSlong8(i32 %130)
  store i32 %131, i32* %8, align 4
  %132 = load i32, i32* %8, align 4
  %133 = load i32, i32* @TIFFReadDirEntryErrOk, align 4
  %134 = icmp ne i32 %132, %133
  br i1 %134, label %135, label %137

135:                                              ; preds = %129
  %136 = load i32, i32* %8, align 4
  store i32 %136, i32* %4, align 4
  br label %143

137:                                              ; preds = %129
  %138 = load i32, i32* %15, align 4
  %139 = load i32*, i32** %7, align 8
  store i32 %138, i32* %139, align 4
  %140 = load i32, i32* @TIFFReadDirEntryErrOk, align 4
  store i32 %140, i32* %4, align 4
  br label %143

141:                                              ; preds = %22
  %142 = load i32, i32* @TIFFReadDirEntryErrType, align 4
  store i32 %142, i32* %4, align 4
  br label %143

143:                                              ; preds = %141, %137, %135, %127, %116, %114, %106, %95, %93, %80, %78, %65, %63, %48, %44, %42, %26, %20
  %144 = load i32, i32* %4, align 4
  ret i32 %144
}

declare dso_local i32 @TIFFReadDirEntryCheckedByte(i32*, %struct.TYPE_11__*, i32*) #1

declare dso_local i32 @TIFFReadDirEntryCheckedSbyte(i32*, %struct.TYPE_11__*, i32*) #1

declare dso_local i32 @TIFFReadDirEntryCheckRangeShortSbyte(i32) #1

declare dso_local i32 @TIFFReadDirEntryCheckedShort(i32*, %struct.TYPE_11__*, i32*) #1

declare dso_local i32 @TIFFReadDirEntryCheckedSshort(i32*, %struct.TYPE_11__*, i32*) #1

declare dso_local i32 @TIFFReadDirEntryCheckRangeShortSshort(i32) #1

declare dso_local i32 @TIFFReadDirEntryCheckedLong(i32*, %struct.TYPE_11__*, i32*) #1

declare dso_local i32 @TIFFReadDirEntryCheckRangeShortLong(i32) #1

declare dso_local i32 @TIFFReadDirEntryCheckedSlong(i32*, %struct.TYPE_11__*, i32*) #1

declare dso_local i32 @TIFFReadDirEntryCheckRangeShortSlong(i32) #1

declare dso_local i32 @TIFFReadDirEntryCheckedLong8(i32*, %struct.TYPE_11__*, i32*) #1

declare dso_local i32 @TIFFReadDirEntryCheckRangeShortLong8(i32) #1

declare dso_local i32 @TIFFReadDirEntryCheckedSlong8(i32*, %struct.TYPE_11__*, i32*) #1

declare dso_local i32 @TIFFReadDirEntryCheckRangeShortSlong8(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
