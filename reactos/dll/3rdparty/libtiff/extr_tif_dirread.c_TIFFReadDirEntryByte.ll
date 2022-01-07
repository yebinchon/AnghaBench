; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libtiff/extr_tif_dirread.c_TIFFReadDirEntryByte.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libtiff/extr_tif_dirread.c_TIFFReadDirEntryByte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32 }

@TIFFReadDirEntryErrCount = common dso_local global i32 0, align 4
@TIFFReadDirEntryErrOk = common dso_local global i32 0, align 4
@TIFFReadDirEntryErrType = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_11__*, i32*)* @TIFFReadDirEntryByte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @TIFFReadDirEntryByte(i32* %0, %struct.TYPE_11__* %1, i32* %2) #0 {
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
  br label %151

22:                                               ; preds = %3
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  switch i32 %25, label %149 [
    i32 135, label %26
    i32 132, label %32
    i32 131, label %47
    i32 128, label %62
    i32 134, label %77
    i32 130, label %92
    i32 133, label %107
    i32 129, label %128
  ]

26:                                               ; preds = %22
  %27 = load i32*, i32** %5, align 8
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %29 = load i32*, i32** %7, align 8
  %30 = call i32 @TIFFReadDirEntryCheckedByte(i32* %27, %struct.TYPE_11__* %28, i32* %29)
  %31 = load i32, i32* @TIFFReadDirEntryErrOk, align 4
  store i32 %31, i32* %4, align 4
  br label %151

32:                                               ; preds = %22
  %33 = load i32*, i32** %5, align 8
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %35 = call i32 @TIFFReadDirEntryCheckedSbyte(i32* %33, %struct.TYPE_11__* %34, i32* %9)
  %36 = load i32, i32* %9, align 4
  %37 = call i32 @TIFFReadDirEntryCheckRangeByteSbyte(i32 %36)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* @TIFFReadDirEntryErrOk, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %32
  %42 = load i32, i32* %8, align 4
  store i32 %42, i32* %4, align 4
  br label %151

43:                                               ; preds = %32
  %44 = load i32, i32* %9, align 4
  %45 = load i32*, i32** %7, align 8
  store i32 %44, i32* %45, align 4
  %46 = load i32, i32* @TIFFReadDirEntryErrOk, align 4
  store i32 %46, i32* %4, align 4
  br label %151

47:                                               ; preds = %22
  %48 = load i32*, i32** %5, align 8
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %50 = call i32 @TIFFReadDirEntryCheckedShort(i32* %48, %struct.TYPE_11__* %49, i32* %10)
  %51 = load i32, i32* %10, align 4
  %52 = call i32 @TIFFReadDirEntryCheckRangeByteShort(i32 %51)
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* @TIFFReadDirEntryErrOk, align 4
  %55 = icmp ne i32 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %47
  %57 = load i32, i32* %8, align 4
  store i32 %57, i32* %4, align 4
  br label %151

58:                                               ; preds = %47
  %59 = load i32, i32* %10, align 4
  %60 = load i32*, i32** %7, align 8
  store i32 %59, i32* %60, align 4
  %61 = load i32, i32* @TIFFReadDirEntryErrOk, align 4
  store i32 %61, i32* %4, align 4
  br label %151

62:                                               ; preds = %22
  %63 = load i32*, i32** %5, align 8
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %65 = call i32 @TIFFReadDirEntryCheckedSshort(i32* %63, %struct.TYPE_11__* %64, i32* %11)
  %66 = load i32, i32* %11, align 4
  %67 = call i32 @TIFFReadDirEntryCheckRangeByteSshort(i32 %66)
  store i32 %67, i32* %8, align 4
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* @TIFFReadDirEntryErrOk, align 4
  %70 = icmp ne i32 %68, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %62
  %72 = load i32, i32* %8, align 4
  store i32 %72, i32* %4, align 4
  br label %151

73:                                               ; preds = %62
  %74 = load i32, i32* %11, align 4
  %75 = load i32*, i32** %7, align 8
  store i32 %74, i32* %75, align 4
  %76 = load i32, i32* @TIFFReadDirEntryErrOk, align 4
  store i32 %76, i32* %4, align 4
  br label %151

77:                                               ; preds = %22
  %78 = load i32*, i32** %5, align 8
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %80 = call i32 @TIFFReadDirEntryCheckedLong(i32* %78, %struct.TYPE_11__* %79, i32* %12)
  %81 = load i32, i32* %12, align 4
  %82 = call i32 @TIFFReadDirEntryCheckRangeByteLong(i32 %81)
  store i32 %82, i32* %8, align 4
  %83 = load i32, i32* %8, align 4
  %84 = load i32, i32* @TIFFReadDirEntryErrOk, align 4
  %85 = icmp ne i32 %83, %84
  br i1 %85, label %86, label %88

86:                                               ; preds = %77
  %87 = load i32, i32* %8, align 4
  store i32 %87, i32* %4, align 4
  br label %151

88:                                               ; preds = %77
  %89 = load i32, i32* %12, align 4
  %90 = load i32*, i32** %7, align 8
  store i32 %89, i32* %90, align 4
  %91 = load i32, i32* @TIFFReadDirEntryErrOk, align 4
  store i32 %91, i32* %4, align 4
  br label %151

92:                                               ; preds = %22
  %93 = load i32*, i32** %5, align 8
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %95 = call i32 @TIFFReadDirEntryCheckedSlong(i32* %93, %struct.TYPE_11__* %94, i32* %13)
  %96 = load i32, i32* %13, align 4
  %97 = call i32 @TIFFReadDirEntryCheckRangeByteSlong(i32 %96)
  store i32 %97, i32* %8, align 4
  %98 = load i32, i32* %8, align 4
  %99 = load i32, i32* @TIFFReadDirEntryErrOk, align 4
  %100 = icmp ne i32 %98, %99
  br i1 %100, label %101, label %103

101:                                              ; preds = %92
  %102 = load i32, i32* %8, align 4
  store i32 %102, i32* %4, align 4
  br label %151

103:                                              ; preds = %92
  %104 = load i32, i32* %13, align 4
  %105 = load i32*, i32** %7, align 8
  store i32 %104, i32* %105, align 4
  %106 = load i32, i32* @TIFFReadDirEntryErrOk, align 4
  store i32 %106, i32* %4, align 4
  br label %151

107:                                              ; preds = %22
  %108 = load i32*, i32** %5, align 8
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %110 = call i32 @TIFFReadDirEntryCheckedLong8(i32* %108, %struct.TYPE_11__* %109, i32* %14)
  store i32 %110, i32* %8, align 4
  %111 = load i32, i32* %8, align 4
  %112 = load i32, i32* @TIFFReadDirEntryErrOk, align 4
  %113 = icmp ne i32 %111, %112
  br i1 %113, label %114, label %116

114:                                              ; preds = %107
  %115 = load i32, i32* %8, align 4
  store i32 %115, i32* %4, align 4
  br label %151

116:                                              ; preds = %107
  %117 = load i32, i32* %14, align 4
  %118 = call i32 @TIFFReadDirEntryCheckRangeByteLong8(i32 %117)
  store i32 %118, i32* %8, align 4
  %119 = load i32, i32* %8, align 4
  %120 = load i32, i32* @TIFFReadDirEntryErrOk, align 4
  %121 = icmp ne i32 %119, %120
  br i1 %121, label %122, label %124

122:                                              ; preds = %116
  %123 = load i32, i32* %8, align 4
  store i32 %123, i32* %4, align 4
  br label %151

124:                                              ; preds = %116
  %125 = load i32, i32* %14, align 4
  %126 = load i32*, i32** %7, align 8
  store i32 %125, i32* %126, align 4
  %127 = load i32, i32* @TIFFReadDirEntryErrOk, align 4
  store i32 %127, i32* %4, align 4
  br label %151

128:                                              ; preds = %22
  %129 = load i32*, i32** %5, align 8
  %130 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %131 = call i32 @TIFFReadDirEntryCheckedSlong8(i32* %129, %struct.TYPE_11__* %130, i32* %15)
  store i32 %131, i32* %8, align 4
  %132 = load i32, i32* %8, align 4
  %133 = load i32, i32* @TIFFReadDirEntryErrOk, align 4
  %134 = icmp ne i32 %132, %133
  br i1 %134, label %135, label %137

135:                                              ; preds = %128
  %136 = load i32, i32* %8, align 4
  store i32 %136, i32* %4, align 4
  br label %151

137:                                              ; preds = %128
  %138 = load i32, i32* %15, align 4
  %139 = call i32 @TIFFReadDirEntryCheckRangeByteSlong8(i32 %138)
  store i32 %139, i32* %8, align 4
  %140 = load i32, i32* %8, align 4
  %141 = load i32, i32* @TIFFReadDirEntryErrOk, align 4
  %142 = icmp ne i32 %140, %141
  br i1 %142, label %143, label %145

143:                                              ; preds = %137
  %144 = load i32, i32* %8, align 4
  store i32 %144, i32* %4, align 4
  br label %151

145:                                              ; preds = %137
  %146 = load i32, i32* %15, align 4
  %147 = load i32*, i32** %7, align 8
  store i32 %146, i32* %147, align 4
  %148 = load i32, i32* @TIFFReadDirEntryErrOk, align 4
  store i32 %148, i32* %4, align 4
  br label %151

149:                                              ; preds = %22
  %150 = load i32, i32* @TIFFReadDirEntryErrType, align 4
  store i32 %150, i32* %4, align 4
  br label %151

151:                                              ; preds = %149, %145, %143, %135, %124, %122, %114, %103, %101, %88, %86, %73, %71, %58, %56, %43, %41, %26, %20
  %152 = load i32, i32* %4, align 4
  ret i32 %152
}

declare dso_local i32 @TIFFReadDirEntryCheckedByte(i32*, %struct.TYPE_11__*, i32*) #1

declare dso_local i32 @TIFFReadDirEntryCheckedSbyte(i32*, %struct.TYPE_11__*, i32*) #1

declare dso_local i32 @TIFFReadDirEntryCheckRangeByteSbyte(i32) #1

declare dso_local i32 @TIFFReadDirEntryCheckedShort(i32*, %struct.TYPE_11__*, i32*) #1

declare dso_local i32 @TIFFReadDirEntryCheckRangeByteShort(i32) #1

declare dso_local i32 @TIFFReadDirEntryCheckedSshort(i32*, %struct.TYPE_11__*, i32*) #1

declare dso_local i32 @TIFFReadDirEntryCheckRangeByteSshort(i32) #1

declare dso_local i32 @TIFFReadDirEntryCheckedLong(i32*, %struct.TYPE_11__*, i32*) #1

declare dso_local i32 @TIFFReadDirEntryCheckRangeByteLong(i32) #1

declare dso_local i32 @TIFFReadDirEntryCheckedSlong(i32*, %struct.TYPE_11__*, i32*) #1

declare dso_local i32 @TIFFReadDirEntryCheckRangeByteSlong(i32) #1

declare dso_local i32 @TIFFReadDirEntryCheckedLong8(i32*, %struct.TYPE_11__*, i32*) #1

declare dso_local i32 @TIFFReadDirEntryCheckRangeByteLong8(i32) #1

declare dso_local i32 @TIFFReadDirEntryCheckedSlong8(i32*, %struct.TYPE_11__*, i32*) #1

declare dso_local i32 @TIFFReadDirEntryCheckRangeByteSlong8(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
