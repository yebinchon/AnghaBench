; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_pg_locale.c_PGLC_localeconv.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_pg_locale.c_PGLC_localeconv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lconv = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8* }

@PGLC_localeconv.CurrentLocaleConv = internal global %struct.lconv zeroinitializer, align 8
@PGLC_localeconv.CurrentLocaleConvAllocated = internal global i32 0, align 4
@CurrentLocaleConvValid = common dso_local global i32 0, align 4
@LC_MONETARY = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"setlocale(NULL) failed\00", align 1
@LC_NUMERIC = common dso_local global i32 0, align 4
@locale_numeric = common dso_local global i8* null, align 8
@locale_monetary = common dso_local global i8* null, align 8
@FATAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"failed to restore LC_MONETARY to \22%s\22\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"failed to restore LC_NUMERIC to \22%s\22\00", align 1
@ERRCODE_OUT_OF_MEMORY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@PG_SQL_ASCII = common dso_local global i32 0, align 4
@LC_CTYPE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.lconv* @PGLC_localeconv() #0 {
  %1 = alloca %struct.lconv*, align 8
  %2 = alloca %struct.lconv*, align 8
  %3 = alloca %struct.lconv, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = load i32, i32* @CurrentLocaleConvValid, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %0
  store %struct.lconv* @PGLC_localeconv.CurrentLocaleConv, %struct.lconv** %1, align 8
  br label %202

10:                                               ; preds = %0
  %11 = load i32, i32* @PGLC_localeconv.CurrentLocaleConvAllocated, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  %14 = call i32 @free_struct_lconv(%struct.lconv* @PGLC_localeconv.CurrentLocaleConv)
  store i32 0, i32* @PGLC_localeconv.CurrentLocaleConvAllocated, align 4
  br label %15

15:                                               ; preds = %13, %10
  %16 = call i32 @memset(%struct.lconv* %3, i32 0, i32 112)
  %17 = load i32, i32* @LC_MONETARY, align 4
  %18 = call i8* @setlocale(i32 %17, i8* null)
  store i8* %18, i8** %4, align 8
  %19 = load i8*, i8** %4, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %15
  %22 = load i32, i32* @ERROR, align 4
  %23 = call i32 (i32, i8*, ...) @elog(i32 %22, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %24

24:                                               ; preds = %21, %15
  %25 = load i8*, i8** %4, align 8
  %26 = call i8* @pstrdup(i8* %25)
  store i8* %26, i8** %4, align 8
  %27 = load i32, i32* @LC_NUMERIC, align 4
  %28 = call i8* @setlocale(i32 %27, i8* null)
  store i8* %28, i8** %5, align 8
  %29 = load i8*, i8** %5, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %24
  %32 = load i32, i32* @ERROR, align 4
  %33 = call i32 (i32, i8*, ...) @elog(i32 %32, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %34

34:                                               ; preds = %31, %24
  %35 = load i8*, i8** %5, align 8
  %36 = call i8* @pstrdup(i8* %35)
  store i8* %36, i8** %5, align 8
  %37 = load i32, i32* @LC_NUMERIC, align 4
  %38 = load i8*, i8** @locale_numeric, align 8
  %39 = call i8* @setlocale(i32 %37, i8* %38)
  %40 = call %struct.lconv* (...) @localeconv()
  store %struct.lconv* %40, %struct.lconv** %2, align 8
  %41 = load %struct.lconv*, %struct.lconv** %2, align 8
  %42 = getelementptr inbounds %struct.lconv, %struct.lconv* %41, i32 0, i32 7
  %43 = load i8*, i8** %42, align 8
  %44 = call i8* @strdup(i8* %43)
  %45 = getelementptr inbounds %struct.lconv, %struct.lconv* %3, i32 0, i32 7
  store i8* %44, i8** %45, align 8
  %46 = load %struct.lconv*, %struct.lconv** %2, align 8
  %47 = getelementptr inbounds %struct.lconv, %struct.lconv* %46, i32 0, i32 6
  %48 = load i8*, i8** %47, align 8
  %49 = call i8* @strdup(i8* %48)
  %50 = getelementptr inbounds %struct.lconv, %struct.lconv* %3, i32 0, i32 6
  store i8* %49, i8** %50, align 8
  %51 = load %struct.lconv*, %struct.lconv** %2, align 8
  %52 = getelementptr inbounds %struct.lconv, %struct.lconv* %51, i32 0, i32 17
  %53 = load i8*, i8** %52, align 8
  %54 = call i8* @strdup(i8* %53)
  %55 = getelementptr inbounds %struct.lconv, %struct.lconv* %3, i32 0, i32 17
  store i8* %54, i8** %55, align 8
  %56 = load i32, i32* @LC_MONETARY, align 4
  %57 = load i8*, i8** @locale_monetary, align 8
  %58 = call i8* @setlocale(i32 %56, i8* %57)
  %59 = call %struct.lconv* (...) @localeconv()
  store %struct.lconv* %59, %struct.lconv** %2, align 8
  %60 = load %struct.lconv*, %struct.lconv** %2, align 8
  %61 = getelementptr inbounds %struct.lconv, %struct.lconv* %60, i32 0, i32 5
  %62 = load i8*, i8** %61, align 8
  %63 = call i8* @strdup(i8* %62)
  %64 = getelementptr inbounds %struct.lconv, %struct.lconv* %3, i32 0, i32 5
  store i8* %63, i8** %64, align 8
  %65 = load %struct.lconv*, %struct.lconv** %2, align 8
  %66 = getelementptr inbounds %struct.lconv, %struct.lconv* %65, i32 0, i32 4
  %67 = load i8*, i8** %66, align 8
  %68 = call i8* @strdup(i8* %67)
  %69 = getelementptr inbounds %struct.lconv, %struct.lconv* %3, i32 0, i32 4
  store i8* %68, i8** %69, align 8
  %70 = load %struct.lconv*, %struct.lconv** %2, align 8
  %71 = getelementptr inbounds %struct.lconv, %struct.lconv* %70, i32 0, i32 3
  %72 = load i8*, i8** %71, align 8
  %73 = call i8* @strdup(i8* %72)
  %74 = getelementptr inbounds %struct.lconv, %struct.lconv* %3, i32 0, i32 3
  store i8* %73, i8** %74, align 8
  %75 = load %struct.lconv*, %struct.lconv** %2, align 8
  %76 = getelementptr inbounds %struct.lconv, %struct.lconv* %75, i32 0, i32 2
  %77 = load i8*, i8** %76, align 8
  %78 = call i8* @strdup(i8* %77)
  %79 = getelementptr inbounds %struct.lconv, %struct.lconv* %3, i32 0, i32 2
  store i8* %78, i8** %79, align 8
  %80 = load %struct.lconv*, %struct.lconv** %2, align 8
  %81 = getelementptr inbounds %struct.lconv, %struct.lconv* %80, i32 0, i32 16
  %82 = load i8*, i8** %81, align 8
  %83 = call i8* @strdup(i8* %82)
  %84 = getelementptr inbounds %struct.lconv, %struct.lconv* %3, i32 0, i32 16
  store i8* %83, i8** %84, align 8
  %85 = load %struct.lconv*, %struct.lconv** %2, align 8
  %86 = getelementptr inbounds %struct.lconv, %struct.lconv* %85, i32 0, i32 1
  %87 = load i8*, i8** %86, align 8
  %88 = call i8* @strdup(i8* %87)
  %89 = getelementptr inbounds %struct.lconv, %struct.lconv* %3, i32 0, i32 1
  store i8* %88, i8** %89, align 8
  %90 = load %struct.lconv*, %struct.lconv** %2, align 8
  %91 = getelementptr inbounds %struct.lconv, %struct.lconv* %90, i32 0, i32 0
  %92 = load i8*, i8** %91, align 8
  %93 = call i8* @strdup(i8* %92)
  %94 = getelementptr inbounds %struct.lconv, %struct.lconv* %3, i32 0, i32 0
  store i8* %93, i8** %94, align 8
  %95 = load %struct.lconv*, %struct.lconv** %2, align 8
  %96 = getelementptr inbounds %struct.lconv, %struct.lconv* %95, i32 0, i32 15
  %97 = load i32, i32* %96, align 4
  %98 = getelementptr inbounds %struct.lconv, %struct.lconv* %3, i32 0, i32 15
  store i32 %97, i32* %98, align 4
  %99 = load %struct.lconv*, %struct.lconv** %2, align 8
  %100 = getelementptr inbounds %struct.lconv, %struct.lconv* %99, i32 0, i32 14
  %101 = load i32, i32* %100, align 8
  %102 = getelementptr inbounds %struct.lconv, %struct.lconv* %3, i32 0, i32 14
  store i32 %101, i32* %102, align 8
  %103 = load %struct.lconv*, %struct.lconv** %2, align 8
  %104 = getelementptr inbounds %struct.lconv, %struct.lconv* %103, i32 0, i32 13
  %105 = load i32, i32* %104, align 4
  %106 = getelementptr inbounds %struct.lconv, %struct.lconv* %3, i32 0, i32 13
  store i32 %105, i32* %106, align 4
  %107 = load %struct.lconv*, %struct.lconv** %2, align 8
  %108 = getelementptr inbounds %struct.lconv, %struct.lconv* %107, i32 0, i32 12
  %109 = load i32, i32* %108, align 8
  %110 = getelementptr inbounds %struct.lconv, %struct.lconv* %3, i32 0, i32 12
  store i32 %109, i32* %110, align 8
  %111 = load %struct.lconv*, %struct.lconv** %2, align 8
  %112 = getelementptr inbounds %struct.lconv, %struct.lconv* %111, i32 0, i32 11
  %113 = load i32, i32* %112, align 4
  %114 = getelementptr inbounds %struct.lconv, %struct.lconv* %3, i32 0, i32 11
  store i32 %113, i32* %114, align 4
  %115 = load %struct.lconv*, %struct.lconv** %2, align 8
  %116 = getelementptr inbounds %struct.lconv, %struct.lconv* %115, i32 0, i32 10
  %117 = load i32, i32* %116, align 8
  %118 = getelementptr inbounds %struct.lconv, %struct.lconv* %3, i32 0, i32 10
  store i32 %117, i32* %118, align 8
  %119 = load %struct.lconv*, %struct.lconv** %2, align 8
  %120 = getelementptr inbounds %struct.lconv, %struct.lconv* %119, i32 0, i32 9
  %121 = load i32, i32* %120, align 4
  %122 = getelementptr inbounds %struct.lconv, %struct.lconv* %3, i32 0, i32 9
  store i32 %121, i32* %122, align 4
  %123 = load %struct.lconv*, %struct.lconv** %2, align 8
  %124 = getelementptr inbounds %struct.lconv, %struct.lconv* %123, i32 0, i32 8
  %125 = load i32, i32* %124, align 8
  %126 = getelementptr inbounds %struct.lconv, %struct.lconv* %3, i32 0, i32 8
  store i32 %125, i32* %126, align 8
  %127 = load i32, i32* @LC_MONETARY, align 4
  %128 = load i8*, i8** %4, align 8
  %129 = call i8* @setlocale(i32 %127, i8* %128)
  %130 = icmp ne i8* %129, null
  br i1 %130, label %135, label %131

131:                                              ; preds = %34
  %132 = load i32, i32* @FATAL, align 4
  %133 = load i8*, i8** %4, align 8
  %134 = call i32 (i32, i8*, ...) @elog(i32 %132, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i8* %133)
  br label %135

135:                                              ; preds = %131, %34
  %136 = load i32, i32* @LC_NUMERIC, align 4
  %137 = load i8*, i8** %5, align 8
  %138 = call i8* @setlocale(i32 %136, i8* %137)
  %139 = icmp ne i8* %138, null
  br i1 %139, label %144, label %140

140:                                              ; preds = %135
  %141 = load i32, i32* @FATAL, align 4
  %142 = load i8*, i8** %5, align 8
  %143 = call i32 (i32, i8*, ...) @elog(i32 %141, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i8* %142)
  br label %144

144:                                              ; preds = %140, %135
  %145 = call i32 (...) @PG_TRY()
  %146 = load i8*, i8** %4, align 8
  %147 = call i32 @pfree(i8* %146)
  %148 = load i8*, i8** %5, align 8
  %149 = call i32 @pfree(i8* %148)
  %150 = call i32 @struct_lconv_is_valid(%struct.lconv* %3)
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %158, label %152

152:                                              ; preds = %144
  %153 = load i32, i32* @ERROR, align 4
  %154 = load i32, i32* @ERRCODE_OUT_OF_MEMORY, align 4
  %155 = call i32 @errcode(i32 %154)
  %156 = call i32 @errmsg(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %157 = call i32 @ereport(i32 %153, i32 %156)
  br label %158

158:                                              ; preds = %152, %144
  %159 = load i8*, i8** @locale_numeric, align 8
  %160 = call i32 @pg_get_encoding_from_locale(i8* %159, i32 1)
  store i32 %160, i32* %6, align 4
  %161 = load i32, i32* %6, align 4
  %162 = icmp slt i32 %161, 0
  br i1 %162, label %163, label %165

163:                                              ; preds = %158
  %164 = load i32, i32* @PG_SQL_ASCII, align 4
  store i32 %164, i32* %6, align 4
  br label %165

165:                                              ; preds = %163, %158
  %166 = load i32, i32* %6, align 4
  %167 = getelementptr inbounds %struct.lconv, %struct.lconv* %3, i32 0, i32 7
  %168 = call i32 @db_encoding_convert(i32 %166, i8** %167)
  %169 = load i32, i32* %6, align 4
  %170 = getelementptr inbounds %struct.lconv, %struct.lconv* %3, i32 0, i32 6
  %171 = call i32 @db_encoding_convert(i32 %169, i8** %170)
  %172 = load i8*, i8** @locale_monetary, align 8
  %173 = call i32 @pg_get_encoding_from_locale(i8* %172, i32 1)
  store i32 %173, i32* %6, align 4
  %174 = load i32, i32* %6, align 4
  %175 = icmp slt i32 %174, 0
  br i1 %175, label %176, label %178

176:                                              ; preds = %165
  %177 = load i32, i32* @PG_SQL_ASCII, align 4
  store i32 %177, i32* %6, align 4
  br label %178

178:                                              ; preds = %176, %165
  %179 = load i32, i32* %6, align 4
  %180 = getelementptr inbounds %struct.lconv, %struct.lconv* %3, i32 0, i32 5
  %181 = call i32 @db_encoding_convert(i32 %179, i8** %180)
  %182 = load i32, i32* %6, align 4
  %183 = getelementptr inbounds %struct.lconv, %struct.lconv* %3, i32 0, i32 4
  %184 = call i32 @db_encoding_convert(i32 %182, i8** %183)
  %185 = load i32, i32* %6, align 4
  %186 = getelementptr inbounds %struct.lconv, %struct.lconv* %3, i32 0, i32 3
  %187 = call i32 @db_encoding_convert(i32 %185, i8** %186)
  %188 = load i32, i32* %6, align 4
  %189 = getelementptr inbounds %struct.lconv, %struct.lconv* %3, i32 0, i32 2
  %190 = call i32 @db_encoding_convert(i32 %188, i8** %189)
  %191 = load i32, i32* %6, align 4
  %192 = getelementptr inbounds %struct.lconv, %struct.lconv* %3, i32 0, i32 1
  %193 = call i32 @db_encoding_convert(i32 %191, i8** %192)
  %194 = load i32, i32* %6, align 4
  %195 = getelementptr inbounds %struct.lconv, %struct.lconv* %3, i32 0, i32 0
  %196 = call i32 @db_encoding_convert(i32 %194, i8** %195)
  %197 = call i32 (...) @PG_CATCH()
  %198 = call i32 @free_struct_lconv(%struct.lconv* %3)
  %199 = call i32 (...) @PG_RE_THROW()
  %200 = call i32 (...) @PG_END_TRY()
  %201 = bitcast %struct.lconv* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.lconv* @PGLC_localeconv.CurrentLocaleConv to i8*), i8* align 8 %201, i64 112, i1 false)
  store i32 1, i32* @PGLC_localeconv.CurrentLocaleConvAllocated, align 4
  store i32 1, i32* @CurrentLocaleConvValid, align 4
  store %struct.lconv* @PGLC_localeconv.CurrentLocaleConv, %struct.lconv** %1, align 8
  br label %202

202:                                              ; preds = %178, %9
  %203 = load %struct.lconv*, %struct.lconv** %1, align 8
  ret %struct.lconv* %203
}

declare dso_local i32 @free_struct_lconv(%struct.lconv*) #1

declare dso_local i32 @memset(%struct.lconv*, i32, i32) #1

declare dso_local i8* @setlocale(i32, i8*) #1

declare dso_local i32 @elog(i32, i8*, ...) #1

declare dso_local i8* @pstrdup(i8*) #1

declare dso_local %struct.lconv* @localeconv(...) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @PG_TRY(...) #1

declare dso_local i32 @pfree(i8*) #1

declare dso_local i32 @struct_lconv_is_valid(%struct.lconv*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32 @pg_get_encoding_from_locale(i8*, i32) #1

declare dso_local i32 @db_encoding_convert(i32, i8**) #1

declare dso_local i32 @PG_CATCH(...) #1

declare dso_local i32 @PG_RE_THROW(...) #1

declare dso_local i32 @PG_END_TRY(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
