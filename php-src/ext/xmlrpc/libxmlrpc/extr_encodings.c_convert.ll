; ModuleID = '/home/carl/AnghaBench/php-src/ext/xmlrpc/libxmlrpc/extr_encodings.c_convert.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/xmlrpc/libxmlrpc/extr_encodings.c_convert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ICONV_CSNMAXLEN = common dso_local global i64 0, align 8
@errno = common dso_local global i64 0, align 8
@E2BIG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i32, i32*, i8*, i8*)* @convert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @convert(i8* %0, i32 %1, i32* %2, i8* %3, i8* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  store i8* null, i8** %12, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %129

22:                                               ; preds = %5
  %23 = load i32, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %129

25:                                               ; preds = %22
  %26 = load i8*, i8** %10, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %129

28:                                               ; preds = %25
  %29 = load i8*, i8** %11, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %129

31:                                               ; preds = %28
  %32 = load i32, i32* %8, align 4
  %33 = sext i32 %32 to i64
  store i64 %33, i64* %13, align 8
  %34 = load i32, i32* %8, align 4
  %35 = sext i32 %34 to i64
  store i64 %35, i64* %14, align 8
  %36 = load i32, i32* %8, align 4
  store i32 %36, i32* %15, align 4
  store i8* null, i8** %17, align 8
  %37 = load i8*, i8** %11, align 8
  %38 = call i64 @strlen(i8* %37)
  %39 = load i64, i64* @ICONV_CSNMAXLEN, align 8
  %40 = icmp sge i64 %38, %39
  br i1 %40, label %46, label %41

41:                                               ; preds = %31
  %42 = load i8*, i8** %10, align 8
  %43 = call i64 @strlen(i8* %42)
  %44 = load i64, i64* @ICONV_CSNMAXLEN, align 8
  %45 = icmp sge i64 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %41, %31
  store i8* null, i8** %6, align 8
  br label %131

47:                                               ; preds = %41
  %48 = load i8*, i8** %11, align 8
  %49 = load i8*, i8** %10, align 8
  %50 = call i64 @iconv_open(i8* %48, i8* %49)
  store i64 %50, i64* %16, align 8
  %51 = load i64, i64* %16, align 8
  %52 = icmp ne i64 %51, -1
  br i1 %52, label %53, label %103

53:                                               ; preds = %47
  %54 = load i32, i32* %15, align 4
  %55 = add nsw i32 %54, 1
  %56 = call i64 @emalloc(i32 %55)
  %57 = inttoptr i64 %56 to i8*
  store i8* %57, i8** %12, align 8
  %58 = load i8*, i8** %12, align 8
  store i8* %58, i8** %17, align 8
  br label %59

59:                                               ; preds = %99, %53
  %60 = load i64, i64* %14, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %100

62:                                               ; preds = %59
  %63 = load i64, i64* %16, align 8
  %64 = call i64 @iconv(i64 %63, i8** %7, i64* %14, i8** %17, i64* %13)
  store i64 %64, i64* %18, align 8
  %65 = load i64, i64* %18, align 8
  %66 = icmp eq i64 %65, -1
  br i1 %66, label %67, label %99

67:                                               ; preds = %62
  %68 = load i64, i64* @errno, align 8
  %69 = load i64, i64* @E2BIG, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %95

71:                                               ; preds = %67
  %72 = load i8*, i8** %17, align 8
  %73 = load i8*, i8** %12, align 8
  %74 = ptrtoint i8* %72 to i64
  %75 = ptrtoint i8* %73 to i64
  %76 = sub i64 %74, %75
  %77 = trunc i64 %76 to i32
  store i32 %77, i32* %19, align 4
  %78 = load i64, i64* %14, align 8
  %79 = load i32, i32* %15, align 4
  %80 = sext i32 %79 to i64
  %81 = add i64 %80, %78
  %82 = trunc i64 %81 to i32
  store i32 %82, i32* %15, align 4
  %83 = load i64, i64* %14, align 8
  %84 = load i64, i64* %13, align 8
  %85 = add i64 %84, %83
  store i64 %85, i64* %13, align 8
  %86 = load i8*, i8** %12, align 8
  %87 = load i32, i32* %15, align 4
  %88 = add nsw i32 %87, 1
  %89 = call i64 @erealloc(i8* %86, i32 %88)
  %90 = inttoptr i64 %89 to i8*
  store i8* %90, i8** %12, align 8
  %91 = load i8*, i8** %12, align 8
  %92 = load i32, i32* %19, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i8, i8* %91, i64 %93
  store i8* %94, i8** %17, align 8
  br label %98

95:                                               ; preds = %67
  %96 = load i8*, i8** %12, align 8
  %97 = call i32 @efree(i8* %96)
  store i8* null, i8** %12, align 8
  br label %100

98:                                               ; preds = %71
  br label %99

99:                                               ; preds = %98, %62
  br label %59

100:                                              ; preds = %95, %59
  %101 = load i64, i64* %16, align 8
  %102 = call i32 @iconv_close(i64 %101)
  br label %103

103:                                              ; preds = %100, %47
  %104 = load i64, i64* %13, align 8
  %105 = load i32, i32* %15, align 4
  %106 = sext i32 %105 to i64
  %107 = sub i64 %106, %104
  %108 = trunc i64 %107 to i32
  store i32 %108, i32* %15, align 4
  %109 = load i32*, i32** %9, align 8
  %110 = icmp ne i32* %109, null
  br i1 %110, label %111, label %120

111:                                              ; preds = %103
  %112 = load i8*, i8** %12, align 8
  %113 = icmp ne i8* %112, null
  br i1 %113, label %114, label %116

114:                                              ; preds = %111
  %115 = load i32, i32* %15, align 4
  br label %117

116:                                              ; preds = %111
  br label %117

117:                                              ; preds = %116, %114
  %118 = phi i32 [ %115, %114 ], [ 0, %116 ]
  %119 = load i32*, i32** %9, align 8
  store i32 %118, i32* %119, align 4
  br label %120

120:                                              ; preds = %117, %103
  %121 = load i8*, i8** %12, align 8
  %122 = icmp ne i8* %121, null
  br i1 %122, label %123, label %128

123:                                              ; preds = %120
  %124 = load i8*, i8** %12, align 8
  %125 = load i32, i32* %15, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i8, i8* %124, i64 %126
  store i8 0, i8* %127, align 1
  br label %128

128:                                              ; preds = %123, %120
  br label %129

129:                                              ; preds = %128, %28, %25, %22, %5
  %130 = load i8*, i8** %12, align 8
  store i8* %130, i8** %6, align 8
  br label %131

131:                                              ; preds = %129, %46
  %132 = load i8*, i8** %6, align 8
  ret i8* %132
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @iconv_open(i8*, i8*) #1

declare dso_local i64 @emalloc(i32) #1

declare dso_local i64 @iconv(i64, i8**, i64*, i8**, i64*) #1

declare dso_local i64 @erealloc(i8*, i32) #1

declare dso_local i32 @efree(i8*) #1

declare dso_local i32 @iconv_close(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
