; ModuleID = '/home/carl/AnghaBench/postgres/contrib/pg_stat_statements/extr_pg_stat_statements.c_gc_qtexts.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/pg_stat_statements/extr_pg_stat_statements.c_gc_qtexts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@PGSS_TEXT_FILE = common dso_local global i32 0, align 4
@PG_BINARY_W = common dso_local global i32 0, align 4
@LOG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"could not write file \22%s\22: %m\00", align 1
@pgss_hash = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"could not truncate file \22%s\22: %m\00", align 1
@DEBUG1 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [52 x i8] c"pgss gc of queries file shrunk size from %zu to %zu\00", align 1
@pgss = common dso_local global %struct.TYPE_5__* null, align 8
@ASSUMED_LENGTH_INIT = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [33 x i8] c"could not recreate file \22%s\22: %m\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @gc_qtexts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gc_qtexts() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store i32* null, i32** %3, align 8
  %10 = call i32 (...) @need_gc_qtexts()
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %0
  br label %177

13:                                               ; preds = %0
  %14 = call i8* @qtext_load_file(i32* %2)
  store i8* %14, i8** %1, align 8
  %15 = load i8*, i8** %1, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  br label %129

18:                                               ; preds = %13
  %19 = load i32, i32* @PGSS_TEXT_FILE, align 4
  %20 = load i32, i32* @PG_BINARY_W, align 4
  %21 = call i32* @AllocateFile(i32 %19, i32 %20)
  store i32* %21, i32** %3, align 8
  %22 = load i32*, i32** %3, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %30

24:                                               ; preds = %18
  %25 = load i32, i32* @LOG, align 4
  %26 = call i32 (...) @errcode_for_file_access()
  %27 = load i32, i32* @PGSS_TEXT_FILE, align 4
  %28 = call i32 @errmsg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = call i32 @ereport(i32 %25, i32 %28)
  br label %129

30:                                               ; preds = %18
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %31 = load i32, i32* @pgss_hash, align 4
  %32 = call i32 @hash_seq_init(i32* %4, i32 %31)
  br label %33

33:                                               ; preds = %70, %49, %30
  %34 = call %struct.TYPE_4__* @hash_seq_search(i32* %4)
  store %struct.TYPE_4__* %34, %struct.TYPE_4__** %5, align 8
  %35 = icmp ne %struct.TYPE_4__* %34, null
  br i1 %35, label %36, label %80

36:                                               ; preds = %33
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %8, align 4
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %8, align 4
  %44 = load i8*, i8** %1, align 8
  %45 = load i32, i32* %2, align 4
  %46 = call i8* @qtext_fetch(i32 %42, i32 %43, i8* %44, i32 %45)
  store i8* %46, i8** %9, align 8
  %47 = load i8*, i8** %9, align 8
  %48 = icmp eq i8* %47, null
  br i1 %48, label %49, label %54

49:                                               ; preds = %36
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  store i32 0, i32* %51, align 4
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  store i32 -1, i32* %53, align 4
  br label %33

54:                                               ; preds = %36
  %55 = load i8*, i8** %9, align 8
  %56 = load i32, i32* %8, align 4
  %57 = add nsw i32 %56, 1
  %58 = load i32*, i32** %3, align 8
  %59 = call i32 @fwrite(i8* %55, i32 1, i32 %57, i32* %58)
  %60 = load i32, i32* %8, align 4
  %61 = add nsw i32 %60, 1
  %62 = icmp ne i32 %59, %61
  br i1 %62, label %63, label %70

63:                                               ; preds = %54
  %64 = load i32, i32* @LOG, align 4
  %65 = call i32 (...) @errcode_for_file_access()
  %66 = load i32, i32* @PGSS_TEXT_FILE, align 4
  %67 = call i32 @errmsg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %66)
  %68 = call i32 @ereport(i32 %64, i32 %67)
  %69 = call i32 @hash_seq_term(i32* %4)
  br label %129

70:                                               ; preds = %54
  %71 = load i32, i32* %6, align 4
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 4
  %74 = load i32, i32* %8, align 4
  %75 = add nsw i32 %74, 1
  %76 = load i32, i32* %6, align 4
  %77 = add nsw i32 %76, %75
  store i32 %77, i32* %6, align 4
  %78 = load i32, i32* %7, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %7, align 4
  br label %33

80:                                               ; preds = %33
  %81 = load i32*, i32** %3, align 8
  %82 = call i32 @fileno(i32* %81)
  %83 = load i32, i32* %6, align 4
  %84 = call i64 @ftruncate(i32 %82, i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %80
  %87 = load i32, i32* @LOG, align 4
  %88 = call i32 (...) @errcode_for_file_access()
  %89 = load i32, i32* @PGSS_TEXT_FILE, align 4
  %90 = call i32 @errmsg(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %89)
  %91 = call i32 @ereport(i32 %87, i32 %90)
  br label %92

92:                                               ; preds = %86, %80
  %93 = load i32*, i32** %3, align 8
  %94 = call i64 @FreeFile(i32* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %102

96:                                               ; preds = %92
  %97 = load i32, i32* @LOG, align 4
  %98 = call i32 (...) @errcode_for_file_access()
  %99 = load i32, i32* @PGSS_TEXT_FILE, align 4
  %100 = call i32 @errmsg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %99)
  %101 = call i32 @ereport(i32 %97, i32 %100)
  store i32* null, i32** %3, align 8
  br label %129

102:                                              ; preds = %92
  %103 = load i32, i32* @DEBUG1, align 4
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** @pgss, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* %6, align 4
  %108 = call i32 @elog(i32 %103, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), i32 %106, i32 %107)
  %109 = load i32, i32* %6, align 4
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** @pgss, align 8
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 0
  store i32 %109, i32* %111, align 4
  %112 = load i32, i32* %7, align 4
  %113 = icmp sgt i32 %112, 0
  br i1 %113, label %114, label %120

114:                                              ; preds = %102
  %115 = load i32, i32* %6, align 4
  %116 = load i32, i32* %7, align 4
  %117 = sdiv i32 %115, %116
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** @pgss, align 8
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 1
  store i32 %117, i32* %119, align 4
  br label %125

120:                                              ; preds = %102
  %121 = load i8*, i8** @ASSUMED_LENGTH_INIT, align 8
  %122 = ptrtoint i8* %121 to i32
  %123 = load %struct.TYPE_5__*, %struct.TYPE_5__** @pgss, align 8
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 1
  store i32 %122, i32* %124, align 4
  br label %125

125:                                              ; preds = %120, %114
  %126 = load i8*, i8** %1, align 8
  %127 = call i32 @free(i8* %126)
  %128 = call i32 (...) @record_gc_qtexts()
  br label %177

129:                                              ; preds = %96, %63, %24, %17
  %130 = load i32*, i32** %3, align 8
  %131 = icmp ne i32* %130, null
  br i1 %131, label %132, label %135

132:                                              ; preds = %129
  %133 = load i32*, i32** %3, align 8
  %134 = call i64 @FreeFile(i32* %133)
  br label %135

135:                                              ; preds = %132, %129
  %136 = load i8*, i8** %1, align 8
  %137 = icmp ne i8* %136, null
  br i1 %137, label %138, label %141

138:                                              ; preds = %135
  %139 = load i8*, i8** %1, align 8
  %140 = call i32 @free(i8* %139)
  br label %141

141:                                              ; preds = %138, %135
  %142 = load i32, i32* @pgss_hash, align 4
  %143 = call i32 @hash_seq_init(i32* %4, i32 %142)
  br label %144

144:                                              ; preds = %147, %141
  %145 = call %struct.TYPE_4__* @hash_seq_search(i32* %4)
  store %struct.TYPE_4__* %145, %struct.TYPE_4__** %5, align 8
  %146 = icmp ne %struct.TYPE_4__* %145, null
  br i1 %146, label %147, label %152

147:                                              ; preds = %144
  %148 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 1
  store i32 0, i32* %149, align 4
  %150 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 0
  store i32 -1, i32* %151, align 4
  br label %144

152:                                              ; preds = %144
  %153 = load i32, i32* @PGSS_TEXT_FILE, align 4
  %154 = call i32 @unlink(i32 %153)
  %155 = load i32, i32* @PGSS_TEXT_FILE, align 4
  %156 = load i32, i32* @PG_BINARY_W, align 4
  %157 = call i32* @AllocateFile(i32 %155, i32 %156)
  store i32* %157, i32** %3, align 8
  %158 = load i32*, i32** %3, align 8
  %159 = icmp eq i32* %158, null
  br i1 %159, label %160, label %166

160:                                              ; preds = %152
  %161 = load i32, i32* @LOG, align 4
  %162 = call i32 (...) @errcode_for_file_access()
  %163 = load i32, i32* @PGSS_TEXT_FILE, align 4
  %164 = call i32 @errmsg(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %163)
  %165 = call i32 @ereport(i32 %161, i32 %164)
  br label %169

166:                                              ; preds = %152
  %167 = load i32*, i32** %3, align 8
  %168 = call i64 @FreeFile(i32* %167)
  br label %169

169:                                              ; preds = %166, %160
  %170 = load %struct.TYPE_5__*, %struct.TYPE_5__** @pgss, align 8
  %171 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %170, i32 0, i32 0
  store i32 0, i32* %171, align 4
  %172 = load i8*, i8** @ASSUMED_LENGTH_INIT, align 8
  %173 = ptrtoint i8* %172 to i32
  %174 = load %struct.TYPE_5__*, %struct.TYPE_5__** @pgss, align 8
  %175 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %174, i32 0, i32 1
  store i32 %173, i32* %175, align 4
  %176 = call i32 (...) @record_gc_qtexts()
  br label %177

177:                                              ; preds = %169, %125, %12
  ret void
}

declare dso_local i32 @need_gc_qtexts(...) #1

declare dso_local i8* @qtext_load_file(i32*) #1

declare dso_local i32* @AllocateFile(i32, i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode_for_file_access(...) #1

declare dso_local i32 @errmsg(i8*, i32) #1

declare dso_local i32 @hash_seq_init(i32*, i32) #1

declare dso_local %struct.TYPE_4__* @hash_seq_search(i32*) #1

declare dso_local i8* @qtext_fetch(i32, i32, i8*, i32) #1

declare dso_local i32 @fwrite(i8*, i32, i32, i32*) #1

declare dso_local i32 @hash_seq_term(i32*) #1

declare dso_local i64 @ftruncate(i32, i32) #1

declare dso_local i32 @fileno(i32*) #1

declare dso_local i64 @FreeFile(i32*) #1

declare dso_local i32 @elog(i32, i8*, i32, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @record_gc_qtexts(...) #1

declare dso_local i32 @unlink(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
