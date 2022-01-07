; ModuleID = '/home/carl/AnghaBench/php-src/ext/xmlreader/extr_php_xmlreader.c__xmlreader_get_valid_file_path.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/xmlreader/extr_php_xmlreader.c__xmlreader_get_valid_file_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32* }

@.str = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"file:///\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"file://localhost/\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @_xmlreader_get_valid_file_path(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %11, align 4
  %12 = call %struct.TYPE_5__* (...) @xmlCreateURI()
  store %struct.TYPE_5__* %12, %struct.TYPE_5__** %8, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to i32*
  %15 = call i32* @xmlURIEscapeStr(i32* %14, i32* bitcast ([2 x i8]* @.str to i32*))
  store i32* %15, i32** %9, align 8
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %17 = load i32*, i32** %9, align 8
  %18 = bitcast i32* %17 to i8*
  %19 = call i32 @xmlParseURIReference(%struct.TYPE_5__* %16, i8* %18)
  %20 = load i32*, i32** %9, align 8
  %21 = call i32 @xmlFree(i32* %20)
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %42

26:                                               ; preds = %3
  %27 = load i8*, i8** %5, align 8
  %28 = call i64 @strncasecmp(i8* %27, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 8)
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  store i32 1, i32* %11, align 4
  %31 = load i8*, i8** %5, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 7
  store i8* %32, i8** %5, align 8
  br label %41

33:                                               ; preds = %26
  %34 = load i8*, i8** %5, align 8
  %35 = call i64 @strncasecmp(i8* %34, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 17)
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  store i32 1, i32* %11, align 4
  %38 = load i8*, i8** %5, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 16
  store i8* %39, i8** %5, align 8
  br label %40

40:                                               ; preds = %37, %33
  br label %41

41:                                               ; preds = %40, %30
  br label %42

42:                                               ; preds = %41, %3
  %43 = load i8*, i8** %5, align 8
  store i8* %43, i8** %10, align 8
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = icmp eq i32* %46, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %42
  %49 = load i32, i32* %11, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %66

51:                                               ; preds = %48, %42
  %52 = load i8*, i8** %5, align 8
  %53 = load i8*, i8** %6, align 8
  %54 = call i32 @VCWD_REALPATH(i8* %52, i8* %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %64, label %56

56:                                               ; preds = %51
  %57 = load i8*, i8** %5, align 8
  %58 = load i8*, i8** %6, align 8
  %59 = call i32 @expand_filepath(i8* %57, i8* %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %56
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %63 = call i32 @xmlFreeURI(%struct.TYPE_5__* %62)
  store i8* null, i8** %4, align 8
  br label %70

64:                                               ; preds = %56, %51
  %65 = load i8*, i8** %6, align 8
  store i8* %65, i8** %10, align 8
  br label %66

66:                                               ; preds = %64, %48
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %68 = call i32 @xmlFreeURI(%struct.TYPE_5__* %67)
  %69 = load i8*, i8** %10, align 8
  store i8* %69, i8** %4, align 8
  br label %70

70:                                               ; preds = %66, %61
  %71 = load i8*, i8** %4, align 8
  ret i8* %71
}

declare dso_local %struct.TYPE_5__* @xmlCreateURI(...) #1

declare dso_local i32* @xmlURIEscapeStr(i32*, i32*) #1

declare dso_local i32 @xmlParseURIReference(%struct.TYPE_5__*, i8*) #1

declare dso_local i32 @xmlFree(i32*) #1

declare dso_local i64 @strncasecmp(i8*, i8*, i32) #1

declare dso_local i32 @VCWD_REALPATH(i8*, i8*) #1

declare dso_local i32 @expand_filepath(i8*, i8*) #1

declare dso_local i32 @xmlFreeURI(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
