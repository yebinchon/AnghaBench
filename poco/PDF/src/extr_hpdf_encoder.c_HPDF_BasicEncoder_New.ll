; ModuleID = '/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_encoder.c_HPDF_BasicEncoder_New.c'
source_filename = "/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_encoder.c_HPDF_BasicEncoder_New.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i8*, i8*, i32, i32, i32, %struct.TYPE_16__*, i32, %struct.TYPE_15__*, i32, i32, i32*, i32, i32, i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_17__ = type { i32, i64, i32 }

@.str = private unnamed_addr constant [24 x i8] c" HPDF_BasicEncoder_New\0A\00", align 1
@HPDF_INVALID_ENCODING_NAME = common dso_local global i32 0, align 4
@HPDF_LIMIT_MAX_NAME_LEN = common dso_local global i32 0, align 4
@HPDF_ENCODER_TYPE_SINGLE_BYTE = common dso_local global i32 0, align 4
@HPDF_BasicEncoder_ToUnicode = common dso_local global i32 0, align 4
@HPDF_BasicEncoder_Write = common dso_local global i32 0, align 4
@HPDF_BasicEncoder_Free = common dso_local global i32 0, align 4
@HPDF_ENCODER_SIG_BYTES = common dso_local global i32 0, align 4
@HPDF_BASIC_ENCODER_FIRST_CHAR = common dso_local global i32 0, align 4
@HPDF_BASIC_ENCODER_LAST_CHAR = common dso_local global i32 0, align 4
@HPDF_FALSE = common dso_local global i32 0, align 4
@HPDF_ENCODING_STANDARD = common dso_local global i32 0, align 4
@HPDF_UNICODE_MAP_STANDARD = common dso_local global i32 0, align 4
@HPDF_ENCODING_WIN_ANSI = common dso_local global i32 0, align 4
@HPDF_UNICODE_MAP_WIN_ANSI = common dso_local global i32 0, align 4
@HPDF_ENCODING_MAC_ROMAN = common dso_local global i32 0, align 4
@HPDF_UNICODE_MAP_MAC_ROMAN = common dso_local global i32 0, align 4
@HPDF_ENCODING_FONT_SPECIFIC = common dso_local global i32 0, align 4
@HPDF_UNICODE_MAP_FONT_SPECIFIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_16__* @HPDF_BasicEncoder_New(%struct.TYPE_15__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca i8*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = call i32 @HPDF_PTRACE(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %12 = icmp eq %struct.TYPE_15__* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %3, align 8
  br label %162

14:                                               ; preds = %2
  %15 = load i8*, i8** %5, align 8
  %16 = call %struct.TYPE_17__* @HPDF_BasicEncoder_FindBuiltinData(i8* %15)
  store %struct.TYPE_17__* %16, %struct.TYPE_17__** %8, align 8
  %17 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %14
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @HPDF_INVALID_ENCODING_NAME, align 4
  %26 = call i32 @HPDF_SetError(i32 %24, i32 %25, i32 0)
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %3, align 8
  br label %162

27:                                               ; preds = %14
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %29 = call %struct.TYPE_16__* @HPDF_GetMem(%struct.TYPE_15__* %28, i32 4)
  store %struct.TYPE_16__* %29, %struct.TYPE_16__** %6, align 8
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %31 = icmp ne %struct.TYPE_16__* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %27
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %3, align 8
  br label %162

33:                                               ; preds = %27
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %35 = call i32 @HPDF_MemSet(%struct.TYPE_16__* %34, i32 0, i32 4)
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = load i32, i32* @HPDF_LIMIT_MAX_NAME_LEN, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %38, i64 %40
  store i8* %41, i8** %9, align 8
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = load i8*, i8** %9, align 8
  %49 = call i32 @HPDF_StrCpy(i8* %44, i32 %47, i8* %48)
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %51, i32 0, i32 7
  store %struct.TYPE_15__* %50, %struct.TYPE_15__** %52, align 8
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %56, i32 0, i32 13
  store i32 %55, i32* %57, align 8
  %58 = load i32, i32* @HPDF_ENCODER_TYPE_SINGLE_BYTE, align 4
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 12
  store i32 %58, i32* %60, align 4
  %61 = load i32, i32* @HPDF_BasicEncoder_ToUnicode, align 4
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %62, i32 0, i32 11
  store i32 %61, i32* %63, align 8
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %64, i32 0, i32 10
  store i32* null, i32** %65, align 8
  %66 = load i32, i32* @HPDF_BasicEncoder_Write, align 4
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %67, i32 0, i32 9
  store i32 %66, i32* %68, align 4
  %69 = load i32, i32* @HPDF_BasicEncoder_Free, align 4
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %70, i32 0, i32 8
  store i32 %69, i32* %71, align 8
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %73 = call %struct.TYPE_16__* @HPDF_GetMem(%struct.TYPE_15__* %72, i32 4)
  store %struct.TYPE_16__* %73, %struct.TYPE_16__** %7, align 8
  %74 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %75 = icmp ne %struct.TYPE_16__* %74, null
  br i1 %75, label %82, label %76

76:                                               ; preds = %33
  %77 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %77, i32 0, i32 7
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** %78, align 8
  %80 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %81 = call i32 @HPDF_FreeMem(%struct.TYPE_15__* %79, %struct.TYPE_16__* %80)
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %3, align 8
  br label %162

82:                                               ; preds = %33
  %83 = load i32, i32* @HPDF_ENCODER_SIG_BYTES, align 4
  %84 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %84, i32 0, i32 6
  store i32 %83, i32* %85, align 8
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %87 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %87, i32 0, i32 5
  store %struct.TYPE_16__* %86, %struct.TYPE_16__** %88, align 8
  %89 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %90 = call i32 @HPDF_MemSet(%struct.TYPE_16__* %89, i32 0, i32 4)
  %91 = load i32, i32* @HPDF_BASIC_ENCODER_FIRST_CHAR, align 4
  %92 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %92, i32 0, i32 4
  store i32 %91, i32* %93, align 8
  %94 = load i32, i32* @HPDF_BASIC_ENCODER_LAST_CHAR, align 4
  %95 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %95, i32 0, i32 3
  store i32 %94, i32* %96, align 4
  %97 = load i32, i32* @HPDF_FALSE, align 4
  %98 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %98, i32 0, i32 2
  store i32 %97, i32* %99, align 8
  %100 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %100, i32 0, i32 1
  %102 = load i8*, i8** %101, align 8
  %103 = load i32, i32* @HPDF_LIMIT_MAX_NAME_LEN, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i8, i8* %102, i64 %104
  store i8* %105, i8** %9, align 8
  %106 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  switch i32 %108, label %139 [
    i32 129, label %109
    i32 128, label %119
    i32 130, label %129
  ]

109:                                              ; preds = %82
  %110 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %111 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %110, i32 0, i32 1
  %112 = load i8*, i8** %111, align 8
  %113 = load i32, i32* @HPDF_ENCODING_STANDARD, align 4
  %114 = load i8*, i8** %9, align 8
  %115 = call i32 @HPDF_StrCpy(i8* %112, i32 %113, i8* %114)
  %116 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %117 = load i32, i32* @HPDF_UNICODE_MAP_STANDARD, align 4
  %118 = call i32 @HPDF_BasicEncoder_CopyMap(%struct.TYPE_16__* %116, i32 %117)
  br label %149

119:                                              ; preds = %82
  %120 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %121 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %120, i32 0, i32 1
  %122 = load i8*, i8** %121, align 8
  %123 = load i32, i32* @HPDF_ENCODING_WIN_ANSI, align 4
  %124 = load i8*, i8** %9, align 8
  %125 = call i32 @HPDF_StrCpy(i8* %122, i32 %123, i8* %124)
  %126 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %127 = load i32, i32* @HPDF_UNICODE_MAP_WIN_ANSI, align 4
  %128 = call i32 @HPDF_BasicEncoder_CopyMap(%struct.TYPE_16__* %126, i32 %127)
  br label %149

129:                                              ; preds = %82
  %130 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %131 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %130, i32 0, i32 1
  %132 = load i8*, i8** %131, align 8
  %133 = load i32, i32* @HPDF_ENCODING_MAC_ROMAN, align 4
  %134 = load i8*, i8** %9, align 8
  %135 = call i32 @HPDF_StrCpy(i8* %132, i32 %133, i8* %134)
  %136 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %137 = load i32, i32* @HPDF_UNICODE_MAP_MAC_ROMAN, align 4
  %138 = call i32 @HPDF_BasicEncoder_CopyMap(%struct.TYPE_16__* %136, i32 %137)
  br label %149

139:                                              ; preds = %82
  %140 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %141 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %140, i32 0, i32 1
  %142 = load i8*, i8** %141, align 8
  %143 = load i32, i32* @HPDF_ENCODING_FONT_SPECIFIC, align 4
  %144 = load i8*, i8** %9, align 8
  %145 = call i32 @HPDF_StrCpy(i8* %142, i32 %143, i8* %144)
  %146 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %147 = load i32, i32* @HPDF_UNICODE_MAP_FONT_SPECIFIC, align 4
  %148 = call i32 @HPDF_BasicEncoder_CopyMap(%struct.TYPE_16__* %146, i32 %147)
  br label %149

149:                                              ; preds = %139, %129, %119, %109
  %150 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %151 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %150, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %160

154:                                              ; preds = %149
  %155 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %156 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %157 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %156, i32 0, i32 1
  %158 = load i64, i64* %157, align 8
  %159 = call i32 @HPDF_BasicEncoder_OverrideMap(%struct.TYPE_16__* %155, i64 %158)
  br label %160

160:                                              ; preds = %154, %149
  %161 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  store %struct.TYPE_16__* %161, %struct.TYPE_16__** %3, align 8
  br label %162

162:                                              ; preds = %160, %76, %32, %21, %13
  %163 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  ret %struct.TYPE_16__* %163
}

declare dso_local i32 @HPDF_PTRACE(i8*) #1

declare dso_local %struct.TYPE_17__* @HPDF_BasicEncoder_FindBuiltinData(i8*) #1

declare dso_local i32 @HPDF_SetError(i32, i32, i32) #1

declare dso_local %struct.TYPE_16__* @HPDF_GetMem(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @HPDF_MemSet(%struct.TYPE_16__*, i32, i32) #1

declare dso_local i32 @HPDF_StrCpy(i8*, i32, i8*) #1

declare dso_local i32 @HPDF_FreeMem(%struct.TYPE_15__*, %struct.TYPE_16__*) #1

declare dso_local i32 @HPDF_BasicEncoder_CopyMap(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @HPDF_BasicEncoder_OverrideMap(%struct.TYPE_16__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
