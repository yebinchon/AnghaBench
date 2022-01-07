; ModuleID = '/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_fontdef_tt.c_ParseLoca.c'
source_filename = "/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_fontdef_tt.c_ParseLoca.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, i32 }
%struct.TYPE_11__ = type { i32, %struct.TYPE_10__, i32, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i32*, i32* }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_12__ = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"loca\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c" HPDF_TTFontDef_ParseLoca\0A\00", align 1
@HPDF_TTF_MISSING_TABLE = common dso_local global i32 0, align 4
@HPDF_SEEK_SET = common dso_local global i32 0, align 4
@HPDF_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_13__*)* @ParseLoca to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ParseLoca(%struct.TYPE_13__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  %10 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = sext i32 %12 to i64
  %14 = inttoptr i64 %13 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %14, %struct.TYPE_11__** %4, align 8
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %16 = call %struct.TYPE_12__* @FindTable(%struct.TYPE_13__* %15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_12__* %16, %struct.TYPE_12__** %5, align 8
  %17 = call i32 @HPDF_PTRACE(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %19 = icmp ne %struct.TYPE_12__* %18, null
  br i1 %19, label %26, label %20

20:                                               ; preds = %1
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @HPDF_TTF_MISSING_TABLE, align 4
  %25 = call i64 @HPDF_SetError(i32 %23, i32 %24, i32 8)
  store i64 %25, i64* %2, align 8
  br label %180

26:                                               ; preds = %1
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @HPDF_SEEK_SET, align 4
  %34 = call i64 @HPDF_Stream_Seek(i32 %29, i32 %32, i32 %33)
  store i64 %34, i64* %6, align 8
  %35 = load i64, i64* %6, align 8
  %36 = load i64, i64* @HPDF_OK, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %26
  %39 = load i64, i64* %6, align 8
  store i64 %39, i64* %2, align 8
  br label %180

40:                                               ; preds = %26
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = add nsw i32 %46, 1
  %48 = sext i32 %47 to i64
  %49 = mul i64 4, %48
  %50 = trunc i64 %49 to i32
  %51 = call i8* @HPDF_GetMem(i32 %43, i32 %50)
  %52 = bitcast i8* %51 to i32*
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 0
  store i32* %52, i32** %55, align 8
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = icmp ne i32* %59, null
  br i1 %60, label %66, label %61

61:                                               ; preds = %40
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i64 @HPDF_Error_GetCode(i32 %64)
  store i64 %65, i64* %2, align 8
  br label %180

66:                                               ; preds = %40
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = add nsw i32 %73, 1
  %75 = sext i32 %74 to i64
  %76 = mul i64 4, %75
  %77 = trunc i64 %76 to i32
  %78 = call i32 @HPDF_MemSet(i32* %70, i32 0, i32 %77)
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = sext i32 %84 to i64
  %86 = mul i64 4, %85
  %87 = trunc i64 %86 to i32
  %88 = call i8* @HPDF_GetMem(i32 %81, i32 %87)
  %89 = bitcast i8* %88 to i32*
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 1
  store i32* %89, i32** %92, align 8
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 1
  %96 = load i32*, i32** %95, align 8
  %97 = icmp ne i32* %96, null
  br i1 %97, label %103, label %98

98:                                               ; preds = %66
  %99 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i64 @HPDF_Error_GetCode(i32 %101)
  store i64 %102, i64* %2, align 8
  br label %180

103:                                              ; preds = %66
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 1
  %107 = load i32*, i32** %106, align 8
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = sext i32 %110 to i64
  %112 = mul i64 4, %111
  %113 = trunc i64 %112 to i32
  %114 = call i32 @HPDF_MemSet(i32* %107, i32 0, i32 %113)
  %115 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 1
  %118 = load i32*, i32** %117, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 0
  store i32 1, i32* %119, align 4
  %120 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 0
  %123 = load i32*, i32** %122, align 8
  store i32* %123, i32** %8, align 8
  %124 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %124, i32 0, i32 3
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = icmp eq i64 %127, 0
  br i1 %128, label %129, label %154

129:                                              ; preds = %103
  store i32 0, i32* %7, align 4
  br label %130

130:                                              ; preds = %150, %129
  %131 = load i32, i32* %7, align 4
  %132 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = icmp sle i32 %131, %134
  br i1 %135, label %136, label %153

136:                                              ; preds = %130
  store i32 0, i32* %9, align 4
  %137 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %138 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 8
  %140 = call i64 @GetUINT16(i32 %139, i32* %9)
  store i64 %140, i64* %6, align 8
  %141 = load i64, i64* @HPDF_OK, align 8
  %142 = icmp ne i64 %140, %141
  br i1 %142, label %143, label %145

143:                                              ; preds = %136
  %144 = load i64, i64* %6, align 8
  store i64 %144, i64* %2, align 8
  br label %180

145:                                              ; preds = %136
  %146 = load i32, i32* %9, align 4
  %147 = load i32*, i32** %8, align 8
  store i32 %146, i32* %147, align 4
  %148 = load i32*, i32** %8, align 8
  %149 = getelementptr inbounds i32, i32* %148, i32 1
  store i32* %149, i32** %8, align 8
  br label %150

150:                                              ; preds = %145
  %151 = load i32, i32* %7, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %7, align 4
  br label %130

153:                                              ; preds = %130
  br label %178

154:                                              ; preds = %103
  store i32 0, i32* %7, align 4
  br label %155

155:                                              ; preds = %174, %154
  %156 = load i32, i32* %7, align 4
  %157 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %158 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = icmp sle i32 %156, %159
  br i1 %160, label %161, label %177

161:                                              ; preds = %155
  %162 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %163 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 8
  %165 = load i32*, i32** %8, align 8
  %166 = call i64 @GetUINT32(i32 %164, i32* %165)
  store i64 %166, i64* %6, align 8
  %167 = load i64, i64* @HPDF_OK, align 8
  %168 = icmp ne i64 %166, %167
  br i1 %168, label %169, label %171

169:                                              ; preds = %161
  %170 = load i64, i64* %6, align 8
  store i64 %170, i64* %2, align 8
  br label %180

171:                                              ; preds = %161
  %172 = load i32*, i32** %8, align 8
  %173 = getelementptr inbounds i32, i32* %172, i32 1
  store i32* %173, i32** %8, align 8
  br label %174

174:                                              ; preds = %171
  %175 = load i32, i32* %7, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %7, align 4
  br label %155

177:                                              ; preds = %155
  br label %178

178:                                              ; preds = %177, %153
  %179 = load i64, i64* @HPDF_OK, align 8
  store i64 %179, i64* %2, align 8
  br label %180

180:                                              ; preds = %178, %169, %143, %98, %61, %38, %20
  %181 = load i64, i64* %2, align 8
  ret i64 %181
}

declare dso_local %struct.TYPE_12__* @FindTable(%struct.TYPE_13__*, i8*) #1

declare dso_local i32 @HPDF_PTRACE(i8*) #1

declare dso_local i64 @HPDF_SetError(i32, i32, i32) #1

declare dso_local i64 @HPDF_Stream_Seek(i32, i32, i32) #1

declare dso_local i8* @HPDF_GetMem(i32, i32) #1

declare dso_local i64 @HPDF_Error_GetCode(i32) #1

declare dso_local i32 @HPDF_MemSet(i32*, i32, i32) #1

declare dso_local i64 @GetUINT16(i32, i32*) #1

declare dso_local i64 @GetUINT32(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
