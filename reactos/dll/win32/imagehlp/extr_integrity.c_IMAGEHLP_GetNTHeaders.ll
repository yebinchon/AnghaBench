; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/imagehlp/extr_integrity.c_IMAGEHLP_GetNTHeaders.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/imagehlp/extr_integrity.c_IMAGEHLP_GetNTHeaders.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i32, i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"handle %p\0A\00", align 1
@HDR_FAIL = common dso_local global i32 0, align 4
@FILE_BEGIN = common dso_local global i32 0, align 4
@INVALID_SET_FILE_POINTER = common dso_local global i32 0, align 4
@IMAGE_DOS_SIGNATURE = common dso_local global i64 0, align 8
@IMAGE_NT_SIGNATURE = common dso_local global i64 0, align 8
@HDR_NT32 = common dso_local global i32 0, align 4
@HDR_NT64 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, %struct.TYPE_9__*, %struct.TYPE_9__*)* @IMAGEHLP_GetNTHeaders to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @IMAGEHLP_GetNTHeaders(i32 %0, i32* %1, %struct.TYPE_9__* %2, %struct.TYPE_9__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca %struct.TYPE_9__, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %8, align 8
  store %struct.TYPE_9__* %3, %struct.TYPE_9__** %9, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @TRACE(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %16 = icmp ne %struct.TYPE_9__* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %4
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %19 = icmp ne %struct.TYPE_9__* %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %17, %4
  %21 = load i32, i32* @HDR_FAIL, align 4
  store i32 %21, i32* %5, align 4
  br label %135

22:                                               ; preds = %17
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @FILE_BEGIN, align 4
  %25 = call i32 @SetFilePointer(i32 %23, i32 0, i32* null, i32 %24)
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %11, align 4
  %27 = load i32, i32* @INVALID_SET_FILE_POINTER, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %22
  %30 = load i32, i32* @HDR_FAIL, align 4
  store i32 %30, i32* %5, align 4
  br label %135

31:                                               ; preds = %22
  store i32 0, i32* %11, align 4
  %32 = load i32, i32* %6, align 4
  %33 = call i64 @ReadFile(i32 %32, %struct.TYPE_9__* %10, i32 32, i32* %11, i32* null)
  store i64 %33, i64* %12, align 8
  %34 = load i64, i64* %12, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %31
  %37 = load i32, i32* @HDR_FAIL, align 4
  store i32 %37, i32* %5, align 4
  br label %135

38:                                               ; preds = %31
  %39 = load i32, i32* %11, align 4
  %40 = sext i32 %39 to i64
  %41 = icmp ne i64 %40, 32
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = load i32, i32* @HDR_FAIL, align 4
  store i32 %43, i32* %5, align 4
  br label %135

44:                                               ; preds = %38
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @IMAGE_DOS_SIGNATURE, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %44
  %50 = load i32, i32* @HDR_FAIL, align 4
  store i32 %50, i32* %5, align 4
  br label %135

51:                                               ; preds = %44
  %52 = load i32*, i32** %7, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %54, label %58

54:                                               ; preds = %51
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = load i32*, i32** %7, align 8
  store i32 %56, i32* %57, align 4
  br label %58

58:                                               ; preds = %54, %51
  %59 = load i32, i32* %6, align 4
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @FILE_BEGIN, align 4
  %63 = call i32 @SetFilePointer(i32 %59, i32 %61, i32* null, i32 %62)
  store i32 %63, i32* %11, align 4
  %64 = load i32, i32* %11, align 4
  %65 = load i32, i32* @INVALID_SET_FILE_POINTER, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %58
  %68 = load i32, i32* @HDR_FAIL, align 4
  store i32 %68, i32* %5, align 4
  br label %135

69:                                               ; preds = %58
  store i32 0, i32* %11, align 4
  %70 = load i32, i32* %6, align 4
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %72 = call i64 @ReadFile(i32 %70, %struct.TYPE_9__* %71, i32 32, i32* %11, i32* null)
  store i64 %72, i64* %12, align 8
  %73 = load i64, i64* %12, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %77, label %75

75:                                               ; preds = %69
  %76 = load i32, i32* @HDR_FAIL, align 4
  store i32 %76, i32* %5, align 4
  br label %135

77:                                               ; preds = %69
  %78 = load i32, i32* %11, align 4
  %79 = sext i32 %78 to i64
  %80 = icmp ne i64 %79, 32
  br i1 %80, label %81, label %83

81:                                               ; preds = %77
  %82 = load i32, i32* @HDR_FAIL, align 4
  store i32 %82, i32* %5, align 4
  br label %135

83:                                               ; preds = %77
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @IMAGE_NT_SIGNATURE, align 8
  %88 = icmp ne i64 %86, %87
  br i1 %88, label %89, label %91

89:                                               ; preds = %83
  %90 = load i32, i32* @HDR_FAIL, align 4
  store i32 %90, i32* %5, align 4
  br label %135

91:                                               ; preds = %83
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 3
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  switch i32 %95, label %133 [
    i32 129, label %96
    i32 128, label %98
  ]

96:                                               ; preds = %91
  %97 = load i32, i32* @HDR_NT32, align 4
  store i32 %97, i32* %5, align 4
  br label %135

98:                                               ; preds = %91
  %99 = load i32, i32* %6, align 4
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @FILE_BEGIN, align 4
  %103 = call i32 @SetFilePointer(i32 %99, i32 %101, i32* null, i32 %102)
  store i32 %103, i32* %11, align 4
  %104 = load i32, i32* %11, align 4
  %105 = load i32, i32* @INVALID_SET_FILE_POINTER, align 4
  %106 = icmp eq i32 %104, %105
  br i1 %106, label %107, label %109

107:                                              ; preds = %98
  %108 = load i32, i32* @HDR_FAIL, align 4
  store i32 %108, i32* %5, align 4
  br label %135

109:                                              ; preds = %98
  store i32 0, i32* %11, align 4
  %110 = load i32, i32* %6, align 4
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %112 = call i64 @ReadFile(i32 %110, %struct.TYPE_9__* %111, i32 32, i32* %11, i32* null)
  store i64 %112, i64* %12, align 8
  %113 = load i64, i64* %12, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %117, label %115

115:                                              ; preds = %109
  %116 = load i32, i32* @HDR_FAIL, align 4
  store i32 %116, i32* %5, align 4
  br label %135

117:                                              ; preds = %109
  %118 = load i32, i32* %11, align 4
  %119 = sext i32 %118 to i64
  %120 = icmp ne i64 %119, 32
  br i1 %120, label %121, label %123

121:                                              ; preds = %117
  %122 = load i32, i32* @HDR_FAIL, align 4
  store i32 %122, i32* %5, align 4
  br label %135

123:                                              ; preds = %117
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 2
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @IMAGE_NT_SIGNATURE, align 8
  %128 = icmp ne i64 %126, %127
  br i1 %128, label %129, label %131

129:                                              ; preds = %123
  %130 = load i32, i32* @HDR_FAIL, align 4
  store i32 %130, i32* %5, align 4
  br label %135

131:                                              ; preds = %123
  %132 = load i32, i32* @HDR_NT64, align 4
  store i32 %132, i32* %5, align 4
  br label %135

133:                                              ; preds = %91
  %134 = load i32, i32* @HDR_FAIL, align 4
  store i32 %134, i32* %5, align 4
  br label %135

135:                                              ; preds = %133, %131, %129, %121, %115, %107, %96, %89, %81, %75, %67, %49, %42, %36, %29, %20
  %136 = load i32, i32* %5, align 4
  ret i32 %136
}

declare dso_local i32 @TRACE(i8*, i32) #1

declare dso_local i32 @SetFilePointer(i32, i32, i32*, i32) #1

declare dso_local i64 @ReadFile(i32, %struct.TYPE_9__*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
