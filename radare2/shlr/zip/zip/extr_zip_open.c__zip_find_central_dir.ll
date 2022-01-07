; ModuleID = '/home/carl/AnghaBench/radare2/shlr/zip/zip/extr_zip_open.c__zip_find_central_dir.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/zip/zip/extr_zip_open.c__zip_find_central_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zip_cdir = type { i32 }
%struct.zip_error = type { i32 }

@CDBUFSIZE = common dso_local global i64 0, align 8
@SEEK_END = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EFBIG = common dso_local global i64 0, align 8
@ZIP_ER_SEEK = common dso_local global i32 0, align 4
@ZIP_ER_MEMORY = common dso_local global i32 0, align 4
@ZIP_ER_READ = common dso_local global i32 0, align 4
@EOCD64LOCLEN = common dso_local global i32 0, align 4
@ZIP_ER_NOZIP = common dso_local global i32 0, align 4
@EOCDLEN = common dso_local global i32 0, align 4
@EOCD_MAGIC = common dso_local global i64 0, align 8
@ZIP_CHECKCONS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.zip_cdir* (i32*, i32, i32*, i64)* @_zip_find_central_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.zip_cdir* @_zip_find_central_dir(i32* %0, i32 %1, i32* %2, i64 %3) #0 {
  %5 = alloca %struct.zip_cdir*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.zip_cdir*, align 8
  %11 = alloca %struct.zip_cdir*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.zip_error, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  %20 = load i32*, i32** %6, align 8
  %21 = load i64, i64* %9, align 8
  %22 = load i64, i64* @CDBUFSIZE, align 8
  %23 = icmp ult i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %4
  %25 = load i64, i64* %9, align 8
  br label %28

26:                                               ; preds = %4
  %27 = load i64, i64* @CDBUFSIZE, align 8
  br label %28

28:                                               ; preds = %26, %24
  %29 = phi i64 [ %25, %24 ], [ %27, %26 ]
  %30 = sub i64 0, %29
  %31 = load i32, i32* @SEEK_END, align 4
  %32 = call i32 @fseeko(i32* %20, i64 %30, i32 %31)
  store i32 %32, i32* %17, align 4
  %33 = load i32, i32* %17, align 4
  %34 = icmp eq i32 %33, -1
  br i1 %34, label %35, label %43

35:                                               ; preds = %28
  %36 = load i64, i64* @errno, align 8
  %37 = load i64, i64* @EFBIG, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %35
  %40 = load i32*, i32** %8, align 8
  %41 = load i32, i32* @ZIP_ER_SEEK, align 4
  %42 = call i32 @set_error(i32* %40, %struct.zip_error* null, i32 %41)
  store %struct.zip_cdir* null, %struct.zip_cdir** %5, align 8
  br label %165

43:                                               ; preds = %35, %28
  %44 = load i32*, i32** %6, align 8
  %45 = call i64 @ftello(i32* %44)
  store i64 %45, i64* %14, align 8
  %46 = load i64, i64* @CDBUFSIZE, align 8
  %47 = call i64 @malloc(i64 %46)
  %48 = inttoptr i64 %47 to i8*
  store i8* %48, i8** %12, align 8
  %49 = icmp eq i8* %48, null
  br i1 %49, label %50, label %54

50:                                               ; preds = %43
  %51 = load i32*, i32** %8, align 8
  %52 = load i32, i32* @ZIP_ER_MEMORY, align 4
  %53 = call i32 @set_error(i32* %51, %struct.zip_error* null, i32 %52)
  store %struct.zip_cdir* null, %struct.zip_cdir** %5, align 8
  br label %165

54:                                               ; preds = %43
  %55 = load i32*, i32** %6, align 8
  %56 = call i32 @clearerr(i32* %55)
  %57 = load i8*, i8** %12, align 8
  %58 = load i64, i64* @CDBUFSIZE, align 8
  %59 = load i32*, i32** %6, align 8
  %60 = call i64 @fread(i8* %57, i32 1, i64 %58, i32* %59)
  store i64 %60, i64* %15, align 8
  %61 = load i32*, i32** %6, align 8
  %62 = call i64 @ferror(i32* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %54
  %65 = load i32*, i32** %8, align 8
  %66 = load i32, i32* @ZIP_ER_READ, align 4
  %67 = call i32 @set_error(i32* %65, %struct.zip_error* null, i32 %66)
  %68 = load i8*, i8** %12, align 8
  %69 = call i32 @free(i8* %68)
  store %struct.zip_cdir* null, %struct.zip_cdir** %5, align 8
  br label %165

70:                                               ; preds = %54
  store i32 -1, i32* %18, align 4
  store %struct.zip_cdir* null, %struct.zip_cdir** %10, align 8
  %71 = load i8*, i8** %12, align 8
  %72 = load i64, i64* %15, align 8
  %73 = load i64, i64* @CDBUFSIZE, align 8
  %74 = icmp ult i64 %72, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %70
  br label %78

76:                                               ; preds = %70
  %77 = load i32, i32* @EOCD64LOCLEN, align 4
  br label %78

78:                                               ; preds = %76, %75
  %79 = phi i32 [ 0, %75 ], [ %77, %76 ]
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8, i8* %71, i64 %80
  store i8* %81, i8** %13, align 8
  %82 = load i32, i32* @ZIP_ER_NOZIP, align 4
  %83 = call i32 @_zip_error_set(%struct.zip_error* %19, i32 %82, i32 0)
  br label %84

84:                                               ; preds = %152, %113, %78
  %85 = load i8*, i8** %13, align 8
  %86 = load i64, i64* %15, align 8
  %87 = load i8*, i8** %13, align 8
  %88 = load i8*, i8** %12, align 8
  %89 = ptrtoint i8* %87 to i64
  %90 = ptrtoint i8* %88 to i64
  %91 = sub i64 %89, %90
  %92 = sub i64 %86, %91
  %93 = load i32, i32* @EOCDLEN, align 4
  %94 = sub nsw i32 %93, 4
  %95 = sext i32 %94 to i64
  %96 = sub i64 %92, %95
  %97 = load i64, i64* @EOCD_MAGIC, align 8
  %98 = inttoptr i64 %97 to i8*
  %99 = call i8* @_zip_memmem(i8* %85, i64 %96, i8* %98, i32 4)
  store i8* %99, i8** %13, align 8
  %100 = icmp ne i8* %99, null
  br i1 %100, label %101, label %153

101:                                              ; preds = %84
  %102 = load i8*, i8** %13, align 8
  %103 = getelementptr inbounds i8, i8* %102, i32 1
  store i8* %103, i8** %13, align 8
  %104 = load i32*, i32** %6, align 8
  %105 = load i64, i64* %14, align 8
  %106 = load i8*, i8** %12, align 8
  %107 = load i8*, i8** %13, align 8
  %108 = getelementptr inbounds i8, i8* %107, i64 -1
  %109 = load i64, i64* %15, align 8
  %110 = load i32, i32* %7, align 4
  %111 = call %struct.zip_cdir* @_zip_readcdir(i32* %104, i64 %105, i8* %106, i8* %108, i64 %109, i32 %110, %struct.zip_error* %19)
  store %struct.zip_cdir* %111, %struct.zip_cdir** %11, align 8
  %112 = icmp eq %struct.zip_cdir* %111, null
  br i1 %112, label %113, label %114

113:                                              ; preds = %101
  br label %84

114:                                              ; preds = %101
  %115 = load %struct.zip_cdir*, %struct.zip_cdir** %10, align 8
  %116 = icmp ne %struct.zip_cdir* %115, null
  br i1 %116, label %117, label %140

117:                                              ; preds = %114
  %118 = load i32, i32* %18, align 4
  %119 = icmp sle i32 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %117
  %121 = load i32*, i32** %6, align 8
  %122 = load %struct.zip_cdir*, %struct.zip_cdir** %10, align 8
  %123 = call i32 @_zip_checkcons(i32* %121, %struct.zip_cdir* %122, %struct.zip_error* %19)
  store i32 %123, i32* %18, align 4
  br label %124

124:                                              ; preds = %120, %117
  %125 = load i32*, i32** %6, align 8
  %126 = load %struct.zip_cdir*, %struct.zip_cdir** %11, align 8
  %127 = call i32 @_zip_checkcons(i32* %125, %struct.zip_cdir* %126, %struct.zip_error* %19)
  store i32 %127, i32* %16, align 4
  %128 = load i32, i32* %18, align 4
  %129 = load i32, i32* %16, align 4
  %130 = icmp slt i32 %128, %129
  br i1 %130, label %131, label %136

131:                                              ; preds = %124
  %132 = load %struct.zip_cdir*, %struct.zip_cdir** %10, align 8
  %133 = call i32 @_zip_cdir_free(%struct.zip_cdir* %132)
  %134 = load %struct.zip_cdir*, %struct.zip_cdir** %11, align 8
  store %struct.zip_cdir* %134, %struct.zip_cdir** %10, align 8
  %135 = load i32, i32* %16, align 4
  store i32 %135, i32* %18, align 4
  br label %139

136:                                              ; preds = %124
  %137 = load %struct.zip_cdir*, %struct.zip_cdir** %11, align 8
  %138 = call i32 @_zip_cdir_free(%struct.zip_cdir* %137)
  br label %139

139:                                              ; preds = %136, %131
  br label %152

140:                                              ; preds = %114
  %141 = load %struct.zip_cdir*, %struct.zip_cdir** %11, align 8
  store %struct.zip_cdir* %141, %struct.zip_cdir** %10, align 8
  %142 = load i32, i32* %7, align 4
  %143 = load i32, i32* @ZIP_CHECKCONS, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %150

146:                                              ; preds = %140
  %147 = load i32*, i32** %6, align 8
  %148 = load %struct.zip_cdir*, %struct.zip_cdir** %10, align 8
  %149 = call i32 @_zip_checkcons(i32* %147, %struct.zip_cdir* %148, %struct.zip_error* %19)
  store i32 %149, i32* %18, align 4
  br label %151

150:                                              ; preds = %140
  store i32 0, i32* %18, align 4
  br label %151

151:                                              ; preds = %150, %146
  br label %152

152:                                              ; preds = %151, %139
  store %struct.zip_cdir* null, %struct.zip_cdir** %11, align 8
  br label %84

153:                                              ; preds = %84
  %154 = load i8*, i8** %12, align 8
  %155 = call i32 @free(i8* %154)
  %156 = load i32, i32* %18, align 4
  %157 = icmp slt i32 %156, 0
  br i1 %157, label %158, label %163

158:                                              ; preds = %153
  %159 = load i32*, i32** %8, align 8
  %160 = call i32 @set_error(i32* %159, %struct.zip_error* %19, i32 0)
  %161 = load %struct.zip_cdir*, %struct.zip_cdir** %10, align 8
  %162 = call i32 @_zip_cdir_free(%struct.zip_cdir* %161)
  store %struct.zip_cdir* null, %struct.zip_cdir** %5, align 8
  br label %165

163:                                              ; preds = %153
  %164 = load %struct.zip_cdir*, %struct.zip_cdir** %10, align 8
  store %struct.zip_cdir* %164, %struct.zip_cdir** %5, align 8
  br label %165

165:                                              ; preds = %163, %158, %64, %50, %39
  %166 = load %struct.zip_cdir*, %struct.zip_cdir** %5, align 8
  ret %struct.zip_cdir* %166
}

declare dso_local i32 @fseeko(i32*, i64, i32) #1

declare dso_local i32 @set_error(i32*, %struct.zip_error*, i32) #1

declare dso_local i64 @ftello(i32*) #1

declare dso_local i64 @malloc(i64) #1

declare dso_local i32 @clearerr(i32*) #1

declare dso_local i64 @fread(i8*, i32, i64, i32*) #1

declare dso_local i64 @ferror(i32*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @_zip_error_set(%struct.zip_error*, i32, i32) #1

declare dso_local i8* @_zip_memmem(i8*, i64, i8*, i32) #1

declare dso_local %struct.zip_cdir* @_zip_readcdir(i32*, i64, i8*, i8*, i64, i32, %struct.zip_error*) #1

declare dso_local i32 @_zip_checkcons(i32*, %struct.zip_cdir*, %struct.zip_error*) #1

declare dso_local i32 @_zip_cdir_free(%struct.zip_cdir*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
