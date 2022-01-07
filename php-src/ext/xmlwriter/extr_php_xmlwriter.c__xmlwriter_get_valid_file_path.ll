; ModuleID = '/home/carl/AnghaBench/php-src/ext/xmlwriter/extr_php_xmlwriter.c__xmlwriter_get_valid_file_path.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/xmlwriter/extr_php_xmlwriter.c__xmlwriter_get_valid_file_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32* }

@.str = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"file:///\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"file://localhost/\00", align 1
@MAXPATHLEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8*, i32)* @_xmlwriter_get_valid_file_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @_xmlwriter_get_valid_file_path(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %11, align 4
  %17 = call %struct.TYPE_5__* (...) @xmlCreateURI()
  store %struct.TYPE_5__* %17, %struct.TYPE_5__** %8, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = bitcast i8* %18 to i32*
  %20 = call i32* @xmlURIEscapeStr(i32* %19, i32* bitcast ([2 x i8]* @.str to i32*))
  store i32* %20, i32** %9, align 8
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %22 = load i32*, i32** %9, align 8
  %23 = bitcast i32* %22 to i8*
  %24 = call i32 @xmlParseURIReference(%struct.TYPE_5__* %21, i8* %23)
  %25 = load i32*, i32** %9, align 8
  %26 = call i32 @xmlFree(i32* %25)
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %65

31:                                               ; preds = %3
  %32 = load i8*, i8** %5, align 8
  %33 = call i64 @strncasecmp(i8* %32, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 8)
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %47

35:                                               ; preds = %31
  %36 = load i8*, i8** %5, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 8
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %35
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %43 = call i32 @xmlFreeURI(%struct.TYPE_5__* %42)
  store i8* null, i8** %4, align 8
  br label %119

44:                                               ; preds = %35
  store i32 1, i32* %11, align 4
  %45 = load i8*, i8** %5, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 7
  store i8* %46, i8** %5, align 8
  br label %64

47:                                               ; preds = %31
  %48 = load i8*, i8** %5, align 8
  %49 = call i64 @strncasecmp(i8* %48, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 17)
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %63

51:                                               ; preds = %47
  %52 = load i8*, i8** %5, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 17
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %51
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %59 = call i32 @xmlFreeURI(%struct.TYPE_5__* %58)
  store i8* null, i8** %4, align 8
  br label %119

60:                                               ; preds = %51
  store i32 1, i32* %11, align 4
  %61 = load i8*, i8** %5, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 16
  store i8* %62, i8** %5, align 8
  br label %63

63:                                               ; preds = %60, %47
  br label %64

64:                                               ; preds = %63, %44
  br label %65

65:                                               ; preds = %64, %3
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = icmp eq i32* %68, null
  br i1 %69, label %73, label %70

70:                                               ; preds = %65
  %71 = load i32, i32* %11, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %113

73:                                               ; preds = %70, %65
  %74 = load i32, i32* @MAXPATHLEN, align 4
  %75 = zext i32 %74 to i64
  %76 = call i8* @llvm.stacksave()
  store i8* %76, i8** %12, align 8
  %77 = alloca i8, i64 %75, align 16
  store i64 %75, i64* %13, align 8
  %78 = load i8*, i8** %5, align 8
  %79 = load i8*, i8** %6, align 8
  %80 = call i32 @VCWD_REALPATH(i8* %78, i8* %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %90, label %82

82:                                               ; preds = %73
  %83 = load i8*, i8** %5, align 8
  %84 = load i8*, i8** %6, align 8
  %85 = call i32 @expand_filepath(i8* %83, i8* %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %90, label %87

87:                                               ; preds = %82
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %89 = call i32 @xmlFreeURI(%struct.TYPE_5__* %88)
  store i8* null, i8** %4, align 8
  store i32 1, i32* %15, align 4
  br label %109

90:                                               ; preds = %82, %73
  %91 = load i8*, i8** %5, align 8
  %92 = load i8*, i8** %5, align 8
  %93 = call i32 @strlen(i8* %92)
  %94 = call i32 @memcpy(i8* %77, i8* %91, i32 %93)
  %95 = load i8*, i8** %5, align 8
  %96 = call i32 @strlen(i8* %95)
  %97 = call i64 @php_dirname(i8* %77, i32 %96)
  store i64 %97, i64* %14, align 8
  %98 = load i64, i64* %14, align 8
  %99 = icmp ugt i64 %98, 0
  br i1 %99, label %100, label %107

100:                                              ; preds = %90
  %101 = call i64 @php_sys_stat(i8* %77, i32* %16)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %100
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %105 = call i32 @xmlFreeURI(%struct.TYPE_5__* %104)
  store i8* null, i8** %4, align 8
  store i32 1, i32* %15, align 4
  br label %109

106:                                              ; preds = %100
  br label %107

107:                                              ; preds = %106, %90
  %108 = load i8*, i8** %6, align 8
  store i8* %108, i8** %10, align 8
  store i32 0, i32* %15, align 4
  br label %109

109:                                              ; preds = %107, %103, %87
  %110 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %110)
  %111 = load i32, i32* %15, align 4
  switch i32 %111, label %121 [
    i32 0, label %112
    i32 1, label %119
  ]

112:                                              ; preds = %109
  br label %115

113:                                              ; preds = %70
  %114 = load i8*, i8** %5, align 8
  store i8* %114, i8** %10, align 8
  br label %115

115:                                              ; preds = %113, %112
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %117 = call i32 @xmlFreeURI(%struct.TYPE_5__* %116)
  %118 = load i8*, i8** %10, align 8
  store i8* %118, i8** %4, align 8
  br label %119

119:                                              ; preds = %115, %109, %57, %41
  %120 = load i8*, i8** %4, align 8
  ret i8* %120

121:                                              ; preds = %109
  unreachable
}

declare dso_local %struct.TYPE_5__* @xmlCreateURI(...) #1

declare dso_local i32* @xmlURIEscapeStr(i32*, i32*) #1

declare dso_local i32 @xmlParseURIReference(%struct.TYPE_5__*, i8*) #1

declare dso_local i32 @xmlFree(i32*) #1

declare dso_local i64 @strncasecmp(i8*, i8*, i32) #1

declare dso_local i32 @xmlFreeURI(%struct.TYPE_5__*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @VCWD_REALPATH(i8*, i8*) #1

declare dso_local i32 @expand_filepath(i8*, i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @php_dirname(i8*, i32) #1

declare dso_local i64 @php_sys_stat(i8*, i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
