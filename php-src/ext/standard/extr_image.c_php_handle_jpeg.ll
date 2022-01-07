; ModuleID = '/home/carl/AnghaBench/php-src/ext/standard/extr_image.c_php_handle_jpeg.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/standard/extr_image.c_php_handle_jpeg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfxinfo = type { i8*, i8*, i8*, i8* }

@M_PSEUDO = common dso_local global i32 0, align 4
@SEEK_CUR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.gfxinfo* (i32*, i32*)* @php_handle_jpeg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.gfxinfo* @php_handle_jpeg(i32* %0, i32* %1) #0 {
  %3 = alloca %struct.gfxinfo*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.gfxinfo*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i16, align 2
  %9 = alloca i16, align 2
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.gfxinfo* null, %struct.gfxinfo** %6, align 8
  %10 = load i32, i32* @M_PSEUDO, align 4
  store i32 %10, i32* %7, align 4
  store i16 1, i16* %9, align 2
  br label %11

11:                                               ; preds = %99, %2
  %12 = load i32*, i32** %4, align 8
  %13 = load i32, i32* %7, align 4
  %14 = load i16, i16* %9, align 2
  %15 = call i32 @php_next_marker(i32* %12, i32 %13, i16 zeroext %14)
  store i32 %15, i32* %7, align 4
  store i16 0, i16* %9, align 2
  %16 = load i32, i32* %7, align 4
  switch i32 %16, label %92 [
    i32 141, label %17
    i32 140, label %17
    i32 134, label %17
    i32 133, label %17
    i32 132, label %17
    i32 131, label %17
    i32 130, label %17
    i32 129, label %17
    i32 139, label %17
    i32 138, label %17
    i32 137, label %17
    i32 136, label %17
    i32 135, label %17
    i32 158, label %70
    i32 157, label %70
    i32 150, label %70
    i32 149, label %70
    i32 148, label %70
    i32 147, label %70
    i32 146, label %70
    i32 145, label %70
    i32 144, label %70
    i32 143, label %70
    i32 156, label %70
    i32 155, label %70
    i32 154, label %70
    i32 153, label %70
    i32 152, label %70
    i32 151, label %70
    i32 128, label %90
    i32 142, label %90
  ]

17:                                               ; preds = %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11
  %18 = load %struct.gfxinfo*, %struct.gfxinfo** %6, align 8
  %19 = icmp eq %struct.gfxinfo* %18, null
  br i1 %19, label %20, label %62

20:                                               ; preds = %17
  %21 = call i64 @ecalloc(i32 1, i32 32)
  %22 = inttoptr i64 %21 to %struct.gfxinfo*
  store %struct.gfxinfo* %22, %struct.gfxinfo** %6, align 8
  %23 = load i32*, i32** %4, align 8
  %24 = call i8* @php_read2(i32* %23)
  %25 = ptrtoint i8* %24 to i16
  store i16 %25, i16* %8, align 2
  %26 = load i32*, i32** %4, align 8
  %27 = call i8* @php_stream_getc(i32* %26)
  %28 = load %struct.gfxinfo*, %struct.gfxinfo** %6, align 8
  %29 = getelementptr inbounds %struct.gfxinfo, %struct.gfxinfo* %28, i32 0, i32 3
  store i8* %27, i8** %29, align 8
  %30 = load i32*, i32** %4, align 8
  %31 = call i8* @php_read2(i32* %30)
  %32 = load %struct.gfxinfo*, %struct.gfxinfo** %6, align 8
  %33 = getelementptr inbounds %struct.gfxinfo, %struct.gfxinfo* %32, i32 0, i32 2
  store i8* %31, i8** %33, align 8
  %34 = load i32*, i32** %4, align 8
  %35 = call i8* @php_read2(i32* %34)
  %36 = load %struct.gfxinfo*, %struct.gfxinfo** %6, align 8
  %37 = getelementptr inbounds %struct.gfxinfo, %struct.gfxinfo* %36, i32 0, i32 1
  store i8* %35, i8** %37, align 8
  %38 = load i32*, i32** %4, align 8
  %39 = call i8* @php_stream_getc(i32* %38)
  %40 = load %struct.gfxinfo*, %struct.gfxinfo** %6, align 8
  %41 = getelementptr inbounds %struct.gfxinfo, %struct.gfxinfo* %40, i32 0, i32 0
  store i8* %39, i8** %41, align 8
  %42 = load i32*, i32** %5, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %48

44:                                               ; preds = %20
  %45 = load i16, i16* %8, align 2
  %46 = zext i16 %45 to i32
  %47 = icmp slt i32 %46, 8
  br i1 %47, label %48, label %50

48:                                               ; preds = %44, %20
  %49 = load %struct.gfxinfo*, %struct.gfxinfo** %6, align 8
  store %struct.gfxinfo* %49, %struct.gfxinfo** %3, align 8
  br label %100

50:                                               ; preds = %44
  %51 = load i32*, i32** %4, align 8
  %52 = load i16, i16* %8, align 2
  %53 = zext i16 %52 to i32
  %54 = sub nsw i32 %53, 8
  %55 = trunc i32 %54 to i16
  %56 = load i32, i32* @SEEK_CUR, align 4
  %57 = call i32 @php_stream_seek(i32* %51, i16 zeroext %55, i32 %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %50
  %60 = load %struct.gfxinfo*, %struct.gfxinfo** %6, align 8
  store %struct.gfxinfo* %60, %struct.gfxinfo** %3, align 8
  br label %100

61:                                               ; preds = %50
  br label %69

62:                                               ; preds = %17
  %63 = load i32*, i32** %4, align 8
  %64 = call i32 @php_skip_variable(i32* %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %68, label %66

66:                                               ; preds = %62
  %67 = load %struct.gfxinfo*, %struct.gfxinfo** %6, align 8
  store %struct.gfxinfo* %67, %struct.gfxinfo** %3, align 8
  br label %100

68:                                               ; preds = %62
  br label %69

69:                                               ; preds = %68, %61
  br label %99

70:                                               ; preds = %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11
  %71 = load i32*, i32** %5, align 8
  %72 = icmp ne i32* %71, null
  br i1 %72, label %73, label %82

73:                                               ; preds = %70
  %74 = load i32*, i32** %4, align 8
  %75 = load i32, i32* %7, align 4
  %76 = load i32*, i32** %5, align 8
  %77 = call i32 @php_read_APP(i32* %74, i32 %75, i32* %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %81, label %79

79:                                               ; preds = %73
  %80 = load %struct.gfxinfo*, %struct.gfxinfo** %6, align 8
  store %struct.gfxinfo* %80, %struct.gfxinfo** %3, align 8
  br label %100

81:                                               ; preds = %73
  br label %89

82:                                               ; preds = %70
  %83 = load i32*, i32** %4, align 8
  %84 = call i32 @php_skip_variable(i32* %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %88, label %86

86:                                               ; preds = %82
  %87 = load %struct.gfxinfo*, %struct.gfxinfo** %6, align 8
  store %struct.gfxinfo* %87, %struct.gfxinfo** %3, align 8
  br label %100

88:                                               ; preds = %82
  br label %89

89:                                               ; preds = %88, %81
  br label %99

90:                                               ; preds = %11, %11
  %91 = load %struct.gfxinfo*, %struct.gfxinfo** %6, align 8
  store %struct.gfxinfo* %91, %struct.gfxinfo** %3, align 8
  br label %100

92:                                               ; preds = %11
  %93 = load i32*, i32** %4, align 8
  %94 = call i32 @php_skip_variable(i32* %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %98, label %96

96:                                               ; preds = %92
  %97 = load %struct.gfxinfo*, %struct.gfxinfo** %6, align 8
  store %struct.gfxinfo* %97, %struct.gfxinfo** %3, align 8
  br label %100

98:                                               ; preds = %92
  br label %99

99:                                               ; preds = %98, %89, %69
  br label %11

100:                                              ; preds = %96, %90, %86, %79, %66, %59, %48
  %101 = load %struct.gfxinfo*, %struct.gfxinfo** %3, align 8
  ret %struct.gfxinfo* %101
}

declare dso_local i32 @php_next_marker(i32*, i32, i16 zeroext) #1

declare dso_local i64 @ecalloc(i32, i32) #1

declare dso_local i8* @php_read2(i32*) #1

declare dso_local i8* @php_stream_getc(i32*) #1

declare dso_local i32 @php_stream_seek(i32*, i16 zeroext, i32) #1

declare dso_local i32 @php_skip_variable(i32*) #1

declare dso_local i32 @php_read_APP(i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
