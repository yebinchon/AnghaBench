; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/file/extr_fd.c_PathNameOpenFilePerm.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/file/extr_fd.c_PathNameOpenFilePerm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32, i32, i32*, i64, i32, i32 }

@LOG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"PathNameOpenFilePerm: %s %x %o\00", align 1
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_OUT_OF_MEMORY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@VfdCache = common dso_local global %struct.TYPE_3__* null, align 8
@errno = common dso_local global i32 0, align 4
@nfile = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"PathNameOpenFile: success %d\00", align 1
@O_CREAT = common dso_local global i32 0, align 4
@O_TRUNC = common dso_local global i32 0, align 4
@O_EXCL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @PathNameOpenFilePerm(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_3__*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* @LOG, align 4
  %13 = load i8*, i8** %5, align 8
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* %7, align 4
  %16 = call i32 (i32, i8*, i8*, ...) @elog(i32 %12, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %13, i32 %14, i32 %15)
  %17 = call i32 @DO_DB(i32 %16)
  %18 = load i8*, i8** %5, align 8
  %19 = call i8* @strdup(i8* %18)
  store i8* %19, i8** %8, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = icmp eq i8* %20, null
  br i1 %21, label %22, label %28

22:                                               ; preds = %3
  %23 = load i32, i32* @ERROR, align 4
  %24 = load i32, i32* @ERRCODE_OUT_OF_MEMORY, align 4
  %25 = call i32 @errcode(i32 %24)
  %26 = call i32 @errmsg(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %27 = call i32 @ereport(i32 %23, i32 %26)
  br label %28

28:                                               ; preds = %22, %3
  %29 = call i64 (...) @AllocateVfd()
  store i64 %29, i64* %9, align 8
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** @VfdCache, align 8
  %31 = load i64, i64* %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i64 %31
  store %struct.TYPE_3__* %32, %struct.TYPE_3__** %10, align 8
  %33 = call i32 (...) @ReleaseLruFiles()
  %34 = load i8*, i8** %5, align 8
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @BasicOpenFilePerm(i8* %34, i32 %35, i32 %36)
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 6
  store i32 %37, i32* %39, align 4
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 6
  %42 = load i32, i32* %41, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %28
  %45 = load i32, i32* @errno, align 4
  store i32 %45, i32* %11, align 4
  %46 = load i64, i64* %9, align 8
  %47 = call i32 @FreeVfd(i64 %46)
  %48 = load i8*, i8** %8, align 8
  %49 = call i32 @free(i8* %48)
  %50 = load i32, i32* %11, align 4
  store i32 %50, i32* @errno, align 4
  store i64 -1, i64* %4, align 8
  br label %87

51:                                               ; preds = %28
  %52 = load i32, i32* @nfile, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* @nfile, align 4
  %54 = load i32, i32* @LOG, align 4
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 6
  %57 = load i32, i32* %56, align 4
  %58 = sext i32 %57 to i64
  %59 = inttoptr i64 %58 to i8*
  %60 = call i32 (i32, i8*, i8*, ...) @elog(i32 %54, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i8* %59)
  %61 = call i32 @DO_DB(i32 %60)
  %62 = load i64, i64* %9, align 8
  %63 = call i32 @Insert(i64 %62)
  %64 = load i8*, i8** %8, align 8
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  store i8* %64, i8** %66, align 8
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* @O_CREAT, align 4
  %69 = load i32, i32* @O_TRUNC, align 4
  %70 = or i32 %68, %69
  %71 = load i32, i32* @O_EXCL, align 4
  %72 = or i32 %70, %71
  %73 = xor i32 %72, -1
  %74 = and i32 %67, %73
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 8
  %77 = load i32, i32* %7, align 4
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 5
  store i32 %77, i32* %79, align 8
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 4
  store i64 0, i64* %81, align 8
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 2
  store i32 0, i32* %83, align 4
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 3
  store i32* null, i32** %85, align 8
  %86 = load i64, i64* %9, align 8
  store i64 %86, i64* %4, align 8
  br label %87

87:                                               ; preds = %51, %44
  %88 = load i64, i64* %4, align 8
  ret i64 %88
}

declare dso_local i32 @DO_DB(i32) #1

declare dso_local i32 @elog(i32, i8*, i8*, ...) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i64 @AllocateVfd(...) #1

declare dso_local i32 @ReleaseLruFiles(...) #1

declare dso_local i32 @BasicOpenFilePerm(i8*, i32, i32) #1

declare dso_local i32 @FreeVfd(i64) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @Insert(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
