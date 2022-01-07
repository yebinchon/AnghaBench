; ModuleID = '/home/carl/AnghaBench/php-src/ext/phar/extr_phar_object.c_phar_mung_server_vars.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/phar/extr_phar_object.c_phar_mung_server_vars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@http_globals = common dso_local global i32 0, align 4
@TRACK_VARS_SERVER = common dso_local global i64 0, align 8
@IS_UNDEF = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"PATH_INFO\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"PHAR_PATH_INFO\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"PATH_TRANSLATED\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"phar://%s%s\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"PHAR_PATH_TRANSLATED\00", align 1
@phar_SERVER_mung_list = common dso_local global i32 0, align 4
@PHAR_MUNG_REQUEST_URI = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [12 x i8] c"REQUEST_URI\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"PHAR_REQUEST_URI\00", align 1
@PHAR_MUNG_PHP_SELF = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [9 x i8] c"PHP_SELF\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"PHAR_PHP_SELF\00", align 1
@PHAR_MUNG_SCRIPT_NAME = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [12 x i8] c"SCRIPT_NAME\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"PHAR_SCRIPT_NAME\00", align 1
@PHAR_MUNG_SCRIPT_FILENAME = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [16 x i8] c"SCRIPT_FILENAME\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"PHAR_SCRIPT_FILENAME\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i64, i8*, i64)* @phar_mung_server_vars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @phar_mung_server_vars(i8* %0, i8* %1, i64 %2, i8* %3, i64 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  store i64 %4, i64* %10, align 8
  %19 = load i8*, i8** %9, align 8
  %20 = call i64 @strlen(i8* %19)
  store i64 %20, i64* %14, align 8
  %21 = load i32, i32* @http_globals, align 4
  %22 = call i32* @PG(i32 %21)
  %23 = load i64, i64* @TRACK_VARS_SERVER, align 8
  %24 = getelementptr inbounds i32, i32* %22, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @Z_TYPE(i32 %25)
  %27 = load i64, i64* @IS_UNDEF, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %5
  br label %212

30:                                               ; preds = %5
  %31 = load i32, i32* @http_globals, align 4
  %32 = call i32* @PG(i32 %31)
  %33 = load i64, i64* @TRACK_VARS_SERVER, align 8
  %34 = getelementptr inbounds i32, i32* %32, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = call i32* @Z_ARRVAL(i32 %35)
  store i32* %36, i32** %11, align 8
  %37 = load i32*, i32** %11, align 8
  %38 = call i32* @zend_hash_str_find(i32* %37, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 9)
  store i32* %38, i32** %12, align 8
  %39 = icmp ne i32* null, %38
  br i1 %39, label %40, label %67

40:                                               ; preds = %30
  %41 = load i32*, i32** %12, align 8
  %42 = call i8* @Z_STRVAL_P(i32* %41)
  store i8* %42, i8** %13, align 8
  %43 = load i32*, i32** %12, align 8
  %44 = call i64 @Z_STRLEN_P(i32* %43)
  store i64 %44, i64* %15, align 8
  %45 = load i64, i64* %15, align 8
  %46 = load i64, i64* %8, align 8
  %47 = icmp ugt i64 %45, %46
  br i1 %47, label %48, label %66

48:                                               ; preds = %40
  %49 = load i8*, i8** %13, align 8
  %50 = load i8*, i8** %7, align 8
  %51 = load i64, i64* %8, align 8
  %52 = call i32 @memcmp(i8* %49, i8* %50, i64 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %66, label %54

54:                                               ; preds = %48
  %55 = load i32*, i32** %12, align 8
  %56 = call i32 @Z_STR_P(i32* %55)
  %57 = call i32 @ZVAL_STR(i32* %16, i32 %56)
  %58 = load i32*, i32** %12, align 8
  %59 = load i8*, i8** %13, align 8
  %60 = load i64, i64* %8, align 8
  %61 = getelementptr inbounds i8, i8* %59, i64 %60
  %62 = load i64, i64* %10, align 8
  %63 = call i32 @ZVAL_STRINGL(i32* %58, i8* %61, i64 %62)
  %64 = load i32*, i32** %11, align 8
  %65 = call i32 @zend_hash_str_update(i32* %64, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 14, i32* %16)
  br label %66

66:                                               ; preds = %54, %48, %40
  br label %67

67:                                               ; preds = %66, %30
  %68 = load i32*, i32** %11, align 8
  %69 = call i32* @zend_hash_str_find(i32* %68, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 15)
  store i32* %69, i32** %12, align 8
  %70 = icmp ne i32* null, %69
  br i1 %70, label %71, label %83

71:                                               ; preds = %67
  %72 = load i8*, i8** %6, align 8
  %73 = load i8*, i8** %7, align 8
  %74 = call i32* @strpprintf(i32 4096, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8* %72, i8* %73)
  store i32* %74, i32** %17, align 8
  %75 = load i32*, i32** %12, align 8
  %76 = call i32 @Z_STR_P(i32* %75)
  %77 = call i32 @ZVAL_STR(i32* %16, i32 %76)
  %78 = load i32*, i32** %12, align 8
  %79 = load i32*, i32** %17, align 8
  %80 = call i32 @ZVAL_NEW_STR(i32* %78, i32* %79)
  %81 = load i32*, i32** %11, align 8
  %82 = call i32 @zend_hash_str_update(i32* %81, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 20, i32* %16)
  br label %83

83:                                               ; preds = %71, %67
  %84 = load i32, i32* @phar_SERVER_mung_list, align 4
  %85 = call i32 @PHAR_G(i32 %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %83
  br label %212

88:                                               ; preds = %83
  %89 = load i32, i32* @phar_SERVER_mung_list, align 4
  %90 = call i32 @PHAR_G(i32 %89)
  %91 = load i32, i32* @PHAR_MUNG_REQUEST_URI, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %128

94:                                               ; preds = %88
  %95 = load i32*, i32** %11, align 8
  %96 = call i32* @zend_hash_str_find(i32* %95, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32 11)
  store i32* %96, i32** %12, align 8
  %97 = icmp ne i32* null, %96
  br i1 %97, label %98, label %127

98:                                               ; preds = %94
  %99 = load i32*, i32** %12, align 8
  %100 = call i8* @Z_STRVAL_P(i32* %99)
  store i8* %100, i8** %13, align 8
  %101 = load i32*, i32** %12, align 8
  %102 = call i64 @Z_STRLEN_P(i32* %101)
  store i64 %102, i64* %15, align 8
  %103 = load i64, i64* %15, align 8
  %104 = load i64, i64* %14, align 8
  %105 = icmp ugt i64 %103, %104
  br i1 %105, label %106, label %126

106:                                              ; preds = %98
  %107 = load i8*, i8** %13, align 8
  %108 = load i8*, i8** %9, align 8
  %109 = load i64, i64* %14, align 8
  %110 = call i32 @memcmp(i8* %107, i8* %108, i64 %109)
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %126, label %112

112:                                              ; preds = %106
  %113 = load i32*, i32** %12, align 8
  %114 = call i32 @Z_STR_P(i32* %113)
  %115 = call i32 @ZVAL_STR(i32* %16, i32 %114)
  %116 = load i32*, i32** %12, align 8
  %117 = load i8*, i8** %13, align 8
  %118 = load i64, i64* %14, align 8
  %119 = getelementptr inbounds i8, i8* %117, i64 %118
  %120 = load i64, i64* %15, align 8
  %121 = load i64, i64* %14, align 8
  %122 = sub i64 %120, %121
  %123 = call i32 @ZVAL_STRINGL(i32* %116, i8* %119, i64 %122)
  %124 = load i32*, i32** %11, align 8
  %125 = call i32 @zend_hash_str_update(i32* %124, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i32 16, i32* %16)
  br label %126

126:                                              ; preds = %112, %106, %98
  br label %127

127:                                              ; preds = %126, %94
  br label %128

128:                                              ; preds = %127, %88
  %129 = load i32, i32* @phar_SERVER_mung_list, align 4
  %130 = call i32 @PHAR_G(i32 %129)
  %131 = load i32, i32* @PHAR_MUNG_PHP_SELF, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %168

134:                                              ; preds = %128
  %135 = load i32*, i32** %11, align 8
  %136 = call i32* @zend_hash_str_find(i32* %135, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i32 8)
  store i32* %136, i32** %12, align 8
  %137 = icmp ne i32* null, %136
  br i1 %137, label %138, label %167

138:                                              ; preds = %134
  %139 = load i32*, i32** %12, align 8
  %140 = call i8* @Z_STRVAL_P(i32* %139)
  store i8* %140, i8** %13, align 8
  %141 = load i32*, i32** %12, align 8
  %142 = call i64 @Z_STRLEN_P(i32* %141)
  store i64 %142, i64* %15, align 8
  %143 = load i64, i64* %15, align 8
  %144 = load i64, i64* %14, align 8
  %145 = icmp ugt i64 %143, %144
  br i1 %145, label %146, label %166

146:                                              ; preds = %138
  %147 = load i8*, i8** %13, align 8
  %148 = load i8*, i8** %9, align 8
  %149 = load i64, i64* %14, align 8
  %150 = call i32 @memcmp(i8* %147, i8* %148, i64 %149)
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %166, label %152

152:                                              ; preds = %146
  %153 = load i32*, i32** %12, align 8
  %154 = call i32 @Z_STR_P(i32* %153)
  %155 = call i32 @ZVAL_STR(i32* %16, i32 %154)
  %156 = load i32*, i32** %12, align 8
  %157 = load i8*, i8** %13, align 8
  %158 = load i64, i64* %14, align 8
  %159 = getelementptr inbounds i8, i8* %157, i64 %158
  %160 = load i64, i64* %15, align 8
  %161 = load i64, i64* %14, align 8
  %162 = sub i64 %160, %161
  %163 = call i32 @ZVAL_STRINGL(i32* %156, i8* %159, i64 %162)
  %164 = load i32*, i32** %11, align 8
  %165 = call i32 @zend_hash_str_update(i32* %164, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i32 13, i32* %16)
  br label %166

166:                                              ; preds = %152, %146, %138
  br label %167

167:                                              ; preds = %166, %134
  br label %168

168:                                              ; preds = %167, %128
  %169 = load i32, i32* @phar_SERVER_mung_list, align 4
  %170 = call i32 @PHAR_G(i32 %169)
  %171 = load i32, i32* @PHAR_MUNG_SCRIPT_NAME, align 4
  %172 = and i32 %170, %171
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %189

174:                                              ; preds = %168
  %175 = load i32*, i32** %11, align 8
  %176 = call i32* @zend_hash_str_find(i32* %175, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), i32 11)
  store i32* %176, i32** %12, align 8
  %177 = icmp ne i32* null, %176
  br i1 %177, label %178, label %188

178:                                              ; preds = %174
  %179 = load i32*, i32** %12, align 8
  %180 = call i32 @Z_STR_P(i32* %179)
  %181 = call i32 @ZVAL_STR(i32* %16, i32 %180)
  %182 = load i32*, i32** %12, align 8
  %183 = load i8*, i8** %7, align 8
  %184 = load i64, i64* %8, align 8
  %185 = call i32 @ZVAL_STRINGL(i32* %182, i8* %183, i64 %184)
  %186 = load i32*, i32** %11, align 8
  %187 = call i32 @zend_hash_str_update(i32* %186, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0), i32 16, i32* %16)
  br label %188

188:                                              ; preds = %178, %174
  br label %189

189:                                              ; preds = %188, %168
  %190 = load i32, i32* @phar_SERVER_mung_list, align 4
  %191 = call i32 @PHAR_G(i32 %190)
  %192 = load i32, i32* @PHAR_MUNG_SCRIPT_FILENAME, align 4
  %193 = and i32 %191, %192
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %212

195:                                              ; preds = %189
  %196 = load i32*, i32** %11, align 8
  %197 = call i32* @zend_hash_str_find(i32* %196, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i32 15)
  store i32* %197, i32** %12, align 8
  %198 = icmp ne i32* null, %197
  br i1 %198, label %199, label %211

199:                                              ; preds = %195
  %200 = load i8*, i8** %6, align 8
  %201 = load i8*, i8** %7, align 8
  %202 = call i32* @strpprintf(i32 4096, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8* %200, i8* %201)
  store i32* %202, i32** %18, align 8
  %203 = load i32*, i32** %12, align 8
  %204 = call i32 @Z_STR_P(i32* %203)
  %205 = call i32 @ZVAL_STR(i32* %16, i32 %204)
  %206 = load i32*, i32** %12, align 8
  %207 = load i32*, i32** %18, align 8
  %208 = call i32 @ZVAL_NEW_STR(i32* %206, i32* %207)
  %209 = load i32*, i32** %11, align 8
  %210 = call i32 @zend_hash_str_update(i32* %209, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i64 0, i64 0), i32 20, i32* %16)
  br label %211

211:                                              ; preds = %199, %195
  br label %212

212:                                              ; preds = %29, %87, %211, %189
  ret void
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @Z_TYPE(i32) #1

declare dso_local i32* @PG(i32) #1

declare dso_local i32* @Z_ARRVAL(i32) #1

declare dso_local i32* @zend_hash_str_find(i32*, i8*, i32) #1

declare dso_local i8* @Z_STRVAL_P(i32*) #1

declare dso_local i64 @Z_STRLEN_P(i32*) #1

declare dso_local i32 @memcmp(i8*, i8*, i64) #1

declare dso_local i32 @ZVAL_STR(i32*, i32) #1

declare dso_local i32 @Z_STR_P(i32*) #1

declare dso_local i32 @ZVAL_STRINGL(i32*, i8*, i64) #1

declare dso_local i32 @zend_hash_str_update(i32*, i8*, i32, i32*) #1

declare dso_local i32* @strpprintf(i32, i8*, i8*, i8*) #1

declare dso_local i32 @ZVAL_NEW_STR(i32*, i32*) #1

declare dso_local i32 @PHAR_G(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
