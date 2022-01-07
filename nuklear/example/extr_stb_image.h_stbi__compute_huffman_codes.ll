; ModuleID = '/home/carl/AnghaBench/nuklear/example/extr_stb_image.h_stbi__compute_huffman_codes.c'
source_filename = "/home/carl/AnghaBench/nuklear/example/extr_stb_image.h_stbi__compute_huffman_codes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }

@stbi__compute_huffman_codes.length_dezigzag = internal global [19 x i32] [i32 16, i32 17, i32 18, i32 0, i32 8, i32 7, i32 9, i32 6, i32 10, i32 5, i32 11, i32 4, i32 12, i32 3, i32 13, i32 2, i32 14, i32 1, i32 15], align 16
@.str = private unnamed_addr constant [16 x i8] c"bad codelengths\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"Corrupt PNG\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*)* @stbi__compute_huffman_codes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stbi__compute_huffman_codes(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [455 x i32], align 16
  %6 = alloca [19 x i32], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %15 = call i32 @stbi__zreceive(%struct.TYPE_5__* %14, i32 5)
  %16 = add nsw i32 %15, 257
  store i32 %16, i32* %9, align 4
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %18 = call i32 @stbi__zreceive(%struct.TYPE_5__* %17, i32 5)
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %10, align 4
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %21 = call i32 @stbi__zreceive(%struct.TYPE_5__* %20, i32 4)
  %22 = add nsw i32 %21, 4
  store i32 %22, i32* %11, align 4
  %23 = getelementptr inbounds [19 x i32], [19 x i32]* %6, i64 0, i64 0
  %24 = call i32 @memset(i32* %23, i32 0, i32 76)
  store i32 0, i32* %7, align 4
  br label %25

25:                                               ; preds = %39, %1
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* %11, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %42

29:                                               ; preds = %25
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %31 = call i32 @stbi__zreceive(%struct.TYPE_5__* %30, i32 3)
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* %12, align 4
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [19 x i32], [19 x i32]* @stbi__compute_huffman_codes.length_dezigzag, i64 0, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [19 x i32], [19 x i32]* %6, i64 0, i64 %37
  store i32 %32, i32* %38, align 4
  br label %39

39:                                               ; preds = %29
  %40 = load i32, i32* %7, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %7, align 4
  br label %25

42:                                               ; preds = %25
  %43 = getelementptr inbounds [19 x i32], [19 x i32]* %6, i64 0, i64 0
  %44 = call i32 @stbi__zbuild_huffman(i32* %4, i32* %43, i32 19)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %42
  store i32 0, i32* %2, align 4
  br label %158

47:                                               ; preds = %42
  store i32 0, i32* %8, align 4
  br label %48

48:                                               ; preds = %129, %47
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* %10, align 4
  %52 = add nsw i32 %50, %51
  %53 = icmp slt i32 %49, %52
  br i1 %53, label %54, label %130

54:                                               ; preds = %48
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %56 = call i32 @stbi__zhuffman_decode(%struct.TYPE_5__* %55, i32* %4)
  store i32 %56, i32* %13, align 4
  %57 = load i32, i32* %13, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %54
  %60 = load i32, i32* %13, align 4
  %61 = icmp sge i32 %60, 19
  br i1 %61, label %62, label %64

62:                                               ; preds = %59, %54
  %63 = call i32 @stbi__err(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  store i32 %63, i32* %2, align 4
  br label %158

64:                                               ; preds = %59
  %65 = load i32, i32* %13, align 4
  %66 = icmp slt i32 %65, 16
  br i1 %66, label %67, label %73

67:                                               ; preds = %64
  %68 = load i32, i32* %13, align 4
  %69 = load i32, i32* %8, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %8, align 4
  %71 = sext i32 %69 to i64
  %72 = getelementptr inbounds [455 x i32], [455 x i32]* %5, i64 0, i64 %71
  store i32 %68, i32* %72, align 4
  br label %129

73:                                               ; preds = %64
  %74 = load i32, i32* %13, align 4
  %75 = icmp eq i32 %74, 16
  br i1 %75, label %76, label %94

76:                                               ; preds = %73
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %78 = call i32 @stbi__zreceive(%struct.TYPE_5__* %77, i32 2)
  %79 = add nsw i32 %78, 3
  store i32 %79, i32* %13, align 4
  %80 = getelementptr inbounds [455 x i32], [455 x i32]* %5, i64 0, i64 0
  %81 = load i32, i32* %8, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = load i32, i32* %8, align 4
  %85 = sub nsw i32 %84, 1
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds [455 x i32], [455 x i32]* %5, i64 0, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* %13, align 4
  %90 = call i32 @memset(i32* %83, i32 %88, i32 %89)
  %91 = load i32, i32* %13, align 4
  %92 = load i32, i32* %8, align 4
  %93 = add nsw i32 %92, %91
  store i32 %93, i32* %8, align 4
  br label %128

94:                                               ; preds = %73
  %95 = load i32, i32* %13, align 4
  %96 = icmp eq i32 %95, 17
  br i1 %96, label %97, label %110

97:                                               ; preds = %94
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %99 = call i32 @stbi__zreceive(%struct.TYPE_5__* %98, i32 3)
  %100 = add nsw i32 %99, 3
  store i32 %100, i32* %13, align 4
  %101 = getelementptr inbounds [455 x i32], [455 x i32]* %5, i64 0, i64 0
  %102 = load i32, i32* %8, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  %105 = load i32, i32* %13, align 4
  %106 = call i32 @memset(i32* %104, i32 0, i32 %105)
  %107 = load i32, i32* %13, align 4
  %108 = load i32, i32* %8, align 4
  %109 = add nsw i32 %108, %107
  store i32 %109, i32* %8, align 4
  br label %127

110:                                              ; preds = %94
  %111 = load i32, i32* %13, align 4
  %112 = icmp eq i32 %111, 18
  %113 = zext i1 %112 to i32
  %114 = call i32 @STBI_ASSERT(i32 %113)
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %116 = call i32 @stbi__zreceive(%struct.TYPE_5__* %115, i32 7)
  %117 = add nsw i32 %116, 11
  store i32 %117, i32* %13, align 4
  %118 = getelementptr inbounds [455 x i32], [455 x i32]* %5, i64 0, i64 0
  %119 = load i32, i32* %8, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %118, i64 %120
  %122 = load i32, i32* %13, align 4
  %123 = call i32 @memset(i32* %121, i32 0, i32 %122)
  %124 = load i32, i32* %13, align 4
  %125 = load i32, i32* %8, align 4
  %126 = add nsw i32 %125, %124
  store i32 %126, i32* %8, align 4
  br label %127

127:                                              ; preds = %110, %97
  br label %128

128:                                              ; preds = %127, %76
  br label %129

129:                                              ; preds = %128, %67
  br label %48

130:                                              ; preds = %48
  %131 = load i32, i32* %8, align 4
  %132 = load i32, i32* %9, align 4
  %133 = load i32, i32* %10, align 4
  %134 = add nsw i32 %132, %133
  %135 = icmp ne i32 %131, %134
  br i1 %135, label %136, label %138

136:                                              ; preds = %130
  %137 = call i32 @stbi__err(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  store i32 %137, i32* %2, align 4
  br label %158

138:                                              ; preds = %130
  %139 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 1
  %141 = getelementptr inbounds [455 x i32], [455 x i32]* %5, i64 0, i64 0
  %142 = load i32, i32* %9, align 4
  %143 = call i32 @stbi__zbuild_huffman(i32* %140, i32* %141, i32 %142)
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %146, label %145

145:                                              ; preds = %138
  store i32 0, i32* %2, align 4
  br label %158

146:                                              ; preds = %138
  %147 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %147, i32 0, i32 0
  %149 = getelementptr inbounds [455 x i32], [455 x i32]* %5, i64 0, i64 0
  %150 = load i32, i32* %9, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %149, i64 %151
  %153 = load i32, i32* %10, align 4
  %154 = call i32 @stbi__zbuild_huffman(i32* %148, i32* %152, i32 %153)
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %157, label %156

156:                                              ; preds = %146
  store i32 0, i32* %2, align 4
  br label %158

157:                                              ; preds = %146
  store i32 1, i32* %2, align 4
  br label %158

158:                                              ; preds = %157, %156, %145, %136, %62, %46
  %159 = load i32, i32* %2, align 4
  ret i32 %159
}

declare dso_local i32 @stbi__zreceive(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @stbi__zbuild_huffman(i32*, i32*, i32) #1

declare dso_local i32 @stbi__zhuffman_decode(%struct.TYPE_5__*, i32*) #1

declare dso_local i32 @stbi__err(i8*, i8*) #1

declare dso_local i32 @STBI_ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
