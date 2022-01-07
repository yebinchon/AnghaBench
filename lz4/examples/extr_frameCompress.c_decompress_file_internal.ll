; ModuleID = '/home/carl/AnghaBench/lz4/examples/extr_frameCompress.c_decompress_file_internal.c'
source_filename = "/home/carl/AnghaBench/lz4/examples/extr_frameCompress.c_decompress_file_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [52 x i8] c"Decompress: not enough input or error reading file\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Decompression error: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"Decompress: Trailing data left in file after frame\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*, i8*, i64, i64, i64, i8*, i64)* @decompress_file_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decompress_file_internal(i32* %0, i32* %1, i32* %2, i8* %3, i64 %4, i64 %5, i64 %6, i8* %7, i64 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  store i32* %0, i32** %11, align 8
  store i32* %1, i32** %12, align 8
  store i32* %2, i32** %13, align 8
  store i8* %3, i8** %14, align 8
  store i64 %4, i64* %15, align 8
  store i64 %5, i64* %16, align 8
  store i64 %6, i64* %17, align 8
  store i8* %7, i8** %18, align 8
  store i64 %8, i64* %19, align 8
  store i32 1, i32* %20, align 4
  store i64 1, i64* %21, align 8
  %28 = load i32*, i32** %11, align 8
  %29 = icmp ne i32* %28, null
  %30 = zext i1 %29 to i32
  %31 = call i32 @assert(i32 %30)
  %32 = load i32*, i32** %12, align 8
  %33 = icmp ne i32* %32, null
  %34 = zext i1 %33 to i32
  %35 = call i32 @assert(i32 %34)
  %36 = load i32*, i32** %13, align 8
  %37 = icmp ne i32* %36, null
  %38 = zext i1 %37 to i32
  %39 = call i32 @assert(i32 %38)
  %40 = load i8*, i8** %14, align 8
  %41 = icmp ne i8* %40, null
  %42 = zext i1 %41 to i32
  %43 = call i32 @assert(i32 %42)
  %44 = load i64, i64* %15, align 8
  %45 = icmp ugt i64 %44, 0
  %46 = zext i1 %45 to i32
  %47 = call i32 @assert(i32 %46)
  %48 = load i64, i64* %16, align 8
  %49 = load i64, i64* %15, align 8
  %50 = icmp ule i64 %48, %49
  %51 = zext i1 %50 to i32
  %52 = call i32 @assert(i32 %51)
  %53 = load i64, i64* %17, align 8
  %54 = load i64, i64* %16, align 8
  %55 = icmp ule i64 %53, %54
  %56 = zext i1 %55 to i32
  %57 = call i32 @assert(i32 %56)
  %58 = load i8*, i8** %18, align 8
  %59 = icmp ne i8* %58, null
  %60 = zext i1 %59 to i32
  %61 = call i32 @assert(i32 %60)
  %62 = load i64, i64* %19, align 8
  %63 = icmp ugt i64 %62, 0
  %64 = zext i1 %63 to i32
  %65 = call i32 @assert(i32 %64)
  br label %66

66:                                               ; preds = %147, %9
  %67 = load i64, i64* %21, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %148

69:                                               ; preds = %66
  %70 = load i32, i32* %20, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %69
  %73 = load i64, i64* %16, align 8
  br label %80

74:                                               ; preds = %69
  %75 = load i8*, i8** %14, align 8
  %76 = load i64, i64* %15, align 8
  %77 = trunc i64 %76 to i32
  %78 = load i32*, i32** %11, align 8
  %79 = call i64 @fread(i8* %75, i32 1, i32 %77, i32* %78)
  br label %80

80:                                               ; preds = %74, %72
  %81 = phi i64 [ %73, %72 ], [ %79, %74 ]
  store i64 %81, i64* %22, align 8
  store i32 0, i32* %20, align 4
  %82 = load i8*, i8** %14, align 8
  %83 = load i64, i64* %17, align 8
  %84 = getelementptr inbounds i8, i8* %82, i64 %83
  store i8* %84, i8** %23, align 8
  store i64 0, i64* %17, align 8
  %85 = load i8*, i8** %23, align 8
  %86 = load i64, i64* %22, align 8
  %87 = getelementptr inbounds i8, i8* %85, i64 %86
  store i8* %87, i8** %24, align 8
  %88 = load i64, i64* %22, align 8
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %94, label %90

90:                                               ; preds = %80
  %91 = load i32*, i32** %11, align 8
  %92 = call i64 @ferror(i32* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %90, %80
  %95 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %10, align 4
  br label %161

96:                                               ; preds = %90
  br label %97

97:                                               ; preds = %132, %96
  %98 = load i8*, i8** %23, align 8
  %99 = load i8*, i8** %24, align 8
  %100 = icmp ult i8* %98, %99
  br i1 %100, label %101, label %104

101:                                              ; preds = %97
  %102 = load i64, i64* %21, align 8
  %103 = icmp ne i64 %102, 0
  br label %104

104:                                              ; preds = %101, %97
  %105 = phi i1 [ false, %97 ], [ %103, %101 ]
  br i1 %105, label %106, label %136

106:                                              ; preds = %104
  %107 = load i64, i64* %19, align 8
  store i64 %107, i64* %25, align 8
  %108 = load i8*, i8** %24, align 8
  %109 = load i8*, i8** %23, align 8
  %110 = ptrtoint i8* %108 to i64
  %111 = ptrtoint i8* %109 to i64
  %112 = sub i64 %110, %111
  store i64 %112, i64* %26, align 8
  %113 = load i32*, i32** %13, align 8
  %114 = load i8*, i8** %18, align 8
  %115 = load i8*, i8** %23, align 8
  %116 = call i64 @LZ4F_decompress(i32* %113, i8* %114, i64* %25, i8* %115, i64* %26, i32* null)
  store i64 %116, i64* %21, align 8
  %117 = load i64, i64* %21, align 8
  %118 = call i64 @LZ4F_isError(i64 %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %106
  %121 = load i64, i64* %21, align 8
  %122 = call i8* @LZ4F_getErrorName(i64 %121)
  %123 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8* %122)
  store i32 1, i32* %10, align 4
  br label %161

124:                                              ; preds = %106
  %125 = load i64, i64* %25, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %132

127:                                              ; preds = %124
  %128 = load i8*, i8** %18, align 8
  %129 = load i64, i64* %25, align 8
  %130 = load i32*, i32** %12, align 8
  %131 = call i32 @safe_fwrite(i8* %128, i32 1, i64 %129, i32* %130)
  br label %132

132:                                              ; preds = %127, %124
  %133 = load i8*, i8** %23, align 8
  %134 = load i64, i64* %26, align 8
  %135 = getelementptr inbounds i8, i8* %133, i64 %134
  store i8* %135, i8** %23, align 8
  br label %97

136:                                              ; preds = %104
  %137 = load i8*, i8** %23, align 8
  %138 = load i8*, i8** %24, align 8
  %139 = icmp ule i8* %137, %138
  %140 = zext i1 %139 to i32
  %141 = call i32 @assert(i32 %140)
  %142 = load i8*, i8** %23, align 8
  %143 = load i8*, i8** %24, align 8
  %144 = icmp ult i8* %142, %143
  br i1 %144, label %145, label %147

145:                                              ; preds = %136
  %146 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %10, align 4
  br label %161

147:                                              ; preds = %136
  br label %66

148:                                              ; preds = %66
  %149 = load i8*, i8** %14, align 8
  %150 = load i32*, i32** %11, align 8
  %151 = call i64 @fread(i8* %149, i32 1, i32 1, i32* %150)
  store i64 %151, i64* %27, align 8
  %152 = load i64, i64* %27, align 8
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %158, label %154

154:                                              ; preds = %148
  %155 = load i32*, i32** %11, align 8
  %156 = call i32 @feof(i32* %155)
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %160, label %158

158:                                              ; preds = %154, %148
  %159 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %10, align 4
  br label %161

160:                                              ; preds = %154
  store i32 0, i32* %10, align 4
  br label %161

161:                                              ; preds = %160, %158, %145, %120, %94
  %162 = load i32, i32* %10, align 4
  ret i32 %162
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @fread(i8*, i32, i32, i32*) #1

declare dso_local i64 @ferror(i32*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @LZ4F_decompress(i32*, i8*, i64*, i8*, i64*, i32*) #1

declare dso_local i64 @LZ4F_isError(i64) #1

declare dso_local i8* @LZ4F_getErrorName(i64) #1

declare dso_local i32 @safe_fwrite(i8*, i32, i64, i32*) #1

declare dso_local i32 @feof(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
