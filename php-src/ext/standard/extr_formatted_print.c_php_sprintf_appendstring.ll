; ModuleID = '/home/carl/AnghaBench/php-src/ext/standard/extr_formatted_print.c_php_sprintf_appendstring.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/standard/extr_formatted_print.c_php_sprintf_appendstring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [55 x i8] c"sprintf: appendstring(%x, %d, %d, \22%s\22, %d, '%c', %d)\0A\00", align 1
@INT_MAX = common dso_local global i64 0, align 8
@E_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Field width %zd is too long\00", align 1
@ZEND_SIZE_MAX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"sprintf ereallocing buffer to %d bytes\0A\00", align 1
@ALIGN_RIGHT = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [25 x i8] c"sprintf: appending \22%s\22\0A\00", align 1
@ALIGN_LEFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32**, i64*, i8*, i64, i64, i8, i64, i64, i32, i32, i32)* @php_sprintf_appendstring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @php_sprintf_appendstring(i32** %0, i64* %1, i8* %2, i64 %3, i64 %4, i8 signext %5, i64 %6, i64 %7, i32 %8, i32 %9, i32 %10) #0 {
  %12 = alloca i32**, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8, align 1
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  store i32** %0, i32*** %12, align 8
  store i64* %1, i64** %13, align 8
  store i8* %2, i8** %14, align 8
  store i64 %3, i64* %15, align 8
  store i64 %4, i64* %16, align 8
  store i8 %5, i8* %17, align 1
  store i64 %6, i64* %18, align 8
  store i64 %7, i64* %19, align 8
  store i32 %8, i32* %20, align 4
  store i32 %9, i32* %21, align 4
  store i32 %10, i32* %22, align 4
  %28 = load i32, i32* %21, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %11
  %31 = load i64, i64* %16, align 8
  %32 = load i64, i64* %19, align 8
  %33 = call i64 @MIN(i64 %31, i64 %32)
  br label %36

34:                                               ; preds = %11
  %35 = load i64, i64* %19, align 8
  br label %36

36:                                               ; preds = %34, %30
  %37 = phi i64 [ %33, %30 ], [ %35, %34 ]
  store i64 %37, i64* %25, align 8
  %38 = load i64, i64* %15, align 8
  %39 = load i64, i64* %25, align 8
  %40 = icmp ult i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  br label %46

42:                                               ; preds = %36
  %43 = load i64, i64* %15, align 8
  %44 = load i64, i64* %25, align 8
  %45 = sub i64 %43, %44
  br label %46

46:                                               ; preds = %42, %41
  %47 = phi i64 [ 0, %41 ], [ %45, %42 ]
  store i64 %47, i64* %23, align 8
  %48 = load i32**, i32*** %12, align 8
  %49 = load i32*, i32** %48, align 8
  %50 = load i64*, i64** %13, align 8
  %51 = load i64, i64* %50, align 8
  %52 = load i32**, i32*** %12, align 8
  %53 = load i32*, i32** %52, align 8
  %54 = call i64 @ZSTR_LEN(i32* %53)
  %55 = load i8*, i8** %14, align 8
  %56 = load i64, i64* %15, align 8
  %57 = load i8, i8* %17, align 1
  %58 = load i64, i64* %18, align 8
  %59 = inttoptr i64 %58 to i8*
  %60 = call i32 @PRINTF_DEBUG(i8* %59)
  %61 = load i64, i64* %15, align 8
  %62 = load i64, i64* %25, align 8
  %63 = call i64 @MAX(i64 %61, i64 %62)
  store i64 %63, i64* %26, align 8
  %64 = load i64, i64* %26, align 8
  %65 = load i64, i64* @INT_MAX, align 8
  %66 = load i64*, i64** %13, align 8
  %67 = load i64, i64* %66, align 8
  %68 = sub i64 %65, %67
  %69 = sub i64 %68, 1
  %70 = icmp ugt i64 %64, %69
  br i1 %70, label %71, label %75

71:                                               ; preds = %46
  %72 = load i32, i32* @E_ERROR, align 4
  %73 = load i64, i64* %26, align 8
  %74 = call i32 @zend_error_noreturn(i32 %72, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i64 %73)
  br label %75

75:                                               ; preds = %71, %46
  %76 = load i64*, i64** %13, align 8
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* %26, align 8
  %79 = add i64 %77, %78
  %80 = add i64 %79, 1
  store i64 %80, i64* %24, align 8
  %81 = load i64, i64* %24, align 8
  %82 = load i32**, i32*** %12, align 8
  %83 = load i32*, i32** %82, align 8
  %84 = call i64 @ZSTR_LEN(i32* %83)
  %85 = icmp ugt i64 %81, %84
  br i1 %85, label %86, label %116

86:                                               ; preds = %75
  %87 = load i32**, i32*** %12, align 8
  %88 = load i32*, i32** %87, align 8
  %89 = call i64 @ZSTR_LEN(i32* %88)
  store i64 %89, i64* %27, align 8
  br label %90

90:                                               ; preds = %104, %86
  %91 = load i64, i64* %24, align 8
  %92 = load i64, i64* %27, align 8
  %93 = icmp ugt i64 %91, %92
  br i1 %93, label %94, label %107

94:                                               ; preds = %90
  %95 = load i64, i64* %27, align 8
  %96 = load i32, i32* @ZEND_SIZE_MAX, align 4
  %97 = sdiv i32 %96, 2
  %98 = sext i32 %97 to i64
  %99 = icmp ugt i64 %95, %98
  br i1 %99, label %100, label %104

100:                                              ; preds = %94
  %101 = load i32, i32* @E_ERROR, align 4
  %102 = load i64, i64* %24, align 8
  %103 = call i32 @zend_error_noreturn(i32 %101, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i64 %102)
  br label %104

104:                                              ; preds = %100, %94
  %105 = load i64, i64* %27, align 8
  %106 = shl i64 %105, 1
  store i64 %106, i64* %27, align 8
  br label %90

107:                                              ; preds = %90
  %108 = load i64, i64* %27, align 8
  %109 = inttoptr i64 %108 to i8*
  %110 = call i32 @PRINTF_DEBUG(i8* %109)
  %111 = load i32**, i32*** %12, align 8
  %112 = load i32*, i32** %111, align 8
  %113 = load i64, i64* %27, align 8
  %114 = call i32* @zend_string_extend(i32* %112, i64 %113, i32 0)
  %115 = load i32**, i32*** %12, align 8
  store i32* %114, i32** %115, align 8
  br label %116

116:                                              ; preds = %107, %75
  %117 = load i64, i64* %18, align 8
  %118 = load i64, i64* @ALIGN_RIGHT, align 8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %120, label %164

120:                                              ; preds = %116
  %121 = load i32, i32* %20, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %126, label %123

123:                                              ; preds = %120
  %124 = load i32, i32* %22, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %149

126:                                              ; preds = %123, %120
  %127 = load i8, i8* %17, align 1
  %128 = sext i8 %127 to i32
  %129 = icmp eq i32 %128, 48
  br i1 %129, label %130, label %149

130:                                              ; preds = %126
  %131 = load i32, i32* %20, align 4
  %132 = icmp ne i32 %131, 0
  %133 = zext i1 %132 to i64
  %134 = select i1 %132, i32 45, i32 43
  %135 = trunc i32 %134 to i8
  %136 = load i32**, i32*** %12, align 8
  %137 = load i32*, i32** %136, align 8
  %138 = call i8* @ZSTR_VAL(i32* %137)
  %139 = load i64*, i64** %13, align 8
  %140 = load i64, i64* %139, align 8
  %141 = add i64 %140, 1
  store i64 %141, i64* %139, align 8
  %142 = getelementptr inbounds i8, i8* %138, i64 %140
  store i8 %135, i8* %142, align 1
  %143 = load i8*, i8** %14, align 8
  %144 = getelementptr inbounds i8, i8* %143, i32 1
  store i8* %144, i8** %14, align 8
  %145 = load i64, i64* %19, align 8
  %146 = add i64 %145, -1
  store i64 %146, i64* %19, align 8
  %147 = load i64, i64* %25, align 8
  %148 = add i64 %147, -1
  store i64 %148, i64* %25, align 8
  br label %149

149:                                              ; preds = %130, %126, %123
  br label %150

150:                                              ; preds = %154, %149
  %151 = load i64, i64* %23, align 8
  %152 = add i64 %151, -1
  store i64 %152, i64* %23, align 8
  %153 = icmp ugt i64 %151, 0
  br i1 %153, label %154, label %163

154:                                              ; preds = %150
  %155 = load i8, i8* %17, align 1
  %156 = load i32**, i32*** %12, align 8
  %157 = load i32*, i32** %156, align 8
  %158 = call i8* @ZSTR_VAL(i32* %157)
  %159 = load i64*, i64** %13, align 8
  %160 = load i64, i64* %159, align 8
  %161 = add i64 %160, 1
  store i64 %161, i64* %159, align 8
  %162 = getelementptr inbounds i8, i8* %158, i64 %160
  store i8 %155, i8* %162, align 1
  br label %150

163:                                              ; preds = %150
  br label %164

164:                                              ; preds = %163, %116
  %165 = load i8*, i8** %14, align 8
  %166 = call i32 @PRINTF_DEBUG(i8* %165)
  %167 = load i32**, i32*** %12, align 8
  %168 = load i32*, i32** %167, align 8
  %169 = call i8* @ZSTR_VAL(i32* %168)
  %170 = load i64*, i64** %13, align 8
  %171 = load i64, i64* %170, align 8
  %172 = getelementptr inbounds i8, i8* %169, i64 %171
  %173 = load i8*, i8** %14, align 8
  %174 = load i64, i64* %25, align 8
  %175 = add i64 %174, 1
  %176 = call i32 @memcpy(i8* %172, i8* %173, i64 %175)
  %177 = load i64, i64* %25, align 8
  %178 = load i64*, i64** %13, align 8
  %179 = load i64, i64* %178, align 8
  %180 = add i64 %179, %177
  store i64 %180, i64* %178, align 8
  %181 = load i64, i64* %18, align 8
  %182 = load i64, i64* @ALIGN_LEFT, align 8
  %183 = icmp eq i64 %181, %182
  br i1 %183, label %184, label %199

184:                                              ; preds = %164
  br label %185

185:                                              ; preds = %189, %184
  %186 = load i64, i64* %23, align 8
  %187 = add i64 %186, -1
  store i64 %187, i64* %23, align 8
  %188 = icmp ne i64 %186, 0
  br i1 %188, label %189, label %198

189:                                              ; preds = %185
  %190 = load i8, i8* %17, align 1
  %191 = load i32**, i32*** %12, align 8
  %192 = load i32*, i32** %191, align 8
  %193 = call i8* @ZSTR_VAL(i32* %192)
  %194 = load i64*, i64** %13, align 8
  %195 = load i64, i64* %194, align 8
  %196 = add i64 %195, 1
  store i64 %196, i64* %194, align 8
  %197 = getelementptr inbounds i8, i8* %193, i64 %195
  store i8 %190, i8* %197, align 1
  br label %185

198:                                              ; preds = %185
  br label %199

199:                                              ; preds = %198, %164
  ret void
}

declare dso_local i64 @MIN(i64, i64) #1

declare dso_local i32 @PRINTF_DEBUG(i8*) #1

declare dso_local i64 @ZSTR_LEN(i32*) #1

declare dso_local i64 @MAX(i64, i64) #1

declare dso_local i32 @zend_error_noreturn(i32, i8*, i64) #1

declare dso_local i32* @zend_string_extend(i32*, i64, i32) #1

declare dso_local i8* @ZSTR_VAL(i32*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
