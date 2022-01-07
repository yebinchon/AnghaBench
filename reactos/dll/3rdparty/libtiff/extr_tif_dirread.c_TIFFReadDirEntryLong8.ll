; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libtiff/extr_tif_dirread.c_TIFFReadDirEntryLong8.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libtiff/extr_tif_dirread.c_TIFFReadDirEntryLong8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32 }

@TIFFReadDirEntryErrCount = common dso_local global i32 0, align 4
@TIFFReadDirEntryErrOk = common dso_local global i32 0, align 4
@TIFFReadDirEntryErrType = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_11__*, i32*)* @TIFFReadDirEntryLong8 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @TIFFReadDirEntryLong8(i32* %0, %struct.TYPE_11__* %1, i32* %2) #0 {
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
  br label %121

22:                                               ; preds = %3
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  switch i32 %25, label %119 [
    i32 135, label %26
    i32 132, label %33
    i32 131, label %48
    i32 128, label %55
    i32 134, label %70
    i32 130, label %77
    i32 133, label %92
    i32 129, label %98
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
  br label %121

33:                                               ; preds = %22
  %34 = load i32*, i32** %5, align 8
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %36 = call i32 @TIFFReadDirEntryCheckedSbyte(i32* %34, %struct.TYPE_11__* %35, i32* %10)
  %37 = load i32, i32* %10, align 4
  %38 = call i32 @TIFFReadDirEntryCheckRangeLong8Sbyte(i32 %37)
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* @TIFFReadDirEntryErrOk, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %33
  %43 = load i32, i32* %8, align 4
  store i32 %43, i32* %4, align 4
  br label %121

44:                                               ; preds = %33
  %45 = load i32, i32* %10, align 4
  %46 = load i32*, i32** %7, align 8
  store i32 %45, i32* %46, align 4
  %47 = load i32, i32* @TIFFReadDirEntryErrOk, align 4
  store i32 %47, i32* %4, align 4
  br label %121

48:                                               ; preds = %22
  %49 = load i32*, i32** %5, align 8
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %51 = call i32 @TIFFReadDirEntryCheckedShort(i32* %49, %struct.TYPE_11__* %50, i32* %11)
  %52 = load i32, i32* %11, align 4
  %53 = load i32*, i32** %7, align 8
  store i32 %52, i32* %53, align 4
  %54 = load i32, i32* @TIFFReadDirEntryErrOk, align 4
  store i32 %54, i32* %4, align 4
  br label %121

55:                                               ; preds = %22
  %56 = load i32*, i32** %5, align 8
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %58 = call i32 @TIFFReadDirEntryCheckedSshort(i32* %56, %struct.TYPE_11__* %57, i32* %12)
  %59 = load i32, i32* %12, align 4
  %60 = call i32 @TIFFReadDirEntryCheckRangeLong8Sshort(i32 %59)
  store i32 %60, i32* %8, align 4
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* @TIFFReadDirEntryErrOk, align 4
  %63 = icmp ne i32 %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %55
  %65 = load i32, i32* %8, align 4
  store i32 %65, i32* %4, align 4
  br label %121

66:                                               ; preds = %55
  %67 = load i32, i32* %12, align 4
  %68 = load i32*, i32** %7, align 8
  store i32 %67, i32* %68, align 4
  %69 = load i32, i32* @TIFFReadDirEntryErrOk, align 4
  store i32 %69, i32* %4, align 4
  br label %121

70:                                               ; preds = %22
  %71 = load i32*, i32** %5, align 8
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %73 = call i32 @TIFFReadDirEntryCheckedLong(i32* %71, %struct.TYPE_11__* %72, i32* %13)
  %74 = load i32, i32* %13, align 4
  %75 = load i32*, i32** %7, align 8
  store i32 %74, i32* %75, align 4
  %76 = load i32, i32* @TIFFReadDirEntryErrOk, align 4
  store i32 %76, i32* %4, align 4
  br label %121

77:                                               ; preds = %22
  %78 = load i32*, i32** %5, align 8
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %80 = call i32 @TIFFReadDirEntryCheckedSlong(i32* %78, %struct.TYPE_11__* %79, i32* %14)
  %81 = load i32, i32* %14, align 4
  %82 = call i32 @TIFFReadDirEntryCheckRangeLong8Slong(i32 %81)
  store i32 %82, i32* %8, align 4
  %83 = load i32, i32* %8, align 4
  %84 = load i32, i32* @TIFFReadDirEntryErrOk, align 4
  %85 = icmp ne i32 %83, %84
  br i1 %85, label %86, label %88

86:                                               ; preds = %77
  %87 = load i32, i32* %8, align 4
  store i32 %87, i32* %4, align 4
  br label %121

88:                                               ; preds = %77
  %89 = load i32, i32* %14, align 4
  %90 = load i32*, i32** %7, align 8
  store i32 %89, i32* %90, align 4
  %91 = load i32, i32* @TIFFReadDirEntryErrOk, align 4
  store i32 %91, i32* %4, align 4
  br label %121

92:                                               ; preds = %22
  %93 = load i32*, i32** %5, align 8
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %95 = load i32*, i32** %7, align 8
  %96 = call i32 @TIFFReadDirEntryCheckedLong8(i32* %93, %struct.TYPE_11__* %94, i32* %95)
  store i32 %96, i32* %8, align 4
  %97 = load i32, i32* %8, align 4
  store i32 %97, i32* %4, align 4
  br label %121

98:                                               ; preds = %22
  %99 = load i32*, i32** %5, align 8
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %101 = call i32 @TIFFReadDirEntryCheckedSlong8(i32* %99, %struct.TYPE_11__* %100, i32* %15)
  store i32 %101, i32* %8, align 4
  %102 = load i32, i32* %8, align 4
  %103 = load i32, i32* @TIFFReadDirEntryErrOk, align 4
  %104 = icmp ne i32 %102, %103
  br i1 %104, label %105, label %107

105:                                              ; preds = %98
  %106 = load i32, i32* %8, align 4
  store i32 %106, i32* %4, align 4
  br label %121

107:                                              ; preds = %98
  %108 = load i32, i32* %15, align 4
  %109 = call i32 @TIFFReadDirEntryCheckRangeLong8Slong8(i32 %108)
  store i32 %109, i32* %8, align 4
  %110 = load i32, i32* %8, align 4
  %111 = load i32, i32* @TIFFReadDirEntryErrOk, align 4
  %112 = icmp ne i32 %110, %111
  br i1 %112, label %113, label %115

113:                                              ; preds = %107
  %114 = load i32, i32* %8, align 4
  store i32 %114, i32* %4, align 4
  br label %121

115:                                              ; preds = %107
  %116 = load i32, i32* %15, align 4
  %117 = load i32*, i32** %7, align 8
  store i32 %116, i32* %117, align 4
  %118 = load i32, i32* @TIFFReadDirEntryErrOk, align 4
  store i32 %118, i32* %4, align 4
  br label %121

119:                                              ; preds = %22
  %120 = load i32, i32* @TIFFReadDirEntryErrType, align 4
  store i32 %120, i32* %4, align 4
  br label %121

121:                                              ; preds = %119, %115, %113, %105, %92, %88, %86, %70, %66, %64, %48, %44, %42, %26, %20
  %122 = load i32, i32* %4, align 4
  ret i32 %122
}

declare dso_local i32 @TIFFReadDirEntryCheckedByte(i32*, %struct.TYPE_11__*, i32*) #1

declare dso_local i32 @TIFFReadDirEntryCheckedSbyte(i32*, %struct.TYPE_11__*, i32*) #1

declare dso_local i32 @TIFFReadDirEntryCheckRangeLong8Sbyte(i32) #1

declare dso_local i32 @TIFFReadDirEntryCheckedShort(i32*, %struct.TYPE_11__*, i32*) #1

declare dso_local i32 @TIFFReadDirEntryCheckedSshort(i32*, %struct.TYPE_11__*, i32*) #1

declare dso_local i32 @TIFFReadDirEntryCheckRangeLong8Sshort(i32) #1

declare dso_local i32 @TIFFReadDirEntryCheckedLong(i32*, %struct.TYPE_11__*, i32*) #1

declare dso_local i32 @TIFFReadDirEntryCheckedSlong(i32*, %struct.TYPE_11__*, i32*) #1

declare dso_local i32 @TIFFReadDirEntryCheckRangeLong8Slong(i32) #1

declare dso_local i32 @TIFFReadDirEntryCheckedLong8(i32*, %struct.TYPE_11__*, i32*) #1

declare dso_local i32 @TIFFReadDirEntryCheckedSlong8(i32*, %struct.TYPE_11__*, i32*) #1

declare dso_local i32 @TIFFReadDirEntryCheckRangeLong8Slong8(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
