; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_formatting.c_str_tolower.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_formatting.c_str_tolower.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@DEFAULT_COLLATION_OID = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_INDETERMINATE_COLLATION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"could not determine which collation to use for %s function\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"lower()\00", align 1
@.str.2 = private unnamed_addr constant [56 x i8] c"Use the COLLATE clause to set the collation explicitly.\00", align 1
@INT_MAX = common dso_local global i32 0, align 4
@ERRCODE_OUT_OF_MEMORY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@COLLPROVIDER_ICU = common dso_local global i64 0, align 8
@u_strToLower = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @str_tolower(i8* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  store i8* null, i8** %4, align 8
  br label %125

17:                                               ; preds = %3
  %18 = load i64, i64* %7, align 8
  %19 = call i64 @lc_ctype_is_c(i64 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %17
  %22 = load i8*, i8** %5, align 8
  %23 = load i64, i64* %6, align 8
  %24 = call i8* @asc_tolower(i8* %22, i64 %23)
  store i8* %24, i8** %8, align 8
  br label %123

25:                                               ; preds = %17
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %9, align 8
  %26 = load i64, i64* %7, align 8
  %27 = load i64, i64* @DEFAULT_COLLATION_OID, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %43

29:                                               ; preds = %25
  %30 = load i64, i64* %7, align 8
  %31 = call i32 @OidIsValid(i64 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %40, label %33

33:                                               ; preds = %29
  %34 = load i32, i32* @ERROR, align 4
  %35 = load i32, i32* @ERRCODE_INDETERMINATE_COLLATION, align 4
  %36 = call i32 @errcode(i32 %35)
  %37 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %38 = call i32 @errhint(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0))
  %39 = call i32 @ereport(i32 %34, i32 %38)
  br label %40

40:                                               ; preds = %33, %29
  %41 = load i64, i64* %7, align 8
  %42 = call %struct.TYPE_8__* @pg_newlocale_from_collation(i64 %41)
  store %struct.TYPE_8__* %42, %struct.TYPE_8__** %9, align 8
  br label %43

43:                                               ; preds = %40, %25
  %44 = call i64 (...) @pg_database_encoding_max_length()
  %45 = icmp ugt i64 %44, 1
  br i1 %45, label %46, label %104

46:                                               ; preds = %43
  %47 = load i64, i64* %6, align 8
  %48 = add i64 %47, 1
  %49 = load i32, i32* @INT_MAX, align 4
  %50 = sext i32 %49 to i64
  %51 = udiv i64 %50, 8
  %52 = icmp ugt i64 %48, %51
  br i1 %52, label %53, label %59

53:                                               ; preds = %46
  %54 = load i32, i32* @ERROR, align 4
  %55 = load i32, i32* @ERRCODE_OUT_OF_MEMORY, align 4
  %56 = call i32 @errcode(i32 %55)
  %57 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %58 = call i32 @ereport(i32 %54, i32 %57)
  br label %59

59:                                               ; preds = %53, %46
  %60 = load i64, i64* %6, align 8
  %61 = add i64 %60, 1
  %62 = mul i64 %61, 8
  %63 = call i8* @palloc(i64 %62)
  %64 = bitcast i8* %63 to i64*
  store i64* %64, i64** %10, align 8
  %65 = load i64*, i64** %10, align 8
  %66 = load i64, i64* %6, align 8
  %67 = add i64 %66, 1
  %68 = load i8*, i8** %5, align 8
  %69 = load i64, i64* %6, align 8
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %71 = call i32 @char2wchar(i64* %65, i64 %67, i8* %68, i64 %69, %struct.TYPE_8__* %70)
  store i64 0, i64* %11, align 8
  br label %72

72:                                               ; preds = %87, %59
  %73 = load i64*, i64** %10, align 8
  %74 = load i64, i64* %11, align 8
  %75 = getelementptr inbounds i64, i64* %73, i64 %74
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %90

78:                                               ; preds = %72
  %79 = load i64*, i64** %10, align 8
  %80 = load i64, i64* %11, align 8
  %81 = getelementptr inbounds i64, i64* %79, i64 %80
  %82 = load i64, i64* %81, align 8
  %83 = call i64 @towlower(i64 %82)
  %84 = load i64*, i64** %10, align 8
  %85 = load i64, i64* %11, align 8
  %86 = getelementptr inbounds i64, i64* %84, i64 %85
  store i64 %83, i64* %86, align 8
  br label %87

87:                                               ; preds = %78
  %88 = load i64, i64* %11, align 8
  %89 = add i64 %88, 1
  store i64 %89, i64* %11, align 8
  br label %72

90:                                               ; preds = %72
  %91 = load i64, i64* %11, align 8
  %92 = call i64 (...) @pg_database_encoding_max_length()
  %93 = mul i64 %91, %92
  %94 = add i64 %93, 1
  store i64 %94, i64* %12, align 8
  %95 = load i64, i64* %12, align 8
  %96 = call i8* @palloc(i64 %95)
  store i8* %96, i8** %8, align 8
  %97 = load i8*, i8** %8, align 8
  %98 = load i64*, i64** %10, align 8
  %99 = load i64, i64* %12, align 8
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %101 = call i32 @wchar2char(i8* %97, i64* %98, i64 %99, %struct.TYPE_8__* %100)
  %102 = load i64*, i64** %10, align 8
  %103 = call i32 @pfree(i64* %102)
  br label %122

104:                                              ; preds = %43
  %105 = load i8*, i8** %5, align 8
  %106 = load i64, i64* %6, align 8
  %107 = call i8* @pnstrdup(i8* %105, i64 %106)
  store i8* %107, i8** %8, align 8
  %108 = load i8*, i8** %8, align 8
  store i8* %108, i8** %13, align 8
  br label %109

109:                                              ; preds = %118, %104
  %110 = load i8*, i8** %13, align 8
  %111 = load i8, i8* %110, align 1
  %112 = icmp ne i8 %111, 0
  br i1 %112, label %113, label %121

113:                                              ; preds = %109
  %114 = load i8*, i8** %13, align 8
  %115 = load i8, i8* %114, align 1
  %116 = call signext i8 @pg_tolower(i8 zeroext %115)
  %117 = load i8*, i8** %13, align 8
  store i8 %116, i8* %117, align 1
  br label %118

118:                                              ; preds = %113
  %119 = load i8*, i8** %13, align 8
  %120 = getelementptr inbounds i8, i8* %119, i32 1
  store i8* %120, i8** %13, align 8
  br label %109

121:                                              ; preds = %109
  br label %122

122:                                              ; preds = %121, %90
  br label %123

123:                                              ; preds = %122, %21
  %124 = load i8*, i8** %8, align 8
  store i8* %124, i8** %4, align 8
  br label %125

125:                                              ; preds = %123, %16
  %126 = load i8*, i8** %4, align 8
  ret i8* %126
}

declare dso_local i64 @lc_ctype_is_c(i64) #1

declare dso_local i8* @asc_tolower(i8*, i64) #1

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

declare dso_local i32 @wchar2char(i8*, i64*, i64, %struct.TYPE_8__*) #1

declare dso_local i32 @pfree(i64*) #1

declare dso_local i8* @pnstrdup(i8*, i64) #1

declare dso_local signext i8 @pg_tolower(i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
