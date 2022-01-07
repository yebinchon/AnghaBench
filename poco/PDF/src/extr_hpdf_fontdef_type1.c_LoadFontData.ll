; ModuleID = '/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_fontdef_type1.c_LoadFontData.c'
source_filename = "/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_fontdef_type1.c_LoadFontData.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i64, i64, i64, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }

@HPDF_STREAM_BUF_SIZ = common dso_local global i32 0, align 4
@HPDF_FALSE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c" LoadFontData\0A\00", align 1
@HPDF_OK = common dso_local global i64 0, align 8
@HPDF_STREAM_EOF = common dso_local global i64 0, align 8
@HPDF_TRUE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"eexec\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"cleartomark\00", align 1
@HPDF_UNSUPPORTED_TYPE1_FONT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_7__*, i32)* @LoadFontData to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @LoadFontData(%struct.TYPE_7__* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32 %1, i32* %5, align 4
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = sext i32 %18 to i64
  %20 = inttoptr i64 %19 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %20, %struct.TYPE_6__** %6, align 8
  %21 = load i32, i32* @HPDF_STREAM_BUF_SIZ, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %7, align 8
  %24 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %8, align 8
  store i8* %24, i8** %9, align 8
  store i32 0, i32* %10, align 4
  %25 = load i64, i64* @HPDF_FALSE, align 8
  store i64 %25, i64* %12, align 8
  %26 = call i32 @HPDF_PTRACE(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @HPDF_STREAM_BUF_SIZ, align 4
  %31 = call %struct.TYPE_8__* @HPDF_MemStream_New(i32 %29, i32 %30)
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 3
  store %struct.TYPE_8__* %31, %struct.TYPE_8__** %33, align 8
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 3
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %35, align 8
  %37 = icmp ne %struct.TYPE_8__* %36, null
  br i1 %37, label %43, label %38

38:                                               ; preds = %2
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @HPDF_Error_GetCode(i32 %41)
  store i64 %42, i64* %3, align 8
  store i32 1, i32* %13, align 4
  br label %212

43:                                               ; preds = %2
  store i32 11, i32* %10, align 4
  %44 = load i32, i32* %5, align 4
  %45 = load i8*, i8** %9, align 8
  %46 = bitcast i8* %45 to i32*
  %47 = call i64 @HPDF_Stream_Read(i32 %44, i32* %46, i32* %10)
  store i64 %47, i64* %11, align 8
  %48 = load i64, i64* %11, align 8
  %49 = load i64, i64* @HPDF_OK, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %43
  %52 = load i64, i64* %11, align 8
  store i64 %52, i64* %3, align 8
  store i32 1, i32* %13, align 4
  br label %212

53:                                               ; preds = %43
  %54 = load i8*, i8** %9, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 11
  store i8* %55, i8** %9, align 8
  br label %56

56:                                               ; preds = %177, %53
  %57 = load i32, i32* @HPDF_STREAM_BUF_SIZ, align 4
  %58 = sub nsw i32 %57, 11
  store i32 %58, i32* %10, align 4
  %59 = load i32, i32* %5, align 4
  %60 = load i8*, i8** %9, align 8
  %61 = bitcast i8* %60 to i32*
  %62 = call i64 @HPDF_Stream_Read(i32 %59, i32* %61, i32* %10)
  store i64 %62, i64* %11, align 8
  %63 = load i64, i64* %11, align 8
  %64 = load i64, i64* @HPDF_STREAM_EOF, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %56
  %67 = load i64, i64* @HPDF_TRUE, align 8
  store i64 %67, i64* %12, align 8
  br label %75

68:                                               ; preds = %56
  %69 = load i64, i64* %11, align 8
  %70 = load i64, i64* @HPDF_OK, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %68
  %73 = load i64, i64* %11, align 8
  store i64 %73, i64* %3, align 8
  store i32 1, i32* %13, align 4
  br label %212

74:                                               ; preds = %68
  br label %75

75:                                               ; preds = %74, %66
  %76 = load i32, i32* %10, align 4
  %77 = icmp sgt i32 %76, 0
  br i1 %77, label %78, label %142

78:                                               ; preds = %75
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %83, label %105

83:                                               ; preds = %78
  %84 = load i32, i32* %10, align 4
  %85 = add nsw i32 %84, 11
  %86 = call i8* @HPDF_StrStr(i8* %24, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %85)
  store i8* %86, i8** %14, align 8
  %87 = load i8*, i8** %14, align 8
  %88 = icmp ne i8* %87, null
  br i1 %88, label %89, label %104

89:                                               ; preds = %83
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 3
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = sext i32 %94 to i64
  %96 = load i8*, i8** %14, align 8
  %97 = ptrtoint i8* %96 to i64
  %98 = ptrtoint i8* %24 to i64
  %99 = sub i64 %97, %98
  %100 = add nsw i64 %95, %99
  %101 = add nsw i64 %100, 6
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  store i64 %101, i64* %103, align 8
  br label %104

104:                                              ; preds = %89, %83
  br label %105

105:                                              ; preds = %104, %78
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = icmp sgt i64 %108, 0
  br i1 %109, label %110, label %141

110:                                              ; preds = %105
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = icmp eq i64 %113, 0
  br i1 %114, label %115, label %141

115:                                              ; preds = %110
  %116 = load i32, i32* %10, align 4
  %117 = add nsw i32 %116, 11
  %118 = call i8* @HPDF_StrStr(i8* %24, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %117)
  store i8* %118, i8** %15, align 8
  %119 = load i8*, i8** %15, align 8
  %120 = icmp ne i8* %119, null
  br i1 %120, label %121, label %140

121:                                              ; preds = %115
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 3
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = add nsw i32 %126, -520
  %128 = sext i32 %127 to i64
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = sub nsw i64 %128, %131
  %133 = load i8*, i8** %15, align 8
  %134 = ptrtoint i8* %133 to i64
  %135 = ptrtoint i8* %24 to i64
  %136 = sub i64 %134, %135
  %137 = add nsw i64 %132, %136
  %138 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 1
  store i64 %137, i64* %139, align 8
  br label %140

140:                                              ; preds = %121, %115
  br label %141

141:                                              ; preds = %140, %110, %105
  br label %142

142:                                              ; preds = %141, %75
  %143 = load i64, i64* %12, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %158

145:                                              ; preds = %142
  %146 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 3
  %148 = load %struct.TYPE_8__*, %struct.TYPE_8__** %147, align 8
  %149 = bitcast i8* %24 to i32*
  %150 = load i32, i32* %10, align 4
  %151 = add nsw i32 %150, 11
  %152 = call i64 @HPDF_Stream_Write(%struct.TYPE_8__* %148, i32* %149, i32 %151)
  store i64 %152, i64* %11, align 8
  %153 = load i64, i64* @HPDF_OK, align 8
  %154 = icmp ne i64 %152, %153
  br i1 %154, label %155, label %157

155:                                              ; preds = %145
  %156 = load i64, i64* %11, align 8
  store i64 %156, i64* %3, align 8
  store i32 1, i32* %13, align 4
  br label %212

157:                                              ; preds = %145
  br label %178

158:                                              ; preds = %142
  %159 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 3
  %161 = load %struct.TYPE_8__*, %struct.TYPE_8__** %160, align 8
  %162 = bitcast i8* %24 to i32*
  %163 = load i32, i32* %10, align 4
  %164 = call i64 @HPDF_Stream_Write(%struct.TYPE_8__* %161, i32* %162, i32 %163)
  store i64 %164, i64* %11, align 8
  %165 = load i64, i64* @HPDF_OK, align 8
  %166 = icmp ne i64 %164, %165
  br i1 %166, label %167, label %169

167:                                              ; preds = %158
  %168 = load i64, i64* %11, align 8
  store i64 %168, i64* %3, align 8
  store i32 1, i32* %13, align 4
  br label %212

169:                                              ; preds = %158
  %170 = bitcast i8* %24 to i32*
  %171 = bitcast i8* %24 to i32*
  %172 = load i32, i32* %10, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i32, i32* %171, i64 %173
  %175 = call i32 @HPDF_MemCpy(i32* %170, i32* %174, i32 11)
  %176 = getelementptr inbounds i8, i8* %24, i64 11
  store i8* %176, i8** %9, align 8
  br label %177

177:                                              ; preds = %169
  br label %56

178:                                              ; preds = %157
  %179 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %180 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = icmp eq i64 %181, 0
  br i1 %182, label %188, label %183

183:                                              ; preds = %178
  %184 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %185 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %184, i32 0, i32 1
  %186 = load i64, i64* %185, align 8
  %187 = icmp eq i64 %186, 0
  br i1 %187, label %188, label %194

188:                                              ; preds = %183, %178
  %189 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %190 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = load i32, i32* @HPDF_UNSUPPORTED_TYPE1_FONT, align 4
  %193 = call i64 @HPDF_SetError(i32 %191, i32 %192, i32 0)
  store i64 %193, i64* %3, align 8
  store i32 1, i32* %13, align 4
  br label %212

194:                                              ; preds = %183
  %195 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %196 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %195, i32 0, i32 3
  %197 = load %struct.TYPE_8__*, %struct.TYPE_8__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = sext i32 %199 to i64
  %201 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %202 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %201, i32 0, i32 0
  %203 = load i64, i64* %202, align 8
  %204 = sub nsw i64 %200, %203
  %205 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %206 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %205, i32 0, i32 1
  %207 = load i64, i64* %206, align 8
  %208 = sub nsw i64 %204, %207
  %209 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %210 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %209, i32 0, i32 2
  store i64 %208, i64* %210, align 8
  %211 = load i64, i64* @HPDF_OK, align 8
  store i64 %211, i64* %3, align 8
  store i32 1, i32* %13, align 4
  br label %212

212:                                              ; preds = %194, %188, %167, %155, %72, %51, %38
  %213 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %213)
  %214 = load i64, i64* %3, align 8
  ret i64 %214
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @HPDF_PTRACE(i8*) #2

declare dso_local %struct.TYPE_8__* @HPDF_MemStream_New(i32, i32) #2

declare dso_local i64 @HPDF_Error_GetCode(i32) #2

declare dso_local i64 @HPDF_Stream_Read(i32, i32*, i32*) #2

declare dso_local i8* @HPDF_StrStr(i8*, i8*, i32) #2

declare dso_local i64 @HPDF_Stream_Write(%struct.TYPE_8__*, i32*, i32) #2

declare dso_local i32 @HPDF_MemCpy(i32*, i32*, i32) #2

declare dso_local i64 @HPDF_SetError(i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
