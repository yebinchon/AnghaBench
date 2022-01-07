; ModuleID = '/home/carl/AnghaBench/php-src/sapi/litespeed/extr_lsapi_main.c_litespeed_php_import_environment_variables.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/litespeed/extr_lsapi_main.c_litespeed_php_import_environment_variables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@http_globals = common dso_local global i32 0, align 4
@TRACK_VARS_ENV = common dso_local global i64 0, align 8
@IS_ARRAY = common dso_local global i64 0, align 8
@TRACK_VARS_SERVER = common dso_local global i64 0, align 8
@environ = common dso_local global i8** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @litespeed_php_import_environment_variables to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @litespeed_php_import_environment_variables(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca [128 x i8], align 16
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i32* %0, i32** %2, align 8
  %9 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 0
  store i8* %9, i8** %6, align 8
  store i64 128, i64* %7, align 8
  %10 = load i32, i32* @http_globals, align 4
  %11 = call i32* @PG(i32 %10)
  %12 = load i64, i64* @TRACK_VARS_ENV, align 8
  %13 = getelementptr inbounds i32, i32* %11, i64 %12
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @Z_TYPE(i32 %14)
  %16 = load i64, i64* @IS_ARRAY, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %46

18:                                               ; preds = %1
  %19 = load i32*, i32** %2, align 8
  %20 = call i64 @Z_ARR_P(i32* %19)
  %21 = load i32, i32* @http_globals, align 4
  %22 = call i32* @PG(i32 %21)
  %23 = load i64, i64* @TRACK_VARS_ENV, align 8
  %24 = getelementptr inbounds i32, i32* %22, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @Z_ARR(i32 %25)
  %27 = icmp ne i64 %20, %26
  br i1 %27, label %28, label %46

28:                                               ; preds = %18
  %29 = load i32, i32* @http_globals, align 4
  %30 = call i32* @PG(i32 %29)
  %31 = load i64, i64* @TRACK_VARS_ENV, align 8
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @Z_ARRVAL(i32 %33)
  %35 = call i64 @zend_hash_num_elements(i32 %34)
  %36 = icmp sgt i64 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %28
  %38 = load i32*, i32** %2, align 8
  %39 = call i32 @zval_ptr_dtor_nogc(i32* %38)
  %40 = load i32*, i32** %2, align 8
  %41 = load i32, i32* @http_globals, align 4
  %42 = call i32* @PG(i32 %41)
  %43 = load i64, i64* @TRACK_VARS_ENV, align 8
  %44 = getelementptr inbounds i32, i32* %42, i64 %43
  %45 = call i32 @ZVAL_DUP(i32* %40, i32* %44)
  br label %160

46:                                               ; preds = %28, %18, %1
  %47 = load i32, i32* @http_globals, align 4
  %48 = call i32* @PG(i32 %47)
  %49 = load i64, i64* @TRACK_VARS_SERVER, align 8
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = call i64 @Z_TYPE(i32 %51)
  %53 = load i64, i64* @IS_ARRAY, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %83

55:                                               ; preds = %46
  %56 = load i32*, i32** %2, align 8
  %57 = call i64 @Z_ARR_P(i32* %56)
  %58 = load i32, i32* @http_globals, align 4
  %59 = call i32* @PG(i32 %58)
  %60 = load i64, i64* @TRACK_VARS_SERVER, align 8
  %61 = getelementptr inbounds i32, i32* %59, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = call i64 @Z_ARR(i32 %62)
  %64 = icmp ne i64 %57, %63
  br i1 %64, label %65, label %83

65:                                               ; preds = %55
  %66 = load i32, i32* @http_globals, align 4
  %67 = call i32* @PG(i32 %66)
  %68 = load i64, i64* @TRACK_VARS_SERVER, align 8
  %69 = getelementptr inbounds i32, i32* %67, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @Z_ARRVAL(i32 %70)
  %72 = call i64 @zend_hash_num_elements(i32 %71)
  %73 = icmp sgt i64 %72, 0
  br i1 %73, label %74, label %83

74:                                               ; preds = %65
  %75 = load i32*, i32** %2, align 8
  %76 = call i32 @zval_ptr_dtor_nogc(i32* %75)
  %77 = load i32*, i32** %2, align 8
  %78 = load i32, i32* @http_globals, align 4
  %79 = call i32* @PG(i32 %78)
  %80 = load i64, i64* @TRACK_VARS_SERVER, align 8
  %81 = getelementptr inbounds i32, i32* %79, i64 %80
  %82 = call i32 @ZVAL_DUP(i32* %77, i32* %81)
  br label %160

83:                                               ; preds = %65, %55, %46
  br label %84

84:                                               ; preds = %83
  %85 = call i32 (...) @tsrm_env_lock()
  %86 = load i8**, i8*** @environ, align 8
  store i8** %86, i8*** %4, align 8
  br label %87

87:                                               ; preds = %146, %84
  %88 = load i8**, i8*** %4, align 8
  %89 = icmp ne i8** %88, null
  br i1 %89, label %90, label %94

90:                                               ; preds = %87
  %91 = load i8**, i8*** %4, align 8
  %92 = load i8*, i8** %91, align 8
  %93 = icmp ne i8* %92, null
  br label %94

94:                                               ; preds = %90, %87
  %95 = phi i1 [ false, %87 ], [ %93, %90 ]
  br i1 %95, label %96, label %149

96:                                               ; preds = %94
  %97 = load i8**, i8*** %4, align 8
  %98 = load i8*, i8** %97, align 8
  %99 = call i8* @strchr(i8* %98, i8 signext 61)
  store i8* %99, i8** %5, align 8
  %100 = load i8*, i8** %5, align 8
  %101 = icmp ne i8* %100, null
  br i1 %101, label %103, label %102

102:                                              ; preds = %96
  br label %146

103:                                              ; preds = %96
  %104 = load i8*, i8** %5, align 8
  %105 = load i8**, i8*** %4, align 8
  %106 = load i8*, i8** %105, align 8
  %107 = ptrtoint i8* %104 to i64
  %108 = ptrtoint i8* %106 to i64
  %109 = sub i64 %107, %108
  store i64 %109, i64* %8, align 8
  %110 = load i64, i64* %8, align 8
  %111 = load i64, i64* %7, align 8
  %112 = icmp uge i64 %110, %111
  br i1 %112, label %113, label %128

113:                                              ; preds = %103
  %114 = load i64, i64* %8, align 8
  %115 = add i64 %114, 64
  store i64 %115, i64* %7, align 8
  %116 = load i8*, i8** %6, align 8
  %117 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 0
  %118 = icmp eq i8* %116, %117
  br i1 %118, label %119, label %122

119:                                              ; preds = %113
  %120 = load i64, i64* %7, align 8
  %121 = call i8* @emalloc(i64 %120)
  br label %126

122:                                              ; preds = %113
  %123 = load i8*, i8** %6, align 8
  %124 = load i64, i64* %7, align 8
  %125 = call i8* @erealloc(i8* %123, i64 %124)
  br label %126

126:                                              ; preds = %122, %119
  %127 = phi i8* [ %121, %119 ], [ %125, %122 ]
  store i8* %127, i8** %6, align 8
  br label %128

128:                                              ; preds = %126, %103
  %129 = load i8*, i8** %6, align 8
  %130 = load i8**, i8*** %4, align 8
  %131 = load i8*, i8** %130, align 8
  %132 = load i64, i64* %8, align 8
  %133 = call i32 @memcpy(i8* %129, i8* %131, i64 %132)
  %134 = load i8*, i8** %6, align 8
  %135 = load i64, i64* %8, align 8
  %136 = getelementptr inbounds i8, i8* %134, i64 %135
  store i8 0, i8* %136, align 1
  %137 = load i8*, i8** %6, align 8
  %138 = load i64, i64* %8, align 8
  %139 = load i8*, i8** %5, align 8
  %140 = getelementptr inbounds i8, i8* %139, i64 1
  %141 = load i8*, i8** %5, align 8
  %142 = getelementptr inbounds i8, i8* %141, i64 1
  %143 = call i32 @strlen(i8* %142)
  %144 = load i32*, i32** %2, align 8
  %145 = call i32 @add_variable(i8* %137, i64 %138, i8* %140, i32 %143, i32* %144)
  br label %146

146:                                              ; preds = %128, %102
  %147 = load i8**, i8*** %4, align 8
  %148 = getelementptr inbounds i8*, i8** %147, i32 1
  store i8** %148, i8*** %4, align 8
  br label %87

149:                                              ; preds = %94
  %150 = call i32 (...) @tsrm_env_unlock()
  %151 = load i8*, i8** %6, align 8
  %152 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 0
  %153 = icmp ne i8* %151, %152
  br i1 %153, label %154, label %160

154:                                              ; preds = %149
  %155 = load i8*, i8** %6, align 8
  %156 = icmp ne i8* %155, null
  br i1 %156, label %157, label %160

157:                                              ; preds = %154
  %158 = load i8*, i8** %6, align 8
  %159 = call i32 @efree(i8* %158)
  br label %160

160:                                              ; preds = %37, %74, %157, %154, %149
  ret void
}

declare dso_local i64 @Z_TYPE(i32) #1

declare dso_local i32* @PG(i32) #1

declare dso_local i64 @Z_ARR_P(i32*) #1

declare dso_local i64 @Z_ARR(i32) #1

declare dso_local i64 @zend_hash_num_elements(i32) #1

declare dso_local i32 @Z_ARRVAL(i32) #1

declare dso_local i32 @zval_ptr_dtor_nogc(i32*) #1

declare dso_local i32 @ZVAL_DUP(i32*, i32*) #1

declare dso_local i32 @tsrm_env_lock(...) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i8* @emalloc(i64) #1

declare dso_local i8* @erealloc(i8*, i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @add_variable(i8*, i64, i8*, i32, i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @tsrm_env_unlock(...) #1

declare dso_local i32 @efree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
