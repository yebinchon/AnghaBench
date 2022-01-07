; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_regexp.c_RE_compile_and_cache.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_regexp.c_RE_compile_and_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i64, i32, i32* }

@num_res = common dso_local global i32 0, align 4
@re_array = common dso_local global %struct.TYPE_5__* null, align 8
@REG_OKAY = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_INVALID_REGULAR_EXPRESSION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"invalid regular expression: %s\00", align 1
@ERRCODE_OUT_OF_MEMORY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@MAX_CACHED_RES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @RE_compile_and_cache(i32* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_5__, align 8
  %15 = alloca [100 x i8], align 16
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %16 = load i32*, i32** %5, align 8
  %17 = call i32 @VARSIZE_ANY_EXHDR(i32* %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32*, i32** %5, align 8
  %19 = call i8* @VARDATA_ANY(i32* %18)
  store i8* %19, i8** %9, align 8
  store i32 0, i32* %12, align 4
  br label %20

20:                                               ; preds = %90, %3
  %21 = load i32, i32* %12, align 4
  %22 = load i32, i32* @num_res, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %93

24:                                               ; preds = %20
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** @re_array, align 8
  %26 = load i32, i32* %12, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* %8, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %89

33:                                               ; preds = %24
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** @re_array, align 8
  %35 = load i32, i32* %12, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %89

42:                                               ; preds = %33
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** @re_array, align 8
  %44 = load i32, i32* %12, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* %7, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %89

51:                                               ; preds = %42
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** @re_array, align 8
  %53 = load i32, i32* %12, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 4
  %57 = load i32*, i32** %56, align 8
  %58 = load i8*, i8** %9, align 8
  %59 = load i32, i32* %8, align 4
  %60 = call i64 @memcmp(i32* %57, i8* %58, i32 %59)
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %89

62:                                               ; preds = %51
  %63 = load i32, i32* %12, align 4
  %64 = icmp sgt i32 %63, 0
  br i1 %64, label %65, label %85

65:                                               ; preds = %62
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** @re_array, align 8
  %67 = load i32, i32* %12, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i64 %68
  %70 = bitcast %struct.TYPE_5__* %14 to i8*
  %71 = bitcast %struct.TYPE_5__* %69 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %70, i8* align 8 %71, i64 32, i1 false)
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** @re_array, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i64 1
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** @re_array, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i64 0
  %76 = load i32, i32* %12, align 4
  %77 = sext i32 %76 to i64
  %78 = mul i64 %77, 32
  %79 = trunc i64 %78 to i32
  %80 = call i32 @memmove(%struct.TYPE_5__* %73, %struct.TYPE_5__* %75, i32 %79)
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** @re_array, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i64 0
  %83 = bitcast %struct.TYPE_5__* %82 to i8*
  %84 = bitcast %struct.TYPE_5__* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %83, i8* align 8 %84, i64 32, i1 false)
  br label %85

85:                                               ; preds = %65, %62
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** @re_array, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i64 0
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 3
  store i32* %88, i32** %4, align 8
  br label %203

89:                                               ; preds = %51, %42, %33, %24
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* %12, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %12, align 4
  br label %20

93:                                               ; preds = %20
  %94 = load i32, i32* %8, align 4
  %95 = add nsw i32 %94, 1
  %96 = sext i32 %95 to i64
  %97 = mul i64 %96, 4
  %98 = trunc i64 %97 to i32
  %99 = call i64 @palloc(i32 %98)
  %100 = inttoptr i64 %99 to i32*
  store i32* %100, i32** %10, align 8
  %101 = load i8*, i8** %9, align 8
  %102 = load i32*, i32** %10, align 8
  %103 = load i32, i32* %8, align 4
  %104 = call i32 @pg_mb2wchar_with_len(i8* %101, i32* %102, i32 %103)
  store i32 %104, i32* %11, align 4
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 3
  %106 = load i32*, i32** %10, align 8
  %107 = load i32, i32* %11, align 4
  %108 = load i32, i32* %6, align 4
  %109 = load i64, i64* %7, align 8
  %110 = call i32 @pg_regcomp(i32* %105, i32* %106, i32 %107, i32 %108, i64 %109)
  store i32 %110, i32* %13, align 4
  %111 = load i32*, i32** %10, align 8
  %112 = call i32 @pfree(i32* %111)
  %113 = load i32, i32* %13, align 4
  %114 = load i32, i32* @REG_OKAY, align 4
  %115 = icmp ne i32 %113, %114
  br i1 %115, label %116, label %128

116:                                              ; preds = %93
  %117 = call i32 (...) @CHECK_FOR_INTERRUPTS()
  %118 = load i32, i32* %13, align 4
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 3
  %120 = getelementptr inbounds [100 x i8], [100 x i8]* %15, i64 0, i64 0
  %121 = call i32 @pg_regerror(i32 %118, i32* %119, i8* %120, i32 100)
  %122 = load i32, i32* @ERROR, align 4
  %123 = load i32, i32* @ERRCODE_INVALID_REGULAR_EXPRESSION, align 4
  %124 = call i32 @errcode(i32 %123)
  %125 = getelementptr inbounds [100 x i8], [100 x i8]* %15, i64 0, i64 0
  %126 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %125)
  %127 = call i32 @ereport(i32 %122, i32 %126)
  br label %128

128:                                              ; preds = %116, %93
  %129 = load i32, i32* %8, align 4
  %130 = call i32 @Max(i32 %129, i32 1)
  %131 = call i32* @malloc(i32 %130)
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 4
  store i32* %131, i32** %132, align 8
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 4
  %134 = load i32*, i32** %133, align 8
  %135 = icmp eq i32* %134, null
  br i1 %135, label %136, label %144

136:                                              ; preds = %128
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 3
  %138 = call i32 @pg_regfree(i32* %137)
  %139 = load i32, i32* @ERROR, align 4
  %140 = load i32, i32* @ERRCODE_OUT_OF_MEMORY, align 4
  %141 = call i32 @errcode(i32 %140)
  %142 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %143 = call i32 @ereport(i32 %139, i32 %142)
  br label %144

144:                                              ; preds = %136, %128
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 4
  %146 = load i32*, i32** %145, align 8
  %147 = load i8*, i8** %9, align 8
  %148 = load i32, i32* %8, align 4
  %149 = call i32 @memcpy(i32* %146, i8* %147, i32 %148)
  %150 = load i32, i32* %8, align 4
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  store i32 %150, i32* %151, align 8
  %152 = load i32, i32* %6, align 4
  %153 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 1
  store i32 %152, i32* %153, align 4
  %154 = load i64, i64* %7, align 8
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 2
  store i64 %154, i64* %155, align 8
  %156 = load i32, i32* @num_res, align 4
  %157 = load i32, i32* @MAX_CACHED_RES, align 4
  %158 = icmp sge i32 %156, %157
  br i1 %158, label %159, label %180

159:                                              ; preds = %144
  %160 = load i32, i32* @num_res, align 4
  %161 = add nsw i32 %160, -1
  store i32 %161, i32* @num_res, align 4
  %162 = load i32, i32* @num_res, align 4
  %163 = load i32, i32* @MAX_CACHED_RES, align 4
  %164 = icmp slt i32 %162, %163
  %165 = zext i1 %164 to i32
  %166 = call i32 @Assert(i32 %165)
  %167 = load %struct.TYPE_5__*, %struct.TYPE_5__** @re_array, align 8
  %168 = load i32, i32* @num_res, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %167, i64 %169
  %171 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %170, i32 0, i32 3
  %172 = call i32 @pg_regfree(i32* %171)
  %173 = load %struct.TYPE_5__*, %struct.TYPE_5__** @re_array, align 8
  %174 = load i32, i32* @num_res, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %173, i64 %175
  %177 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %176, i32 0, i32 4
  %178 = load i32*, i32** %177, align 8
  %179 = call i32 @free(i32* %178)
  br label %180

180:                                              ; preds = %159, %144
  %181 = load i32, i32* @num_res, align 4
  %182 = icmp sgt i32 %181, 0
  br i1 %182, label %183, label %193

183:                                              ; preds = %180
  %184 = load %struct.TYPE_5__*, %struct.TYPE_5__** @re_array, align 8
  %185 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %184, i64 1
  %186 = load %struct.TYPE_5__*, %struct.TYPE_5__** @re_array, align 8
  %187 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %186, i64 0
  %188 = load i32, i32* @num_res, align 4
  %189 = sext i32 %188 to i64
  %190 = mul i64 %189, 32
  %191 = trunc i64 %190 to i32
  %192 = call i32 @memmove(%struct.TYPE_5__* %185, %struct.TYPE_5__* %187, i32 %191)
  br label %193

193:                                              ; preds = %183, %180
  %194 = load %struct.TYPE_5__*, %struct.TYPE_5__** @re_array, align 8
  %195 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %194, i64 0
  %196 = bitcast %struct.TYPE_5__* %195 to i8*
  %197 = bitcast %struct.TYPE_5__* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %196, i8* align 8 %197, i64 32, i1 false)
  %198 = load i32, i32* @num_res, align 4
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* @num_res, align 4
  %200 = load %struct.TYPE_5__*, %struct.TYPE_5__** @re_array, align 8
  %201 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %200, i64 0
  %202 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %201, i32 0, i32 3
  store i32* %202, i32** %4, align 8
  br label %203

203:                                              ; preds = %193, %85
  %204 = load i32*, i32** %4, align 8
  ret i32* %204
}

declare dso_local i32 @VARSIZE_ANY_EXHDR(i32*) #1

declare dso_local i8* @VARDATA_ANY(i32*) #1

declare dso_local i64 @memcmp(i32*, i8*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @memmove(%struct.TYPE_5__*, %struct.TYPE_5__*, i32) #1

declare dso_local i64 @palloc(i32) #1

declare dso_local i32 @pg_mb2wchar_with_len(i8*, i32*, i32) #1

declare dso_local i32 @pg_regcomp(i32*, i32*, i32, i32, i64) #1

declare dso_local i32 @pfree(i32*) #1

declare dso_local i32 @CHECK_FOR_INTERRUPTS(...) #1

declare dso_local i32 @pg_regerror(i32, i32*, i8*, i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, ...) #1

declare dso_local i32* @malloc(i32) #1

declare dso_local i32 @Max(i32, i32) #1

declare dso_local i32 @pg_regfree(i32*) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
