; ModuleID = '/home/carl/AnghaBench/php-src/main/extr_rfc1867.c_multipart_buffer_headers.c'
source_filename = "/home/carl/AnghaBench/php-src/main/extr_rfc1867.c_multipart_buffer_headers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i32, i32 }
%struct.TYPE_12__ = type { i8*, i32*, i32 }
%struct.TYPE_10__ = type { i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, i32*)* @multipart_buffer_headers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @multipart_buffer_headers(%struct.TYPE_11__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_12__, align 8
  %8 = alloca %struct.TYPE_10__, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store i32* %1, i32** %5, align 8
  %11 = bitcast %struct.TYPE_12__* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %11, i8 0, i64 24, i1 false)
  %12 = bitcast %struct.TYPE_10__* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %12, i8 0, i64 16, i1 false)
  store i8* null, i8** %9, align 8
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @find_boundary(%struct.TYPE_11__* %13, i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %120

20:                                               ; preds = %2
  br label %21

21:                                               ; preds = %102, %100, %20
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %23 = call i8* @get_line(%struct.TYPE_11__* %22)
  store i8* %23, i8** %6, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %31

25:                                               ; preds = %21
  %26 = load i8*, i8** %6, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 0
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp ne i32 %29, 0
  br label %31

31:                                               ; preds = %25, %21
  %32 = phi i1 [ false, %21 ], [ %30, %25 ]
  br i1 %32, label %33, label %103

33:                                               ; preds = %31
  store i8* null, i8** %10, align 8
  %34 = call i64 (...) @php_rfc1867_encoding_translation()
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %49

36:                                               ; preds = %33
  %37 = load i8*, i8** %6, align 8
  %38 = load i8*, i8** %6, align 8
  %39 = call i32 @strlen(i8* %38)
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @zend_multibyte_encoding_detector(i8* %37, i32 %39, i32 %42, i32 %45)
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 4
  br label %49

49:                                               ; preds = %36, %33
  %50 = load i8*, i8** %6, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 0
  %52 = load i8, i8* %51, align 1
  %53 = call i64 @isspace(i8 signext %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %49
  %56 = load i8*, i8** %6, align 8
  %57 = call i8* @strchr(i8* %56, i8 signext 58)
  store i8* %57, i8** %10, align 8
  br label %58

58:                                               ; preds = %55, %49
  %59 = load i8*, i8** %10, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %61, label %93

61:                                               ; preds = %58
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = icmp ne i32* %63, null
  br i1 %64, label %65, label %78

65:                                               ; preds = %61
  %66 = load i8*, i8** %9, align 8
  %67 = icmp ne i8* %66, null
  br i1 %67, label %68, label %78

68:                                               ; preds = %65
  %69 = call i32 @smart_string_0(%struct.TYPE_10__* %8)
  %70 = load i8*, i8** %9, align 8
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 0
  store i8* %70, i8** %71, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 1
  store i32* %73, i32** %74, align 8
  %75 = load i32*, i32** %5, align 8
  %76 = call i32 @zend_llist_add_element(i32* %75, %struct.TYPE_12__* %7)
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  store i32* null, i32** %77, align 8
  store i8* null, i8** %9, align 8
  br label %78

78:                                               ; preds = %68, %65, %61
  %79 = load i8*, i8** %10, align 8
  store i8 0, i8* %79, align 1
  br label %80

80:                                               ; preds = %83, %78
  %81 = load i8*, i8** %10, align 8
  %82 = getelementptr inbounds i8, i8* %81, i32 1
  store i8* %82, i8** %10, align 8
  br label %83

83:                                               ; preds = %80
  %84 = load i8*, i8** %10, align 8
  %85 = load i8, i8* %84, align 1
  %86 = call i64 @isspace(i8 signext %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %80, label %88

88:                                               ; preds = %83
  %89 = load i8*, i8** %6, align 8
  %90 = call i8* @estrdup(i8* %89)
  store i8* %90, i8** %9, align 8
  %91 = load i8*, i8** %10, align 8
  %92 = call i32 @smart_string_appends(%struct.TYPE_10__* %8, i8* %91)
  br label %102

93:                                               ; preds = %58
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = icmp ne i32* %95, null
  br i1 %96, label %97, label %100

97:                                               ; preds = %93
  %98 = load i8*, i8** %6, align 8
  %99 = call i32 @smart_string_appends(%struct.TYPE_10__* %8, i8* %98)
  br label %101

100:                                              ; preds = %93
  br label %21

101:                                              ; preds = %97
  br label %102

102:                                              ; preds = %101, %88
  br label %21

103:                                              ; preds = %31
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  %105 = load i32*, i32** %104, align 8
  %106 = icmp ne i32* %105, null
  br i1 %106, label %107, label %119

107:                                              ; preds = %103
  %108 = load i8*, i8** %9, align 8
  %109 = icmp ne i8* %108, null
  br i1 %109, label %110, label %119

110:                                              ; preds = %107
  %111 = call i32 @smart_string_0(%struct.TYPE_10__* %8)
  %112 = load i8*, i8** %9, align 8
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 0
  store i8* %112, i8** %113, align 8
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  %115 = load i32*, i32** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 1
  store i32* %115, i32** %116, align 8
  %117 = load i32*, i32** %5, align 8
  %118 = call i32 @zend_llist_add_element(i32* %117, %struct.TYPE_12__* %7)
  br label %119

119:                                              ; preds = %110, %107, %103
  store i32 1, i32* %3, align 4
  br label %120

120:                                              ; preds = %119, %19
  %121 = load i32, i32* %3, align 4
  ret i32 %121
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @find_boundary(%struct.TYPE_11__*, i32) #2

declare dso_local i8* @get_line(%struct.TYPE_11__*) #2

declare dso_local i64 @php_rfc1867_encoding_translation(...) #2

declare dso_local i32 @zend_multibyte_encoding_detector(i8*, i32, i32, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i64 @isspace(i8 signext) #2

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i32 @smart_string_0(%struct.TYPE_10__*) #2

declare dso_local i32 @zend_llist_add_element(i32*, %struct.TYPE_12__*) #2

declare dso_local i8* @estrdup(i8*) #2

declare dso_local i32 @smart_string_appends(%struct.TYPE_10__*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
