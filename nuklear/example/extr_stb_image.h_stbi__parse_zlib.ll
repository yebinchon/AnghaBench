; ModuleID = '/home/carl/AnghaBench/nuklear/example/extr_stb_image.h_stbi__parse_zlib.c'
source_filename = "/home/carl/AnghaBench/nuklear/example/extr_stb_image.h_stbi__parse_zlib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i64, i64 }

@stbi__zdefault_distance = common dso_local global i32* null, align 8
@stbi__zdefault_length = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32)* @stbi__parse_zlib to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stbi__parse_zlib(%struct.TYPE_8__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %2
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %12 = call i32 @stbi__parse_zlib_header(%struct.TYPE_8__* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  store i32 0, i32* %3, align 4
  br label %82

15:                                               ; preds = %10
  br label %16

16:                                               ; preds = %15, %2
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 3
  store i64 0, i64* %18, align 8
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 2
  store i64 0, i64* %20, align 8
  br label %21

21:                                               ; preds = %77, %16
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %23 = call i32 @stbi__zreceive(%struct.TYPE_8__* %22, i32 1)
  store i32 %23, i32* %6, align 4
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %25 = call i32 @stbi__zreceive(%struct.TYPE_8__* %24, i32 2)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %21
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %30 = call i32 @stbi__parse_uncomperssed_block(%struct.TYPE_8__* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %28
  store i32 0, i32* %3, align 4
  br label %82

33:                                               ; preds = %28
  br label %76

34:                                               ; preds = %21
  %35 = load i32, i32* %7, align 4
  %36 = icmp eq i32 %35, 3
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  store i32 0, i32* %3, align 4
  br label %82

38:                                               ; preds = %34
  %39 = load i32, i32* %7, align 4
  %40 = icmp eq i32 %39, 1
  br i1 %40, label %41, label %63

41:                                               ; preds = %38
  %42 = load i32*, i32** @stbi__zdefault_distance, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 31
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %41
  %47 = call i32 (...) @stbi__init_zdefaults()
  br label %48

48:                                               ; preds = %46, %41
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 1
  %51 = load i32*, i32** @stbi__zdefault_length, align 8
  %52 = call i32 @stbi__zbuild_huffman(i32* %50, i32* %51, i32 288)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %48
  store i32 0, i32* %3, align 4
  br label %82

55:                                               ; preds = %48
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = load i32*, i32** @stbi__zdefault_distance, align 8
  %59 = call i32 @stbi__zbuild_huffman(i32* %57, i32* %58, i32 32)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %55
  store i32 0, i32* %3, align 4
  br label %82

62:                                               ; preds = %55
  br label %69

63:                                               ; preds = %38
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %65 = call i32 @stbi__compute_huffman_codes(%struct.TYPE_8__* %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %63
  store i32 0, i32* %3, align 4
  br label %82

68:                                               ; preds = %63
  br label %69

69:                                               ; preds = %68, %62
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %71 = call i32 @stbi__parse_huffman_block(%struct.TYPE_8__* %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %69
  store i32 0, i32* %3, align 4
  br label %82

74:                                               ; preds = %69
  br label %75

75:                                               ; preds = %74
  br label %76

76:                                               ; preds = %75, %33
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %6, align 4
  %79 = icmp ne i32 %78, 0
  %80 = xor i1 %79, true
  br i1 %80, label %21, label %81

81:                                               ; preds = %77
  store i32 1, i32* %3, align 4
  br label %82

82:                                               ; preds = %81, %73, %67, %61, %54, %37, %32, %14
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local i32 @stbi__parse_zlib_header(%struct.TYPE_8__*) #1

declare dso_local i32 @stbi__zreceive(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @stbi__parse_uncomperssed_block(%struct.TYPE_8__*) #1

declare dso_local i32 @stbi__init_zdefaults(...) #1

declare dso_local i32 @stbi__zbuild_huffman(i32*, i32*, i32) #1

declare dso_local i32 @stbi__compute_huffman_codes(%struct.TYPE_8__*) #1

declare dso_local i32 @stbi__parse_huffman_block(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
