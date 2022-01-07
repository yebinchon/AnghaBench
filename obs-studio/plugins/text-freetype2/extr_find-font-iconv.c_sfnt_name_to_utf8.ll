; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/text-freetype2/extr_find-font-iconv.c_sfnt_name_to_utf8.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/text-freetype2/extr_find-font-iconv.c_sfnt_name_to_utf8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i32, i32, i32 }

@LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [79 x i8] c"invalid character set found, platform_id: %d, encoding_id: %d, language_id: %d\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@.str.2 = private unnamed_addr constant [75 x i8] c"couldn't intialize font code page conversion:  '%s' to 'utf-8': errno = %d\00", align 1
@errno = common dso_local global i64 0, align 8
@LOG_WARNING = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [44 x i8] c"couldn't convert font name text: errno = %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @sfnt_name_to_utf8(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [256 x i8], align 16
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = call i8* @get_code_page_for_font(i32 %14, i32 %17, i32 %20)
  store i8* %21, i8** %4, align 8
  %22 = load i8*, i8** %4, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %36, label %24

24:                                               ; preds = %1
  %25 = load i32, i32* @LOG_DEBUG, align 4
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = call i32 (i32, i8*, ...) @blog(i32 %25, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %31, i32 %34)
  store i8* null, i8** %2, align 8
  br label %73

36:                                               ; preds = %1
  %37 = load i8*, i8** %4, align 8
  %38 = call i64 @iconv_open(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %37)
  store i64 %38, i64* %10, align 8
  %39 = load i64, i64* %10, align 8
  %40 = icmp eq i64 %39, -1
  br i1 %40, label %41, label %47

41:                                               ; preds = %36
  %42 = load i32, i32* @LOG_DEBUG, align 4
  %43 = load i8*, i8** %4, align 8
  %44 = load i64, i64* @errno, align 8
  %45 = trunc i64 %44 to i32
  %46 = call i32 (i32, i8*, ...) @blog(i32 %42, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.2, i64 0, i64 0), i8* %43, i32 %45)
  store i8* null, i8** %2, align 8
  br label %73

47:                                               ; preds = %36
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = inttoptr i64 %50 to i8*
  store i8* %51, i8** %6, align 8
  %52 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  store i8* %52, i8** %7, align 8
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  store i64 %55, i64* %8, align 8
  store i64 256, i64* %9, align 8
  %56 = load i64, i64* %10, align 8
  %57 = call i64 @iconv(i64 %56, i8** %6, i64* %8, i8** %7, i64* %9)
  store i64 %57, i64* %11, align 8
  %58 = load i64, i64* %11, align 8
  %59 = icmp eq i64 %58, -1
  br i1 %59, label %60, label %67

60:                                               ; preds = %47
  %61 = load i32, i32* @LOG_WARNING, align 4
  %62 = load i64, i64* @errno, align 8
  %63 = trunc i64 %62 to i32
  %64 = call i32 (i32, i8*, ...) @blog(i32 %61, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i32 %63)
  %65 = load i64, i64* %10, align 8
  %66 = call i32 @iconv_close(i64 %65)
  store i8* null, i8** %2, align 8
  br label %73

67:                                               ; preds = %47
  %68 = load i64, i64* %10, align 8
  %69 = call i32 @iconv_close(i64 %68)
  %70 = load i8*, i8** %7, align 8
  store i8 0, i8* %70, align 1
  %71 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %72 = call i8* @bstrdup(i8* %71)
  store i8* %72, i8** %2, align 8
  br label %73

73:                                               ; preds = %67, %60, %41, %24
  %74 = load i8*, i8** %2, align 8
  ret i8* %74
}

declare dso_local i8* @get_code_page_for_font(i32, i32, i32) #1

declare dso_local i32 @blog(i32, i8*, ...) #1

declare dso_local i64 @iconv_open(i8*, i8*) #1

declare dso_local i64 @iconv(i64, i8**, i64*, i8**, i64*) #1

declare dso_local i32 @iconv_close(i64) #1

declare dso_local i8* @bstrdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
