; ModuleID = '/home/carl/AnghaBench/nuklear/example/extr_file_browser.c_media_init.c'
source_filename = "/home/carl/AnghaBench/nuklear/example/extr_file_browser.c_media_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.media = type { i8**, i8**, %struct.icons }
%struct.icons = type { i32, i32, i32, i32, i32, i32 }

@FILE_GROUP_DEFAULT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"default\00", align 1
@FILE_GROUP_TEXT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"textual\00", align 1
@FILE_GROUP_MUSIC = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [6 x i8] c"music\00", align 1
@FILE_GROUP_FONT = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [5 x i8] c"font\00", align 1
@FILE_GROUP_IMAGE = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [6 x i8] c"image\00", align 1
@FILE_GROUP_MOVIE = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [6 x i8] c"movie\00", align 1
@FILE_DEFAULT = common dso_local global i64 0, align 8
@FILE_TEXT = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [4 x i8] c"txt\00", align 1
@FILE_C_SOURCE = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@FILE_CPP_SOURCE = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [4 x i8] c"cpp\00", align 1
@FILE_HEADER = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [2 x i8] c"h\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"hpp\00", align 1
@FILE_CPP_HEADER = common dso_local global i64 0, align 8
@FILE_MP3 = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [4 x i8] c"mp3\00", align 1
@FILE_WAV = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [4 x i8] c"wav\00", align 1
@FILE_OGG = common dso_local global i64 0, align 8
@.str.13 = private unnamed_addr constant [4 x i8] c"ogg\00", align 1
@FILE_TTF = common dso_local global i64 0, align 8
@.str.14 = private unnamed_addr constant [4 x i8] c"ttf\00", align 1
@FILE_BMP = common dso_local global i64 0, align 8
@.str.15 = private unnamed_addr constant [4 x i8] c"bmp\00", align 1
@FILE_PNG = common dso_local global i64 0, align 8
@.str.16 = private unnamed_addr constant [4 x i8] c"png\00", align 1
@FILE_JPEG = common dso_local global i64 0, align 8
@.str.17 = private unnamed_addr constant [4 x i8] c"jpg\00", align 1
@FILE_PCX = common dso_local global i64 0, align 8
@.str.18 = private unnamed_addr constant [4 x i8] c"pcx\00", align 1
@FILE_TGA = common dso_local global i64 0, align 8
@.str.19 = private unnamed_addr constant [4 x i8] c"tga\00", align 1
@FILE_GIF = common dso_local global i64 0, align 8
@.str.20 = private unnamed_addr constant [4 x i8] c"gif\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.media*)* @media_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @media_init(%struct.media* %0) #0 {
  %2 = alloca %struct.media*, align 8
  %3 = alloca %struct.icons*, align 8
  store %struct.media* %0, %struct.media** %2, align 8
  %4 = load %struct.media*, %struct.media** %2, align 8
  %5 = getelementptr inbounds %struct.media, %struct.media* %4, i32 0, i32 2
  store %struct.icons* %5, %struct.icons** %3, align 8
  %6 = load i64, i64* @FILE_GROUP_DEFAULT, align 8
  %7 = load %struct.icons*, %struct.icons** %3, align 8
  %8 = getelementptr inbounds %struct.icons, %struct.icons* %7, i32 0, i32 5
  %9 = call i8* @FILE_GROUP(i64 %6, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32* %8)
  %10 = load %struct.media*, %struct.media** %2, align 8
  %11 = getelementptr inbounds %struct.media, %struct.media* %10, i32 0, i32 1
  %12 = load i8**, i8*** %11, align 8
  %13 = load i64, i64* @FILE_GROUP_DEFAULT, align 8
  %14 = getelementptr inbounds i8*, i8** %12, i64 %13
  store i8* %9, i8** %14, align 8
  %15 = load i64, i64* @FILE_GROUP_TEXT, align 8
  %16 = load %struct.icons*, %struct.icons** %3, align 8
  %17 = getelementptr inbounds %struct.icons, %struct.icons* %16, i32 0, i32 4
  %18 = call i8* @FILE_GROUP(i64 %15, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32* %17)
  %19 = load %struct.media*, %struct.media** %2, align 8
  %20 = getelementptr inbounds %struct.media, %struct.media* %19, i32 0, i32 1
  %21 = load i8**, i8*** %20, align 8
  %22 = load i64, i64* @FILE_GROUP_TEXT, align 8
  %23 = getelementptr inbounds i8*, i8** %21, i64 %22
  store i8* %18, i8** %23, align 8
  %24 = load i64, i64* @FILE_GROUP_MUSIC, align 8
  %25 = load %struct.icons*, %struct.icons** %3, align 8
  %26 = getelementptr inbounds %struct.icons, %struct.icons* %25, i32 0, i32 3
  %27 = call i8* @FILE_GROUP(i64 %24, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32* %26)
  %28 = load %struct.media*, %struct.media** %2, align 8
  %29 = getelementptr inbounds %struct.media, %struct.media* %28, i32 0, i32 1
  %30 = load i8**, i8*** %29, align 8
  %31 = load i64, i64* @FILE_GROUP_MUSIC, align 8
  %32 = getelementptr inbounds i8*, i8** %30, i64 %31
  store i8* %27, i8** %32, align 8
  %33 = load i64, i64* @FILE_GROUP_FONT, align 8
  %34 = load %struct.icons*, %struct.icons** %3, align 8
  %35 = getelementptr inbounds %struct.icons, %struct.icons* %34, i32 0, i32 2
  %36 = call i8* @FILE_GROUP(i64 %33, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32* %35)
  %37 = load %struct.media*, %struct.media** %2, align 8
  %38 = getelementptr inbounds %struct.media, %struct.media* %37, i32 0, i32 1
  %39 = load i8**, i8*** %38, align 8
  %40 = load i64, i64* @FILE_GROUP_FONT, align 8
  %41 = getelementptr inbounds i8*, i8** %39, i64 %40
  store i8* %36, i8** %41, align 8
  %42 = load i64, i64* @FILE_GROUP_IMAGE, align 8
  %43 = load %struct.icons*, %struct.icons** %3, align 8
  %44 = getelementptr inbounds %struct.icons, %struct.icons* %43, i32 0, i32 1
  %45 = call i8* @FILE_GROUP(i64 %42, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32* %44)
  %46 = load %struct.media*, %struct.media** %2, align 8
  %47 = getelementptr inbounds %struct.media, %struct.media* %46, i32 0, i32 1
  %48 = load i8**, i8*** %47, align 8
  %49 = load i64, i64* @FILE_GROUP_IMAGE, align 8
  %50 = getelementptr inbounds i8*, i8** %48, i64 %49
  store i8* %45, i8** %50, align 8
  %51 = load i64, i64* @FILE_GROUP_MOVIE, align 8
  %52 = load %struct.icons*, %struct.icons** %3, align 8
  %53 = getelementptr inbounds %struct.icons, %struct.icons* %52, i32 0, i32 0
  %54 = call i8* @FILE_GROUP(i64 %51, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32* %53)
  %55 = load %struct.media*, %struct.media** %2, align 8
  %56 = getelementptr inbounds %struct.media, %struct.media* %55, i32 0, i32 1
  %57 = load i8**, i8*** %56, align 8
  %58 = load i64, i64* @FILE_GROUP_MOVIE, align 8
  %59 = getelementptr inbounds i8*, i8** %57, i64 %58
  store i8* %54, i8** %59, align 8
  %60 = load i64, i64* @FILE_DEFAULT, align 8
  %61 = load i64, i64* @FILE_GROUP_DEFAULT, align 8
  %62 = call i8* @FILE_DEF(i64 %60, i8* null, i64 %61)
  %63 = load %struct.media*, %struct.media** %2, align 8
  %64 = getelementptr inbounds %struct.media, %struct.media* %63, i32 0, i32 0
  %65 = load i8**, i8*** %64, align 8
  %66 = load i64, i64* @FILE_DEFAULT, align 8
  %67 = getelementptr inbounds i8*, i8** %65, i64 %66
  store i8* %62, i8** %67, align 8
  %68 = load i64, i64* @FILE_TEXT, align 8
  %69 = load i64, i64* @FILE_GROUP_TEXT, align 8
  %70 = call i8* @FILE_DEF(i64 %68, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i64 %69)
  %71 = load %struct.media*, %struct.media** %2, align 8
  %72 = getelementptr inbounds %struct.media, %struct.media* %71, i32 0, i32 0
  %73 = load i8**, i8*** %72, align 8
  %74 = load i64, i64* @FILE_TEXT, align 8
  %75 = getelementptr inbounds i8*, i8** %73, i64 %74
  store i8* %70, i8** %75, align 8
  %76 = load i64, i64* @FILE_C_SOURCE, align 8
  %77 = load i64, i64* @FILE_GROUP_TEXT, align 8
  %78 = call i8* @FILE_DEF(i64 %76, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i64 %77)
  %79 = load %struct.media*, %struct.media** %2, align 8
  %80 = getelementptr inbounds %struct.media, %struct.media* %79, i32 0, i32 0
  %81 = load i8**, i8*** %80, align 8
  %82 = load i64, i64* @FILE_C_SOURCE, align 8
  %83 = getelementptr inbounds i8*, i8** %81, i64 %82
  store i8* %78, i8** %83, align 8
  %84 = load i64, i64* @FILE_CPP_SOURCE, align 8
  %85 = load i64, i64* @FILE_GROUP_TEXT, align 8
  %86 = call i8* @FILE_DEF(i64 %84, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i64 %85)
  %87 = load %struct.media*, %struct.media** %2, align 8
  %88 = getelementptr inbounds %struct.media, %struct.media* %87, i32 0, i32 0
  %89 = load i8**, i8*** %88, align 8
  %90 = load i64, i64* @FILE_CPP_SOURCE, align 8
  %91 = getelementptr inbounds i8*, i8** %89, i64 %90
  store i8* %86, i8** %91, align 8
  %92 = load i64, i64* @FILE_HEADER, align 8
  %93 = load i64, i64* @FILE_GROUP_TEXT, align 8
  %94 = call i8* @FILE_DEF(i64 %92, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0), i64 %93)
  %95 = load %struct.media*, %struct.media** %2, align 8
  %96 = getelementptr inbounds %struct.media, %struct.media* %95, i32 0, i32 0
  %97 = load i8**, i8*** %96, align 8
  %98 = load i64, i64* @FILE_HEADER, align 8
  %99 = getelementptr inbounds i8*, i8** %97, i64 %98
  store i8* %94, i8** %99, align 8
  %100 = load i64, i64* @FILE_HEADER, align 8
  %101 = load i64, i64* @FILE_GROUP_TEXT, align 8
  %102 = call i8* @FILE_DEF(i64 %100, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i64 %101)
  %103 = load %struct.media*, %struct.media** %2, align 8
  %104 = getelementptr inbounds %struct.media, %struct.media* %103, i32 0, i32 0
  %105 = load i8**, i8*** %104, align 8
  %106 = load i64, i64* @FILE_CPP_HEADER, align 8
  %107 = getelementptr inbounds i8*, i8** %105, i64 %106
  store i8* %102, i8** %107, align 8
  %108 = load i64, i64* @FILE_MP3, align 8
  %109 = load i64, i64* @FILE_GROUP_MUSIC, align 8
  %110 = call i8* @FILE_DEF(i64 %108, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i64 %109)
  %111 = load %struct.media*, %struct.media** %2, align 8
  %112 = getelementptr inbounds %struct.media, %struct.media* %111, i32 0, i32 0
  %113 = load i8**, i8*** %112, align 8
  %114 = load i64, i64* @FILE_MP3, align 8
  %115 = getelementptr inbounds i8*, i8** %113, i64 %114
  store i8* %110, i8** %115, align 8
  %116 = load i64, i64* @FILE_WAV, align 8
  %117 = load i64, i64* @FILE_GROUP_MUSIC, align 8
  %118 = call i8* @FILE_DEF(i64 %116, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i64 %117)
  %119 = load %struct.media*, %struct.media** %2, align 8
  %120 = getelementptr inbounds %struct.media, %struct.media* %119, i32 0, i32 0
  %121 = load i8**, i8*** %120, align 8
  %122 = load i64, i64* @FILE_WAV, align 8
  %123 = getelementptr inbounds i8*, i8** %121, i64 %122
  store i8* %118, i8** %123, align 8
  %124 = load i64, i64* @FILE_OGG, align 8
  %125 = load i64, i64* @FILE_GROUP_MUSIC, align 8
  %126 = call i8* @FILE_DEF(i64 %124, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i64 %125)
  %127 = load %struct.media*, %struct.media** %2, align 8
  %128 = getelementptr inbounds %struct.media, %struct.media* %127, i32 0, i32 0
  %129 = load i8**, i8*** %128, align 8
  %130 = load i64, i64* @FILE_OGG, align 8
  %131 = getelementptr inbounds i8*, i8** %129, i64 %130
  store i8* %126, i8** %131, align 8
  %132 = load i64, i64* @FILE_TTF, align 8
  %133 = load i64, i64* @FILE_GROUP_FONT, align 8
  %134 = call i8* @FILE_DEF(i64 %132, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0), i64 %133)
  %135 = load %struct.media*, %struct.media** %2, align 8
  %136 = getelementptr inbounds %struct.media, %struct.media* %135, i32 0, i32 0
  %137 = load i8**, i8*** %136, align 8
  %138 = load i64, i64* @FILE_TTF, align 8
  %139 = getelementptr inbounds i8*, i8** %137, i64 %138
  store i8* %134, i8** %139, align 8
  %140 = load i64, i64* @FILE_BMP, align 8
  %141 = load i64, i64* @FILE_GROUP_IMAGE, align 8
  %142 = call i8* @FILE_DEF(i64 %140, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i64 %141)
  %143 = load %struct.media*, %struct.media** %2, align 8
  %144 = getelementptr inbounds %struct.media, %struct.media* %143, i32 0, i32 0
  %145 = load i8**, i8*** %144, align 8
  %146 = load i64, i64* @FILE_BMP, align 8
  %147 = getelementptr inbounds i8*, i8** %145, i64 %146
  store i8* %142, i8** %147, align 8
  %148 = load i64, i64* @FILE_PNG, align 8
  %149 = load i64, i64* @FILE_GROUP_IMAGE, align 8
  %150 = call i8* @FILE_DEF(i64 %148, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0), i64 %149)
  %151 = load %struct.media*, %struct.media** %2, align 8
  %152 = getelementptr inbounds %struct.media, %struct.media* %151, i32 0, i32 0
  %153 = load i8**, i8*** %152, align 8
  %154 = load i64, i64* @FILE_PNG, align 8
  %155 = getelementptr inbounds i8*, i8** %153, i64 %154
  store i8* %150, i8** %155, align 8
  %156 = load i64, i64* @FILE_JPEG, align 8
  %157 = load i64, i64* @FILE_GROUP_IMAGE, align 8
  %158 = call i8* @FILE_DEF(i64 %156, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0), i64 %157)
  %159 = load %struct.media*, %struct.media** %2, align 8
  %160 = getelementptr inbounds %struct.media, %struct.media* %159, i32 0, i32 0
  %161 = load i8**, i8*** %160, align 8
  %162 = load i64, i64* @FILE_JPEG, align 8
  %163 = getelementptr inbounds i8*, i8** %161, i64 %162
  store i8* %158, i8** %163, align 8
  %164 = load i64, i64* @FILE_PCX, align 8
  %165 = load i64, i64* @FILE_GROUP_IMAGE, align 8
  %166 = call i8* @FILE_DEF(i64 %164, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0), i64 %165)
  %167 = load %struct.media*, %struct.media** %2, align 8
  %168 = getelementptr inbounds %struct.media, %struct.media* %167, i32 0, i32 0
  %169 = load i8**, i8*** %168, align 8
  %170 = load i64, i64* @FILE_PCX, align 8
  %171 = getelementptr inbounds i8*, i8** %169, i64 %170
  store i8* %166, i8** %171, align 8
  %172 = load i64, i64* @FILE_TGA, align 8
  %173 = load i64, i64* @FILE_GROUP_IMAGE, align 8
  %174 = call i8* @FILE_DEF(i64 %172, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i64 0, i64 0), i64 %173)
  %175 = load %struct.media*, %struct.media** %2, align 8
  %176 = getelementptr inbounds %struct.media, %struct.media* %175, i32 0, i32 0
  %177 = load i8**, i8*** %176, align 8
  %178 = load i64, i64* @FILE_TGA, align 8
  %179 = getelementptr inbounds i8*, i8** %177, i64 %178
  store i8* %174, i8** %179, align 8
  %180 = load i64, i64* @FILE_GIF, align 8
  %181 = load i64, i64* @FILE_GROUP_IMAGE, align 8
  %182 = call i8* @FILE_DEF(i64 %180, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i64 0, i64 0), i64 %181)
  %183 = load %struct.media*, %struct.media** %2, align 8
  %184 = getelementptr inbounds %struct.media, %struct.media* %183, i32 0, i32 0
  %185 = load i8**, i8*** %184, align 8
  %186 = load i64, i64* @FILE_GIF, align 8
  %187 = getelementptr inbounds i8*, i8** %185, i64 %186
  store i8* %182, i8** %187, align 8
  ret void
}

declare dso_local i8* @FILE_GROUP(i64, i8*, i32*) #1

declare dso_local i8* @FILE_DEF(i64, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
