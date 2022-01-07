; ModuleID = '/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_streams.c_HPDF_Stream_WriteBinary.c'
source_filename = "/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_streams.c_HPDF_Stream_WriteBinary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@HPDF_TEXT_DEFAULT_LEN = common dso_local global i32 0, align 4
@HPDF_FALSE = common dso_local global i64 0, align 8
@HPDF_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c" HPDF_Stream_WriteBinary\0A\00", align 1
@HPDF_TRUE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @HPDF_Stream_WriteBinary(%struct.TYPE_4__* %0, i32* %1, i32 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i8, align 1
  %20 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %21 = load i32, i32* @HPDF_TEXT_DEFAULT_LEN, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %10, align 8
  %24 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %11, align 8
  %25 = load i32, i32* @HPDF_TEXT_DEFAULT_LEN, align 4
  %26 = zext i32 %25 to i64
  %27 = alloca i32, i64 %26, align 16
  store i64 %26, i64* %12, align 8
  store i32* null, i32** %13, align 8
  %28 = load i64, i64* @HPDF_FALSE, align 8
  store i64 %28, i64* %14, align 8
  store i32 0, i32* %15, align 4
  %29 = load i64, i64* @HPDF_OK, align 8
  store i64 %29, i64* %18, align 8
  %30 = call i32 @HPDF_PTRACE(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %31 = load i64, i64* %9, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %53

33:                                               ; preds = %4
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* @HPDF_TEXT_DEFAULT_LEN, align 4
  %36 = icmp sle i32 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  store i32* %27, i32** %13, align 8
  br label %46

38:                                               ; preds = %33
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %8, align 4
  %43 = call i64 @HPDF_GetMem(i32 %41, i32 %42)
  %44 = inttoptr i64 %43 to i32*
  store i32* %44, i32** %13, align 8
  %45 = load i64, i64* @HPDF_TRUE, align 8
  store i64 %45, i64* %14, align 8
  br label %46

46:                                               ; preds = %38, %37
  %47 = load i64, i64* %9, align 8
  %48 = load i32*, i32** %7, align 8
  %49 = load i32*, i32** %13, align 8
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @HPDF_Encrypt_CryptBuf(i64 %47, i32* %48, i32* %49, i32 %50)
  %52 = load i32*, i32** %13, align 8
  store i32* %52, i32** %17, align 8
  br label %55

53:                                               ; preds = %4
  %54 = load i32*, i32** %7, align 8
  store i32* %54, i32** %17, align 8
  br label %55

55:                                               ; preds = %53, %46
  store i32 0, i32* %16, align 4
  br label %56

56:                                               ; preds = %132, %55
  %57 = load i32, i32* %16, align 4
  %58 = load i32, i32* %8, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %137

60:                                               ; preds = %56
  %61 = load i32*, i32** %17, align 8
  %62 = load i32, i32* %61, align 4
  %63 = ashr i32 %62, 4
  %64 = trunc i32 %63 to i8
  store i8 %64, i8* %19, align 1
  %65 = load i8, i8* %19, align 1
  %66 = sext i8 %65 to i32
  %67 = icmp sle i32 %66, 9
  br i1 %67, label %68, label %73

68:                                               ; preds = %60
  %69 = load i8, i8* %19, align 1
  %70 = sext i8 %69 to i32
  %71 = add nsw i32 %70, 48
  %72 = trunc i32 %71 to i8
  store i8 %72, i8* %19, align 1
  br label %78

73:                                               ; preds = %60
  %74 = load i8, i8* %19, align 1
  %75 = sext i8 %74 to i32
  %76 = add nsw i32 %75, 55
  %77 = trunc i32 %76 to i8
  store i8 %77, i8* %19, align 1
  br label %78

78:                                               ; preds = %73, %68
  %79 = load i8, i8* %19, align 1
  %80 = load i32, i32* %15, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %15, align 4
  %82 = sext i32 %80 to i64
  %83 = getelementptr inbounds i8, i8* %24, i64 %82
  store i8 %79, i8* %83, align 1
  %84 = load i32*, i32** %17, align 8
  %85 = load i32, i32* %84, align 4
  %86 = and i32 %85, 15
  %87 = trunc i32 %86 to i8
  store i8 %87, i8* %19, align 1
  %88 = load i8, i8* %19, align 1
  %89 = sext i8 %88 to i32
  %90 = icmp sle i32 %89, 9
  br i1 %90, label %91, label %96

91:                                               ; preds = %78
  %92 = load i8, i8* %19, align 1
  %93 = sext i8 %92 to i32
  %94 = add nsw i32 %93, 48
  %95 = trunc i32 %94 to i8
  store i8 %95, i8* %19, align 1
  br label %101

96:                                               ; preds = %78
  %97 = load i8, i8* %19, align 1
  %98 = sext i8 %97 to i32
  %99 = add nsw i32 %98, 55
  %100 = trunc i32 %99 to i8
  store i8 %100, i8* %19, align 1
  br label %101

101:                                              ; preds = %96, %91
  %102 = load i8, i8* %19, align 1
  %103 = load i32, i32* %15, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %15, align 4
  %105 = sext i32 %103 to i64
  %106 = getelementptr inbounds i8, i8* %24, i64 %105
  store i8 %102, i8* %106, align 1
  %107 = load i32, i32* %15, align 4
  %108 = load i32, i32* @HPDF_TEXT_DEFAULT_LEN, align 4
  %109 = sub nsw i32 %108, 2
  %110 = icmp sgt i32 %107, %109
  br i1 %110, label %111, label %131

111:                                              ; preds = %101
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %113 = bitcast i8* %24 to i32*
  %114 = load i32, i32* %15, align 4
  %115 = call i64 @HPDF_Stream_Write(%struct.TYPE_4__* %112, i32* %113, i32 %114)
  store i64 %115, i64* %18, align 8
  %116 = load i64, i64* %18, align 8
  %117 = load i64, i64* @HPDF_OK, align 8
  %118 = icmp ne i64 %116, %117
  br i1 %118, label %119, label %130

119:                                              ; preds = %111
  %120 = load i64, i64* %14, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %128

122:                                              ; preds = %119
  %123 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load i32*, i32** %13, align 8
  %127 = call i32 @HPDF_FreeMem(i32 %125, i32* %126)
  br label %128

128:                                              ; preds = %122, %119
  %129 = load i64, i64* %18, align 8
  store i64 %129, i64* %5, align 8
  store i32 1, i32* %20, align 4
  br label %156

130:                                              ; preds = %111
  store i32 0, i32* %15, align 4
  br label %131

131:                                              ; preds = %130, %101
  br label %132

132:                                              ; preds = %131
  %133 = load i32, i32* %16, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %16, align 4
  %135 = load i32*, i32** %17, align 8
  %136 = getelementptr inbounds i32, i32* %135, i32 1
  store i32* %136, i32** %17, align 8
  br label %56

137:                                              ; preds = %56
  %138 = load i32, i32* %15, align 4
  %139 = icmp sgt i32 %138, 0
  br i1 %139, label %140, label %145

140:                                              ; preds = %137
  %141 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %142 = bitcast i8* %24 to i32*
  %143 = load i32, i32* %15, align 4
  %144 = call i64 @HPDF_Stream_Write(%struct.TYPE_4__* %141, i32* %142, i32 %143)
  store i64 %144, i64* %18, align 8
  br label %145

145:                                              ; preds = %140, %137
  %146 = load i64, i64* %14, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %154

148:                                              ; preds = %145
  %149 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = load i32*, i32** %13, align 8
  %153 = call i32 @HPDF_FreeMem(i32 %151, i32* %152)
  br label %154

154:                                              ; preds = %148, %145
  %155 = load i64, i64* %18, align 8
  store i64 %155, i64* %5, align 8
  store i32 1, i32* %20, align 4
  br label %156

156:                                              ; preds = %154, %128
  %157 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %157)
  %158 = load i64, i64* %5, align 8
  ret i64 %158
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @HPDF_PTRACE(i8*) #2

declare dso_local i64 @HPDF_GetMem(i32, i32) #2

declare dso_local i32 @HPDF_Encrypt_CryptBuf(i64, i32*, i32*, i32) #2

declare dso_local i64 @HPDF_Stream_Write(%struct.TYPE_4__*, i32*, i32) #2

declare dso_local i32 @HPDF_FreeMem(i32, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
