; ModuleID = '/home/carl/AnghaBench/postgres/contrib/adminpack/extr_adminpack.c_pg_logdir_ls_internal.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/adminpack/extr_adminpack.c_pg_logdir_ls_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.dirent = type { i8* }
%struct.pg_tm = type { i32 }

@Log_filename = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [31 x i8] c"postgresql-%Y-%m-%d_%H%M%S.log\00", align 1
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_INVALID_PARAMETER_VALUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [77 x i8] c"the log_filename parameter must equal 'postgresql-%%Y-%%m-%%d_%%H%%M%%S.log'\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"starttime\00", align 1
@TIMESTAMPOID = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"filename\00", align 1
@TEXTOID = common dso_local global i32 0, align 4
@Log_directory = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"could not open directory \22%s\22: %m\00", align 1
@MAXDATEFIELDS = common dso_local global i32 0, align 4
@MAXDATELEN = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [12 x i8] c"postgresql-\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c".log\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @pg_logdir_ls_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pg_logdir_ls_internal(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.dirent*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [2 x i8*], align 16
  %10 = alloca i32, align 4
  %11 = alloca [32 x i8], align 16
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.pg_tm, align 4
  %21 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %22 = load i8*, i8** @Log_filename, align 8
  %23 = call i64 @strcmp(i8* %22, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %1
  %26 = load i32, i32* @ERROR, align 4
  %27 = load i32, i32* @ERRCODE_INVALID_PARAMETER_VALUE, align 4
  %28 = call i32 @errcode(i32 %27)
  %29 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.1, i64 0, i64 0))
  %30 = call i32 @ereport(i32 %26, i32 %29)
  br label %31

31:                                               ; preds = %25, %1
  %32 = call i64 (...) @SRF_IS_FIRSTCALL()
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %80

34:                                               ; preds = %31
  %35 = call %struct.TYPE_9__* (...) @SRF_FIRSTCALL_INIT()
  store %struct.TYPE_9__* %35, %struct.TYPE_9__** %4, align 8
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @MemoryContextSwitchTo(i32 %38)
  store i32 %39, i32* %7, align 4
  %40 = call %struct.TYPE_8__* @palloc(i32 8)
  store %struct.TYPE_8__* %40, %struct.TYPE_8__** %6, align 8
  %41 = call i32 @CreateTemplateTupleDesc(i32 2)
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* @TIMESTAMPOID, align 4
  %44 = call i32 @TupleDescInitEntry(i32 %42, i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %43, i32 -1, i32 0)
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* @TEXTOID, align 4
  %47 = call i32 @TupleDescInitEntry(i32 %45, i32 2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 %46, i32 -1, i32 0)
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @TupleDescGetAttInMetadata(i32 %48)
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  %52 = load i32, i32* @Log_directory, align 4
  %53 = call i32 @pstrdup(i32 %52)
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @AllocateDir(i32 %58)
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 4
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %74, label %66

66:                                               ; preds = %34
  %67 = load i32, i32* @ERROR, align 4
  %68 = call i32 (...) @errcode_for_file_access()
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i32 %71)
  %73 = call i32 @ereport(i32 %67, i32 %72)
  br label %74

74:                                               ; preds = %66, %34
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 1
  store %struct.TYPE_8__* %75, %struct.TYPE_8__** %77, align 8
  %78 = load i32, i32* %7, align 4
  %79 = call i32 @MemoryContextSwitchTo(i32 %78)
  br label %80

80:                                               ; preds = %74, %31
  %81 = call %struct.TYPE_9__* (...) @SRF_PERCALL_SETUP()
  store %struct.TYPE_9__* %81, %struct.TYPE_9__** %4, align 8
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 1
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %83, align 8
  store %struct.TYPE_8__* %84, %struct.TYPE_8__** %6, align 8
  br label %85

85:                                               ; preds = %175, %172, %80
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call %struct.dirent* @ReadDir(i32 %88, i32 %91)
  store %struct.dirent* %92, %struct.dirent** %5, align 8
  %93 = icmp ne %struct.dirent* %92, null
  br i1 %93, label %94, label %176

94:                                               ; preds = %85
  %95 = load i32, i32* @MAXDATEFIELDS, align 4
  %96 = zext i32 %95 to i64
  %97 = call i8* @llvm.stacksave()
  store i8* %97, i8** %12, align 8
  %98 = alloca i8*, i64 %96, align 16
  store i64 %96, i64* %13, align 8
  %99 = load i32, i32* @MAXDATELEN, align 4
  %100 = add nsw i32 %99, 1
  %101 = zext i32 %100 to i64
  %102 = alloca i8, i64 %101, align 16
  store i64 %101, i64* %14, align 8
  %103 = load i32, i32* @MAXDATEFIELDS, align 4
  %104 = zext i32 %103 to i64
  %105 = alloca i32, i64 %104, align 16
  store i64 %104, i64* %17, align 8
  store i32 0, i32* %19, align 4
  %106 = load %struct.dirent*, %struct.dirent** %5, align 8
  %107 = getelementptr inbounds %struct.dirent, %struct.dirent* %106, i32 0, i32 0
  %108 = load i8*, i8** %107, align 8
  %109 = call i32 @strlen(i8* %108)
  %110 = icmp ne i32 %109, 32
  br i1 %110, label %132, label %111

111:                                              ; preds = %94
  %112 = load %struct.dirent*, %struct.dirent** %5, align 8
  %113 = getelementptr inbounds %struct.dirent, %struct.dirent* %112, i32 0, i32 0
  %114 = load i8*, i8** %113, align 8
  %115 = call i64 @strncmp(i8* %114, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32 11)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %132, label %117

117:                                              ; preds = %111
  %118 = load %struct.dirent*, %struct.dirent** %5, align 8
  %119 = getelementptr inbounds %struct.dirent, %struct.dirent* %118, i32 0, i32 0
  %120 = load i8*, i8** %119, align 8
  %121 = getelementptr inbounds i8, i8* %120, i64 21
  %122 = load i8, i8* %121, align 1
  %123 = sext i8 %122 to i32
  %124 = icmp ne i32 %123, 95
  br i1 %124, label %132, label %125

125:                                              ; preds = %117
  %126 = load %struct.dirent*, %struct.dirent** %5, align 8
  %127 = getelementptr inbounds %struct.dirent, %struct.dirent* %126, i32 0, i32 0
  %128 = load i8*, i8** %127, align 8
  %129 = getelementptr inbounds i8, i8* %128, i64 28
  %130 = call i64 @strcmp(i8* %129, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %125, %117, %111, %94
  store i32 2, i32* %21, align 4
  br label %172

133:                                              ; preds = %125
  %134 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i64 0, i64 0
  %135 = load %struct.dirent*, %struct.dirent** %5, align 8
  %136 = getelementptr inbounds %struct.dirent, %struct.dirent* %135, i32 0, i32 0
  %137 = load i8*, i8** %136, align 8
  %138 = getelementptr inbounds i8, i8* %137, i64 11
  %139 = call i32 @strcpy(i8* %134, i8* %138)
  %140 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i64 0, i64 17
  store i8 0, i8* %140, align 1
  %141 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i64 0, i64 0
  %142 = load i32, i32* @MAXDATELEN, align 4
  %143 = load i32, i32* @MAXDATEFIELDS, align 4
  %144 = call i64 @ParseDateTime(i8* %141, i8* %102, i32 %142, i8** %98, i32* %105, i32 %143, i32* %16)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %133
  store i32 2, i32* %21, align 4
  br label %172

147:                                              ; preds = %133
  %148 = load i32, i32* %16, align 4
  %149 = call i64 @DecodeDateTime(i8** %98, i32* %105, i32 %148, i32* %15, %struct.pg_tm* %20, i32* %18, i32* %19)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %147
  store i32 2, i32* %21, align 4
  br label %172

152:                                              ; preds = %147
  %153 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i64 0, i64 0
  %154 = getelementptr inbounds [2 x i8*], [2 x i8*]* %9, i64 0, i64 0
  store i8* %153, i8** %154, align 16
  %155 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.dirent*, %struct.dirent** %5, align 8
  %159 = getelementptr inbounds %struct.dirent, %struct.dirent* %158, i32 0, i32 0
  %160 = load i8*, i8** %159, align 8
  %161 = call i8* @psprintf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i32 %157, i8* %160)
  %162 = getelementptr inbounds [2 x i8*], [2 x i8*]* %9, i64 0, i64 1
  store i8* %161, i8** %162, align 8
  %163 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %164 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = getelementptr inbounds [2 x i8*], [2 x i8*]* %9, i64 0, i64 0
  %167 = call i32 @BuildTupleFromCStrings(i32 %165, i8** %166)
  store i32 %167, i32* %10, align 4
  %168 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %169 = load i32, i32* %10, align 4
  %170 = call i32 @HeapTupleGetDatum(i32 %169)
  %171 = call i32 @SRF_RETURN_NEXT(%struct.TYPE_9__* %168, i32 %170)
  store i32 0, i32* %21, align 4
  br label %172

172:                                              ; preds = %152, %151, %146, %132
  %173 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %173)
  %174 = load i32, i32* %21, align 4
  switch i32 %174, label %184 [
    i32 0, label %175
    i32 2, label %85
  ]

175:                                              ; preds = %172
  br label %85

176:                                              ; preds = %85
  %177 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %178 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = call i32 @FreeDir(i32 %179)
  %181 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %182 = call i32 @SRF_RETURN_DONE(%struct.TYPE_9__* %181)
  %183 = load i32, i32* %2, align 4
  ret i32 %183

184:                                              ; preds = %172
  unreachable
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, ...) #1

declare dso_local i64 @SRF_IS_FIRSTCALL(...) #1

declare dso_local %struct.TYPE_9__* @SRF_FIRSTCALL_INIT(...) #1

declare dso_local i32 @MemoryContextSwitchTo(i32) #1

declare dso_local %struct.TYPE_8__* @palloc(i32) #1

declare dso_local i32 @CreateTemplateTupleDesc(i32) #1

declare dso_local i32 @TupleDescInitEntry(i32, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @TupleDescGetAttInMetadata(i32) #1

declare dso_local i32 @pstrdup(i32) #1

declare dso_local i32 @AllocateDir(i32) #1

declare dso_local i32 @errcode_for_file_access(...) #1

declare dso_local %struct.TYPE_9__* @SRF_PERCALL_SETUP(...) #1

declare dso_local %struct.dirent* @ReadDir(i32, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i64 @ParseDateTime(i8*, i8*, i32, i8**, i32*, i32, i32*) #1

declare dso_local i64 @DecodeDateTime(i8**, i32*, i32, i32*, %struct.pg_tm*, i32*, i32*) #1

declare dso_local i8* @psprintf(i8*, i32, i8*) #1

declare dso_local i32 @BuildTupleFromCStrings(i32, i8**) #1

declare dso_local i32 @SRF_RETURN_NEXT(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @HeapTupleGetDatum(i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @FreeDir(i32) #1

declare dso_local i32 @SRF_RETURN_DONE(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
