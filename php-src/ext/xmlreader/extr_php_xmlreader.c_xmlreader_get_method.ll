; ModuleID = '/home/carl/AnghaBench/php-src/ext/xmlreader/extr_php_xmlreader.c_xmlreader_get_method.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/xmlreader/extr_php_xmlreader.c_xmlreader_get_method.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@xmlreader_open_fn = common dso_local global i32 0, align 4
@xmlreader_xml_fn = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32**, i32*, i32*)* @xmlreader_get_method to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @xmlreader_get_method(i32** %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store i32** %0, i32*** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %8 = load i32*, i32** %6, align 8
  %9 = call i32 @ZSTR_LEN(i32* %8)
  %10 = sext i32 %9 to i64
  %11 = icmp eq i64 %10, 4
  br i1 %11, label %12, label %69

12:                                               ; preds = %3
  %13 = load i32*, i32** %6, align 8
  %14 = call i8* @ZSTR_VAL(i32* %13)
  %15 = getelementptr inbounds i8, i8* %14, i64 0
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp eq i32 %17, 111
  br i1 %18, label %26, label %19

19:                                               ; preds = %12
  %20 = load i32*, i32** %6, align 8
  %21 = call i8* @ZSTR_VAL(i32* %20)
  %22 = getelementptr inbounds i8, i8* %21, i64 0
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 79
  br i1 %25, label %26, label %69

26:                                               ; preds = %19, %12
  %27 = load i32*, i32** %6, align 8
  %28 = call i8* @ZSTR_VAL(i32* %27)
  %29 = getelementptr inbounds i8, i8* %28, i64 1
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %31, 112
  br i1 %32, label %40, label %33

33:                                               ; preds = %26
  %34 = load i32*, i32** %6, align 8
  %35 = call i8* @ZSTR_VAL(i32* %34)
  %36 = getelementptr inbounds i8, i8* %35, i64 1
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %38, 80
  br i1 %39, label %40, label %69

40:                                               ; preds = %33, %26
  %41 = load i32*, i32** %6, align 8
  %42 = call i8* @ZSTR_VAL(i32* %41)
  %43 = getelementptr inbounds i8, i8* %42, i64 2
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp eq i32 %45, 101
  br i1 %46, label %54, label %47

47:                                               ; preds = %40
  %48 = load i32*, i32** %6, align 8
  %49 = call i8* @ZSTR_VAL(i32* %48)
  %50 = getelementptr inbounds i8, i8* %49, i64 2
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp eq i32 %52, 69
  br i1 %53, label %54, label %69

54:                                               ; preds = %47, %40
  %55 = load i32*, i32** %6, align 8
  %56 = call i8* @ZSTR_VAL(i32* %55)
  %57 = getelementptr inbounds i8, i8* %56, i64 3
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp eq i32 %59, 110
  br i1 %60, label %68, label %61

61:                                               ; preds = %54
  %62 = load i32*, i32** %6, align 8
  %63 = call i8* @ZSTR_VAL(i32* %62)
  %64 = getelementptr inbounds i8, i8* %63, i64 3
  %65 = load i8, i8* %64, align 1
  %66 = sext i8 %65 to i32
  %67 = icmp eq i32 %66, 78
  br i1 %67, label %68, label %69

68:                                               ; preds = %61, %54
  store i32* @xmlreader_open_fn, i32** %4, align 8
  br label %123

69:                                               ; preds = %61, %47, %33, %19, %3
  %70 = load i32*, i32** %6, align 8
  %71 = call i32 @ZSTR_LEN(i32* %70)
  %72 = sext i32 %71 to i64
  %73 = icmp eq i64 %72, 3
  br i1 %73, label %74, label %117

74:                                               ; preds = %69
  %75 = load i32*, i32** %6, align 8
  %76 = call i8* @ZSTR_VAL(i32* %75)
  %77 = getelementptr inbounds i8, i8* %76, i64 0
  %78 = load i8, i8* %77, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp eq i32 %79, 120
  br i1 %80, label %88, label %81

81:                                               ; preds = %74
  %82 = load i32*, i32** %6, align 8
  %83 = call i8* @ZSTR_VAL(i32* %82)
  %84 = getelementptr inbounds i8, i8* %83, i64 0
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp eq i32 %86, 88
  br i1 %87, label %88, label %117

88:                                               ; preds = %81, %74
  %89 = load i32*, i32** %6, align 8
  %90 = call i8* @ZSTR_VAL(i32* %89)
  %91 = getelementptr inbounds i8, i8* %90, i64 1
  %92 = load i8, i8* %91, align 1
  %93 = sext i8 %92 to i32
  %94 = icmp eq i32 %93, 109
  br i1 %94, label %102, label %95

95:                                               ; preds = %88
  %96 = load i32*, i32** %6, align 8
  %97 = call i8* @ZSTR_VAL(i32* %96)
  %98 = getelementptr inbounds i8, i8* %97, i64 1
  %99 = load i8, i8* %98, align 1
  %100 = sext i8 %99 to i32
  %101 = icmp eq i32 %100, 77
  br i1 %101, label %102, label %117

102:                                              ; preds = %95, %88
  %103 = load i32*, i32** %6, align 8
  %104 = call i8* @ZSTR_VAL(i32* %103)
  %105 = getelementptr inbounds i8, i8* %104, i64 2
  %106 = load i8, i8* %105, align 1
  %107 = sext i8 %106 to i32
  %108 = icmp eq i32 %107, 108
  br i1 %108, label %116, label %109

109:                                              ; preds = %102
  %110 = load i32*, i32** %6, align 8
  %111 = call i8* @ZSTR_VAL(i32* %110)
  %112 = getelementptr inbounds i8, i8* %111, i64 2
  %113 = load i8, i8* %112, align 1
  %114 = sext i8 %113 to i32
  %115 = icmp eq i32 %114, 76
  br i1 %115, label %116, label %117

116:                                              ; preds = %109, %102
  store i32* @xmlreader_xml_fn, i32** %4, align 8
  br label %123

117:                                              ; preds = %109, %95, %81, %69
  br label %118

118:                                              ; preds = %117
  %119 = load i32**, i32*** %5, align 8
  %120 = load i32*, i32** %6, align 8
  %121 = load i32*, i32** %7, align 8
  %122 = call i32* @zend_std_get_method(i32** %119, i32* %120, i32* %121)
  store i32* %122, i32** %4, align 8
  br label %123

123:                                              ; preds = %118, %116, %68
  %124 = load i32*, i32** %4, align 8
  ret i32* %124
}

declare dso_local i32 @ZSTR_LEN(i32*) #1

declare dso_local i8* @ZSTR_VAL(i32*) #1

declare dso_local i32* @zend_std_get_method(i32**, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
