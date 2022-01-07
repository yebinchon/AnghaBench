; ModuleID = '/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_pgp-pgsql.c_parse_key_value_arrays.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_pgp-pgsql.c_parse_key_value_arrays.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERROR = common dso_local global i32 0, align 4
@ERRCODE_ARRAY_SUBSCRIPT_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"wrong number of array subscripts\00", align 1
@TEXTOID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"mismatched array dimensions\00", align 1
@ERRCODE_NULL_VALUE_NOT_ALLOWED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"null value not allowed for header key\00", align 1
@ERRCODE_INVALID_PARAMETER_VALUE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [49 x i8] c"header key must not contain non-ASCII characters\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"header key must not contain \22: \22\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"header key must not contain newlines\00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c"null value not allowed for header value\00", align 1
@.str.8 = private unnamed_addr constant [51 x i8] c"header value must not contain non-ASCII characters\00", align 1
@.str.9 = private unnamed_addr constant [39 x i8] c"header value must not contain newlines\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i8***, i8***)* @parse_key_value_arrays to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_key_value_arrays(i32* %0, i32* %1, i8*** %2, i8*** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8***, align 8
  %9 = alloca i8***, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8**, align 8
  %13 = alloca i8**, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8*** %2, i8**** %8, align 8
  store i8*** %3, i8**** %9, align 8
  %22 = load i32*, i32** %6, align 8
  %23 = call i32 @ARR_NDIM(i32* %22)
  store i32 %23, i32* %10, align 4
  %24 = load i32*, i32** %7, align 8
  %25 = call i32 @ARR_NDIM(i32* %24)
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %10, align 4
  %27 = icmp sgt i32 %26, 1
  br i1 %27, label %32, label %28

28:                                               ; preds = %4
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* %11, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %38

32:                                               ; preds = %28, %4
  %33 = load i32, i32* @ERROR, align 4
  %34 = load i32, i32* @ERRCODE_ARRAY_SUBSCRIPT_ERROR, align 4
  %35 = call i32 @errcode(i32 %34)
  %36 = call i32 @errmsg(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %37 = call i32 @ereport(i32 %33, i32 %36)
  br label %38

38:                                               ; preds = %32, %28
  %39 = load i32, i32* %10, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  store i32 0, i32* %5, align 4
  br label %183

42:                                               ; preds = %38
  %43 = load i32*, i32** %6, align 8
  %44 = load i32, i32* @TEXTOID, align 4
  %45 = call i32 @deconstruct_array(i32* %43, i32 %44, i32 -1, i32 0, i8 signext 105, i32** %14, i32** %16, i32* %18)
  %46 = load i32*, i32** %7, align 8
  %47 = load i32, i32* @TEXTOID, align 4
  %48 = call i32 @deconstruct_array(i32* %46, i32 %47, i32 -1, i32 0, i8 signext 105, i32** %15, i32** %17, i32* %19)
  %49 = load i32, i32* %18, align 4
  %50 = load i32, i32* %19, align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %52, label %58

52:                                               ; preds = %42
  %53 = load i32, i32* @ERROR, align 4
  %54 = load i32, i32* @ERRCODE_ARRAY_SUBSCRIPT_ERROR, align 4
  %55 = call i32 @errcode(i32 %54)
  %56 = call i32 @errmsg(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %57 = call i32 @ereport(i32 %53, i32 %56)
  br label %58

58:                                               ; preds = %52, %42
  %59 = load i32, i32* %18, align 4
  %60 = sext i32 %59 to i64
  %61 = mul i64 8, %60
  %62 = trunc i64 %61 to i32
  %63 = call i64 @palloc(i32 %62)
  %64 = inttoptr i64 %63 to i8**
  store i8** %64, i8*** %12, align 8
  %65 = load i32, i32* %19, align 4
  %66 = sext i32 %65 to i64
  %67 = mul i64 8, %66
  %68 = trunc i64 %67 to i32
  %69 = call i64 @palloc(i32 %68)
  %70 = inttoptr i64 %69 to i8**
  store i8** %70, i8*** %13, align 8
  store i32 0, i32* %20, align 4
  br label %71

71:                                               ; preds = %174, %58
  %72 = load i32, i32* %20, align 4
  %73 = load i32, i32* %18, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %177

75:                                               ; preds = %71
  %76 = load i32*, i32** %16, align 8
  %77 = load i32, i32* %20, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %75
  %83 = load i32, i32* @ERROR, align 4
  %84 = load i32, i32* @ERRCODE_NULL_VALUE_NOT_ALLOWED, align 4
  %85 = call i32 @errcode(i32 %84)
  %86 = call i32 @errmsg(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  %87 = call i32 @ereport(i32 %83, i32 %86)
  br label %88

88:                                               ; preds = %82, %75
  %89 = load i32*, i32** %14, align 8
  %90 = load i32, i32* %20, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = call i8* @TextDatumGetCString(i32 %93)
  store i8* %94, i8** %21, align 8
  %95 = load i8*, i8** %21, align 8
  %96 = call i32 @string_is_ascii(i8* %95)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %104, label %98

98:                                               ; preds = %88
  %99 = load i32, i32* @ERROR, align 4
  %100 = load i32, i32* @ERRCODE_INVALID_PARAMETER_VALUE, align 4
  %101 = call i32 @errcode(i32 %100)
  %102 = call i32 @errmsg(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0))
  %103 = call i32 @ereport(i32 %99, i32 %102)
  br label %104

104:                                              ; preds = %98, %88
  %105 = load i8*, i8** %21, align 8
  %106 = call i64 @strstr(i8* %105, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %114

108:                                              ; preds = %104
  %109 = load i32, i32* @ERROR, align 4
  %110 = load i32, i32* @ERRCODE_INVALID_PARAMETER_VALUE, align 4
  %111 = call i32 @errcode(i32 %110)
  %112 = call i32 @errmsg(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0))
  %113 = call i32 @ereport(i32 %109, i32 %112)
  br label %114

114:                                              ; preds = %108, %104
  %115 = load i8*, i8** %21, align 8
  %116 = call i64 @strchr(i8* %115, i8 signext 10)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %124

118:                                              ; preds = %114
  %119 = load i32, i32* @ERROR, align 4
  %120 = load i32, i32* @ERRCODE_INVALID_PARAMETER_VALUE, align 4
  %121 = call i32 @errcode(i32 %120)
  %122 = call i32 @errmsg(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0))
  %123 = call i32 @ereport(i32 %119, i32 %122)
  br label %124

124:                                              ; preds = %118, %114
  %125 = load i8*, i8** %21, align 8
  %126 = load i8**, i8*** %12, align 8
  %127 = load i32, i32* %20, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i8*, i8** %126, i64 %128
  store i8* %125, i8** %129, align 8
  %130 = load i32*, i32** %17, align 8
  %131 = load i32, i32* %20, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %130, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %142

136:                                              ; preds = %124
  %137 = load i32, i32* @ERROR, align 4
  %138 = load i32, i32* @ERRCODE_NULL_VALUE_NOT_ALLOWED, align 4
  %139 = call i32 @errcode(i32 %138)
  %140 = call i32 @errmsg(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i64 0, i64 0))
  %141 = call i32 @ereport(i32 %137, i32 %140)
  br label %142

142:                                              ; preds = %136, %124
  %143 = load i32*, i32** %15, align 8
  %144 = load i32, i32* %20, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32, i32* %143, i64 %145
  %147 = load i32, i32* %146, align 4
  %148 = call i8* @TextDatumGetCString(i32 %147)
  store i8* %148, i8** %21, align 8
  %149 = load i8*, i8** %21, align 8
  %150 = call i32 @string_is_ascii(i8* %149)
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %158, label %152

152:                                              ; preds = %142
  %153 = load i32, i32* @ERROR, align 4
  %154 = load i32, i32* @ERRCODE_INVALID_PARAMETER_VALUE, align 4
  %155 = call i32 @errcode(i32 %154)
  %156 = call i32 @errmsg(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.8, i64 0, i64 0))
  %157 = call i32 @ereport(i32 %153, i32 %156)
  br label %158

158:                                              ; preds = %152, %142
  %159 = load i8*, i8** %21, align 8
  %160 = call i64 @strchr(i8* %159, i8 signext 10)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %168

162:                                              ; preds = %158
  %163 = load i32, i32* @ERROR, align 4
  %164 = load i32, i32* @ERRCODE_INVALID_PARAMETER_VALUE, align 4
  %165 = call i32 @errcode(i32 %164)
  %166 = call i32 @errmsg(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.9, i64 0, i64 0))
  %167 = call i32 @ereport(i32 %163, i32 %166)
  br label %168

168:                                              ; preds = %162, %158
  %169 = load i8*, i8** %21, align 8
  %170 = load i8**, i8*** %13, align 8
  %171 = load i32, i32* %20, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i8*, i8** %170, i64 %172
  store i8* %169, i8** %173, align 8
  br label %174

174:                                              ; preds = %168
  %175 = load i32, i32* %20, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %20, align 4
  br label %71

177:                                              ; preds = %71
  %178 = load i8**, i8*** %12, align 8
  %179 = load i8***, i8**** %8, align 8
  store i8** %178, i8*** %179, align 8
  %180 = load i8**, i8*** %13, align 8
  %181 = load i8***, i8**** %9, align 8
  store i8** %180, i8*** %181, align 8
  %182 = load i32, i32* %18, align 4
  store i32 %182, i32* %5, align 4
  br label %183

183:                                              ; preds = %177, %41
  %184 = load i32, i32* %5, align 4
  ret i32 %184
}

declare dso_local i32 @ARR_NDIM(i32*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32 @deconstruct_array(i32*, i32, i32, i32, i8 signext, i32**, i32**, i32*) #1

declare dso_local i64 @palloc(i32) #1

declare dso_local i8* @TextDatumGetCString(i32) #1

declare dso_local i32 @string_is_ascii(i8*) #1

declare dso_local i64 @strstr(i8*, i8*) #1

declare dso_local i64 @strchr(i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
