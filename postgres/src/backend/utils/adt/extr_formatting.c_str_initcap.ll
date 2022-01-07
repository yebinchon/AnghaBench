; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_formatting.c_str_initcap.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_formatting.c_str_initcap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@DEFAULT_COLLATION_OID = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_INDETERMINATE_COLLATION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"could not determine which collation to use for %s function\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"initcap()\00", align 1
@.str.2 = private unnamed_addr constant [56 x i8] c"Use the COLLATE clause to set the collation explicitly.\00", align 1
@INT_MAX = common dso_local global i32 0, align 4
@ERRCODE_OUT_OF_MEMORY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@COLLPROVIDER_ICU = common dso_local global i64 0, align 8
@u_strToTitle_default_BI = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @str_initcap(i8* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 0, i32* %9, align 4
  %15 = load i8*, i8** %5, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %3
  store i8* null, i8** %4, align 8
  br label %156

18:                                               ; preds = %3
  %19 = load i64, i64* %7, align 8
  %20 = call i64 @lc_ctype_is_c(i64 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %18
  %23 = load i8*, i8** %5, align 8
  %24 = load i64, i64* %6, align 8
  %25 = call i8* @asc_initcap(i8* %23, i64 %24)
  store i8* %25, i8** %8, align 8
  br label %154

26:                                               ; preds = %18
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %10, align 8
  %27 = load i64, i64* %7, align 8
  %28 = load i64, i64* @DEFAULT_COLLATION_OID, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %44

30:                                               ; preds = %26
  %31 = load i64, i64* %7, align 8
  %32 = call i32 @OidIsValid(i64 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %41, label %34

34:                                               ; preds = %30
  %35 = load i32, i32* @ERROR, align 4
  %36 = load i32, i32* @ERRCODE_INDETERMINATE_COLLATION, align 4
  %37 = call i32 @errcode(i32 %36)
  %38 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %39 = call i32 @errhint(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0))
  %40 = call i32 @ereport(i32 %35, i32 %39)
  br label %41

41:                                               ; preds = %34, %30
  %42 = load i64, i64* %7, align 8
  %43 = call %struct.TYPE_8__* @pg_newlocale_from_collation(i64 %42)
  store %struct.TYPE_8__* %43, %struct.TYPE_8__** %10, align 8
  br label %44

44:                                               ; preds = %41, %26
  %45 = call i64 (...) @pg_database_encoding_max_length()
  %46 = icmp ugt i64 %45, 1
  br i1 %46, label %47, label %123

47:                                               ; preds = %44
  %48 = load i64, i64* %6, align 8
  %49 = add i64 %48, 1
  %50 = load i32, i32* @INT_MAX, align 4
  %51 = sext i32 %50 to i64
  %52 = udiv i64 %51, 8
  %53 = icmp ugt i64 %49, %52
  br i1 %53, label %54, label %60

54:                                               ; preds = %47
  %55 = load i32, i32* @ERROR, align 4
  %56 = load i32, i32* @ERRCODE_OUT_OF_MEMORY, align 4
  %57 = call i32 @errcode(i32 %56)
  %58 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %59 = call i32 @ereport(i32 %55, i32 %58)
  br label %60

60:                                               ; preds = %54, %47
  %61 = load i64, i64* %6, align 8
  %62 = add i64 %61, 1
  %63 = mul i64 %62, 8
  %64 = call i8* @palloc(i64 %63)
  %65 = bitcast i8* %64 to i64*
  store i64* %65, i64** %11, align 8
  %66 = load i64*, i64** %11, align 8
  %67 = load i64, i64* %6, align 8
  %68 = add i64 %67, 1
  %69 = load i8*, i8** %5, align 8
  %70 = load i64, i64* %6, align 8
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %72 = call i32 @char2wchar(i64* %66, i64 %68, i8* %69, i64 %70, %struct.TYPE_8__* %71)
  store i64 0, i64* %12, align 8
  br label %73

73:                                               ; preds = %106, %60
  %74 = load i64*, i64** %11, align 8
  %75 = load i64, i64* %12, align 8
  %76 = getelementptr inbounds i64, i64* %74, i64 %75
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %109

79:                                               ; preds = %73
  %80 = load i32, i32* %9, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %91

82:                                               ; preds = %79
  %83 = load i64*, i64** %11, align 8
  %84 = load i64, i64* %12, align 8
  %85 = getelementptr inbounds i64, i64* %83, i64 %84
  %86 = load i64, i64* %85, align 8
  %87 = call i64 @towlower(i64 %86)
  %88 = load i64*, i64** %11, align 8
  %89 = load i64, i64* %12, align 8
  %90 = getelementptr inbounds i64, i64* %88, i64 %89
  store i64 %87, i64* %90, align 8
  br label %100

91:                                               ; preds = %79
  %92 = load i64*, i64** %11, align 8
  %93 = load i64, i64* %12, align 8
  %94 = getelementptr inbounds i64, i64* %92, i64 %93
  %95 = load i64, i64* %94, align 8
  %96 = call i64 @towupper(i64 %95)
  %97 = load i64*, i64** %11, align 8
  %98 = load i64, i64* %12, align 8
  %99 = getelementptr inbounds i64, i64* %97, i64 %98
  store i64 %96, i64* %99, align 8
  br label %100

100:                                              ; preds = %91, %82
  %101 = load i64*, i64** %11, align 8
  %102 = load i64, i64* %12, align 8
  %103 = getelementptr inbounds i64, i64* %101, i64 %102
  %104 = load i64, i64* %103, align 8
  %105 = call i32 @iswalnum(i64 %104)
  store i32 %105, i32* %9, align 4
  br label %106

106:                                              ; preds = %100
  %107 = load i64, i64* %12, align 8
  %108 = add i64 %107, 1
  store i64 %108, i64* %12, align 8
  br label %73

109:                                              ; preds = %73
  %110 = load i64, i64* %12, align 8
  %111 = call i64 (...) @pg_database_encoding_max_length()
  %112 = mul i64 %110, %111
  %113 = add i64 %112, 1
  store i64 %113, i64* %13, align 8
  %114 = load i64, i64* %13, align 8
  %115 = call i8* @palloc(i64 %114)
  store i8* %115, i8** %8, align 8
  %116 = load i8*, i8** %8, align 8
  %117 = load i64*, i64** %11, align 8
  %118 = load i64, i64* %13, align 8
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %120 = call i32 @wchar2char(i8* %116, i64* %117, i64 %118, %struct.TYPE_8__* %119)
  %121 = load i64*, i64** %11, align 8
  %122 = call i32 @pfree(i64* %121)
  br label %153

123:                                              ; preds = %44
  %124 = load i8*, i8** %5, align 8
  %125 = load i64, i64* %6, align 8
  %126 = call i8* @pnstrdup(i8* %124, i64 %125)
  store i8* %126, i8** %8, align 8
  %127 = load i8*, i8** %8, align 8
  store i8* %127, i8** %14, align 8
  br label %128

128:                                              ; preds = %149, %123
  %129 = load i8*, i8** %14, align 8
  %130 = load i8, i8* %129, align 1
  %131 = icmp ne i8 %130, 0
  br i1 %131, label %132, label %152

132:                                              ; preds = %128
  %133 = load i32, i32* %9, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %140

135:                                              ; preds = %132
  %136 = load i8*, i8** %14, align 8
  %137 = load i8, i8* %136, align 1
  %138 = call signext i8 @pg_tolower(i8 zeroext %137)
  %139 = load i8*, i8** %14, align 8
  store i8 %138, i8* %139, align 1
  br label %145

140:                                              ; preds = %132
  %141 = load i8*, i8** %14, align 8
  %142 = load i8, i8* %141, align 1
  %143 = call signext i8 @pg_toupper(i8 zeroext %142)
  %144 = load i8*, i8** %14, align 8
  store i8 %143, i8* %144, align 1
  br label %145

145:                                              ; preds = %140, %135
  %146 = load i8*, i8** %14, align 8
  %147 = load i8, i8* %146, align 1
  %148 = call i32 @isalnum(i8 zeroext %147)
  store i32 %148, i32* %9, align 4
  br label %149

149:                                              ; preds = %145
  %150 = load i8*, i8** %14, align 8
  %151 = getelementptr inbounds i8, i8* %150, i32 1
  store i8* %151, i8** %14, align 8
  br label %128

152:                                              ; preds = %128
  br label %153

153:                                              ; preds = %152, %109
  br label %154

154:                                              ; preds = %153, %22
  %155 = load i8*, i8** %8, align 8
  store i8* %155, i8** %4, align 8
  br label %156

156:                                              ; preds = %154, %17
  %157 = load i8*, i8** %4, align 8
  ret i8* %157
}

declare dso_local i64 @lc_ctype_is_c(i64) #1

declare dso_local i8* @asc_initcap(i8*, i64) #1

declare dso_local i32 @OidIsValid(i64) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, ...) #1

declare dso_local i32 @errhint(i8*) #1

declare dso_local %struct.TYPE_8__* @pg_newlocale_from_collation(i64) #1

declare dso_local i64 @pg_database_encoding_max_length(...) #1

declare dso_local i8* @palloc(i64) #1

declare dso_local i32 @char2wchar(i64*, i64, i8*, i64, %struct.TYPE_8__*) #1

declare dso_local i64 @towlower(i64) #1

declare dso_local i64 @towupper(i64) #1

declare dso_local i32 @iswalnum(i64) #1

declare dso_local i32 @wchar2char(i8*, i64*, i64, %struct.TYPE_8__*) #1

declare dso_local i32 @pfree(i64*) #1

declare dso_local i8* @pnstrdup(i8*, i64) #1

declare dso_local signext i8 @pg_tolower(i8 zeroext) #1

declare dso_local signext i8 @pg_toupper(i8 zeroext) #1

declare dso_local i32 @isalnum(i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
