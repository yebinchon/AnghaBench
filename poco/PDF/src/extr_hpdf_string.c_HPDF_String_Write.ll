; ModuleID = '/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_string.c_HPDF_String_Write.c'
source_filename = "/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_string.c_HPDF_String_Write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32*, i64* }

@.str = private unnamed_addr constant [20 x i8] c" HPDF_String_Write\0A\00", align 1
@HPDF_OK = common dso_local global i32 0, align 4
@HPDF_TEXT_DEFAULT_LEN = common dso_local global i32 0, align 4
@UNICODE_HEADER = common dso_local global i64* null, align 8
@HPDF_BYTE_TYPE_TRIAL = common dso_local global i64 0, align 8
@HPDF_BYTE_TYPE_LEAD = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @HPDF_String_Write(%struct.TYPE_3__* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %23 = call i32 @HPDF_PTRACE(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %24 = load i64, i64* %7, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %3
  %27 = load i64, i64* %7, align 8
  %28 = call i32 @HPDF_Encrypt_Reset(i64 %27)
  br label %29

29:                                               ; preds = %26, %3
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = icmp eq i32* %32, null
  br i1 %33, label %34, label %70

34:                                               ; preds = %29
  %35 = load i64, i64* %7, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %63

37:                                               ; preds = %34
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @HPDF_Stream_WriteChar(i32 %38, i8 signext 60)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* @HPDF_OK, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = load i32, i32* %8, align 4
  store i32 %43, i32* %4, align 4
  br label %203

44:                                               ; preds = %37
  %45 = load i32, i32* %6, align 4
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 2
  %48 = load i64*, i64** %47, align 8
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 2
  %51 = load i64*, i64** %50, align 8
  %52 = bitcast i64* %51 to i8*
  %53 = call i64 @HPDF_StrLen(i8* %52, i32 -1)
  %54 = load i64, i64* %7, align 8
  %55 = call i32 @HPDF_Stream_WriteBinary(i32 %45, i64* %48, i64 %53, i64 %54)
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* @HPDF_OK, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %44
  %59 = load i32, i32* %8, align 4
  store i32 %59, i32* %4, align 4
  br label %203

60:                                               ; preds = %44
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @HPDF_Stream_WriteChar(i32 %61, i8 signext 62)
  store i32 %62, i32* %4, align 4
  br label %203

63:                                               ; preds = %34
  %64 = load i32, i32* %6, align 4
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 2
  %67 = load i64*, i64** %66, align 8
  %68 = bitcast i64* %67 to i8*
  %69 = call i32 @HPDF_Stream_WriteEscapeText(i32 %64, i8* %68)
  store i32 %69, i32* %4, align 4
  br label %203

70:                                               ; preds = %29
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 2
  %73 = load i64*, i64** %72, align 8
  store i64* %73, i64** %9, align 8
  %74 = load i32, i32* @HPDF_TEXT_DEFAULT_LEN, align 4
  %75 = mul nsw i32 %74, 2
  %76 = zext i32 %75 to i64
  %77 = call i8* @llvm.stacksave()
  store i8* %77, i8** %10, align 8
  %78 = alloca i64, i64 %76, align 16
  store i64 %76, i64* %11, align 8
  store i64 0, i64* %12, align 8
  store i64* %78, i64** %13, align 8
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  store i64 %81, i64* %14, align 8
  %82 = load i32, i32* %6, align 4
  %83 = call i32 @HPDF_Stream_WriteChar(i32 %82, i8 signext 60)
  store i32 %83, i32* %8, align 4
  %84 = load i32, i32* @HPDF_OK, align 4
  %85 = icmp ne i32 %83, %84
  br i1 %85, label %86, label %88

86:                                               ; preds = %70
  %87 = load i32, i32* %8, align 4
  store i32 %87, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %197

88:                                               ; preds = %70
  %89 = load i32, i32* %6, align 4
  %90 = load i64*, i64** @UNICODE_HEADER, align 8
  %91 = load i64, i64* %7, align 8
  %92 = call i32 @HPDF_Stream_WriteBinary(i32 %89, i64* %90, i64 2, i64 %91)
  store i32 %92, i32* %8, align 4
  %93 = load i32, i32* @HPDF_OK, align 4
  %94 = icmp ne i32 %92, %93
  br i1 %94, label %95, label %97

95:                                               ; preds = %88
  %96 = load i32, i32* %8, align 4
  store i32 %96, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %197

97:                                               ; preds = %88
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 1
  %100 = load i32*, i32** %99, align 8
  %101 = load i64*, i64** %9, align 8
  %102 = load i64, i64* %14, align 8
  %103 = call i32 @HPDF_Encoder_SetParseText(i32* %100, i32* %15, i64* %101, i64 %102)
  store i64 0, i64* %16, align 8
  br label %104

104:                                              ; preds = %172, %97
  %105 = load i64, i64* %16, align 8
  %106 = load i64, i64* %14, align 8
  %107 = icmp slt i64 %105, %106
  br i1 %107, label %108, label %175

108:                                              ; preds = %104
  %109 = load i64*, i64** %9, align 8
  %110 = load i64, i64* %16, align 8
  %111 = getelementptr inbounds i64, i64* %109, i64 %110
  %112 = load i64, i64* %111, align 8
  store i64 %112, i64* %18, align 8
  %113 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 1
  %115 = load i32*, i32** %114, align 8
  %116 = call i64 @HPDF_Encoder_ByteType(i32* %115, i32* %15)
  store i64 %116, i64* %20, align 8
  %117 = load i64, i64* %12, align 8
  %118 = load i32, i32* @HPDF_TEXT_DEFAULT_LEN, align 4
  %119 = sub nsw i32 %118, 1
  %120 = sext i32 %119 to i64
  %121 = icmp uge i64 %117, %120
  br i1 %121, label %122, label %133

122:                                              ; preds = %108
  %123 = load i32, i32* %6, align 4
  %124 = load i64, i64* %12, align 8
  %125 = mul i64 %124, 2
  %126 = load i64, i64* %7, align 8
  %127 = call i32 @HPDF_Stream_WriteBinary(i32 %123, i64* %78, i64 %125, i64 %126)
  store i32 %127, i32* %8, align 4
  %128 = load i32, i32* @HPDF_OK, align 4
  %129 = icmp ne i32 %127, %128
  br i1 %129, label %130, label %132

130:                                              ; preds = %122
  %131 = load i32, i32* %8, align 4
  store i32 %131, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %197

132:                                              ; preds = %122
  store i64 0, i64* %12, align 8
  store i64* %78, i64** %13, align 8
  br label %133

133:                                              ; preds = %132, %108
  %134 = load i64, i64* %20, align 8
  %135 = load i64, i64* @HPDF_BYTE_TYPE_TRIAL, align 8
  %136 = icmp ne i64 %134, %135
  br i1 %136, label %137, label %171

137:                                              ; preds = %133
  %138 = load i64, i64* %20, align 8
  %139 = load i64, i64* @HPDF_BYTE_TYPE_LEAD, align 8
  %140 = icmp eq i64 %138, %139
  br i1 %140, label %141, label %156

141:                                              ; preds = %137
  %142 = load i64*, i64** %9, align 8
  %143 = load i64, i64* %16, align 8
  %144 = add i64 %143, 1
  %145 = getelementptr inbounds i64, i64* %142, i64 %144
  %146 = load i64, i64* %145, align 8
  store i64 %146, i64* %21, align 8
  %147 = load i64, i64* %18, align 8
  %148 = mul i64 %147, 256
  %149 = load i64, i64* %21, align 8
  %150 = add i64 %148, %149
  store i64 %150, i64* %22, align 8
  %151 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %152 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %151, i32 0, i32 1
  %153 = load i32*, i32** %152, align 8
  %154 = load i64, i64* %22, align 8
  %155 = call i32 @HPDF_Encoder_ToUnicode(i32* %153, i64 %154)
  store i32 %155, i32* %19, align 4
  br label %162

156:                                              ; preds = %137
  %157 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %158 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %157, i32 0, i32 1
  %159 = load i32*, i32** %158, align 8
  %160 = load i64, i64* %18, align 8
  %161 = call i32 @HPDF_Encoder_ToUnicode(i32* %159, i64 %160)
  store i32 %161, i32* %19, align 4
  br label %162

162:                                              ; preds = %156, %141
  %163 = call i32 @HPDF_UInt16Swap(i32* %19)
  %164 = load i64*, i64** %13, align 8
  %165 = bitcast i32* %19 to i64*
  %166 = call i32 @HPDF_MemCpy(i64* %164, i64* %165, i32 2)
  %167 = load i64*, i64** %13, align 8
  %168 = getelementptr inbounds i64, i64* %167, i64 2
  store i64* %168, i64** %13, align 8
  %169 = load i64, i64* %12, align 8
  %170 = add i64 %169, 1
  store i64 %170, i64* %12, align 8
  br label %171

171:                                              ; preds = %162, %133
  br label %172

172:                                              ; preds = %171
  %173 = load i64, i64* %16, align 8
  %174 = add i64 %173, 1
  store i64 %174, i64* %16, align 8
  br label %104

175:                                              ; preds = %104
  %176 = load i64, i64* %12, align 8
  %177 = icmp ugt i64 %176, 0
  br i1 %177, label %178, label %189

178:                                              ; preds = %175
  %179 = load i32, i32* %6, align 4
  %180 = load i64, i64* %12, align 8
  %181 = mul i64 %180, 2
  %182 = load i64, i64* %7, align 8
  %183 = call i32 @HPDF_Stream_WriteBinary(i32 %179, i64* %78, i64 %181, i64 %182)
  store i32 %183, i32* %8, align 4
  %184 = load i32, i32* @HPDF_OK, align 4
  %185 = icmp ne i32 %183, %184
  br i1 %185, label %186, label %188

186:                                              ; preds = %178
  %187 = load i32, i32* %8, align 4
  store i32 %187, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %197

188:                                              ; preds = %178
  br label %189

189:                                              ; preds = %188, %175
  %190 = load i32, i32* %6, align 4
  %191 = call i32 @HPDF_Stream_WriteChar(i32 %190, i8 signext 62)
  store i32 %191, i32* %8, align 4
  %192 = load i32, i32* @HPDF_OK, align 4
  %193 = icmp ne i32 %191, %192
  br i1 %193, label %194, label %196

194:                                              ; preds = %189
  %195 = load i32, i32* %8, align 4
  store i32 %195, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %197

196:                                              ; preds = %189
  store i32 0, i32* %17, align 4
  br label %197

197:                                              ; preds = %196, %194, %186, %130, %95, %86
  %198 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %198)
  %199 = load i32, i32* %17, align 4
  switch i32 %199, label %205 [
    i32 0, label %200
    i32 1, label %203
  ]

200:                                              ; preds = %197
  br label %201

201:                                              ; preds = %200
  %202 = load i32, i32* @HPDF_OK, align 4
  store i32 %202, i32* %4, align 4
  br label %203

203:                                              ; preds = %201, %197, %63, %60, %58, %42
  %204 = load i32, i32* %4, align 4
  ret i32 %204

205:                                              ; preds = %197
  unreachable
}

declare dso_local i32 @HPDF_PTRACE(i8*) #1

declare dso_local i32 @HPDF_Encrypt_Reset(i64) #1

declare dso_local i32 @HPDF_Stream_WriteChar(i32, i8 signext) #1

declare dso_local i32 @HPDF_Stream_WriteBinary(i32, i64*, i64, i64) #1

declare dso_local i64 @HPDF_StrLen(i8*, i32) #1

declare dso_local i32 @HPDF_Stream_WriteEscapeText(i32, i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @HPDF_Encoder_SetParseText(i32*, i32*, i64*, i64) #1

declare dso_local i64 @HPDF_Encoder_ByteType(i32*, i32*) #1

declare dso_local i32 @HPDF_Encoder_ToUnicode(i32*, i64) #1

declare dso_local i32 @HPDF_UInt16Swap(i32*) #1

declare dso_local i32 @HPDF_MemCpy(i64*, i64*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
