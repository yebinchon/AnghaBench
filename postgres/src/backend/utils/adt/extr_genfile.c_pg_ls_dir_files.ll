; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_genfile.c_pg_ls_dir_files.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_genfile.c_pg_ls_dir_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { i8*, i32 }
%struct.dirent = type { i8* }
%struct.stat = type { i32, i64, i32 }

@.str = private unnamed_addr constant [5 x i8] c"name\00", align 1
@TEXTOID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@INT8OID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"modification\00", align 1
@TIMESTAMPTZOID = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"could not open directory \22%s\22: %m\00", align 1
@MAXPGPATH = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"could not stat directory \22%s\22: %m\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32)* @pg_ls_dir_files to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pg_ls_dir_files(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca %struct.dirent*, align 8
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [3 x i32], align 4
  %14 = alloca [3 x i32], align 4
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.stat, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %20 = call i64 (...) @SRF_IS_FIRSTCALL()
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %84

22:                                               ; preds = %3
  %23 = call %struct.TYPE_9__* (...) @SRF_FIRSTCALL_INIT()
  store %struct.TYPE_9__* %23, %struct.TYPE_9__** %8, align 8
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @MemoryContextSwitchTo(i32 %26)
  store i32 %27, i32* %11, align 4
  %28 = call %struct.TYPE_8__* @palloc(i32 16)
  store %struct.TYPE_8__* %28, %struct.TYPE_8__** %10, align 8
  %29 = call i32 @CreateTemplateTupleDesc(i32 3)
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* %12, align 4
  %31 = load i32, i32* @TEXTOID, align 4
  %32 = call i32 @TupleDescInitEntry(i32 %30, i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %31, i32 -1, i32 0)
  %33 = load i32, i32* %12, align 4
  %34 = load i32, i32* @INT8OID, align 4
  %35 = call i32 @TupleDescInitEntry(i32 %33, i32 2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %34, i32 -1, i32 0)
  %36 = load i32, i32* %12, align 4
  %37 = load i32, i32* @TIMESTAMPTZOID, align 4
  %38 = call i32 @TupleDescInitEntry(i32 %36, i32 3, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %37, i32 -1, i32 0)
  %39 = load i32, i32* %12, align 4
  %40 = call i32 @BlessTupleDesc(i32 %39)
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = load i8*, i8** %6, align 8
  %44 = call i8* @pstrdup(i8* %43)
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  store i8* %44, i8** %46, align 8
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = call i32 @AllocateDir(i8* %49)
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 8
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %78, label %57

57:                                               ; preds = %22
  %58 = load i32, i32* %7, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %69

60:                                               ; preds = %57
  %61 = load i64, i64* @errno, align 8
  %62 = load i64, i64* @ENOENT, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %69

64:                                               ; preds = %60
  %65 = load i32, i32* %11, align 4
  %66 = call i32 @MemoryContextSwitchTo(i32 %65)
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %68 = call i32 @SRF_RETURN_DONE(%struct.TYPE_9__* %67)
  br label %77

69:                                               ; preds = %60, %57
  %70 = load i32, i32* @ERROR, align 4
  %71 = call i32 (...) @errcode_for_file_access()
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = load i8*, i8** %73, align 8
  %75 = call i32 @errmsg(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i8* %74)
  %76 = call i32 @ereport(i32 %70, i32 %75)
  br label %77

77:                                               ; preds = %69, %64
  br label %78

78:                                               ; preds = %77, %22
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 1
  store %struct.TYPE_8__* %79, %struct.TYPE_8__** %81, align 8
  %82 = load i32, i32* %11, align 4
  %83 = call i32 @MemoryContextSwitchTo(i32 %82)
  br label %84

84:                                               ; preds = %78, %3
  %85 = call %struct.TYPE_9__* (...) @SRF_PERCALL_SETUP()
  store %struct.TYPE_9__* %85, %struct.TYPE_9__** %8, align 8
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 1
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %87, align 8
  store %struct.TYPE_8__* %88, %struct.TYPE_8__** %10, align 8
  br label %89

89:                                               ; preds = %166, %163, %84
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 0
  %95 = load i8*, i8** %94, align 8
  %96 = call %struct.dirent* @ReadDir(i32 %92, i8* %95)
  store %struct.dirent* %96, %struct.dirent** %9, align 8
  %97 = icmp ne %struct.dirent* %96, null
  br i1 %97, label %98, label %167

98:                                               ; preds = %89
  %99 = load i32, i32* @MAXPGPATH, align 4
  %100 = mul nsw i32 %99, 2
  %101 = zext i32 %100 to i64
  %102 = call i8* @llvm.stacksave()
  store i8* %102, i8** %15, align 8
  %103 = alloca i8, i64 %101, align 16
  store i64 %101, i64* %16, align 8
  %104 = load %struct.dirent*, %struct.dirent** %9, align 8
  %105 = getelementptr inbounds %struct.dirent, %struct.dirent* %104, i32 0, i32 0
  %106 = load i8*, i8** %105, align 8
  %107 = getelementptr inbounds i8, i8* %106, i64 0
  %108 = load i8, i8* %107, align 1
  %109 = sext i8 %108 to i32
  %110 = icmp eq i32 %109, 46
  br i1 %110, label %111, label %112

111:                                              ; preds = %98
  store i32 2, i32* %19, align 4
  br label %163

112:                                              ; preds = %98
  %113 = trunc i64 %101 to i32
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 0
  %116 = load i8*, i8** %115, align 8
  %117 = load %struct.dirent*, %struct.dirent** %9, align 8
  %118 = getelementptr inbounds %struct.dirent, %struct.dirent* %117, i32 0, i32 0
  %119 = load i8*, i8** %118, align 8
  %120 = call i32 @snprintf(i8* %103, i32 %113, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* %116, i8* %119)
  %121 = call i64 @stat(i8* %103, %struct.stat* %17)
  %122 = icmp slt i64 %121, 0
  br i1 %122, label %123, label %129

123:                                              ; preds = %112
  %124 = load i32, i32* @ERROR, align 4
  %125 = call i32 (...) @errcode_for_file_access()
  %126 = load i8*, i8** %6, align 8
  %127 = call i32 @errmsg(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i8* %126)
  %128 = call i32 @ereport(i32 %124, i32 %127)
  br label %129

129:                                              ; preds = %123, %112
  %130 = getelementptr inbounds %struct.stat, %struct.stat* %17, i32 0, i32 2
  %131 = load i32, i32* %130, align 8
  %132 = call i32 @S_ISREG(i32 %131)
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %135, label %134

134:                                              ; preds = %129
  store i32 2, i32* %19, align 4
  br label %163

135:                                              ; preds = %129
  %136 = load %struct.dirent*, %struct.dirent** %9, align 8
  %137 = getelementptr inbounds %struct.dirent, %struct.dirent* %136, i32 0, i32 0
  %138 = load i8*, i8** %137, align 8
  %139 = call i32 @CStringGetTextDatum(i8* %138)
  %140 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 0
  store i32 %139, i32* %140, align 4
  %141 = getelementptr inbounds %struct.stat, %struct.stat* %17, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = trunc i64 %142 to i32
  %144 = call i32 @Int64GetDatum(i32 %143)
  %145 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 1
  store i32 %144, i32* %145, align 4
  %146 = getelementptr inbounds %struct.stat, %struct.stat* %17, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = call i32 @time_t_to_timestamptz(i32 %147)
  %149 = call i32 @TimestampTzGetDatum(i32 %148)
  %150 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 2
  store i32 %149, i32* %150, align 4
  %151 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 0
  %152 = call i32 @memset(i32* %151, i32 0, i32 12)
  %153 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %154 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 0
  %157 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 0
  %158 = call i32 @heap_form_tuple(i32 %155, i32* %156, i32* %157)
  store i32 %158, i32* %18, align 4
  %159 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %160 = load i32, i32* %18, align 4
  %161 = call i32 @HeapTupleGetDatum(i32 %160)
  %162 = call i32 @SRF_RETURN_NEXT(%struct.TYPE_9__* %159, i32 %161)
  store i32 0, i32* %19, align 4
  br label %163

163:                                              ; preds = %135, %134, %111
  %164 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %164)
  %165 = load i32, i32* %19, align 4
  switch i32 %165, label %175 [
    i32 0, label %166
    i32 2, label %89
  ]

166:                                              ; preds = %163
  br label %89

167:                                              ; preds = %89
  %168 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %169 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 8
  %171 = call i32 @FreeDir(i32 %170)
  %172 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %173 = call i32 @SRF_RETURN_DONE(%struct.TYPE_9__* %172)
  %174 = load i32, i32* %4, align 4
  ret i32 %174

175:                                              ; preds = %163
  unreachable
}

declare dso_local i64 @SRF_IS_FIRSTCALL(...) #1

declare dso_local %struct.TYPE_9__* @SRF_FIRSTCALL_INIT(...) #1

declare dso_local i32 @MemoryContextSwitchTo(i32) #1

declare dso_local %struct.TYPE_8__* @palloc(i32) #1

declare dso_local i32 @CreateTemplateTupleDesc(i32) #1

declare dso_local i32 @TupleDescInitEntry(i32, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @BlessTupleDesc(i32) #1

declare dso_local i8* @pstrdup(i8*) #1

declare dso_local i32 @AllocateDir(i8*) #1

declare dso_local i32 @SRF_RETURN_DONE(%struct.TYPE_9__*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode_for_file_access(...) #1

declare dso_local i32 @errmsg(i8*, i8*) #1

declare dso_local %struct.TYPE_9__* @SRF_PERCALL_SETUP(...) #1

declare dso_local %struct.dirent* @ReadDir(i32, i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #1

declare dso_local i64 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @S_ISREG(i32) #1

declare dso_local i32 @CStringGetTextDatum(i8*) #1

declare dso_local i32 @Int64GetDatum(i32) #1

declare dso_local i32 @TimestampTzGetDatum(i32) #1

declare dso_local i32 @time_t_to_timestamptz(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @heap_form_tuple(i32, i32*, i32*) #1

declare dso_local i32 @SRF_RETURN_NEXT(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @HeapTupleGetDatum(i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @FreeDir(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
