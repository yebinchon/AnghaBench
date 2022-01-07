; ModuleID = '/home/carl/AnghaBench/php-src/ext/standard/extr_image.c_php_handle_jpc.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/standard/extr_image.c_php_handle_jpc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfxinfo = type { i32, i32, i8*, i8* }

@JPEG2000_MARKER_SIZ = common dso_local global i8 0, align 1
@E_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [69 x i8] c"JPEG2000 codestream corrupt(Expected SIZ marker not found after SOC)\00", align 1
@SEEK_CUR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.gfxinfo* (i32*)* @php_handle_jpc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.gfxinfo* @php_handle_jpc(i32* %0) #0 {
  %2 = alloca %struct.gfxinfo*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.gfxinfo*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.gfxinfo* null, %struct.gfxinfo** %4, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = call i8* @php_stream_getc(i32* %9)
  %11 = ptrtoint i8* %10 to i8
  store i8 %11, i8* %7, align 1
  %12 = load i8, i8* %7, align 1
  %13 = zext i8 %12 to i32
  %14 = load i8, i8* @JPEG2000_MARKER_SIZ, align 1
  %15 = zext i8 %14 to i32
  %16 = icmp ne i32 %13, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load i32, i32* @E_WARNING, align 4
  %19 = call i32 @php_error_docref(i32* null, i32 %18, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0))
  store %struct.gfxinfo* null, %struct.gfxinfo** %2, align 8
  br label %94

20:                                               ; preds = %1
  %21 = call i64 @ecalloc(i32 1, i32 24)
  %22 = inttoptr i64 %21 to %struct.gfxinfo*
  store %struct.gfxinfo* %22, %struct.gfxinfo** %4, align 8
  %23 = load i32*, i32** %3, align 8
  %24 = call i32 @php_read2(i32* %23)
  %25 = load i32*, i32** %3, align 8
  %26 = call i32 @php_read2(i32* %25)
  %27 = load i32*, i32** %3, align 8
  %28 = call i8* @php_read4(i32* %27)
  %29 = load %struct.gfxinfo*, %struct.gfxinfo** %4, align 8
  %30 = getelementptr inbounds %struct.gfxinfo, %struct.gfxinfo* %29, i32 0, i32 3
  store i8* %28, i8** %30, align 8
  %31 = load i32*, i32** %3, align 8
  %32 = call i8* @php_read4(i32* %31)
  %33 = load %struct.gfxinfo*, %struct.gfxinfo** %4, align 8
  %34 = getelementptr inbounds %struct.gfxinfo, %struct.gfxinfo* %33, i32 0, i32 2
  store i8* %32, i8** %34, align 8
  %35 = load i32*, i32** %3, align 8
  %36 = load i32, i32* @SEEK_CUR, align 4
  %37 = call i64 @php_stream_seek(i32* %35, i32 24, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %20
  %40 = load %struct.gfxinfo*, %struct.gfxinfo** %4, align 8
  %41 = call i32 @efree(%struct.gfxinfo* %40)
  store %struct.gfxinfo* null, %struct.gfxinfo** %2, align 8
  br label %94

42:                                               ; preds = %20
  %43 = load i32*, i32** %3, align 8
  %44 = call i32 @php_read2(i32* %43)
  %45 = load %struct.gfxinfo*, %struct.gfxinfo** %4, align 8
  %46 = getelementptr inbounds %struct.gfxinfo, %struct.gfxinfo* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  %47 = load %struct.gfxinfo*, %struct.gfxinfo** %4, align 8
  %48 = getelementptr inbounds %struct.gfxinfo, %struct.gfxinfo* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %42
  %52 = load i32*, i32** %3, align 8
  %53 = call i64 @php_stream_eof(i32* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %60, label %55

55:                                               ; preds = %51, %42
  %56 = load %struct.gfxinfo*, %struct.gfxinfo** %4, align 8
  %57 = getelementptr inbounds %struct.gfxinfo, %struct.gfxinfo* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp sgt i32 %58, 256
  br i1 %59, label %60, label %63

60:                                               ; preds = %55, %51
  %61 = load %struct.gfxinfo*, %struct.gfxinfo** %4, align 8
  %62 = call i32 @efree(%struct.gfxinfo* %61)
  store %struct.gfxinfo* null, %struct.gfxinfo** %2, align 8
  br label %94

63:                                               ; preds = %55
  store i32 0, i32* %5, align 4
  store i32 0, i32* %8, align 4
  br label %64

64:                                               ; preds = %86, %63
  %65 = load i32, i32* %8, align 4
  %66 = load %struct.gfxinfo*, %struct.gfxinfo** %4, align 8
  %67 = getelementptr inbounds %struct.gfxinfo, %struct.gfxinfo* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp ult i32 %65, %68
  br i1 %69, label %70, label %89

70:                                               ; preds = %64
  %71 = load i32*, i32** %3, align 8
  %72 = call i8* @php_stream_getc(i32* %71)
  %73 = ptrtoint i8* %72 to i32
  store i32 %73, i32* %6, align 4
  %74 = load i32, i32* %6, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %6, align 4
  %76 = load i32, i32* %6, align 4
  %77 = load i32, i32* %5, align 4
  %78 = icmp sgt i32 %76, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %70
  %80 = load i32, i32* %6, align 4
  store i32 %80, i32* %5, align 4
  br label %81

81:                                               ; preds = %79, %70
  %82 = load i32*, i32** %3, align 8
  %83 = call i8* @php_stream_getc(i32* %82)
  %84 = load i32*, i32** %3, align 8
  %85 = call i8* @php_stream_getc(i32* %84)
  br label %86

86:                                               ; preds = %81
  %87 = load i32, i32* %8, align 4
  %88 = add i32 %87, 1
  store i32 %88, i32* %8, align 4
  br label %64

89:                                               ; preds = %64
  %90 = load i32, i32* %5, align 4
  %91 = load %struct.gfxinfo*, %struct.gfxinfo** %4, align 8
  %92 = getelementptr inbounds %struct.gfxinfo, %struct.gfxinfo* %91, i32 0, i32 1
  store i32 %90, i32* %92, align 4
  %93 = load %struct.gfxinfo*, %struct.gfxinfo** %4, align 8
  store %struct.gfxinfo* %93, %struct.gfxinfo** %2, align 8
  br label %94

94:                                               ; preds = %89, %60, %39, %17
  %95 = load %struct.gfxinfo*, %struct.gfxinfo** %2, align 8
  ret %struct.gfxinfo* %95
}

declare dso_local i8* @php_stream_getc(i32*) #1

declare dso_local i32 @php_error_docref(i32*, i32, i8*) #1

declare dso_local i64 @ecalloc(i32, i32) #1

declare dso_local i32 @php_read2(i32*) #1

declare dso_local i8* @php_read4(i32*) #1

declare dso_local i64 @php_stream_seek(i32*, i32, i32) #1

declare dso_local i32 @efree(%struct.gfxinfo*) #1

declare dso_local i64 @php_stream_eof(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
