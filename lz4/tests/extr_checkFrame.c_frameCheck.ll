; ModuleID = '/home/carl/AnghaBench/lz4/tests/extr_checkFrame.c_frameCheck.c'
source_filename = "/home/carl/AnghaBench/lz4/tests/extr_checkFrame.c_frameCheck.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64, i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"Error getting frame info: %s\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Block size ID %u != expected %u\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"Decompression error : %s\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"Block size %u != expected %u, pos %u\0A\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"Read error\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"Unfinished stream\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @frameCheck(%struct.TYPE_5__* byval(%struct.TYPE_5__) align 8 %0, i32* %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_6__, align 4
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  store i64 %3, i64* %7, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  store i32 0, i32* %10, align 4
  br label %16

16:                                               ; preds = %159, %4
  store i64 0, i64* %12, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %0, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %13, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %0, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %0, i32 0, i32 4
  %22 = load i32, i32* %21, align 8
  %23 = load i32*, i32** %5, align 8
  %24 = call i64 @fread(i64 %20, i32 1, i32 %22, i32* %23)
  store i64 %24, i64* %11, align 8
  %25 = load i64, i64* %11, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %16
  br label %160

28:                                               ; preds = %16
  br label %29

29:                                               ; preds = %158, %28
  %30 = load i64, i64* %12, align 8
  %31 = load i64, i64* %11, align 8
  %32 = icmp ult i64 %30, %31
  br i1 %32, label %33, label %159

33:                                               ; preds = %29
  %34 = load i64, i64* %8, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %93, label %36

36:                                               ; preds = %33
  store i64 0, i64* %9, align 8
  %37 = load i64, i64* %11, align 8
  %38 = load i64, i64* %12, align 8
  %39 = sub i64 %37, %38
  store i64 %39, i64* %14, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %0, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %0, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = inttoptr i64 %43 to i8*
  %45 = load i64, i64* %12, align 8
  %46 = getelementptr inbounds i8, i8* %44, i64 %45
  %47 = call i64 @LZ4F_getFrameInfo(i32 %41, %struct.TYPE_6__* %15, i8* %46, i64* %14)
  store i64 %47, i64* %8, align 8
  %48 = load i64, i64* %8, align 8
  %49 = call i64 @LZ4F_isError(i64 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %36
  %52 = load i64, i64* %8, align 8
  %53 = call i32 @LZ4F_getErrorName(i64 %52)
  %54 = call i32 (i32, i8*, ...) @EXM_THROW(i32 22, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %53)
  br label %55

55:                                               ; preds = %51, %36
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %6, align 4
  %59 = icmp ne i32 %57, %58
  br i1 %59, label %60, label %65

60:                                               ; preds = %55
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %6, align 4
  %64 = call i32 (i32, i8*, ...) @EXM_THROW(i32 23, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %62, i32 %63)
  br label %65

65:                                               ; preds = %60, %55
  %66 = load i64, i64* %14, align 8
  %67 = load i64, i64* %12, align 8
  %68 = add i64 %67, %66
  store i64 %68, i64* %12, align 8
  %69 = load i64, i64* %8, align 8
  store i64 %69, i64* %14, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %0, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  store i64 %71, i64* %13, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %0, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %0, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %0, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = inttoptr i64 %77 to i8*
  %79 = load i64, i64* %12, align 8
  %80 = getelementptr inbounds i8, i8* %78, i64 %79
  %81 = call i64 @LZ4F_decompress(i32 %73, i32 %75, i64* %13, i8* %80, i64* %14, i32* null)
  store i64 %81, i64* %8, align 8
  %82 = load i64, i64* %8, align 8
  %83 = call i64 @LZ4F_isError(i64 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %65
  %86 = load i64, i64* %8, align 8
  %87 = call i32 @LZ4F_getErrorName(i64 %86)
  %88 = call i32 (i32, i8*, ...) @EXM_THROW(i32 24, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %87)
  br label %89

89:                                               ; preds = %85, %65
  %90 = load i64, i64* %14, align 8
  %91 = load i64, i64* %12, align 8
  %92 = add i64 %91, %90
  store i64 %92, i64* %12, align 8
  br label %93

93:                                               ; preds = %89, %33
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %0, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  store i64 %95, i64* %13, align 8
  %96 = load i64, i64* %8, align 8
  %97 = load i64, i64* %11, align 8
  %98 = load i64, i64* %12, align 8
  %99 = sub i64 %97, %98
  %100 = icmp ugt i64 %96, %99
  br i1 %100, label %101, label %105

101:                                              ; preds = %93
  store i32 1, i32* %10, align 4
  %102 = load i64, i64* %11, align 8
  %103 = load i64, i64* %12, align 8
  %104 = sub i64 %102, %103
  store i64 %104, i64* %14, align 8
  br label %111

105:                                              ; preds = %93
  %106 = load i32, i32* %10, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %105
  store i32 0, i32* %10, align 4
  br label %109

109:                                              ; preds = %108, %105
  %110 = load i64, i64* %8, align 8
  store i64 %110, i64* %14, align 8
  br label %111

111:                                              ; preds = %109, %101
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %0, i32 0, i32 3
  %113 = load i32, i32* %112, align 4
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %0, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %0, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = inttoptr i64 %117 to i8*
  %119 = load i64, i64* %12, align 8
  %120 = getelementptr inbounds i8, i8* %118, i64 %119
  %121 = call i64 @LZ4F_decompress(i32 %113, i32 %115, i64* %13, i8* %120, i64* %14, i32* null)
  store i64 %121, i64* %8, align 8
  %122 = load i64, i64* %8, align 8
  %123 = call i64 @LZ4F_isError(i64 %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %129

125:                                              ; preds = %111
  %126 = load i64, i64* %8, align 8
  %127 = call i32 @LZ4F_getErrorName(i64 %126)
  %128 = call i32 (i32, i8*, ...) @EXM_THROW(i32 24, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %127)
  br label %129

129:                                              ; preds = %125, %111
  %130 = load i64, i64* %13, align 8
  %131 = load i64, i64* %9, align 8
  %132 = add i64 %131, %130
  store i64 %132, i64* %9, align 8
  %133 = load i64, i64* %14, align 8
  %134 = load i64, i64* %12, align 8
  %135 = add i64 %134, %133
  store i64 %135, i64* %12, align 8
  %136 = load i32, i32* %10, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %158, label %138

138:                                              ; preds = %129
  %139 = load i64, i64* %9, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %157

141:                                              ; preds = %138
  %142 = load i64, i64* %8, align 8
  %143 = icmp ugt i64 %142, 4
  br i1 %143, label %144, label %157

144:                                              ; preds = %141
  %145 = load i64, i64* %9, align 8
  %146 = load i64, i64* %7, align 8
  %147 = icmp ne i64 %145, %146
  br i1 %147, label %148, label %156

148:                                              ; preds = %144
  %149 = load i64, i64* %9, align 8
  %150 = trunc i64 %149 to i32
  %151 = load i64, i64* %7, align 8
  %152 = trunc i64 %151 to i32
  %153 = load i64, i64* %12, align 8
  %154 = trunc i64 %153 to i32
  %155 = call i32 (i32, i8*, ...) @EXM_THROW(i32 25, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %150, i32 %152, i32 %154)
  br label %156

156:                                              ; preds = %148, %144
  br label %157

157:                                              ; preds = %156, %141, %138
  store i64 0, i64* %9, align 8
  br label %158

158:                                              ; preds = %157, %129
  br label %29

159:                                              ; preds = %29
  br label %16

160:                                              ; preds = %27
  %161 = load i32*, i32** %5, align 8
  %162 = call i64 @ferror(i32* %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %166

164:                                              ; preds = %160
  %165 = call i32 (i32, i8*, ...) @EXM_THROW(i32 26, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  br label %166

166:                                              ; preds = %164, %160
  %167 = load i64, i64* %8, align 8
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %171

169:                                              ; preds = %166
  %170 = call i32 (i32, i8*, ...) @EXM_THROW(i32 27, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  br label %171

171:                                              ; preds = %169, %166
  ret i32 0
}

declare dso_local i64 @fread(i64, i32, i32, i32*) #1

declare dso_local i64 @LZ4F_getFrameInfo(i32, %struct.TYPE_6__*, i8*, i64*) #1

declare dso_local i64 @LZ4F_isError(i64) #1

declare dso_local i32 @EXM_THROW(i32, i8*, ...) #1

declare dso_local i32 @LZ4F_getErrorName(i64) #1

declare dso_local i64 @LZ4F_decompress(i32, i32, i64*, i8*, i64*, i32*) #1

declare dso_local i64 @ferror(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
