; ModuleID = '/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_encoder.c_HPDF_BasicEncoder_Write.c'
source_filename = "/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_encoder.c_HPDF_BasicEncoder_Write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i64, i64, i64, i32*, i32*, i32 }

@.str = private unnamed_addr constant [26 x i8] c" HPDF_BasicEncoder_Write\0A\00", align 1
@HPDF_ENCODING_FONT_SPECIFIC = common dso_local global i32 0, align 4
@HPDF_OK = common dso_local global i64 0, align 8
@HPDF_TRUE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [44 x i8] c"/Encoding <<\0A/Type /Encoding\0A/BaseEncoding \00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"/Encoding \00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"/Differences [\00", align 1
@HPDF_TEXT_DEFAULT_LEN = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [6 x i8] c"]\0A>>\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @HPDF_BasicEncoder_Write(%struct.TYPE_4__* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = sext i32 %16 to i64
  %18 = inttoptr i64 %17 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %18, %struct.TYPE_5__** %7, align 8
  %19 = call i32 @HPDF_PTRACE(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 5
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @HPDF_ENCODING_FONT_SPECIFIC, align 4
  %24 = call i64 @HPDF_StrCmp(i32 %22, i32 %23)
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %2
  %27 = load i64, i64* @HPDF_OK, align 8
  store i64 %27, i64* %3, align 8
  br label %158

28:                                               ; preds = %2
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @HPDF_TRUE, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %43

34:                                               ; preds = %28
  %35 = load i32, i32* %5, align 4
  %36 = call i64 @HPDF_Stream_WriteStr(i32 %35, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  store i64 %36, i64* %6, align 8
  %37 = load i64, i64* %6, align 8
  %38 = load i64, i64* @HPDF_OK, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = load i64, i64* %6, align 8
  store i64 %41, i64* %3, align 8
  br label %158

42:                                               ; preds = %34
  br label %52

43:                                               ; preds = %28
  %44 = load i32, i32* %5, align 4
  %45 = call i64 @HPDF_Stream_WriteStr(i32 %44, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  store i64 %45, i64* %6, align 8
  %46 = load i64, i64* %6, align 8
  %47 = load i64, i64* @HPDF_OK, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %43
  %50 = load i64, i64* %6, align 8
  store i64 %50, i64* %3, align 8
  br label %158

51:                                               ; preds = %43
  br label %52

52:                                               ; preds = %51, %42
  %53 = load i32, i32* %5, align 4
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 5
  %56 = load i32, i32* %55, align 8
  %57 = call i64 @HPDF_Stream_WriteEscapeName(i32 %53, i32 %56)
  store i64 %57, i64* %6, align 8
  %58 = load i64, i64* %6, align 8
  %59 = load i64, i64* @HPDF_OK, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %52
  %62 = load i64, i64* %6, align 8
  store i64 %62, i64* %3, align 8
  br label %158

63:                                               ; preds = %52
  %64 = load i32, i32* %5, align 4
  %65 = call i64 @HPDF_Stream_WriteStr(i32 %64, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i64 %65, i64* %6, align 8
  %66 = load i64, i64* %6, align 8
  %67 = load i64, i64* @HPDF_OK, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %63
  %70 = load i64, i64* %6, align 8
  store i64 %70, i64* %3, align 8
  br label %158

71:                                               ; preds = %63
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @HPDF_TRUE, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %156

77:                                               ; preds = %71
  %78 = load i32, i32* %5, align 4
  %79 = call i64 @HPDF_Stream_WriteStr(i32 %78, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  store i64 %79, i64* %6, align 8
  %80 = load i64, i64* %6, align 8
  %81 = load i64, i64* @HPDF_OK, align 8
  %82 = icmp ne i64 %80, %81
  br i1 %82, label %83, label %85

83:                                               ; preds = %77
  %84 = load i64, i64* %6, align 8
  store i64 %84, i64* %3, align 8
  br label %158

85:                                               ; preds = %77
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  store i64 %88, i64* %8, align 8
  br label %89

89:                                               ; preds = %150, %85
  %90 = load i64, i64* %8, align 8
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = icmp ule i64 %90, %93
  br i1 %94, label %95, label %153

95:                                               ; preds = %89
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 3
  %98 = load i32*, i32** %97, align 8
  %99 = load i64, i64* %8, align 8
  %100 = getelementptr inbounds i32, i32* %98, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = icmp eq i32 %101, 1
  br i1 %102, label %103, label %149

103:                                              ; preds = %95
  %104 = load i32, i32* @HPDF_TEXT_DEFAULT_LEN, align 4
  %105 = zext i32 %104 to i64
  %106 = call i8* @llvm.stacksave()
  store i8* %106, i8** %9, align 8
  %107 = alloca i8, i64 %105, align 16
  store i64 %105, i64* %10, align 8
  store i8* %107, i8** %11, align 8
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 4
  %110 = load i32*, i32** %109, align 8
  %111 = load i64, i64* %8, align 8
  %112 = getelementptr inbounds i32, i32* %110, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = call i8* @HPDF_UnicodeToGryphName(i32 %113)
  store i8* %114, i8** %12, align 8
  %115 = load i8*, i8** %11, align 8
  %116 = load i64, i64* %8, align 8
  %117 = load i32, i32* @HPDF_TEXT_DEFAULT_LEN, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i8, i8* %107, i64 %118
  %120 = getelementptr inbounds i8, i8* %119, i64 -1
  %121 = call i8* @HPDF_IToA(i8* %115, i64 %116, i8* %120)
  store i8* %121, i8** %11, align 8
  %122 = load i8*, i8** %11, align 8
  %123 = getelementptr inbounds i8, i8* %122, i32 1
  store i8* %123, i8** %11, align 8
  store i8 32, i8* %122, align 1
  %124 = load i8*, i8** %11, align 8
  %125 = getelementptr inbounds i8, i8* %124, i32 1
  store i8* %125, i8** %11, align 8
  store i8 47, i8* %124, align 1
  %126 = load i8*, i8** %11, align 8
  %127 = load i8*, i8** %12, align 8
  %128 = load i32, i32* @HPDF_TEXT_DEFAULT_LEN, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i8, i8* %107, i64 %129
  %131 = getelementptr inbounds i8, i8* %130, i64 -1
  %132 = call i64 @HPDF_StrCpy(i8* %126, i8* %127, i8* %131)
  %133 = inttoptr i64 %132 to i8*
  store i8* %133, i8** %11, align 8
  %134 = load i8*, i8** %11, align 8
  %135 = getelementptr inbounds i8, i8* %134, i32 1
  store i8* %135, i8** %11, align 8
  store i8 32, i8* %134, align 1
  %136 = load i8*, i8** %11, align 8
  store i8 0, i8* %136, align 1
  %137 = load i32, i32* %5, align 4
  %138 = call i64 @HPDF_Stream_WriteStr(i32 %137, i8* %107)
  store i64 %138, i64* %6, align 8
  %139 = load i64, i64* %6, align 8
  %140 = load i64, i64* @HPDF_OK, align 8
  %141 = icmp ne i64 %139, %140
  br i1 %141, label %142, label %144

142:                                              ; preds = %103
  %143 = load i64, i64* %6, align 8
  store i64 %143, i64* %3, align 8
  store i32 1, i32* %13, align 4
  br label %145

144:                                              ; preds = %103
  store i32 0, i32* %13, align 4
  br label %145

145:                                              ; preds = %144, %142
  %146 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %146)
  %147 = load i32, i32* %13, align 4
  switch i32 %147, label %160 [
    i32 0, label %148
    i32 1, label %158
  ]

148:                                              ; preds = %145
  br label %149

149:                                              ; preds = %148, %95
  br label %150

150:                                              ; preds = %149
  %151 = load i64, i64* %8, align 8
  %152 = add i64 %151, 1
  store i64 %152, i64* %8, align 8
  br label %89

153:                                              ; preds = %89
  %154 = load i32, i32* %5, align 4
  %155 = call i64 @HPDF_Stream_WriteStr(i32 %154, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  store i64 %155, i64* %6, align 8
  br label %156

156:                                              ; preds = %153, %71
  %157 = load i64, i64* %6, align 8
  store i64 %157, i64* %3, align 8
  br label %158

158:                                              ; preds = %156, %145, %83, %69, %61, %49, %40, %26
  %159 = load i64, i64* %3, align 8
  ret i64 %159

160:                                              ; preds = %145
  unreachable
}

declare dso_local i32 @HPDF_PTRACE(i8*) #1

declare dso_local i64 @HPDF_StrCmp(i32, i32) #1

declare dso_local i64 @HPDF_Stream_WriteStr(i32, i8*) #1

declare dso_local i64 @HPDF_Stream_WriteEscapeName(i32, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i8* @HPDF_UnicodeToGryphName(i32) #1

declare dso_local i8* @HPDF_IToA(i8*, i64, i8*) #1

declare dso_local i64 @HPDF_StrCpy(i8*, i8*, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
