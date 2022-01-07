; ModuleID = '/home/carl/AnghaBench/php-src/ext/zip/extr_php_zip.c_php_zip_pcre.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/zip/extr_php_zip.c_php_zip_pcre.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@php_stream_dirent_alphasort = common dso_local global i64 0, align 8
@E_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Invalid expression\00", align 1
@MAXPATHLEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"add_path string too long (max: %u, %zu given)\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"%s%c%s\00", align 1
@DEFAULT_SLASH = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [17 x i8] c"Cannot read <%s>\00", align 1
@S_IFDIR = common dso_local global i32 0, align 4
@S_IFMT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @php_zip_pcre(i32* %0, i8* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32**, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_3__, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %23 = call i32* (...) @php_pcre_mctx()
  store i32* %23, i32** %12, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = call i64 @ZIP_OPENBASEDIR_CHECKPATH(i8* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %230

28:                                               ; preds = %4
  %29 = load i8*, i8** %7, align 8
  %30 = load i64, i64* @php_stream_dirent_alphasort, align 8
  %31 = inttoptr i64 %30 to i8*
  %32 = call i32 @php_stream_scandir(i8* %29, i32*** %11, i32* null, i8* %31)
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %228

35:                                               ; preds = %28
  store i32* null, i32** %13, align 8
  store i32* null, i32** %14, align 8
  %36 = load i32*, i32** %6, align 8
  %37 = call i32* @pcre_get_compiled_regex(i32* %36, i32* %16)
  store i32* %37, i32** %13, align 8
  %38 = load i32*, i32** %13, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %35
  %41 = load i32, i32* @E_WARNING, align 4
  %42 = call i32 (i32*, i32, i8*, ...) @php_error_docref(i32* null, i32 %41, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %230

43:                                               ; preds = %35
  %44 = load i32*, i32** %9, align 8
  %45 = call i32 @array_init(i32* %44)
  store i32 0, i32* %15, align 4
  br label %46

46:                                               ; preds = %222, %43
  %47 = load i32, i32* %15, align 4
  %48 = load i32, i32* %10, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %225

50:                                               ; preds = %46
  %51 = load i32, i32* @MAXPATHLEN, align 4
  %52 = zext i32 %51 to i64
  %53 = call i8* @llvm.stacksave()
  store i8* %53, i8** %19, align 8
  %54 = alloca i8, i64 %52, align 16
  store i64 %52, i64* %20, align 8
  %55 = load i32**, i32*** %11, align 8
  %56 = load i32, i32* %15, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32*, i32** %55, i64 %57
  %59 = load i32*, i32** %58, align 8
  %60 = call i64 @ZSTR_LEN(i32* %59)
  store i64 %60, i64* %21, align 8
  %61 = load i64, i64* %21, align 8
  %62 = icmp eq i64 %61, 1
  br i1 %62, label %63, label %74

63:                                               ; preds = %50
  %64 = load i32**, i32*** %11, align 8
  %65 = load i32, i32* %15, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32*, i32** %64, i64 %66
  %68 = load i32*, i32** %67, align 8
  %69 = call i8* @ZSTR_VAL(i32* %68)
  %70 = getelementptr inbounds i8, i8* %69, i64 0
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp eq i32 %72, 46
  br i1 %73, label %99, label %74

74:                                               ; preds = %63, %50
  %75 = load i64, i64* %21, align 8
  %76 = icmp eq i64 %75, 2
  br i1 %76, label %77, label %106

77:                                               ; preds = %74
  %78 = load i32**, i32*** %11, align 8
  %79 = load i32, i32* %15, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32*, i32** %78, i64 %80
  %82 = load i32*, i32** %81, align 8
  %83 = call i8* @ZSTR_VAL(i32* %82)
  %84 = getelementptr inbounds i8, i8* %83, i64 0
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp eq i32 %86, 46
  br i1 %87, label %88, label %106

88:                                               ; preds = %77
  %89 = load i32**, i32*** %11, align 8
  %90 = load i32, i32* %15, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32*, i32** %89, i64 %91
  %93 = load i32*, i32** %92, align 8
  %94 = call i8* @ZSTR_VAL(i32* %93)
  %95 = getelementptr inbounds i8, i8* %94, i64 1
  %96 = load i8, i8* %95, align 1
  %97 = sext i8 %96 to i32
  %98 = icmp eq i32 %97, 46
  br i1 %98, label %99, label %106

99:                                               ; preds = %88, %63
  %100 = load i32**, i32*** %11, align 8
  %101 = load i32, i32* %15, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32*, i32** %100, i64 %102
  %104 = load i32*, i32** %103, align 8
  %105 = call i32 @zend_string_release_ex(i32* %104, i32 0)
  store i32 4, i32* %22, align 4
  br label %218

106:                                              ; preds = %88, %77, %74
  %107 = load i32, i32* %8, align 4
  %108 = sext i32 %107 to i64
  %109 = load i64, i64* %21, align 8
  %110 = add i64 %108, %109
  %111 = add i64 %110, 1
  %112 = load i32, i32* @MAXPATHLEN, align 4
  %113 = sext i32 %112 to i64
  %114 = icmp uge i64 %111, %113
  br i1 %114, label %115, label %131

115:                                              ; preds = %106
  %116 = load i32, i32* @E_WARNING, align 4
  %117 = load i32, i32* @MAXPATHLEN, align 4
  %118 = sub nsw i32 %117, 1
  %119 = load i32, i32* %8, align 4
  %120 = sext i32 %119 to i64
  %121 = load i64, i64* %21, align 8
  %122 = add i64 %120, %121
  %123 = add i64 %122, 1
  %124 = call i32 (i32*, i32, i8*, ...) @php_error_docref(i32* null, i32 %116, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %118, i64 %123)
  %125 = load i32**, i32*** %11, align 8
  %126 = load i32, i32* %15, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32*, i32** %125, i64 %127
  %129 = load i32*, i32** %128, align 8
  %130 = call i32 @zend_string_release_ex(i32* %129, i32 0)
  store i32 2, i32* %22, align 4
  br label %218

131:                                              ; preds = %106
  %132 = load i32, i32* %16, align 4
  %133 = load i32*, i32** %13, align 8
  %134 = call i32* @php_pcre_create_match_data(i32 %132, i32* %133)
  store i32* %134, i32** %14, align 8
  %135 = load i32*, i32** %14, align 8
  %136 = icmp ne i32* %135, null
  br i1 %136, label %144, label %137

137:                                              ; preds = %131
  %138 = load i32**, i32*** %11, align 8
  %139 = load i32, i32* %15, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32*, i32** %138, i64 %140
  %142 = load i32*, i32** %141, align 8
  %143 = call i32 @zend_string_release_ex(i32* %142, i32 0)
  store i32 4, i32* %22, align 4
  br label %218

144:                                              ; preds = %131
  %145 = load i32*, i32** %13, align 8
  %146 = load i32**, i32*** %11, align 8
  %147 = load i32, i32* %15, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32*, i32** %146, i64 %148
  %150 = load i32*, i32** %149, align 8
  %151 = call i8* @ZSTR_VAL(i32* %150)
  %152 = ptrtoint i8* %151 to i32
  %153 = load i32**, i32*** %11, align 8
  %154 = load i32, i32* %15, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32*, i32** %153, i64 %155
  %157 = load i32*, i32** %156, align 8
  %158 = call i64 @ZSTR_LEN(i32* %157)
  %159 = load i32*, i32** %14, align 8
  %160 = load i32*, i32** %12, align 8
  %161 = call i32 @pcre2_match(i32* %145, i32 %152, i64 %158, i32 0, i32 0, i32* %159, i32* %160)
  store i32 %161, i32* %17, align 4
  %162 = load i32*, i32** %14, align 8
  %163 = call i32 @php_pcre_free_match_data(i32* %162)
  %164 = load i32, i32* %17, align 4
  %165 = icmp slt i32 %164, 0
  br i1 %165, label %166, label %173

166:                                              ; preds = %144
  %167 = load i32**, i32*** %11, align 8
  %168 = load i32, i32* %15, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i32*, i32** %167, i64 %169
  %171 = load i32*, i32** %170, align 8
  %172 = call i32 @zend_string_release_ex(i32* %171, i32 0)
  store i32 4, i32* %22, align 4
  br label %218

173:                                              ; preds = %144
  %174 = load i32, i32* @MAXPATHLEN, align 4
  %175 = load i8*, i8** %7, align 8
  %176 = load i8*, i8** @DEFAULT_SLASH, align 8
  %177 = load i32**, i32*** %11, align 8
  %178 = load i32, i32* %15, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i32*, i32** %177, i64 %179
  %181 = load i32*, i32** %180, align 8
  %182 = call i8* @ZSTR_VAL(i32* %181)
  %183 = call i32 @snprintf(i8* %54, i32 %174, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* %175, i8* %176, i8* %182)
  %184 = call i64 @VCWD_STAT(i8* %54, %struct.TYPE_3__* %18)
  %185 = icmp ne i64 0, %184
  br i1 %185, label %186, label %195

186:                                              ; preds = %173
  %187 = load i32, i32* @E_WARNING, align 4
  %188 = call i32 (i32*, i32, i8*, ...) @php_error_docref(i32* null, i32 %187, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i8* %54)
  %189 = load i32**, i32*** %11, align 8
  %190 = load i32, i32* %15, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i32*, i32** %189, i64 %191
  %193 = load i32*, i32** %192, align 8
  %194 = call i32 @zend_string_release_ex(i32* %193, i32 0)
  store i32 4, i32* %22, align 4
  br label %218

195:                                              ; preds = %173
  %196 = load i32, i32* @S_IFDIR, align 4
  %197 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = load i32, i32* @S_IFMT, align 4
  %200 = and i32 %198, %199
  %201 = icmp eq i32 %196, %200
  br i1 %201, label %202, label %209

202:                                              ; preds = %195
  %203 = load i32**, i32*** %11, align 8
  %204 = load i32, i32* %15, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i32*, i32** %203, i64 %205
  %207 = load i32*, i32** %206, align 8
  %208 = call i32 @zend_string_release_ex(i32* %207, i32 0)
  store i32 4, i32* %22, align 4
  br label %218

209:                                              ; preds = %195
  %210 = load i32*, i32** %9, align 8
  %211 = call i32 @add_next_index_string(i32* %210, i8* %54)
  %212 = load i32**, i32*** %11, align 8
  %213 = load i32, i32* %15, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds i32*, i32** %212, i64 %214
  %216 = load i32*, i32** %215, align 8
  %217 = call i32 @zend_string_release_ex(i32* %216, i32 0)
  store i32 0, i32* %22, align 4
  br label %218

218:                                              ; preds = %209, %202, %186, %166, %137, %115, %99
  %219 = load i8*, i8** %19, align 8
  call void @llvm.stackrestore(i8* %219)
  %220 = load i32, i32* %22, align 4
  switch i32 %220, label %232 [
    i32 0, label %221
    i32 4, label %222
    i32 2, label %225
  ]

221:                                              ; preds = %218
  br label %222

222:                                              ; preds = %221, %218
  %223 = load i32, i32* %15, align 4
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %15, align 4
  br label %46

225:                                              ; preds = %218, %46
  %226 = load i32**, i32*** %11, align 8
  %227 = call i32 @efree(i32** %226)
  br label %228

228:                                              ; preds = %225, %28
  %229 = load i32, i32* %10, align 4
  store i32 %229, i32* %5, align 4
  br label %230

230:                                              ; preds = %228, %40, %27
  %231 = load i32, i32* %5, align 4
  ret i32 %231

232:                                              ; preds = %218
  unreachable
}

declare dso_local i32* @php_pcre_mctx(...) #1

declare dso_local i64 @ZIP_OPENBASEDIR_CHECKPATH(i8*) #1

declare dso_local i32 @php_stream_scandir(i8*, i32***, i32*, i8*) #1

declare dso_local i32* @pcre_get_compiled_regex(i32*, i32*) #1

declare dso_local i32 @php_error_docref(i32*, i32, i8*, ...) #1

declare dso_local i32 @array_init(i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @ZSTR_LEN(i32*) #1

declare dso_local i8* @ZSTR_VAL(i32*) #1

declare dso_local i32 @zend_string_release_ex(i32*, i32) #1

declare dso_local i32* @php_pcre_create_match_data(i32, i32*) #1

declare dso_local i32 @pcre2_match(i32*, i32, i64, i32, i32, i32*, i32*) #1

declare dso_local i32 @php_pcre_free_match_data(i32*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*, i8*) #1

declare dso_local i64 @VCWD_STAT(i8*, %struct.TYPE_3__*) #1

declare dso_local i32 @add_next_index_string(i32*, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @efree(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
