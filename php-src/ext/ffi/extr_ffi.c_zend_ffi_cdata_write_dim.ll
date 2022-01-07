; ModuleID = '/home/carl/AnghaBench/php-src/ext/ffi/extr_ffi.c_zend_ffi_cdata_write_dim.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/ffi/extr_ffi.c_zend_ffi_cdata_write_dim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i64, i32 }
%struct.TYPE_9__ = type { i64, i32, i32, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i64, i32 }

@zend_ffi_exception_ce = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"Cannot add next element to object of type FFI\\CData\00", align 1
@ZEND_FFI_TYPE_ARRAY = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"C array index out of bounds\00", align 1
@ZEND_FFI_FLAG_CONST = common dso_local global i32 0, align 4
@ZEND_FFI_ATTR_CONST = common dso_local global i32 0, align 4
@ZEND_FFI_TYPE_POINTER = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [25 x i8] c"NULL pointer dereference\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"Attempt to assign element of non C array\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"Attempt to assign read-only location\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*)* @zend_ffi_cdata_write_dim to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zend_ffi_cdata_write_dim(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = bitcast i32* %12 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %13, %struct.TYPE_10__** %7, align 8
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = call %struct.TYPE_9__* @ZEND_FFI_TYPE(i32 %16)
  store %struct.TYPE_9__* %17, %struct.TYPE_9__** %8, align 8
  %18 = load i32*, i32** %5, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load i32, i32* @zend_ffi_exception_ce, align 4
  %22 = call i32 @zend_throw_error(i32 %21, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  br label %157

23:                                               ; preds = %3
  %24 = load i32*, i32** %5, align 8
  %25 = call i32 @zval_get_long(i32* %24)
  store i32 %25, i32* %9, align 4
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @ZEND_FFI_TYPE_ARRAY, align 8
  %30 = icmp eq i64 %28, %29
  %31 = zext i1 %30 to i32
  %32 = call i64 @EXPECTED(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %91

34:                                               ; preds = %23
  %35 = load i32, i32* %9, align 4
  %36 = sext i32 %35 to i64
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 4
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp sge i64 %36, %40
  %42 = zext i1 %41 to i32
  %43 = call i64 @UNEXPECTED(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %63

45:                                               ; preds = %34
  %46 = load i32, i32* %9, align 4
  %47 = icmp slt i32 %46, 0
  %48 = zext i1 %47 to i32
  %49 = call i64 @UNEXPECTED(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %60, label %51

51:                                               ; preds = %45
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 4
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  %57 = zext i1 %56 to i32
  %58 = call i64 @UNEXPECTED(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %51, %45
  %61 = load i32, i32* @zend_ffi_exception_ce, align 4
  %62 = call i32 @zend_throw_error(i32 %61, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %157

63:                                               ; preds = %51, %34
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @ZEND_FFI_FLAG_CONST, align 4
  %68 = and i32 %66, %67
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @ZEND_FFI_ATTR_CONST, align 4
  %73 = and i32 %71, %72
  %74 = or i32 %68, %73
  store i32 %74, i32* %11, align 4
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 4
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = call %struct.TYPE_9__* @ZEND_FFI_TYPE(i32 %78)
  store %struct.TYPE_9__* %79, %struct.TYPE_9__** %8, align 8
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = inttoptr i64 %82 to i8*
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %9, align 4
  %88 = mul nsw i32 %86, %87
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i8, i8* %83, i64 %89
  store i8* %90, i8** %10, align 8
  br label %145

91:                                               ; preds = %23
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @ZEND_FFI_TYPE_POINTER, align 8
  %96 = icmp eq i64 %94, %95
  %97 = zext i1 %96 to i32
  %98 = call i64 @EXPECTED(i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %141

100:                                              ; preds = %91
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @ZEND_FFI_FLAG_CONST, align 4
  %105 = and i32 %103, %104
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* @ZEND_FFI_ATTR_CONST, align 4
  %110 = and i32 %108, %109
  %111 = or i32 %105, %110
  store i32 %111, i32* %11, align 4
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 3
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = call %struct.TYPE_9__* @ZEND_FFI_TYPE(i32 %115)
  store %struct.TYPE_9__* %116, %struct.TYPE_9__** %8, align 8
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  %121 = xor i1 %120, true
  %122 = zext i1 %121 to i32
  %123 = call i64 @UNEXPECTED(i32 %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %100
  %126 = load i32, i32* @zend_ffi_exception_ce, align 4
  %127 = call i32 @zend_throw_error(i32 %126, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %157

128:                                              ; preds = %100
  %129 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = inttoptr i64 %131 to i8**
  %133 = load i8*, i8** %132, align 8
  %134 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* %9, align 4
  %138 = mul nsw i32 %136, %137
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i8, i8* %133, i64 %139
  store i8* %140, i8** %10, align 8
  br label %144

141:                                              ; preds = %91
  %142 = load i32, i32* @zend_ffi_exception_ce, align 4
  %143 = call i32 @zend_throw_error(i32 %142, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  br label %157

144:                                              ; preds = %128
  br label %145

145:                                              ; preds = %144, %63
  %146 = load i32, i32* %11, align 4
  %147 = call i64 @UNEXPECTED(i32 %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %152

149:                                              ; preds = %145
  %150 = load i32, i32* @zend_ffi_exception_ce, align 4
  %151 = call i32 @zend_throw_error(i32 %150, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0))
  br label %157

152:                                              ; preds = %145
  %153 = load i8*, i8** %10, align 8
  %154 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %155 = load i32*, i32** %6, align 8
  %156 = call i32 @zend_ffi_zval_to_cdata(i8* %153, %struct.TYPE_9__* %154, i32* %155)
  br label %157

157:                                              ; preds = %152, %149, %141, %125, %60, %20
  ret void
}

declare dso_local %struct.TYPE_9__* @ZEND_FFI_TYPE(i32) #1

declare dso_local i32 @zend_throw_error(i32, i8*) #1

declare dso_local i32 @zval_get_long(i32*) #1

declare dso_local i64 @EXPECTED(i32) #1

declare dso_local i64 @UNEXPECTED(i32) #1

declare dso_local i32 @zend_ffi_zval_to_cdata(i8*, %struct.TYPE_9__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
