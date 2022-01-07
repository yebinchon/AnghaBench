; ModuleID = '/home/carl/AnghaBench/php-src/ext/pdo_firebird/extr_firebird_driver.c_firebird_handle_set_attribute.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/pdo_firebird/extr_firebird_driver.c_firebird_handle_set_attribute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i64 }
%struct.TYPE_5__ = type { i8*, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [62 x i8] c"Cannot enable auto-commit while a transaction is already open\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32, i32*)* @firebird_handle_set_attribute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @firebird_handle_set_attribute(%struct.TYPE_6__* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %16, %struct.TYPE_5__** %8, align 8
  %17 = load i32, i32* %6, align 4
  switch i32 %17, label %147 [
    i32 132, label %18
    i32 131, label %55
    i32 130, label %63
    i32 128, label %91
    i32 129, label %119
  ]

18:                                               ; preds = %3
  %19 = load i32*, i32** %7, align 8
  %20 = call i32 @zval_get_long(i32* %19)
  %21 = icmp ne i32 %20, 0
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, i32 1, i32 0
  store i32 %23, i32* %9, align 4
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* %9, align 4
  %28 = xor i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %54

30:                                               ; preds = %18
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %50

35:                                               ; preds = %30
  %36 = load i32, i32* %9, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %35
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  store i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i8** %40, align 8
  store i32 0, i32* %4, align 4
  br label %148

41:                                               ; preds = %35
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %43 = call i32 @firebird_handle_commit(%struct.TYPE_6__* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %41
  br label %147

46:                                               ; preds = %41
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 1
  store i32 0, i32* %48, align 4
  br label %49

49:                                               ; preds = %46
  br label %50

50:                                               ; preds = %49, %30
  %51 = load i32, i32* %9, align 4
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  br label %54

54:                                               ; preds = %50, %18
  store i32 1, i32* %4, align 4
  br label %148

55:                                               ; preds = %3
  %56 = load i32*, i32** %7, align 8
  %57 = call i32 @zval_get_long(i32* %56)
  %58 = icmp ne i32 %57, 0
  %59 = zext i1 %58 to i64
  %60 = select i1 %58, i32 1, i32 0
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 8
  store i32 1, i32* %4, align 4
  br label %148

63:                                               ; preds = %3
  %64 = load i32*, i32** %7, align 8
  %65 = call i32* @zval_try_get_string(i32* %64)
  store i32* %65, i32** %10, align 8
  %66 = load i32*, i32** %10, align 8
  %67 = icmp ne i32* %66, null
  %68 = xor i1 %67, true
  %69 = zext i1 %68 to i32
  %70 = call i32 @UNEXPECTED(i32 %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %63
  store i32 0, i32* %4, align 4
  br label %148

73:                                               ; preds = %63
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 4
  %76 = load i32, i32* %75, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %73
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 4
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @efree(i32 %81)
  br label %83

83:                                               ; preds = %78, %73
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 4
  %86 = load i32*, i32** %10, align 8
  %87 = call i32 @ZSTR_VAL(i32* %86)
  %88 = call i32 @spprintf(i32* %85, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %87)
  %89 = load i32*, i32** %10, align 8
  %90 = call i32 @zend_string_release_ex(i32* %89, i32 0)
  store i32 1, i32* %4, align 4
  br label %148

91:                                               ; preds = %3
  %92 = load i32*, i32** %7, align 8
  %93 = call i32* @zval_try_get_string(i32* %92)
  store i32* %93, i32** %11, align 8
  %94 = load i32*, i32** %11, align 8
  %95 = icmp ne i32* %94, null
  %96 = xor i1 %95, true
  %97 = zext i1 %96 to i32
  %98 = call i32 @UNEXPECTED(i32 %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %91
  store i32 0, i32* %4, align 4
  br label %148

101:                                              ; preds = %91
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 8
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %101
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @efree(i32 %109)
  br label %111

111:                                              ; preds = %106, %101
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 3
  %114 = load i32*, i32** %11, align 8
  %115 = call i32 @ZSTR_VAL(i32* %114)
  %116 = call i32 @spprintf(i32* %113, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %115)
  %117 = load i32*, i32** %11, align 8
  %118 = call i32 @zend_string_release_ex(i32* %117, i32 0)
  store i32 1, i32* %4, align 4
  br label %148

119:                                              ; preds = %3
  %120 = load i32*, i32** %7, align 8
  %121 = call i32* @zval_try_get_string(i32* %120)
  store i32* %121, i32** %12, align 8
  %122 = load i32*, i32** %12, align 8
  %123 = icmp ne i32* %122, null
  %124 = xor i1 %123, true
  %125 = zext i1 %124 to i32
  %126 = call i32 @UNEXPECTED(i32 %125)
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %119
  store i32 0, i32* %4, align 4
  br label %148

129:                                              ; preds = %119
  %130 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %139

134:                                              ; preds = %129
  %135 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @efree(i32 %137)
  br label %139

139:                                              ; preds = %134, %129
  %140 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 2
  %142 = load i32*, i32** %12, align 8
  %143 = call i32 @ZSTR_VAL(i32* %142)
  %144 = call i32 @spprintf(i32* %141, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %143)
  %145 = load i32*, i32** %12, align 8
  %146 = call i32 @zend_string_release_ex(i32* %145, i32 0)
  store i32 1, i32* %4, align 4
  br label %148

147:                                              ; preds = %3, %45
  store i32 0, i32* %4, align 4
  br label %148

148:                                              ; preds = %147, %139, %128, %111, %100, %83, %72, %55, %54, %38
  %149 = load i32, i32* %4, align 4
  ret i32 %149
}

declare dso_local i32 @zval_get_long(i32*) #1

declare dso_local i32 @firebird_handle_commit(%struct.TYPE_6__*) #1

declare dso_local i32* @zval_try_get_string(i32*) #1

declare dso_local i32 @UNEXPECTED(i32) #1

declare dso_local i32 @efree(i32) #1

declare dso_local i32 @spprintf(i32*, i32, i8*, i32) #1

declare dso_local i32 @ZSTR_VAL(i32*) #1

declare dso_local i32 @zend_string_release_ex(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
