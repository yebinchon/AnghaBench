; ModuleID = '/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_streams.c_HPDF_Stream_ReadLn.c'
source_filename = "/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_streams.c_HPDF_Stream_ReadLn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32 }

@HPDF_STREAM_BUF_SIZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c" HPDF_Stream_ReadLn\0A\00", align 1
@HPDF_INVALID_PARAMETER = common dso_local global i64 0, align 8
@HPDF_INVALID_OPERATION = common dso_local global i64 0, align 8
@HPDF_OK = common dso_local global i64 0, align 8
@HPDF_SEEK_CUR = common dso_local global i32 0, align 4
@HPDF_STREAM_EOF = common dso_local global i64 0, align 8
@HPDF_STREAM_READLN_CONTINUE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @HPDF_Stream_ReadLn(%struct.TYPE_5__* %0, i8* %1, i64* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64* %2, i64** %7, align 8
  %15 = load i32, i32* @HPDF_STREAM_BUF_SIZ, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %8, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %9, align 8
  %19 = load i64*, i64** %7, align 8
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %10, align 8
  %21 = load i32, i32* @HPDF_STREAM_BUF_SIZ, align 4
  %22 = sext i32 %21 to i64
  store i64 %22, i64* %11, align 8
  %23 = call i32 @HPDF_PTRACE(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %25 = icmp ne %struct.TYPE_5__* %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %3
  %27 = load i64, i64* @HPDF_INVALID_PARAMETER, align 8
  store i64 %27, i64* %4, align 8
  store i32 1, i32* %12, align 4
  br label %162

28:                                               ; preds = %3
  %29 = load i8*, i8** %6, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %28
  %32 = load i64*, i64** %7, align 8
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %31, %28
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i64, i64* @HPDF_INVALID_PARAMETER, align 8
  %40 = call i64 @HPDF_SetError(i32 %38, i64 %39, i32 0)
  store i64 %40, i64* %4, align 8
  store i32 1, i32* %12, align 4
  br label %162

41:                                               ; preds = %31
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %41
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %57, label %51

51:                                               ; preds = %46, %41
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i64, i64* @HPDF_INVALID_OPERATION, align 8
  %56 = call i64 @HPDF_SetError(i32 %54, i64 %55, i32 0)
  store i64 %56, i64* %4, align 8
  store i32 1, i32* %12, align 4
  br label %162

57:                                               ; preds = %46
  %58 = load i64, i64* %10, align 8
  %59 = load i32, i32* @HPDF_STREAM_BUF_SIZ, align 4
  %60 = sext i32 %59 to i64
  %61 = icmp slt i64 %58, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %57
  %63 = load i64, i64* %10, align 8
  store i64 %63, i64* %11, align 8
  br label %64

64:                                               ; preds = %62, %57
  %65 = load i64*, i64** %7, align 8
  store i64 0, i64* %65, align 8
  br label %66

66:                                               ; preds = %158, %64
  %67 = load i64, i64* %10, align 8
  %68 = icmp sgt i64 %67, 1
  br i1 %68, label %69, label %159

69:                                               ; preds = %66
  store i8* %18, i8** %13, align 8
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %71 = bitcast i8* %18 to i32*
  %72 = call i64 @HPDF_Stream_Read(%struct.TYPE_5__* %70, i32* %71, i64* %11)
  store i64 %72, i64* %14, align 8
  %73 = load i64, i64* %14, align 8
  %74 = load i64, i64* @HPDF_OK, align 8
  %75 = icmp ne i64 %73, %74
  br i1 %75, label %76, label %81

76:                                               ; preds = %69
  %77 = load i64, i64* %11, align 8
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %76
  %80 = load i64, i64* %14, align 8
  store i64 %80, i64* %4, align 8
  store i32 1, i32* %12, align 4
  br label %162

81:                                               ; preds = %76, %69
  %82 = load i64, i64* %11, align 8
  %83 = load i64, i64* %10, align 8
  %84 = sub nsw i64 %83, %82
  store i64 %84, i64* %10, align 8
  br label %85

85:                                               ; preds = %131, %81
  %86 = load i64, i64* %11, align 8
  %87 = icmp sgt i64 %86, 0
  br i1 %87, label %88, label %142

88:                                               ; preds = %85
  %89 = load i8*, i8** %13, align 8
  %90 = load i8, i8* %89, align 1
  %91 = sext i8 %90 to i32
  %92 = icmp eq i32 %91, 10
  br i1 %92, label %98, label %93

93:                                               ; preds = %88
  %94 = load i8*, i8** %13, align 8
  %95 = load i8, i8* %94, align 1
  %96 = sext i8 %95 to i32
  %97 = icmp eq i32 %96, 13
  br i1 %97, label %98, label %131

98:                                               ; preds = %93, %88
  %99 = load i8*, i8** %6, align 8
  store i8 0, i8* %99, align 1
  %100 = load i64, i64* %11, align 8
  %101 = add nsw i64 %100, -1
  store i64 %101, i64* %11, align 8
  %102 = load i8*, i8** %13, align 8
  %103 = load i8, i8* %102, align 1
  %104 = sext i8 %103 to i32
  %105 = icmp eq i32 %104, 13
  br i1 %105, label %109, label %106

106:                                              ; preds = %98
  %107 = load i64, i64* %11, align 8
  %108 = icmp sgt i64 %107, 1
  br i1 %108, label %109, label %120

109:                                              ; preds = %106, %98
  %110 = load i8*, i8** %13, align 8
  %111 = getelementptr inbounds i8, i8* %110, i32 1
  store i8* %111, i8** %13, align 8
  %112 = load i8*, i8** %13, align 8
  %113 = load i8, i8* %112, align 1
  %114 = sext i8 %113 to i32
  %115 = icmp eq i32 %114, 10
  br i1 %115, label %116, label %119

116:                                              ; preds = %109
  %117 = load i64, i64* %11, align 8
  %118 = add nsw i64 %117, -1
  store i64 %118, i64* %11, align 8
  br label %119

119:                                              ; preds = %116, %109
  br label %120

120:                                              ; preds = %119, %106
  %121 = load i64, i64* %11, align 8
  %122 = icmp sgt i64 %121, 0
  br i1 %122, label %123, label %129

123:                                              ; preds = %120
  %124 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %125 = load i64, i64* %11, align 8
  %126 = sub nsw i64 0, %125
  %127 = load i32, i32* @HPDF_SEEK_CUR, align 4
  %128 = call i64 @HPDF_Stream_Seek(%struct.TYPE_5__* %124, i64 %126, i32 %127)
  store i64 %128, i64* %4, align 8
  store i32 1, i32* %12, align 4
  br label %162

129:                                              ; preds = %120
  %130 = load i64, i64* @HPDF_OK, align 8
  store i64 %130, i64* %4, align 8
  store i32 1, i32* %12, align 4
  br label %162

131:                                              ; preds = %93
  %132 = load i8*, i8** %13, align 8
  %133 = getelementptr inbounds i8, i8* %132, i32 1
  store i8* %133, i8** %13, align 8
  %134 = load i8, i8* %132, align 1
  %135 = load i8*, i8** %6, align 8
  %136 = getelementptr inbounds i8, i8* %135, i32 1
  store i8* %136, i8** %6, align 8
  store i8 %134, i8* %135, align 1
  %137 = load i64, i64* %11, align 8
  %138 = add nsw i64 %137, -1
  store i64 %138, i64* %11, align 8
  %139 = load i64*, i64** %7, align 8
  %140 = load i64, i64* %139, align 8
  %141 = add nsw i64 %140, 1
  store i64 %141, i64* %139, align 8
  br label %85

142:                                              ; preds = %85
  %143 = load i64, i64* %10, align 8
  %144 = load i32, i32* @HPDF_STREAM_BUF_SIZ, align 4
  %145 = sext i32 %144 to i64
  %146 = icmp slt i64 %143, %145
  br i1 %146, label %147, label %149

147:                                              ; preds = %142
  %148 = load i64, i64* %10, align 8
  store i64 %148, i64* %11, align 8
  br label %152

149:                                              ; preds = %142
  %150 = load i32, i32* @HPDF_STREAM_BUF_SIZ, align 4
  %151 = sext i32 %150 to i64
  store i64 %151, i64* %11, align 8
  br label %152

152:                                              ; preds = %149, %147
  %153 = load i64, i64* %14, align 8
  %154 = load i64, i64* @HPDF_STREAM_EOF, align 8
  %155 = icmp eq i64 %153, %154
  br i1 %155, label %156, label %158

156:                                              ; preds = %152
  %157 = load i64, i64* @HPDF_STREAM_EOF, align 8
  store i64 %157, i64* %4, align 8
  store i32 1, i32* %12, align 4
  br label %162

158:                                              ; preds = %152
  br label %66

159:                                              ; preds = %66
  %160 = load i8*, i8** %6, align 8
  store i8 0, i8* %160, align 1
  %161 = load i64, i64* @HPDF_STREAM_READLN_CONTINUE, align 8
  store i64 %161, i64* %4, align 8
  store i32 1, i32* %12, align 4
  br label %162

162:                                              ; preds = %159, %156, %129, %123, %79, %51, %35, %26
  %163 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %163)
  %164 = load i64, i64* %4, align 8
  ret i64 %164
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @HPDF_PTRACE(i8*) #2

declare dso_local i64 @HPDF_SetError(i32, i64, i32) #2

declare dso_local i64 @HPDF_Stream_Read(%struct.TYPE_5__*, i32*, i64*) #2

declare dso_local i64 @HPDF_Stream_Seek(%struct.TYPE_5__*, i64, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
