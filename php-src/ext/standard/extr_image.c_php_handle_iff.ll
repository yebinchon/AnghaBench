; ModuleID = '/home/carl/AnghaBench/php-src/ext/standard/extr_image.c_php_handle_iff.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/standard/extr_image.c_php_handle_iff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfxinfo = type { i16, i16, i16, i64 }

@.str = private unnamed_addr constant [5 x i8] c"ILBM\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"PBM \00", align 1
@SEEK_CUR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.gfxinfo* (i32*)* @php_handle_iff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.gfxinfo* @php_handle_iff(i32* %0) #0 {
  %2 = alloca %struct.gfxinfo*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.gfxinfo*, align 8
  %5 = alloca [10 x i8], align 1
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i16, align 2
  %9 = alloca i16, align 2
  %10 = alloca i16, align 2
  store i32* %0, i32** %3, align 8
  %11 = load i32*, i32** %3, align 8
  %12 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i64 0, i64 0
  %13 = call i32 @php_stream_read(i32* %11, i8* %12, i32 8)
  %14 = icmp ne i32 %13, 8
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store %struct.gfxinfo* null, %struct.gfxinfo** %2, align 8
  br label %116

16:                                               ; preds = %1
  %17 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i64 0, i64 0
  %18 = getelementptr inbounds i8, i8* %17, i64 4
  %19 = call i64 @strncmp(i8* %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %16
  %22 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i64 0, i64 0
  %23 = getelementptr inbounds i8, i8* %22, i64 4
  %24 = call i64 @strncmp(i8* %23, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  store %struct.gfxinfo* null, %struct.gfxinfo** %2, align 8
  br label %116

27:                                               ; preds = %21, %16
  br label %28

28:                                               ; preds = %115, %27
  %29 = load i32*, i32** %3, align 8
  %30 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i64 0, i64 0
  %31 = call i32 @php_stream_read(i32* %29, i8* %30, i32 8)
  %32 = icmp ne i32 %31, 8
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  store %struct.gfxinfo* null, %struct.gfxinfo** %2, align 8
  br label %116

34:                                               ; preds = %28
  %35 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i64 0, i64 0
  %36 = getelementptr inbounds i8, i8* %35, i64 0
  %37 = call i32 @php_ifd_get32s(i8* %36, i32 1)
  store i32 %37, i32* %6, align 4
  %38 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i64 0, i64 0
  %39 = getelementptr inbounds i8, i8* %38, i64 4
  %40 = call i32 @php_ifd_get32s(i8* %39, i32 1)
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %34
  store %struct.gfxinfo* null, %struct.gfxinfo** %2, align 8
  br label %116

44:                                               ; preds = %34
  %45 = load i32, i32* %7, align 4
  %46 = and i32 %45, 1
  %47 = icmp eq i32 %46, 1
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = load i32, i32* %7, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %7, align 4
  br label %51

51:                                               ; preds = %48, %44
  %52 = load i32, i32* %6, align 4
  %53 = icmp eq i32 %52, 1112361028
  br i1 %53, label %54, label %106

54:                                               ; preds = %51
  %55 = load i32, i32* %7, align 4
  %56 = icmp slt i32 %55, 9
  br i1 %56, label %62, label %57

57:                                               ; preds = %54
  %58 = load i32*, i32** %3, align 8
  %59 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i64 0, i64 0
  %60 = call i32 @php_stream_read(i32* %58, i8* %59, i32 9)
  %61 = icmp ne i32 %60, 9
  br i1 %61, label %62, label %63

62:                                               ; preds = %57, %54
  store %struct.gfxinfo* null, %struct.gfxinfo** %2, align 8
  br label %116

63:                                               ; preds = %57
  %64 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i64 0, i64 0
  %65 = getelementptr inbounds i8, i8* %64, i64 0
  %66 = call signext i16 @php_ifd_get16s(i8* %65, i32 1)
  store i16 %66, i16* %8, align 2
  %67 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i64 0, i64 0
  %68 = getelementptr inbounds i8, i8* %67, i64 2
  %69 = call signext i16 @php_ifd_get16s(i8* %68, i32 1)
  store i16 %69, i16* %9, align 2
  %70 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i64 0, i64 8
  %71 = load i8, i8* %70, align 1
  %72 = zext i8 %71 to i32
  %73 = and i32 %72, 255
  %74 = trunc i32 %73 to i16
  store i16 %74, i16* %10, align 2
  %75 = load i16, i16* %8, align 2
  %76 = sext i16 %75 to i32
  %77 = icmp sgt i32 %76, 0
  br i1 %77, label %78, label %105

78:                                               ; preds = %63
  %79 = load i16, i16* %9, align 2
  %80 = sext i16 %79 to i32
  %81 = icmp sgt i32 %80, 0
  br i1 %81, label %82, label %105

82:                                               ; preds = %78
  %83 = load i16, i16* %10, align 2
  %84 = sext i16 %83 to i32
  %85 = icmp sgt i32 %84, 0
  br i1 %85, label %86, label %105

86:                                               ; preds = %82
  %87 = load i16, i16* %10, align 2
  %88 = sext i16 %87 to i32
  %89 = icmp slt i32 %88, 33
  br i1 %89, label %90, label %105

90:                                               ; preds = %86
  %91 = call i64 @ecalloc(i32 1, i32 16)
  %92 = inttoptr i64 %91 to %struct.gfxinfo*
  store %struct.gfxinfo* %92, %struct.gfxinfo** %4, align 8
  %93 = load i16, i16* %8, align 2
  %94 = load %struct.gfxinfo*, %struct.gfxinfo** %4, align 8
  %95 = getelementptr inbounds %struct.gfxinfo, %struct.gfxinfo* %94, i32 0, i32 0
  store i16 %93, i16* %95, align 8
  %96 = load i16, i16* %9, align 2
  %97 = load %struct.gfxinfo*, %struct.gfxinfo** %4, align 8
  %98 = getelementptr inbounds %struct.gfxinfo, %struct.gfxinfo* %97, i32 0, i32 1
  store i16 %96, i16* %98, align 2
  %99 = load i16, i16* %10, align 2
  %100 = load %struct.gfxinfo*, %struct.gfxinfo** %4, align 8
  %101 = getelementptr inbounds %struct.gfxinfo, %struct.gfxinfo* %100, i32 0, i32 2
  store i16 %99, i16* %101, align 4
  %102 = load %struct.gfxinfo*, %struct.gfxinfo** %4, align 8
  %103 = getelementptr inbounds %struct.gfxinfo, %struct.gfxinfo* %102, i32 0, i32 3
  store i64 0, i64* %103, align 8
  %104 = load %struct.gfxinfo*, %struct.gfxinfo** %4, align 8
  store %struct.gfxinfo* %104, %struct.gfxinfo** %2, align 8
  br label %116

105:                                              ; preds = %86, %82, %78, %63
  br label %114

106:                                              ; preds = %51
  %107 = load i32*, i32** %3, align 8
  %108 = load i32, i32* %7, align 4
  %109 = load i32, i32* @SEEK_CUR, align 4
  %110 = call i64 @php_stream_seek(i32* %107, i32 %108, i32 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %106
  store %struct.gfxinfo* null, %struct.gfxinfo** %2, align 8
  br label %116

113:                                              ; preds = %106
  br label %114

114:                                              ; preds = %113, %105
  br label %115

115:                                              ; preds = %114
  br i1 true, label %28, label %116

116:                                              ; preds = %15, %26, %33, %43, %62, %90, %112, %115
  %117 = load %struct.gfxinfo*, %struct.gfxinfo** %2, align 8
  ret %struct.gfxinfo* %117
}

declare dso_local i32 @php_stream_read(i32*, i8*, i32) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @php_ifd_get32s(i8*, i32) #1

declare dso_local signext i16 @php_ifd_get16s(i8*, i32) #1

declare dso_local i64 @ecalloc(i32, i32) #1

declare dso_local i64 @php_stream_seek(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
