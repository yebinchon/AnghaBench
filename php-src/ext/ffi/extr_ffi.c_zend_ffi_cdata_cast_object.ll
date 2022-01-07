; ModuleID = '/home/carl/AnghaBench/php-src/ext/ffi/extr_ffi.c_zend_ffi_cdata_cast_object.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/ffi/extr_ffi.c_zend_ffi_cdata_cast_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i8*, i32 }
%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@IS_STRING = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i32 0, align 4
@ZEND_FFI_ATTR_CONST = common dso_local global i32 0, align 4
@FAILURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32)* @zend_ffi_cdata_cast_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zend_ffi_cdata_cast_object(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @IS_STRING, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %150

15:                                               ; preds = %3
  %16 = load i32*, i32** %5, align 8
  %17 = bitcast i32* %16 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %17, %struct.TYPE_9__** %8, align 8
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call %struct.TYPE_8__* @ZEND_FFI_TYPE(i32 %20)
  store %struct.TYPE_8__* %21, %struct.TYPE_8__** %9, align 8
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  store i8* %24, i8** %10, align 8
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %11, align 4
  br label %28

28:                                               ; preds = %105, %15
  %29 = load i32, i32* %11, align 4
  switch i32 %29, label %144 [
    i32 138, label %30
    i32 140, label %37
    i32 128, label %44
    i32 132, label %50
    i32 131, label %56
    i32 135, label %62
    i32 130, label %68
    i32 134, label %74
    i32 129, label %80
    i32 133, label %86
    i32 142, label %92
    i32 141, label %98
    i32 139, label %105
    i32 136, label %110
  ]

30:                                               ; preds = %28
  %31 = load i32*, i32** %6, align 8
  %32 = load i8*, i8** %10, align 8
  %33 = bitcast i8* %32 to float*
  %34 = load float, float* %33, align 4
  %35 = fpext float %34 to x86_fp80
  %36 = call i32 @ZVAL_DOUBLE(i32* %31, x86_fp80 %35)
  br label %146

37:                                               ; preds = %28
  %38 = load i32*, i32** %6, align 8
  %39 = load i8*, i8** %10, align 8
  %40 = bitcast i8* %39 to double*
  %41 = load double, double* %40, align 8
  %42 = fpext double %41 to x86_fp80
  %43 = call i32 @ZVAL_DOUBLE(i32* %38, x86_fp80 %42)
  br label %146

44:                                               ; preds = %28
  %45 = load i32*, i32** %6, align 8
  %46 = load i8*, i8** %10, align 8
  %47 = bitcast i8* %46 to i32*
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @ZVAL_LONG(i32* %45, i32 %48)
  br label %146

50:                                               ; preds = %28
  %51 = load i32*, i32** %6, align 8
  %52 = load i8*, i8** %10, align 8
  %53 = bitcast i8* %52 to i32*
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @ZVAL_LONG(i32* %51, i32 %54)
  br label %146

56:                                               ; preds = %28
  %57 = load i32*, i32** %6, align 8
  %58 = load i8*, i8** %10, align 8
  %59 = bitcast i8* %58 to i32*
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @ZVAL_LONG(i32* %57, i32 %60)
  br label %146

62:                                               ; preds = %28
  %63 = load i32*, i32** %6, align 8
  %64 = load i8*, i8** %10, align 8
  %65 = bitcast i8* %64 to i32*
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @ZVAL_LONG(i32* %63, i32 %66)
  br label %146

68:                                               ; preds = %28
  %69 = load i32*, i32** %6, align 8
  %70 = load i8*, i8** %10, align 8
  %71 = bitcast i8* %70 to i32*
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @ZVAL_LONG(i32* %69, i32 %72)
  br label %146

74:                                               ; preds = %28
  %75 = load i32*, i32** %6, align 8
  %76 = load i8*, i8** %10, align 8
  %77 = bitcast i8* %76 to i32*
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @ZVAL_LONG(i32* %75, i32 %78)
  br label %146

80:                                               ; preds = %28
  %81 = load i32*, i32** %6, align 8
  %82 = load i8*, i8** %10, align 8
  %83 = bitcast i8* %82 to i32*
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @ZVAL_LONG(i32* %81, i32 %84)
  br label %146

86:                                               ; preds = %28
  %87 = load i32*, i32** %6, align 8
  %88 = load i8*, i8** %10, align 8
  %89 = bitcast i8* %88 to i32*
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @ZVAL_LONG(i32* %87, i32 %90)
  br label %146

92:                                               ; preds = %28
  %93 = load i32*, i32** %6, align 8
  %94 = load i8*, i8** %10, align 8
  %95 = bitcast i8* %94 to i32*
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @ZVAL_BOOL(i32* %93, i32 %96)
  br label %146

98:                                               ; preds = %28
  %99 = load i32*, i32** %6, align 8
  %100 = load i8*, i8** %10, align 8
  %101 = load i8, i8* %100, align 1
  %102 = call i32 @ZSTR_CHAR(i8 zeroext %101)
  %103 = call i32 @ZVAL_INTERNED_STR(i32* %99, i32 %102)
  %104 = load i32, i32* @SUCCESS, align 4
  store i32 %104, i32* %4, align 4
  br label %152

105:                                              ; preds = %28
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 3
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  store i32 %109, i32* %11, align 4
  br label %28

110:                                              ; preds = %28
  %111 = load i8*, i8** %10, align 8
  %112 = bitcast i8* %111 to i8**
  %113 = load i8*, i8** %112, align 8
  %114 = icmp eq i8* %113, null
  br i1 %114, label %115, label %118

115:                                              ; preds = %110
  %116 = load i32*, i32** %6, align 8
  %117 = call i32 @ZVAL_NULL(i32* %116)
  br label %146

118:                                              ; preds = %110
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @ZEND_FFI_ATTR_CONST, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %141

125:                                              ; preds = %118
  %126 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 2
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = call %struct.TYPE_8__* @ZEND_FFI_TYPE(i32 %129)
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = icmp eq i32 %132, 141
  br i1 %133, label %134, label %141

134:                                              ; preds = %125
  %135 = load i32*, i32** %6, align 8
  %136 = load i8*, i8** %10, align 8
  %137 = bitcast i8* %136 to i8**
  %138 = load i8*, i8** %137, align 8
  %139 = call i32 @ZVAL_STRING(i32* %135, i8* %138)
  %140 = load i32, i32* @SUCCESS, align 4
  store i32 %140, i32* %4, align 4
  br label %152

141:                                              ; preds = %125, %118
  br label %142

142:                                              ; preds = %141
  %143 = load i32, i32* @FAILURE, align 4
  store i32 %143, i32* %4, align 4
  br label %152

144:                                              ; preds = %28
  %145 = load i32, i32* @FAILURE, align 4
  store i32 %145, i32* %4, align 4
  br label %152

146:                                              ; preds = %115, %92, %86, %80, %74, %68, %62, %56, %50, %44, %37, %30
  %147 = load i32*, i32** %6, align 8
  %148 = call i32 @convert_to_string(i32* %147)
  %149 = load i32, i32* @SUCCESS, align 4
  store i32 %149, i32* %4, align 4
  br label %152

150:                                              ; preds = %3
  %151 = load i32, i32* @FAILURE, align 4
  store i32 %151, i32* %4, align 4
  br label %152

152:                                              ; preds = %150, %146, %144, %142, %134, %98
  %153 = load i32, i32* %4, align 4
  ret i32 %153
}

declare dso_local %struct.TYPE_8__* @ZEND_FFI_TYPE(i32) #1

declare dso_local i32 @ZVAL_DOUBLE(i32*, x86_fp80) #1

declare dso_local i32 @ZVAL_LONG(i32*, i32) #1

declare dso_local i32 @ZVAL_BOOL(i32*, i32) #1

declare dso_local i32 @ZVAL_INTERNED_STR(i32*, i32) #1

declare dso_local i32 @ZSTR_CHAR(i8 zeroext) #1

declare dso_local i32 @ZVAL_NULL(i32*) #1

declare dso_local i32 @ZVAL_STRING(i32*, i8*) #1

declare dso_local i32 @convert_to_string(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
