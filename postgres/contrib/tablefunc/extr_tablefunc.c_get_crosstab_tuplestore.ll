; ModuleID = '/home/carl/AnghaBench/postgres/contrib/tablefunc/extr_tablefunc.c_get_crosstab_tuplestore.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/tablefunc/extr_tablefunc.c_get_crosstab_tuplestore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32*, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }

@work_mem = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"get_crosstab_tuplestore: SPI_connect returned %d\00", align 1
@SPI_processed = common dso_local global i64 0, align 8
@SPI_OK_SELECT = common dso_local global i32 0, align 4
@SPI_tuptable = common dso_local global %struct.TYPE_11__* null, align 8
@ERRCODE_SYNTAX_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [67 x i8] c"provided \22categories\22 SQL must return 1 column of at least one row\00", align 1
@ERRCODE_INVALID_PARAMETER_VALUE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"invalid source data SQL statement\00", align 1
@.str.3 = private unnamed_addr constant [70 x i8] c"The provided SQL must return 3  columns; rowid, category, and values.\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"invalid return type\00", align 1
@.str.5 = private unnamed_addr constant [69 x i8] c"Query-specified return tuple has %d columns but crosstab returns %d.\00", align 1
@SPI_OK_FINISH = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [45 x i8] c"get_crosstab_tuplestore: SPI_finish() failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i32*, %struct.TYPE_10__*, i32, i32)* @get_crosstab_tuplestore to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @get_crosstab_tuplestore(i8* %0, i32* %1, %struct.TYPE_10__* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i8**, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca %struct.TYPE_11__*, align 8
  %19 = alloca %struct.TYPE_10__*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca %struct.TYPE_9__*, align 8
  %29 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %30 = load i32*, i32** %7, align 8
  %31 = call i32 @hash_get_num_entries(i32* %30)
  store i32 %31, i32* %12, align 4
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %33 = call i32* @TupleDescGetAttInMetadata(%struct.TYPE_10__* %32)
  store i32* %33, i32** %13, align 8
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* @work_mem, align 4
  %36 = call i32* @tuplestore_begin_heap(i32 %34, i32 0, i32 %35)
  store i32* %36, i32** %11, align 8
  %37 = call i32 (...) @SPI_connect()
  store i32 %37, i32* %16, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %5
  %40 = load i32, i32* @ERROR, align 4
  %41 = load i32, i32* %16, align 4
  %42 = call i32 (i32, i8*, ...) @elog(i32 %40, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %41)
  br label %43

43:                                               ; preds = %39, %5
  %44 = load i8*, i8** %6, align 8
  %45 = call i32 @SPI_execute(i8* %44, i32 1, i32 0)
  store i32 %45, i32* %16, align 4
  %46 = load i64, i64* @SPI_processed, align 8
  store i64 %46, i64* %17, align 8
  %47 = load i32, i32* %16, align 4
  %48 = load i32, i32* @SPI_OK_SELECT, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %222

50:                                               ; preds = %43
  %51 = load i64, i64* %17, align 8
  %52 = icmp sgt i64 %51, 0
  br i1 %52, label %53, label %222

53:                                               ; preds = %50
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** @SPI_tuptable, align 8
  store %struct.TYPE_11__* %54, %struct.TYPE_11__** %18, align 8
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 1
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %56, align 8
  store %struct.TYPE_10__* %57, %struct.TYPE_10__** %19, align 8
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %20, align 4
  store i8* null, i8** %22, align 8
  store i32 1, i32* %23, align 4
  %61 = load i32, i32* %12, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %53
  %64 = load i32, i32* @ERROR, align 4
  %65 = load i32, i32* @ERRCODE_SYNTAX_ERROR, align 4
  %66 = call i32 @errcode(i32 %65)
  %67 = call i32 @errmsg(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.1, i64 0, i64 0))
  %68 = call i32 @ereport(i32 %64, i32 %67)
  br label %69

69:                                               ; preds = %63, %53
  %70 = load i32, i32* %20, align 4
  %71 = icmp slt i32 %70, 3
  br i1 %71, label %72, label %79

72:                                               ; preds = %69
  %73 = load i32, i32* @ERROR, align 4
  %74 = load i32, i32* @ERRCODE_INVALID_PARAMETER_VALUE, align 4
  %75 = call i32 @errcode(i32 %74)
  %76 = call i32 @errmsg(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %77 = call i32 (i8*, ...) @errdetail(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.3, i64 0, i64 0))
  %78 = call i32 @ereport(i32 %73, i32 %77)
  br label %79

79:                                               ; preds = %72, %69
  %80 = load i32, i32* %20, align 4
  %81 = sub nsw i32 %80, 2
  %82 = load i32, i32* %12, align 4
  %83 = add nsw i32 %81, %82
  store i32 %83, i32* %26, align 4
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %26, align 4
  %88 = icmp ne i32 %86, %87
  br i1 %88, label %89, label %100

89:                                               ; preds = %79
  %90 = load i32, i32* @ERROR, align 4
  %91 = load i32, i32* @ERRCODE_SYNTAX_ERROR, align 4
  %92 = call i32 @errcode(i32 %91)
  %93 = call i32 @errmsg(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* %26, align 4
  %98 = call i32 (i8*, ...) @errdetail(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.5, i64 0, i64 0), i32 %96, i32 %97)
  %99 = call i32 @ereport(i32 %90, i32 %98)
  br label %100

100:                                              ; preds = %89, %79
  %101 = load i32, i32* %26, align 4
  %102 = sext i32 %101 to i64
  %103 = mul i64 %102, 8
  %104 = trunc i64 %103 to i32
  %105 = call i64 @palloc0(i32 %104)
  %106 = inttoptr i64 %105 to i8**
  store i8** %106, i8*** %14, align 8
  store i64 0, i64* %24, align 8
  br label %107

107:                                              ; preds = %212, %100
  %108 = load i64, i64* %24, align 8
  %109 = load i64, i64* %17, align 8
  %110 = icmp slt i64 %108, %109
  br i1 %110, label %111, label %215

111:                                              ; preds = %107
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 0
  %114 = load i32*, i32** %113, align 8
  %115 = load i64, i64* %24, align 8
  %116 = getelementptr inbounds i32, i32* %114, i64 %115
  %117 = load i32, i32* %116, align 4
  store i32 %117, i32* %27, align 4
  %118 = load i32, i32* %27, align 4
  %119 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %120 = call i8* @SPI_getvalue(i32 %118, %struct.TYPE_10__* %119, i32 1)
  store i8* %120, i8** %21, align 8
  %121 = load i32, i32* %23, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %128, label %123

123:                                              ; preds = %111
  %124 = load i8*, i8** %22, align 8
  %125 = load i8*, i8** %21, align 8
  %126 = call i32 @xstreq(i8* %124, i8* %125)
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %176, label %128

128:                                              ; preds = %123, %111
  %129 = load i32, i32* %23, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %153, label %131

131:                                              ; preds = %128
  %132 = load i32*, i32** %13, align 8
  %133 = load i8**, i8*** %14, align 8
  %134 = call i32 @BuildTupleFromCStrings(i32* %132, i8** %133)
  store i32 %134, i32* %15, align 4
  %135 = load i32*, i32** %11, align 8
  %136 = load i32, i32* %15, align 4
  %137 = call i32 @tuplestore_puttuple(i32* %135, i32 %136)
  store i32 0, i32* %25, align 4
  br label %138

138:                                              ; preds = %149, %131
  %139 = load i32, i32* %25, align 4
  %140 = load i32, i32* %26, align 4
  %141 = icmp slt i32 %139, %140
  br i1 %141, label %142, label %152

142:                                              ; preds = %138
  %143 = load i8**, i8*** %14, align 8
  %144 = load i32, i32* %25, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i8*, i8** %143, i64 %145
  %147 = load i8*, i8** %146, align 8
  %148 = call i32 @xpfree(i8* %147)
  br label %149

149:                                              ; preds = %142
  %150 = load i32, i32* %25, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %25, align 4
  br label %138

152:                                              ; preds = %138
  br label %153

153:                                              ; preds = %152, %128
  %154 = load i8*, i8** %21, align 8
  %155 = load i8**, i8*** %14, align 8
  %156 = getelementptr inbounds i8*, i8** %155, i64 0
  store i8* %154, i8** %156, align 8
  store i32 1, i32* %25, align 4
  br label %157

157:                                              ; preds = %172, %153
  %158 = load i32, i32* %25, align 4
  %159 = load i32, i32* %20, align 4
  %160 = sub nsw i32 %159, 2
  %161 = icmp slt i32 %158, %160
  br i1 %161, label %162, label %175

162:                                              ; preds = %157
  %163 = load i32, i32* %27, align 4
  %164 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %165 = load i32, i32* %25, align 4
  %166 = add nsw i32 %165, 1
  %167 = call i8* @SPI_getvalue(i32 %163, %struct.TYPE_10__* %164, i32 %166)
  %168 = load i8**, i8*** %14, align 8
  %169 = load i32, i32* %25, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i8*, i8** %168, i64 %170
  store i8* %167, i8** %171, align 8
  br label %172

172:                                              ; preds = %162
  %173 = load i32, i32* %25, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %25, align 4
  br label %157

175:                                              ; preds = %157
  store i32 0, i32* %23, align 4
  br label %176

176:                                              ; preds = %175, %123
  %177 = load i32, i32* %27, align 4
  %178 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %179 = load i32, i32* %20, align 4
  %180 = sub nsw i32 %179, 1
  %181 = call i8* @SPI_getvalue(i32 %177, %struct.TYPE_10__* %178, i32 %180)
  store i8* %181, i8** %29, align 8
  %182 = load i8*, i8** %29, align 8
  %183 = icmp ne i8* %182, null
  br i1 %183, label %184, label %206

184:                                              ; preds = %176
  %185 = load i32*, i32** %7, align 8
  %186 = load i8*, i8** %29, align 8
  %187 = load %struct.TYPE_9__*, %struct.TYPE_9__** %28, align 8
  %188 = call i32 @crosstab_HashTableLookup(i32* %185, i8* %186, %struct.TYPE_9__* %187)
  %189 = load %struct.TYPE_9__*, %struct.TYPE_9__** %28, align 8
  %190 = icmp ne %struct.TYPE_9__* %189, null
  br i1 %190, label %191, label %205

191:                                              ; preds = %184
  %192 = load i32, i32* %27, align 4
  %193 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %194 = load i32, i32* %20, align 4
  %195 = call i8* @SPI_getvalue(i32 %192, %struct.TYPE_10__* %193, i32 %194)
  %196 = load i8**, i8*** %14, align 8
  %197 = load %struct.TYPE_9__*, %struct.TYPE_9__** %28, align 8
  %198 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = load i32, i32* %20, align 4
  %201 = add nsw i32 %199, %200
  %202 = sub nsw i32 %201, 2
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i8*, i8** %196, i64 %203
  store i8* %195, i8** %204, align 8
  br label %205

205:                                              ; preds = %191, %184
  br label %206

206:                                              ; preds = %205, %176
  %207 = load i8*, i8** %22, align 8
  %208 = call i32 @xpfree(i8* %207)
  %209 = load i8*, i8** %22, align 8
  %210 = load i8*, i8** %21, align 8
  %211 = call i32 @xpstrdup(i8* %209, i8* %210)
  br label %212

212:                                              ; preds = %206
  %213 = load i64, i64* %24, align 8
  %214 = add nsw i64 %213, 1
  store i64 %214, i64* %24, align 8
  br label %107

215:                                              ; preds = %107
  %216 = load i32*, i32** %13, align 8
  %217 = load i8**, i8*** %14, align 8
  %218 = call i32 @BuildTupleFromCStrings(i32* %216, i8** %217)
  store i32 %218, i32* %15, align 4
  %219 = load i32*, i32** %11, align 8
  %220 = load i32, i32* %15, align 4
  %221 = call i32 @tuplestore_puttuple(i32* %219, i32 %220)
  br label %222

222:                                              ; preds = %215, %50, %43
  %223 = call i64 (...) @SPI_finish()
  %224 = load i64, i64* @SPI_OK_FINISH, align 8
  %225 = icmp ne i64 %223, %224
  br i1 %225, label %226, label %229

226:                                              ; preds = %222
  %227 = load i32, i32* @ERROR, align 4
  %228 = call i32 (i32, i8*, ...) @elog(i32 %227, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i64 0, i64 0))
  br label %229

229:                                              ; preds = %226, %222
  %230 = load i32*, i32** %11, align 8
  %231 = call i32 @tuplestore_donestoring(i32* %230)
  %232 = load i32*, i32** %11, align 8
  ret i32* %232
}

declare dso_local i32 @hash_get_num_entries(i32*) #1

declare dso_local i32* @TupleDescGetAttInMetadata(%struct.TYPE_10__*) #1

declare dso_local i32* @tuplestore_begin_heap(i32, i32, i32) #1

declare dso_local i32 @SPI_connect(...) #1

declare dso_local i32 @elog(i32, i8*, ...) #1

declare dso_local i32 @SPI_execute(i8*, i32, i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32 @errdetail(i8*, ...) #1

declare dso_local i64 @palloc0(i32) #1

declare dso_local i8* @SPI_getvalue(i32, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @xstreq(i8*, i8*) #1

declare dso_local i32 @BuildTupleFromCStrings(i32*, i8**) #1

declare dso_local i32 @tuplestore_puttuple(i32*, i32) #1

declare dso_local i32 @xpfree(i8*) #1

declare dso_local i32 @crosstab_HashTableLookup(i32*, i8*, %struct.TYPE_9__*) #1

declare dso_local i32 @xpstrdup(i8*, i8*) #1

declare dso_local i64 @SPI_finish(...) #1

declare dso_local i32 @tuplestore_donestoring(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
