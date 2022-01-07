; ModuleID = '/home/carl/AnghaBench/php-src/sapi/phpdbg/extr_phpdbg_watch.c_phpdbg_try_readding_watch_element.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/phpdbg/extr_phpdbg_watch.c_phpdbg_try_readding_watch_element.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32*, %struct.TYPE_7__, i32, %struct.TYPE_8__*, i32 }
%struct.TYPE_7__ = type { i8, i32 }

@PHPDBG_WATCH_ARRAY = common dso_local global i32 0, align 4
@PHPDBG_WATCH_OBJECT = common dso_local global i32 0, align 4
@HT_WATCH_OFFSET = common dso_local global i32 0, align 4
@WATCH_ON_HASHTABLE = common dso_local global i32 0, align 4
@PHPDBG_WATCH_IMPLICIT = common dso_local global i32 0, align 4
@IS_INDIRECT = common dso_local global i64 0, align 8
@WATCH_ON_ZVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @phpdbg_try_readding_watch_element(i8* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %5, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = call i32* @HT_FROM_ZVP(i8* %11)
  store i32* %12, i32** %7, align 8
  %13 = load i32*, i32** %7, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %128

16:                                               ; preds = %2
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @PHPDBG_WATCH_ARRAY, align 4
  %21 = load i32, i32* @PHPDBG_WATCH_OBJECT, align 4
  %22 = or i32 %20, %21
  %23 = and i32 %19, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %55

25:                                               ; preds = %16
  %26 = load i32*, i32** %7, align 8
  %27 = bitcast i32* %26 to i8*
  %28 = load i32, i32* @HT_WATCH_OFFSET, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8, i8* %27, i64 %29
  store i8* %30, i8** %8, align 8
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 1
  %34 = bitcast i32* %33 to i8*
  %35 = load i32, i32* @HT_WATCH_OFFSET, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8, i8* %34, i64 %36
  store i8* %37, i8** %9, align 8
  %38 = load i32, i32* @WATCH_ON_HASHTABLE, align 4
  %39 = load i8*, i8** %9, align 8
  %40 = load i8*, i8** %8, align 8
  %41 = call i64 @phpdbg_check_watch_diff(i32 %38, i8* %39, i8* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %25
  %44 = load i32, i32* @WATCH_ON_HASHTABLE, align 4
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = load i8*, i8** %9, align 8
  %49 = load i8*, i8** %8, align 8
  %50 = call i32 @phpdbg_print_watch_diff(i32 %44, i32 %47, i8* %48, i8* %49)
  br label %51

51:                                               ; preds = %43, %25
  %52 = load i8*, i8** %4, align 8
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %54 = call i32 @phpdbg_add_ht_watch_element(i8* %52, %struct.TYPE_8__* %53)
  br label %126

55:                                               ; preds = %16
  %56 = load i32*, i32** %7, align 8
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 5
  %59 = load i32, i32* %58, align 8
  %60 = call i8* @zend_symtable_find(i32* %56, i32 %59)
  store i8* %60, i8** %6, align 8
  %61 = icmp ne i8* %60, null
  br i1 %61, label %62, label %124

62:                                               ; preds = %55
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @PHPDBG_WATCH_IMPLICIT, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %95

69:                                               ; preds = %62
  %70 = load i8*, i8** %6, align 8
  store i8* %70, i8** %10, align 8
  br label %71

71:                                               ; preds = %76, %69
  %72 = load i8*, i8** %10, align 8
  %73 = call i64 @Z_TYPE_P(i8* %72)
  %74 = load i64, i64* @IS_INDIRECT, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %71
  %77 = load i8*, i8** %10, align 8
  %78 = call i8* @Z_INDIRECT_P(i8* %77)
  store i8* %78, i8** %10, align 8
  br label %71

79:                                               ; preds = %71
  %80 = load i8*, i8** %10, align 8
  %81 = call i64 @Z_ISREF_P(i8* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %79
  %84 = load i8*, i8** %10, align 8
  %85 = call i8* @Z_REFVAL_P(i8* %84)
  store i8* %85, i8** %10, align 8
  br label %86

86:                                               ; preds = %83, %79
  %87 = load i8*, i8** %10, align 8
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 4
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %89, align 8
  %91 = call i32 @phpdbg_try_readding_watch_element(i8* %87, %struct.TYPE_8__* %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %94, label %93

93:                                               ; preds = %86
  store i32 0, i32* %3, align 4
  br label %128

94:                                               ; preds = %86
  br label %114

95:                                               ; preds = %62
  %96 = load i32, i32* @WATCH_ON_ZVAL, align 4
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 0
  %100 = load i8*, i8** %6, align 8
  %101 = call i64 @phpdbg_check_watch_diff(i32 %96, i8* %99, i8* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %113

103:                                              ; preds = %95
  %104 = load i32, i32* @WATCH_ON_ZVAL, align 4
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 2
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 0
  %111 = load i8*, i8** %6, align 8
  %112 = call i32 @phpdbg_print_watch_diff(i32 %104, i32 %107, i8* %110, i8* %111)
  br label %113

113:                                              ; preds = %103, %95
  br label %114

114:                                              ; preds = %113, %94
  %115 = load i32*, i32** %7, align 8
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 1
  store i32* %115, i32** %117, align 8
  %118 = load i8*, i8** %6, align 8
  %119 = bitcast i8* %118 to i32*
  %120 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %121 = call i32 @phpdbg_add_bucket_watch_element(i32* %119, %struct.TYPE_8__* %120)
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %123 = call i32 @phpdbg_watch_parent_ht(%struct.TYPE_8__* %122)
  br label %125

124:                                              ; preds = %55
  store i32 0, i32* %3, align 4
  br label %128

125:                                              ; preds = %114
  br label %126

126:                                              ; preds = %125, %51
  br label %127

127:                                              ; preds = %126
  store i32 1, i32* %3, align 4
  br label %128

128:                                              ; preds = %127, %124, %93, %15
  %129 = load i32, i32* %3, align 4
  ret i32 %129
}

declare dso_local i32* @HT_FROM_ZVP(i8*) #1

declare dso_local i64 @phpdbg_check_watch_diff(i32, i8*, i8*) #1

declare dso_local i32 @phpdbg_print_watch_diff(i32, i32, i8*, i8*) #1

declare dso_local i32 @phpdbg_add_ht_watch_element(i8*, %struct.TYPE_8__*) #1

declare dso_local i8* @zend_symtable_find(i32*, i32) #1

declare dso_local i64 @Z_TYPE_P(i8*) #1

declare dso_local i8* @Z_INDIRECT_P(i8*) #1

declare dso_local i64 @Z_ISREF_P(i8*) #1

declare dso_local i8* @Z_REFVAL_P(i8*) #1

declare dso_local i32 @phpdbg_add_bucket_watch_element(i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @phpdbg_watch_parent_ht(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
