; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/file/extr_fd.c_FileClose.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/file/extr_fd.c_FileClose.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64, i32, i64, i32 }
%struct.stat = type { i32 }

@LOG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"FileClose: %d (%s)\00", align 1
@VfdCache = common dso_local global %struct.TYPE_3__* null, align 8
@FD_TEMP_FILE_LIMIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"could not close file \22%s\22: %m\00", align 1
@nfile = common dso_local global i32 0, align 4
@VFD_CLOSED = common dso_local global i32 0, align 4
@temporary_files_size = common dso_local global i32 0, align 4
@FD_DELETE_AT_CLOSE = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"could not unlink file \22%s\22: %m\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"could not stat file \22%s\22: %m\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @FileClose(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca %struct.stat, align 4
  %5 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %6 = load i64, i64* %2, align 8
  %7 = call i32 @FileIsValid(i64 %6)
  %8 = call i32 @Assert(i32 %7)
  %9 = load i32, i32* @LOG, align 4
  %10 = load i64, i64* %2, align 8
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** @VfdCache, align 8
  %12 = load i64, i64* %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i64 %12
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = call i32 (i32, i8*, i64, ...) @elog(i32 %9, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i64 %10, i32 %15)
  %17 = call i32 @DO_DB(i32 %16)
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** @VfdCache, align 8
  %19 = load i64, i64* %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i64 %19
  store %struct.TYPE_3__* %20, %struct.TYPE_3__** %3, align 8
  %21 = load i64, i64* %2, align 8
  %22 = call i32 @FileIsNotOpen(i64 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %57, label %24

24:                                               ; preds = %1
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 8
  %28 = call i64 @close(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %49

30:                                               ; preds = %24
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @FD_TEMP_FILE_LIMIT, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %30
  %38 = load i32, i32* @LOG, align 4
  br label %42

39:                                               ; preds = %30
  %40 = load i32, i32* @LOG, align 4
  %41 = call i32 @data_sync_elevel(i32 %40)
  br label %42

42:                                               ; preds = %39, %37
  %43 = phi i32 [ %38, %37 ], [ %41, %39 ]
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = sext i32 %46 to i64
  %48 = call i32 (i32, i8*, i64, ...) @elog(i32 %43, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i64 %47)
  br label %49

49:                                               ; preds = %42, %24
  %50 = load i32, i32* @nfile, align 4
  %51 = add nsw i32 %50, -1
  store i32 %51, i32* @nfile, align 4
  %52 = load i32, i32* @VFD_CLOSED, align 4
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 4
  store i32 %52, i32* %54, align 8
  %55 = load i64, i64* %2, align 8
  %56 = call i32 @Delete(i64 %55)
  br label %57

57:                                               ; preds = %49, %1
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @FD_TEMP_FILE_LIMIT, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %74

64:                                               ; preds = %57
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 3
  %67 = load i64, i64* %66, align 8
  %68 = load i32, i32* @temporary_files_size, align 4
  %69 = sext i32 %68 to i64
  %70 = sub nsw i64 %69, %67
  %71 = trunc i64 %70 to i32
  store i32 %71, i32* @temporary_files_size, align 4
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 3
  store i64 0, i64* %73, align 8
  br label %74

74:                                               ; preds = %64, %57
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @FD_DELETE_AT_CLOSE, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %128

81:                                               ; preds = %74
  %82 = load i32, i32* @FD_DELETE_AT_CLOSE, align 4
  %83 = xor i32 %82, -1
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = and i32 %86, %83
  store i32 %87, i32* %85, align 8
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = call i64 @stat(i32 %90, %struct.stat* %4)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %81
  %94 = load i32, i32* @errno, align 4
  store i32 %94, i32* %5, align 4
  br label %96

95:                                               ; preds = %81
  store i32 0, i32* %5, align 4
  br label %96

96:                                               ; preds = %95, %93
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = call i64 @unlink(i32 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %109

102:                                              ; preds = %96
  %103 = load i32, i32* @LOG, align 4
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = sext i32 %106 to i64
  %108 = call i32 (i32, i8*, i64, ...) @elog(i32 %103, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i64 %107)
  br label %109

109:                                              ; preds = %102, %96
  %110 = load i32, i32* %5, align 4
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %119

112:                                              ; preds = %109
  %113 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @ReportTemporaryFileUsage(i32 %115, i32 %117)
  br label %127

119:                                              ; preds = %109
  %120 = load i32, i32* %5, align 4
  store i32 %120, i32* @errno, align 4
  %121 = load i32, i32* @LOG, align 4
  %122 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = sext i32 %124 to i64
  %126 = call i32 (i32, i8*, i64, ...) @elog(i32 %121, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i64 %125)
  br label %127

127:                                              ; preds = %119, %112
  br label %128

128:                                              ; preds = %127, %74
  %129 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %139

133:                                              ; preds = %128
  %134 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* %2, align 8
  %138 = call i32 @ResourceOwnerForgetFile(i64 %136, i64 %137)
  br label %139

139:                                              ; preds = %133, %128
  %140 = load i64, i64* %2, align 8
  %141 = call i32 @FreeVfd(i64 %140)
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @FileIsValid(i64) #1

declare dso_local i32 @DO_DB(i32) #1

declare dso_local i32 @elog(i32, i8*, i64, ...) #1

declare dso_local i32 @FileIsNotOpen(i64) #1

declare dso_local i64 @close(i32) #1

declare dso_local i32 @data_sync_elevel(i32) #1

declare dso_local i32 @Delete(i64) #1

declare dso_local i64 @stat(i32, %struct.stat*) #1

declare dso_local i64 @unlink(i32) #1

declare dso_local i32 @ReportTemporaryFileUsage(i32, i32) #1

declare dso_local i32 @ResourceOwnerForgetFile(i64, i64) #1

declare dso_local i32 @FreeVfd(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
