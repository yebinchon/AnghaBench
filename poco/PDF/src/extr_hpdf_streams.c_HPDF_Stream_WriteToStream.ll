; ModuleID = '/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_streams.c_HPDF_Stream_WriteToStream.c'
source_filename = "/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_streams.c_HPDF_Stream_WriteToStream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32 }

@HPDF_STREAM_BUF_SIZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c" HPDF_Stream_WriteToStream\0A\00", align 1
@HPDF_INVALID_OBJECT = common dso_local global i64 0, align 8
@HPDF_NOERROR = common dso_local global i64 0, align 8
@HPDF_THIS_FUNC_WAS_SKIPPED = common dso_local global i64 0, align 8
@HPDF_OK = common dso_local global i64 0, align 8
@HPDF_STREAM_FILTER_FLATE_DECODE = common dso_local global i32 0, align 4
@HPDF_SEEK_SET = common dso_local global i32 0, align 4
@HPDF_FALSE = common dso_local global i64 0, align 8
@HPDF_STREAM_EOF = common dso_local global i64 0, align 8
@HPDF_TRUE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @HPDF_Stream_WriteToStream(%struct.TYPE_10__* %0, %struct.TYPE_10__* %1, i32 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %6, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %17 = load i32, i32* @HPDF_STREAM_BUF_SIZ, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %11, align 8
  %20 = alloca i32, i64 %18, align 16
  store i64 %18, i64* %12, align 8
  %21 = load i32, i32* @HPDF_STREAM_BUF_SIZ, align 4
  %22 = zext i32 %21 to i64
  %23 = alloca i32, i64 %22, align 16
  store i64 %22, i64* %13, align 8
  %24 = call i32 @HPDF_PTRACE(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @HPDF_UNUSED(i32 %25)
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %28 = icmp ne %struct.TYPE_10__* %27, null
  br i1 %28, label %29, label %34

29:                                               ; preds = %4
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %41, label %34

34:                                               ; preds = %29, %4
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i64, i64* @HPDF_INVALID_OBJECT, align 8
  %39 = call i32 @HPDF_SetError(i32 %37, i64 %38, i32 0)
  %40 = load i64, i64* @HPDF_INVALID_OBJECT, align 8
  store i64 %40, i64* %5, align 8
  store i32 1, i32* %15, align 4
  br label %131

41:                                               ; preds = %29
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @HPDF_Error_GetCode(i32 %44)
  %46 = load i64, i64* @HPDF_NOERROR, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %55, label %48

48:                                               ; preds = %41
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i64 @HPDF_Error_GetCode(i32 %51)
  %53 = load i64, i64* @HPDF_NOERROR, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %48, %41
  %56 = load i64, i64* @HPDF_THIS_FUNC_WAS_SKIPPED, align 8
  store i64 %56, i64* %5, align 8
  store i32 1, i32* %15, align 4
  br label %131

57:                                               ; preds = %48
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %59 = call i64 @HPDF_Stream_Size(%struct.TYPE_10__* %58)
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %57
  %62 = load i64, i64* @HPDF_OK, align 8
  store i64 %62, i64* %5, align 8
  store i32 1, i32* %15, align 4
  br label %131

63:                                               ; preds = %57
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* @HPDF_STREAM_FILTER_FLATE_DECODE, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %63
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %71 = load i64, i64* %9, align 8
  %72 = call i64 @HPDF_Stream_WriteToStreamWithDeflate(%struct.TYPE_10__* %69, %struct.TYPE_10__* %70, i64 %71)
  store i64 %72, i64* %5, align 8
  store i32 1, i32* %15, align 4
  br label %131

73:                                               ; preds = %63
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %75 = load i32, i32* @HPDF_SEEK_SET, align 4
  %76 = call i64 @HPDF_Stream_Seek(%struct.TYPE_10__* %74, i32 0, i32 %75)
  store i64 %76, i64* %10, align 8
  %77 = load i64, i64* %10, align 8
  %78 = load i64, i64* @HPDF_OK, align 8
  %79 = icmp ne i64 %77, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %73
  %81 = load i64, i64* %10, align 8
  store i64 %81, i64* %5, align 8
  store i32 1, i32* %15, align 4
  br label %131

82:                                               ; preds = %73
  %83 = load i64, i64* @HPDF_FALSE, align 8
  store i64 %83, i64* %14, align 8
  br label %84

84:                                               ; preds = %128, %82
  %85 = load i32, i32* @HPDF_STREAM_BUF_SIZ, align 4
  store i32 %85, i32* %16, align 4
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %87 = call i64 @HPDF_Stream_Read(%struct.TYPE_10__* %86, i32* %20, i32* %16)
  store i64 %87, i64* %10, align 8
  %88 = load i64, i64* %10, align 8
  %89 = load i64, i64* @HPDF_OK, align 8
  %90 = icmp ne i64 %88, %89
  br i1 %90, label %91, label %104

91:                                               ; preds = %84
  %92 = load i64, i64* %10, align 8
  %93 = load i64, i64* @HPDF_STREAM_EOF, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %101

95:                                               ; preds = %91
  %96 = load i64, i64* @HPDF_TRUE, align 8
  store i64 %96, i64* %14, align 8
  %97 = load i32, i32* %16, align 4
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %95
  br label %129

100:                                              ; preds = %95
  br label %103

101:                                              ; preds = %91
  %102 = load i64, i64* %10, align 8
  store i64 %102, i64* %5, align 8
  store i32 1, i32* %15, align 4
  br label %131

103:                                              ; preds = %100
  br label %104

104:                                              ; preds = %103, %84
  %105 = load i64, i64* %9, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %114

107:                                              ; preds = %104
  %108 = load i64, i64* %9, align 8
  %109 = load i32, i32* %16, align 4
  %110 = call i32 @HPDF_Encrypt_CryptBuf(i64 %108, i32* %20, i32* %23, i32 %109)
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %112 = load i32, i32* %16, align 4
  %113 = call i64 @HPDF_Stream_Write(%struct.TYPE_10__* %111, i32* %23, i32 %112)
  store i64 %113, i64* %10, align 8
  br label %118

114:                                              ; preds = %104
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %116 = load i32, i32* %16, align 4
  %117 = call i64 @HPDF_Stream_Write(%struct.TYPE_10__* %115, i32* %20, i32 %116)
  store i64 %117, i64* %10, align 8
  br label %118

118:                                              ; preds = %114, %107
  %119 = load i64, i64* %10, align 8
  %120 = load i64, i64* @HPDF_OK, align 8
  %121 = icmp ne i64 %119, %120
  br i1 %121, label %122, label %124

122:                                              ; preds = %118
  %123 = load i64, i64* %10, align 8
  store i64 %123, i64* %5, align 8
  store i32 1, i32* %15, align 4
  br label %131

124:                                              ; preds = %118
  %125 = load i64, i64* %14, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %124
  br label %129

128:                                              ; preds = %124
  br label %84

129:                                              ; preds = %127, %99
  %130 = load i64, i64* @HPDF_OK, align 8
  store i64 %130, i64* %5, align 8
  store i32 1, i32* %15, align 4
  br label %131

131:                                              ; preds = %129, %122, %101, %80, %68, %61, %55, %34
  %132 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %132)
  %133 = load i64, i64* %5, align 8
  ret i64 %133
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @HPDF_PTRACE(i8*) #2

declare dso_local i32 @HPDF_UNUSED(i32) #2

declare dso_local i32 @HPDF_SetError(i32, i64, i32) #2

declare dso_local i64 @HPDF_Error_GetCode(i32) #2

declare dso_local i64 @HPDF_Stream_Size(%struct.TYPE_10__*) #2

declare dso_local i64 @HPDF_Stream_WriteToStreamWithDeflate(%struct.TYPE_10__*, %struct.TYPE_10__*, i64) #2

declare dso_local i64 @HPDF_Stream_Seek(%struct.TYPE_10__*, i32, i32) #2

declare dso_local i64 @HPDF_Stream_Read(%struct.TYPE_10__*, i32*, i32*) #2

declare dso_local i32 @HPDF_Encrypt_CryptBuf(i64, i32*, i32*, i32) #2

declare dso_local i64 @HPDF_Stream_Write(%struct.TYPE_10__*, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
