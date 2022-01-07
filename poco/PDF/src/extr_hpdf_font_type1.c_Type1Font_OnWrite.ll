; ModuleID = '/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_font_type1.c_Type1Font_OnWrite.c'
source_filename = "/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_font_type1.c_Type1Font_OnWrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i64*, %struct.TYPE_13__*, %struct.TYPE_8__* }
%struct.TYPE_13__ = type { i32 (%struct.TYPE_13__*, i32)*, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_12__ = type { i64, i64, i64 }

@HPDF_TMP_BUF_SIZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c" HPDF_Font_Type1Font_OnWrite\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"/FirstChar \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@HPDF_OK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"/LastChar \00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"Widths\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c" [\0A\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, i32)* @Type1Font_OnWrite to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Type1Font_OnWrite(%struct.TYPE_11__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store i32 %1, i32* %5, align 4
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = sext i32 %18 to i64
  %20 = inttoptr i64 %19 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %20, %struct.TYPE_10__** %6, align 8
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 2
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = sext i32 %25 to i64
  %27 = inttoptr i64 %26 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %27, %struct.TYPE_9__** %7, align 8
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = sext i32 %32 to i64
  %34 = inttoptr i64 %33 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %34, %struct.TYPE_12__** %8, align 8
  %35 = load i32, i32* @HPDF_TMP_BUF_SIZ, align 4
  %36 = zext i32 %35 to i64
  %37 = call i8* @llvm.stacksave()
  store i8* %37, i8** %11, align 8
  %38 = alloca i8, i64 %36, align 16
  store i64 %36, i64* %12, align 8
  %39 = load i32, i32* @HPDF_TMP_BUF_SIZ, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %38, i64 %40
  %42 = getelementptr inbounds i8, i8* %41, i64 -1
  store i8* %42, i8** %13, align 8
  %43 = call i32 @HPDF_PTRACE(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %2
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %157

53:                                               ; preds = %48, %2
  %54 = load i8*, i8** %13, align 8
  %55 = call i64 @HPDF_StrCpy(i8* %38, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %54)
  %56 = inttoptr i64 %55 to i8*
  store i8* %56, i8** %14, align 8
  %57 = load i8*, i8** %14, align 8
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i8*, i8** %13, align 8
  %62 = call i8* @HPDF_IToA(i8* %57, i64 %60, i8* %61)
  store i8* %62, i8** %14, align 8
  %63 = load i8*, i8** %14, align 8
  %64 = load i8*, i8** %13, align 8
  %65 = call i64 @HPDF_StrCpy(i8* %63, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* %64)
  %66 = load i32, i32* %5, align 4
  %67 = call i32 @HPDF_Stream_WriteStr(i32 %66, i8* %38)
  store i32 %67, i32* %10, align 4
  %68 = load i32, i32* @HPDF_OK, align 4
  %69 = icmp ne i32 %67, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %53
  %71 = load i32, i32* %10, align 4
  store i32 %71, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %168

72:                                               ; preds = %53
  %73 = load i8*, i8** %13, align 8
  %74 = call i64 @HPDF_StrCpy(i8* %38, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* %73)
  %75 = inttoptr i64 %74 to i8*
  store i8* %75, i8** %14, align 8
  %76 = load i8*, i8** %14, align 8
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load i8*, i8** %13, align 8
  %81 = call i8* @HPDF_IToA(i8* %76, i64 %79, i8* %80)
  store i8* %81, i8** %14, align 8
  %82 = load i8*, i8** %14, align 8
  %83 = load i8*, i8** %13, align 8
  %84 = call i64 @HPDF_StrCpy(i8* %82, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* %83)
  %85 = load i32, i32* %5, align 4
  %86 = call i32 @HPDF_Stream_WriteStr(i32 %85, i8* %38)
  store i32 %86, i32* %10, align 4
  %87 = load i32, i32* @HPDF_OK, align 4
  %88 = icmp ne i32 %86, %87
  br i1 %88, label %89, label %91

89:                                               ; preds = %72
  %90 = load i32, i32* %10, align 4
  store i32 %90, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %168

91:                                               ; preds = %72
  %92 = load i32, i32* %5, align 4
  %93 = call i32 @HPDF_Stream_WriteEscapeName(i32 %92, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  store i32 %93, i32* %10, align 4
  %94 = load i32, i32* @HPDF_OK, align 4
  %95 = icmp ne i32 %93, %94
  br i1 %95, label %96, label %98

96:                                               ; preds = %91
  %97 = load i32, i32* %10, align 4
  store i32 %97, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %168

98:                                               ; preds = %91
  %99 = load i32, i32* %5, align 4
  %100 = call i32 @HPDF_Stream_WriteStr(i32 %99, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  store i32 %100, i32* %10, align 4
  %101 = load i32, i32* @HPDF_OK, align 4
  %102 = icmp ne i32 %100, %101
  br i1 %102, label %103, label %105

103:                                              ; preds = %98
  %104 = load i32, i32* %10, align 4
  store i32 %104, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %168

105:                                              ; preds = %98
  store i8* %38, i8** %14, align 8
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  store i64 %108, i64* %9, align 8
  br label %109

109:                                              ; preds = %143, %105
  %110 = load i64, i64* %9, align 8
  %111 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = icmp ule i64 %110, %113
  br i1 %114, label %115, label %146

115:                                              ; preds = %109
  %116 = load i8*, i8** %14, align 8
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 0
  %119 = load i64*, i64** %118, align 8
  %120 = load i64, i64* %9, align 8
  %121 = getelementptr inbounds i64, i64* %119, i64 %120
  %122 = load i64, i64* %121, align 8
  %123 = load i8*, i8** %13, align 8
  %124 = call i8* @HPDF_IToA(i8* %116, i64 %122, i8* %123)
  store i8* %124, i8** %14, align 8
  %125 = load i8*, i8** %14, align 8
  %126 = getelementptr inbounds i8, i8* %125, i32 1
  store i8* %126, i8** %14, align 8
  store i8 32, i8* %125, align 1
  %127 = load i64, i64* %9, align 8
  %128 = add i64 %127, 1
  %129 = urem i64 %128, 16
  %130 = icmp eq i64 %129, 0
  br i1 %130, label %131, label %142

131:                                              ; preds = %115
  %132 = load i8*, i8** %14, align 8
  %133 = load i8*, i8** %13, align 8
  %134 = call i64 @HPDF_StrCpy(i8* %132, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* %133)
  %135 = load i32, i32* %5, align 4
  %136 = call i32 @HPDF_Stream_WriteStr(i32 %135, i8* %38)
  store i32 %136, i32* %10, align 4
  %137 = load i32, i32* @HPDF_OK, align 4
  %138 = icmp ne i32 %136, %137
  br i1 %138, label %139, label %141

139:                                              ; preds = %131
  %140 = load i32, i32* %10, align 4
  store i32 %140, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %168

141:                                              ; preds = %131
  store i8* %38, i8** %14, align 8
  br label %142

142:                                              ; preds = %141, %115
  br label %143

143:                                              ; preds = %142
  %144 = load i64, i64* %9, align 8
  %145 = add i64 %144, 1
  store i64 %145, i64* %9, align 8
  br label %109

146:                                              ; preds = %109
  %147 = load i8*, i8** %14, align 8
  %148 = load i8*, i8** %13, align 8
  %149 = call i64 @HPDF_StrCpy(i8* %147, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* %148)
  %150 = load i32, i32* %5, align 4
  %151 = call i32 @HPDF_Stream_WriteStr(i32 %150, i8* %38)
  store i32 %151, i32* %10, align 4
  %152 = load i32, i32* @HPDF_OK, align 4
  %153 = icmp ne i32 %151, %152
  br i1 %153, label %154, label %156

154:                                              ; preds = %146
  %155 = load i32, i32* %10, align 4
  store i32 %155, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %168

156:                                              ; preds = %146
  br label %157

157:                                              ; preds = %156, %48
  %158 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %159 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %158, i32 0, i32 1
  %160 = load %struct.TYPE_13__*, %struct.TYPE_13__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %160, i32 0, i32 0
  %162 = load i32 (%struct.TYPE_13__*, i32)*, i32 (%struct.TYPE_13__*, i32)** %161, align 8
  %163 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %164 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %163, i32 0, i32 1
  %165 = load %struct.TYPE_13__*, %struct.TYPE_13__** %164, align 8
  %166 = load i32, i32* %5, align 4
  %167 = call i32 %162(%struct.TYPE_13__* %165, i32 %166)
  store i32 %167, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %168

168:                                              ; preds = %157, %154, %139, %103, %96, %89, %70
  %169 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %169)
  %170 = load i32, i32* %3, align 4
  ret i32 %170
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @HPDF_PTRACE(i8*) #2

declare dso_local i64 @HPDF_StrCpy(i8*, i8*, i8*) #2

declare dso_local i8* @HPDF_IToA(i8*, i64, i8*) #2

declare dso_local i32 @HPDF_Stream_WriteStr(i32, i8*) #2

declare dso_local i32 @HPDF_Stream_WriteEscapeName(i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
