; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/postmaster/extr_pgstat.c_pgstat_write_db_statsfile.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/postmaster/extr_pgstat.c_pgstat_write_db_statsfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }

@MAXPGPATH = common dso_local global i32 0, align 4
@DEBUG2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"writing stats file \22%s\22\00", align 1
@PG_BINARY_W = common dso_local global i32 0, align 4
@LOG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"could not open temporary statistics file \22%s\22: %m\00", align 1
@PGSTAT_FILE_FORMAT_ID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [51 x i8] c"could not write temporary statistics file \22%s\22: %m\00", align 1
@.str.3 = private unnamed_addr constant [51 x i8] c"could not close temporary statistics file \22%s\22: %m\00", align 1
@.str.4 = private unnamed_addr constant [60 x i8] c"could not rename temporary statistics file \22%s\22 to \22%s\22: %m\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"removing temporary stats file \22%s\22\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32)* @pgstat_write_db_statsfile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pgstat_write_db_statsfile(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32 %1, i32* %4, align 4
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* @MAXPGPATH, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %13, align 8
  %23 = alloca i8, i64 %21, align 16
  store i64 %21, i64* %14, align 8
  %24 = load i32, i32* @MAXPGPATH, align 4
  %25 = zext i32 %24 to i64
  %26 = alloca i8, i64 %25, align 16
  store i64 %25, i64* %15, align 8
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* %11, align 4
  %29 = load i32, i32* @MAXPGPATH, align 4
  %30 = call i32 @get_dbstat_filename(i32 %27, i32 1, i32 %28, i8* %23, i32 %29)
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* %11, align 4
  %33 = load i32, i32* @MAXPGPATH, align 4
  %34 = call i32 @get_dbstat_filename(i32 %31, i32 0, i32 %32, i8* %26, i32 %33)
  %35 = load i32, i32* @DEBUG2, align 4
  %36 = call i32 @elog(i32 %35, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %26)
  %37 = load i32, i32* @PG_BINARY_W, align 4
  %38 = call i32* @AllocateFile(i8* %23, i32 %37)
  store i32* %38, i32** %9, align 8
  %39 = load i32*, i32** %9, align 8
  %40 = icmp eq i32* %39, null
  br i1 %40, label %41, label %46

41:                                               ; preds = %2
  %42 = load i32, i32* @LOG, align 4
  %43 = call i32 (...) @errcode_for_file_access()
  %44 = call i32 (i8*, i8*, ...) @errmsg(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i8* %23)
  %45 = call i32 @ereport(i32 %42, i32 %44)
  store i32 1, i32* %16, align 4
  br label %128

46:                                               ; preds = %2
  %47 = load i32, i32* @PGSTAT_FILE_FORMAT_ID, align 4
  store i32 %47, i32* %10, align 4
  %48 = load i32*, i32** %9, align 8
  %49 = call i32 @fwrite(i32* %10, i32 4, i32 1, i32* %48)
  store i32 %49, i32* %12, align 4
  %50 = load i32, i32* %12, align 4
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @hash_seq_init(i32* %5, i32 %53)
  br label %55

55:                                               ; preds = %59, %46
  %56 = call i64 @hash_seq_search(i32* %5)
  %57 = inttoptr i64 %56 to i32*
  store i32* %57, i32** %7, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %59, label %66

59:                                               ; preds = %55
  %60 = load i32*, i32** %9, align 8
  %61 = call i32 @fputc(i8 signext 84, i32* %60)
  %62 = load i32*, i32** %7, align 8
  %63 = load i32*, i32** %9, align 8
  %64 = call i32 @fwrite(i32* %62, i32 4, i32 1, i32* %63)
  store i32 %64, i32* %12, align 4
  %65 = load i32, i32* %12, align 4
  br label %55

66:                                               ; preds = %55
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @hash_seq_init(i32* %6, i32 %69)
  br label %71

71:                                               ; preds = %75, %66
  %72 = call i64 @hash_seq_search(i32* %6)
  %73 = inttoptr i64 %72 to i32*
  store i32* %73, i32** %8, align 8
  %74 = icmp ne i32* %73, null
  br i1 %74, label %75, label %82

75:                                               ; preds = %71
  %76 = load i32*, i32** %9, align 8
  %77 = call i32 @fputc(i8 signext 70, i32* %76)
  %78 = load i32*, i32** %8, align 8
  %79 = load i32*, i32** %9, align 8
  %80 = call i32 @fwrite(i32* %78, i32 4, i32 1, i32* %79)
  store i32 %80, i32* %12, align 4
  %81 = load i32, i32* %12, align 4
  br label %71

82:                                               ; preds = %71
  %83 = load i32*, i32** %9, align 8
  %84 = call i32 @fputc(i8 signext 69, i32* %83)
  %85 = load i32*, i32** %9, align 8
  %86 = call i64 @ferror(i32* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %96

88:                                               ; preds = %82
  %89 = load i32, i32* @LOG, align 4
  %90 = call i32 (...) @errcode_for_file_access()
  %91 = call i32 (i8*, i8*, ...) @errmsg(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i8* %23)
  %92 = call i32 @ereport(i32 %89, i32 %91)
  %93 = load i32*, i32** %9, align 8
  %94 = call i64 @FreeFile(i32* %93)
  %95 = call i32 @unlink(i8* %23)
  br label %117

96:                                               ; preds = %82
  %97 = load i32*, i32** %9, align 8
  %98 = call i64 @FreeFile(i32* %97)
  %99 = icmp slt i64 %98, 0
  br i1 %99, label %100, label %106

100:                                              ; preds = %96
  %101 = load i32, i32* @LOG, align 4
  %102 = call i32 (...) @errcode_for_file_access()
  %103 = call i32 (i8*, i8*, ...) @errmsg(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0), i8* %23)
  %104 = call i32 @ereport(i32 %101, i32 %103)
  %105 = call i32 @unlink(i8* %23)
  br label %116

106:                                              ; preds = %96
  %107 = call i64 @rename(i8* %23, i8* %26)
  %108 = icmp slt i64 %107, 0
  br i1 %108, label %109, label %115

109:                                              ; preds = %106
  %110 = load i32, i32* @LOG, align 4
  %111 = call i32 (...) @errcode_for_file_access()
  %112 = call i32 (i8*, i8*, ...) @errmsg(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.4, i64 0, i64 0), i8* %23, i8* %26)
  %113 = call i32 @ereport(i32 %110, i32 %112)
  %114 = call i32 @unlink(i8* %23)
  br label %115

115:                                              ; preds = %109, %106
  br label %116

116:                                              ; preds = %115, %100
  br label %117

117:                                              ; preds = %116, %88
  %118 = load i32, i32* %4, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %127

120:                                              ; preds = %117
  %121 = load i32, i32* %11, align 4
  %122 = load i32, i32* @MAXPGPATH, align 4
  %123 = call i32 @get_dbstat_filename(i32 0, i32 0, i32 %121, i8* %26, i32 %122)
  %124 = load i32, i32* @DEBUG2, align 4
  %125 = call i32 @elog(i32 %124, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i8* %26)
  %126 = call i32 @unlink(i8* %26)
  br label %127

127:                                              ; preds = %120, %117
  store i32 0, i32* %16, align 4
  br label %128

128:                                              ; preds = %127, %41
  %129 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %129)
  %130 = load i32, i32* %16, align 4
  switch i32 %130, label %132 [
    i32 0, label %131
    i32 1, label %131
  ]

131:                                              ; preds = %128, %128
  ret void

132:                                              ; preds = %128
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @get_dbstat_filename(i32, i32, i32, i8*, i32) #2

declare dso_local i32 @elog(i32, i8*, i8*) #2

declare dso_local i32* @AllocateFile(i8*, i32) #2

declare dso_local i32 @ereport(i32, i32) #2

declare dso_local i32 @errcode_for_file_access(...) #2

declare dso_local i32 @errmsg(i8*, i8*, ...) #2

declare dso_local i32 @fwrite(i32*, i32, i32, i32*) #2

declare dso_local i32 @hash_seq_init(i32*, i32) #2

declare dso_local i64 @hash_seq_search(i32*) #2

declare dso_local i32 @fputc(i8 signext, i32*) #2

declare dso_local i64 @ferror(i32*) #2

declare dso_local i64 @FreeFile(i32*) #2

declare dso_local i32 @unlink(i8*) #2

declare dso_local i64 @rename(i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
