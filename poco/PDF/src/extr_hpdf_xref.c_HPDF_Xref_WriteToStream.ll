; ModuleID = '/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_xref.c_HPDF_Xref_WriteToStream.c'
source_filename = "/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_xref.c_HPDF_Xref_WriteToStream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64, i32, %struct.TYPE_15__*, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_14__ = type { i32, i32, i32, i32 }

@HPDF_SHORT_BUF_SIZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c" HPDF_Xref_WriteToStream\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c" obj\0A\00", align 1
@HPDF_OK = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [9 x i8] c"\0Aendobj\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"xref\0A\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@HPDF_BYTE_OFFSET_LEN = common dso_local global i64 0, align 8
@HPDF_GEN_NO_LEN = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @HPDF_Xref_WriteToStream(%struct.TYPE_15__* %0, %struct.TYPE_16__* %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_15__*, align 8
  %16 = alloca %struct.TYPE_14__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %5, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %6, align 8
  store i32 %2, i32* %7, align 4
  %21 = load i32, i32* @HPDF_SHORT_BUF_SIZ, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %10, align 8
  %24 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %11, align 8
  %25 = load i32, i32* @HPDF_SHORT_BUF_SIZ, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8, i8* %24, i64 %26
  %28 = getelementptr inbounds i8, i8* %27, i64 -1
  store i8* %28, i8** %13, align 8
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  store %struct.TYPE_15__* %29, %struct.TYPE_15__** %15, align 8
  %30 = call i32 @HPDF_PTRACE(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %31

31:                                               ; preds = %123, %3
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %33 = icmp ne %struct.TYPE_15__* %32, null
  br i1 %33, label %34, label %127

34:                                               ; preds = %31
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  store i32 1, i32* %14, align 4
  br label %41

40:                                               ; preds = %34
  store i32 0, i32* %14, align 4
  br label %41

41:                                               ; preds = %40, %39
  %42 = load i32, i32* %14, align 4
  store i32 %42, i32* %9, align 4
  br label %43

43:                                               ; preds = %120, %41
  %44 = load i32, i32* %9, align 4
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 3
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp slt i32 %44, %49
  br i1 %50, label %51, label %123

51:                                               ; preds = %43
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 3
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %53, align 8
  %55 = load i32, i32* %9, align 4
  %56 = call i32 @HPDF_List_ItemAt(%struct.TYPE_13__* %54, i32 %55)
  %57 = sext i32 %56 to i64
  %58 = inttoptr i64 %57 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %58, %struct.TYPE_14__** %16, align 8
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i32, i32* %9, align 4
  %63 = sext i32 %62 to i64
  %64 = add nsw i64 %61, %63
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* %17, align 4
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %18, align 4
  %69 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 4
  store i8* %24, i8** %12, align 8
  %74 = load i8*, i8** %12, align 8
  %75 = load i32, i32* %17, align 4
  %76 = load i8*, i8** %13, align 8
  %77 = call i8* @HPDF_IToA(i8* %74, i32 %75, i8* %76)
  store i8* %77, i8** %12, align 8
  %78 = load i8*, i8** %12, align 8
  %79 = getelementptr inbounds i8, i8* %78, i32 1
  store i8* %79, i8** %12, align 8
  store i8 32, i8* %78, align 1
  %80 = load i8*, i8** %12, align 8
  %81 = load i32, i32* %18, align 4
  %82 = load i8*, i8** %13, align 8
  %83 = call i8* @HPDF_IToA(i8* %80, i32 %81, i8* %82)
  store i8* %83, i8** %12, align 8
  %84 = load i8*, i8** %12, align 8
  %85 = load i8*, i8** %13, align 8
  %86 = call i64 @HPDF_StrCpy(i8* %84, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %85)
  %87 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %88 = call i64 @HPDF_Stream_WriteStr(%struct.TYPE_16__* %87, i8* %24)
  store i64 %88, i64* %8, align 8
  %89 = load i64, i64* @HPDF_OK, align 8
  %90 = icmp ne i64 %88, %89
  br i1 %90, label %91, label %93

91:                                               ; preds = %51
  %92 = load i64, i64* %8, align 8
  store i64 %92, i64* %4, align 8
  store i32 1, i32* %19, align 4
  br label %229

93:                                               ; preds = %51
  %94 = load i32, i32* %7, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %93
  %97 = load i32, i32* %7, align 4
  %98 = load i32, i32* %17, align 4
  %99 = load i32, i32* %18, align 4
  %100 = call i32 @HPDF_Encrypt_InitKey(i32 %97, i32 %98, i32 %99)
  br label %101

101:                                              ; preds = %96, %93
  %102 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %103 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %106 = load i32, i32* %7, align 4
  %107 = call i64 @HPDF_Obj_WriteValue(i32 %104, %struct.TYPE_16__* %105, i32 %106)
  store i64 %107, i64* %8, align 8
  %108 = load i64, i64* @HPDF_OK, align 8
  %109 = icmp ne i64 %107, %108
  br i1 %109, label %110, label %112

110:                                              ; preds = %101
  %111 = load i64, i64* %8, align 8
  store i64 %111, i64* %4, align 8
  store i32 1, i32* %19, align 4
  br label %229

112:                                              ; preds = %101
  %113 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %114 = call i64 @HPDF_Stream_WriteStr(%struct.TYPE_16__* %113, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  store i64 %114, i64* %8, align 8
  %115 = load i64, i64* @HPDF_OK, align 8
  %116 = icmp ne i64 %114, %115
  br i1 %116, label %117, label %119

117:                                              ; preds = %112
  %118 = load i64, i64* %8, align 8
  store i64 %118, i64* %4, align 8
  store i32 1, i32* %19, align 4
  br label %229

119:                                              ; preds = %112
  br label %120

120:                                              ; preds = %119
  %121 = load i32, i32* %9, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %9, align 4
  br label %43

123:                                              ; preds = %43
  %124 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %125 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %124, i32 0, i32 2
  %126 = load %struct.TYPE_15__*, %struct.TYPE_15__** %125, align 8
  store %struct.TYPE_15__* %126, %struct.TYPE_15__** %15, align 8
  br label %31

127:                                              ; preds = %31
  %128 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  store %struct.TYPE_15__* %128, %struct.TYPE_15__** %15, align 8
  br label %129

129:                                              ; preds = %220, %127
  %130 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %131 = icmp ne %struct.TYPE_15__* %130, null
  br i1 %131, label %132, label %224

132:                                              ; preds = %129
  %133 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %134 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %137 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %136, i32 0, i32 1
  store i32 %135, i32* %137, align 8
  store i8* %24, i8** %12, align 8
  %138 = load i8*, i8** %12, align 8
  %139 = load i8*, i8** %13, align 8
  %140 = call i64 @HPDF_StrCpy(i8* %138, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* %139)
  %141 = inttoptr i64 %140 to i8*
  store i8* %141, i8** %12, align 8
  %142 = load i8*, i8** %12, align 8
  %143 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %144 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = trunc i64 %145 to i32
  %147 = load i8*, i8** %13, align 8
  %148 = call i8* @HPDF_IToA(i8* %142, i32 %146, i8* %147)
  store i8* %148, i8** %12, align 8
  %149 = load i8*, i8** %12, align 8
  %150 = getelementptr inbounds i8, i8* %149, i32 1
  store i8* %150, i8** %12, align 8
  store i8 32, i8* %149, align 1
  %151 = load i8*, i8** %12, align 8
  %152 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %153 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %152, i32 0, i32 3
  %154 = load %struct.TYPE_13__*, %struct.TYPE_13__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = load i8*, i8** %13, align 8
  %158 = call i8* @HPDF_IToA(i8* %151, i32 %156, i8* %157)
  store i8* %158, i8** %12, align 8
  %159 = load i8*, i8** %12, align 8
  %160 = load i8*, i8** %13, align 8
  %161 = call i64 @HPDF_StrCpy(i8* %159, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8* %160)
  %162 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %163 = call i64 @HPDF_Stream_WriteStr(%struct.TYPE_16__* %162, i8* %24)
  store i64 %163, i64* %8, align 8
  %164 = load i64, i64* %8, align 8
  %165 = load i64, i64* @HPDF_OK, align 8
  %166 = icmp ne i64 %164, %165
  br i1 %166, label %167, label %169

167:                                              ; preds = %132
  %168 = load i64, i64* %8, align 8
  store i64 %168, i64* %4, align 8
  store i32 1, i32* %19, align 4
  br label %229

169:                                              ; preds = %132
  store i32 0, i32* %9, align 4
  br label %170

170:                                              ; preds = %217, %169
  %171 = load i32, i32* %9, align 4
  %172 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %173 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %172, i32 0, i32 3
  %174 = load %struct.TYPE_13__*, %struct.TYPE_13__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = icmp slt i32 %171, %176
  br i1 %177, label %178, label %220

178:                                              ; preds = %170
  %179 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %180 = load i32, i32* %9, align 4
  %181 = call %struct.TYPE_14__* @HPDF_Xref_GetEntry(%struct.TYPE_15__* %179, i32 %180)
  store %struct.TYPE_14__* %181, %struct.TYPE_14__** %20, align 8
  store i8* %24, i8** %12, align 8
  %182 = load i8*, i8** %12, align 8
  %183 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  %184 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = load i64, i64* @HPDF_BYTE_OFFSET_LEN, align 8
  %187 = add nsw i64 %186, 1
  %188 = call i8* @HPDF_IToA2(i8* %182, i32 %185, i64 %187)
  store i8* %188, i8** %12, align 8
  %189 = load i8*, i8** %12, align 8
  %190 = getelementptr inbounds i8, i8* %189, i32 1
  store i8* %190, i8** %12, align 8
  store i8 32, i8* %189, align 1
  %191 = load i8*, i8** %12, align 8
  %192 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  %193 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  %195 = load i64, i64* @HPDF_GEN_NO_LEN, align 8
  %196 = add nsw i64 %195, 1
  %197 = call i8* @HPDF_IToA2(i8* %191, i32 %194, i64 %196)
  store i8* %197, i8** %12, align 8
  %198 = load i8*, i8** %12, align 8
  %199 = getelementptr inbounds i8, i8* %198, i32 1
  store i8* %199, i8** %12, align 8
  store i8 32, i8* %198, align 1
  %200 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  %201 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %200, i32 0, i32 2
  %202 = load i32, i32* %201, align 4
  %203 = trunc i32 %202 to i8
  %204 = load i8*, i8** %12, align 8
  %205 = getelementptr inbounds i8, i8* %204, i32 1
  store i8* %205, i8** %12, align 8
  store i8 %203, i8* %204, align 1
  %206 = load i8*, i8** %12, align 8
  %207 = load i8*, i8** %13, align 8
  %208 = call i64 @HPDF_StrCpy(i8* %206, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* %207)
  %209 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %210 = call i64 @HPDF_Stream_WriteStr(%struct.TYPE_16__* %209, i8* %24)
  store i64 %210, i64* %8, align 8
  %211 = load i64, i64* %8, align 8
  %212 = load i64, i64* @HPDF_OK, align 8
  %213 = icmp ne i64 %211, %212
  br i1 %213, label %214, label %216

214:                                              ; preds = %178
  %215 = load i64, i64* %8, align 8
  store i64 %215, i64* %4, align 8
  store i32 1, i32* %19, align 4
  br label %229

216:                                              ; preds = %178
  br label %217

217:                                              ; preds = %216
  %218 = load i32, i32* %9, align 4
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* %9, align 4
  br label %170

220:                                              ; preds = %170
  %221 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %222 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %221, i32 0, i32 2
  %223 = load %struct.TYPE_15__*, %struct.TYPE_15__** %222, align 8
  store %struct.TYPE_15__* %223, %struct.TYPE_15__** %15, align 8
  br label %129

224:                                              ; preds = %129
  %225 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %226 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %227 = call i64 @WriteTrailer(%struct.TYPE_15__* %225, %struct.TYPE_16__* %226)
  store i64 %227, i64* %8, align 8
  %228 = load i64, i64* %8, align 8
  store i64 %228, i64* %4, align 8
  store i32 1, i32* %19, align 4
  br label %229

229:                                              ; preds = %224, %214, %167, %117, %110, %91
  %230 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %230)
  %231 = load i64, i64* %4, align 8
  ret i64 %231
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @HPDF_PTRACE(i8*) #2

declare dso_local i32 @HPDF_List_ItemAt(%struct.TYPE_13__*, i32) #2

declare dso_local i8* @HPDF_IToA(i8*, i32, i8*) #2

declare dso_local i64 @HPDF_StrCpy(i8*, i8*, i8*) #2

declare dso_local i64 @HPDF_Stream_WriteStr(%struct.TYPE_16__*, i8*) #2

declare dso_local i32 @HPDF_Encrypt_InitKey(i32, i32, i32) #2

declare dso_local i64 @HPDF_Obj_WriteValue(i32, %struct.TYPE_16__*, i32) #2

declare dso_local %struct.TYPE_14__* @HPDF_Xref_GetEntry(%struct.TYPE_15__*, i32) #2

declare dso_local i8* @HPDF_IToA2(i8*, i32, i64) #2

declare dso_local i64 @WriteTrailer(%struct.TYPE_15__*, %struct.TYPE_16__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
