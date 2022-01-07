; ModuleID = '/home/carl/AnghaBench/php-src/ext/phar/extr_util.c_phar_call_openssl_signverify.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/phar/extr_util.c_phar_call_openssl_signverify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32*, i32* }

@.str = private unnamed_addr constant [13 x i8] c"openssl_sign\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"openssl_verify\00", align 1
@FAILURE = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i64, i8*, i64, i8**, i64*)* @phar_call_openssl_signverify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @phar_call_openssl_signverify(i32 %0, i32* %1, i64 %2, i8* %3, i64 %4, i8** %5, i64* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8**, align 8
  %15 = alloca i64*, align 8
  %16 = alloca %struct.TYPE_4__, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca [3 x i32], align 4
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  store i32 %0, i32* %9, align 4
  store i32* %1, i32** %10, align 8
  store i64 %2, i64* %11, align 8
  store i8* %3, i8** %12, align 8
  store i64 %4, i64* %13, align 8
  store i8** %5, i8*** %14, align 8
  store i64* %6, i64** %15, align 8
  %22 = load i32, i32* %9, align 4
  %23 = icmp ne i32 %22, 0
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0)
  %26 = load i32, i32* %9, align 4
  %27 = icmp ne i32 %26, 0
  %28 = zext i1 %27 to i64
  %29 = select i1 %27, i64 12, i64 14
  %30 = call i32 @ZVAL_STRINGL(i32* %20, i8* %25, i64 %29)
  %31 = getelementptr inbounds [3 x i32], [3 x i32]* %19, i64 0, i64 1
  %32 = load i8**, i8*** %14, align 8
  %33 = load i8*, i8** %32, align 8
  %34 = load i64*, i64** %15, align 8
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @ZVAL_STRINGL(i32* %31, i8* %33, i64 %35)
  %37 = getelementptr inbounds [3 x i32], [3 x i32]* %19, i64 0, i64 2
  %38 = load i8*, i8** %12, align 8
  %39 = load i64, i64* %13, align 8
  %40 = call i32 @ZVAL_STRINGL(i32* %37, i8* %38, i64 %39)
  %41 = load i32*, i32** %10, align 8
  %42 = call i32 @php_stream_rewind(i32* %41)
  %43 = load i32*, i32** %10, align 8
  %44 = load i64, i64* %11, align 8
  %45 = call i32* @php_stream_copy_to_mem(i32* %43, i64 %44, i32 0)
  store i32* %45, i32** %21, align 8
  %46 = load i32*, i32** %21, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %48, label %52

48:                                               ; preds = %7
  %49 = getelementptr inbounds [3 x i32], [3 x i32]* %19, i64 0, i64 0
  %50 = load i32*, i32** %21, align 8
  %51 = call i32 @ZVAL_STR(i32* %49, i32* %50)
  br label %55

52:                                               ; preds = %7
  %53 = getelementptr inbounds [3 x i32], [3 x i32]* %19, i64 0, i64 0
  %54 = call i32 @ZVAL_EMPTY_STRING(i32* %53)
  br label %55

55:                                               ; preds = %52, %48
  %56 = load i64, i64* %11, align 8
  %57 = getelementptr inbounds [3 x i32], [3 x i32]* %19, i64 0, i64 0
  %58 = load i32, i32* %57, align 4
  %59 = call i64 @Z_STRLEN(i32 %58)
  %60 = icmp ne i64 %56, %59
  br i1 %60, label %61, label %70

61:                                               ; preds = %55
  %62 = getelementptr inbounds [3 x i32], [3 x i32]* %19, i64 0, i64 0
  %63 = call i32 @zval_ptr_dtor_str(i32* %62)
  %64 = getelementptr inbounds [3 x i32], [3 x i32]* %19, i64 0, i64 1
  %65 = call i32 @zval_ptr_dtor_str(i32* %64)
  %66 = getelementptr inbounds [3 x i32], [3 x i32]* %19, i64 0, i64 2
  %67 = call i32 @zval_ptr_dtor_str(i32* %66)
  %68 = call i32 @zval_ptr_dtor_str(i32* %20)
  %69 = load i32, i32* @FAILURE, align 4
  store i32 %69, i32* %8, align 4
  br label %172

70:                                               ; preds = %55
  %71 = load i32, i32* @FAILURE, align 4
  %72 = call i32 @zend_fcall_info_init(i32* %20, i32 0, %struct.TYPE_4__* %16, i32* %17, i32* null, i32* null)
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %83

74:                                               ; preds = %70
  %75 = getelementptr inbounds [3 x i32], [3 x i32]* %19, i64 0, i64 0
  %76 = call i32 @zval_ptr_dtor_str(i32* %75)
  %77 = getelementptr inbounds [3 x i32], [3 x i32]* %19, i64 0, i64 1
  %78 = call i32 @zval_ptr_dtor_str(i32* %77)
  %79 = getelementptr inbounds [3 x i32], [3 x i32]* %19, i64 0, i64 2
  %80 = call i32 @zval_ptr_dtor_str(i32* %79)
  %81 = call i32 @zval_ptr_dtor_str(i32* %20)
  %82 = load i32, i32* @FAILURE, align 4
  store i32 %82, i32* %8, align 4
  br label %172

83:                                               ; preds = %70
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  store i32 3, i32* %84, align 8
  %85 = getelementptr inbounds [3 x i32], [3 x i32]* %19, i64 0, i64 0
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 2
  store i32* %85, i32** %86, align 8
  %87 = getelementptr inbounds [3 x i32], [3 x i32]* %19, i64 0, i64 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @Z_ADDREF(i32 %88)
  %90 = load i32, i32* %9, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %83
  %93 = getelementptr inbounds [3 x i32], [3 x i32]* %19, i64 0, i64 1
  %94 = getelementptr inbounds [3 x i32], [3 x i32]* %19, i64 0, i64 1
  %95 = call i32 @ZVAL_NEW_REF(i32* %93, i32* %94)
  br label %100

96:                                               ; preds = %83
  %97 = getelementptr inbounds [3 x i32], [3 x i32]* %19, i64 0, i64 1
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @Z_ADDREF(i32 %98)
  br label %100

100:                                              ; preds = %96, %92
  %101 = getelementptr inbounds [3 x i32], [3 x i32]* %19, i64 0, i64 2
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @Z_ADDREF(i32 %102)
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  store i32* %18, i32** %104, align 8
  %105 = load i32, i32* @FAILURE, align 4
  %106 = call i32 @zend_call_function(%struct.TYPE_4__* %16, i32* %17)
  %107 = icmp eq i32 %105, %106
  br i1 %107, label %108, label %117

108:                                              ; preds = %100
  %109 = getelementptr inbounds [3 x i32], [3 x i32]* %19, i64 0, i64 0
  %110 = call i32 @zval_ptr_dtor_str(i32* %109)
  %111 = getelementptr inbounds [3 x i32], [3 x i32]* %19, i64 0, i64 1
  %112 = call i32 @zval_ptr_dtor(i32* %111)
  %113 = getelementptr inbounds [3 x i32], [3 x i32]* %19, i64 0, i64 2
  %114 = call i32 @zval_ptr_dtor_str(i32* %113)
  %115 = call i32 @zval_ptr_dtor_str(i32* %20)
  %116 = load i32, i32* @FAILURE, align 4
  store i32 %116, i32* %8, align 4
  br label %172

117:                                              ; preds = %100
  %118 = call i32 @zval_ptr_dtor_str(i32* %20)
  %119 = getelementptr inbounds [3 x i32], [3 x i32]* %19, i64 0, i64 0
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @Z_DELREF(i32 %120)
  %122 = load i32, i32* %9, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %117
  %125 = getelementptr inbounds [3 x i32], [3 x i32]* %19, i64 0, i64 1
  %126 = call i32 @ZVAL_UNREF(i32* %125)
  br label %131

127:                                              ; preds = %117
  %128 = getelementptr inbounds [3 x i32], [3 x i32]* %19, i64 0, i64 1
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @Z_DELREF(i32 %129)
  br label %131

131:                                              ; preds = %127, %124
  %132 = getelementptr inbounds [3 x i32], [3 x i32]* %19, i64 0, i64 2
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @Z_DELREF(i32 %133)
  %135 = getelementptr inbounds [3 x i32], [3 x i32]* %19, i64 0, i64 0
  %136 = call i32 @zval_ptr_dtor_str(i32* %135)
  %137 = getelementptr inbounds [3 x i32], [3 x i32]* %19, i64 0, i64 2
  %138 = call i32 @zval_ptr_dtor_str(i32* %137)
  %139 = load i32, i32* %18, align 4
  %140 = call i32 @Z_TYPE(i32 %139)
  switch i32 %140, label %141 [
    i32 129, label %142
    i32 128, label %152
    i32 130, label %168
  ]

141:                                              ; preds = %131
  br label %142

142:                                              ; preds = %131, %141
  %143 = getelementptr inbounds [3 x i32], [3 x i32]* %19, i64 0, i64 1
  %144 = call i32 @zval_ptr_dtor(i32* %143)
  %145 = load i32, i32* %18, align 4
  %146 = call i32 @Z_LVAL(i32 %145)
  %147 = icmp eq i32 1, %146
  br i1 %147, label %148, label %150

148:                                              ; preds = %142
  %149 = load i32, i32* @SUCCESS, align 4
  store i32 %149, i32* %8, align 4
  br label %172

150:                                              ; preds = %142
  %151 = load i32, i32* @FAILURE, align 4
  store i32 %151, i32* %8, align 4
  br label %172

152:                                              ; preds = %131
  %153 = getelementptr inbounds [3 x i32], [3 x i32]* %19, i64 0, i64 1
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @Z_STRVAL(i32 %154)
  %156 = getelementptr inbounds [3 x i32], [3 x i32]* %19, i64 0, i64 1
  %157 = load i32, i32* %156, align 4
  %158 = call i64 @Z_STRLEN(i32 %157)
  %159 = call i8* @estrndup(i32 %155, i64 %158)
  %160 = load i8**, i8*** %14, align 8
  store i8* %159, i8** %160, align 8
  %161 = getelementptr inbounds [3 x i32], [3 x i32]* %19, i64 0, i64 1
  %162 = load i32, i32* %161, align 4
  %163 = call i64 @Z_STRLEN(i32 %162)
  %164 = load i64*, i64** %15, align 8
  store i64 %163, i64* %164, align 8
  %165 = getelementptr inbounds [3 x i32], [3 x i32]* %19, i64 0, i64 1
  %166 = call i32 @zval_ptr_dtor(i32* %165)
  %167 = load i32, i32* @SUCCESS, align 4
  store i32 %167, i32* %8, align 4
  br label %172

168:                                              ; preds = %131
  %169 = getelementptr inbounds [3 x i32], [3 x i32]* %19, i64 0, i64 1
  %170 = call i32 @zval_ptr_dtor(i32* %169)
  %171 = load i32, i32* @FAILURE, align 4
  store i32 %171, i32* %8, align 4
  br label %172

172:                                              ; preds = %168, %152, %150, %148, %108, %74, %61
  %173 = load i32, i32* %8, align 4
  ret i32 %173
}

declare dso_local i32 @ZVAL_STRINGL(i32*, i8*, i64) #1

declare dso_local i32 @php_stream_rewind(i32*) #1

declare dso_local i32* @php_stream_copy_to_mem(i32*, i64, i32) #1

declare dso_local i32 @ZVAL_STR(i32*, i32*) #1

declare dso_local i32 @ZVAL_EMPTY_STRING(i32*) #1

declare dso_local i64 @Z_STRLEN(i32) #1

declare dso_local i32 @zval_ptr_dtor_str(i32*) #1

declare dso_local i32 @zend_fcall_info_init(i32*, i32, %struct.TYPE_4__*, i32*, i32*, i32*) #1

declare dso_local i32 @Z_ADDREF(i32) #1

declare dso_local i32 @ZVAL_NEW_REF(i32*, i32*) #1

declare dso_local i32 @zend_call_function(%struct.TYPE_4__*, i32*) #1

declare dso_local i32 @zval_ptr_dtor(i32*) #1

declare dso_local i32 @Z_DELREF(i32) #1

declare dso_local i32 @ZVAL_UNREF(i32*) #1

declare dso_local i32 @Z_TYPE(i32) #1

declare dso_local i32 @Z_LVAL(i32) #1

declare dso_local i8* @estrndup(i32, i64) #1

declare dso_local i32 @Z_STRVAL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
