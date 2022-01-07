; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/smgr/extr_md.c_mdcreate.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/smgr/extr_md.c_mdcreate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64*, %struct.TYPE_9__**, %struct.TYPE_10__ }
%struct.TYPE_9__ = type { i64, i64 }
%struct.TYPE_10__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }

@O_RDWR = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@O_EXCL = common dso_local global i32 0, align 4
@PG_BINARY = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"could not create file \22%s\22: %m\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mdcreate(%struct.TYPE_8__* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %22

13:                                               ; preds = %3
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load i64*, i64** %15, align 8
  %17 = load i64, i64* %5, align 8
  %18 = getelementptr inbounds i64, i64* %16, i64 %17
  %19 = load i64, i64* %18, align 8
  %20 = icmp sgt i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %13
  br label %101

22:                                               ; preds = %13, %3
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i64*, i64** %24, align 8
  %26 = load i64, i64* %5, align 8
  %27 = getelementptr inbounds i64, i64* %25, i64 %26
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %28, 0
  %30 = zext i1 %29 to i32
  %31 = call i32 @Assert(i32 %30)
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @TablespaceCreateDbspace(i32 %36, i32 %41, i32 %42)
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 2
  %46 = load i64, i64* %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  %48 = bitcast %struct.TYPE_7__* %47 to i64*
  %49 = load i64, i64* %48, align 8
  %50 = call i8* @relpath(i64 %49, i64 %46)
  store i8* %50, i8** %8, align 8
  %51 = load i8*, i8** %8, align 8
  %52 = load i32, i32* @O_RDWR, align 4
  %53 = load i32, i32* @O_CREAT, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @O_EXCL, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @PG_BINARY, align 4
  %58 = or i32 %56, %57
  %59 = call i64 @PathNameOpenFile(i8* %51, i32 %58)
  store i64 %59, i64* %9, align 8
  %60 = load i64, i64* %9, align 8
  %61 = icmp slt i64 %60, 0
  br i1 %61, label %62, label %83

62:                                               ; preds = %22
  %63 = load i32, i32* @errno, align 4
  store i32 %63, i32* %10, align 4
  %64 = load i32, i32* %6, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %62
  %67 = load i8*, i8** %8, align 8
  %68 = load i32, i32* @O_RDWR, align 4
  %69 = load i32, i32* @PG_BINARY, align 4
  %70 = or i32 %68, %69
  %71 = call i64 @PathNameOpenFile(i8* %67, i32 %70)
  store i64 %71, i64* %9, align 8
  br label %72

72:                                               ; preds = %66, %62
  %73 = load i64, i64* %9, align 8
  %74 = icmp slt i64 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %72
  %76 = load i32, i32* %10, align 4
  store i32 %76, i32* @errno, align 4
  %77 = load i32, i32* @ERROR, align 4
  %78 = call i32 (...) @errcode_for_file_access()
  %79 = load i8*, i8** %8, align 8
  %80 = call i32 @errmsg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %79)
  %81 = call i32 @ereport(i32 %77, i32 %80)
  br label %82

82:                                               ; preds = %75, %72
  br label %83

83:                                               ; preds = %82, %22
  %84 = load i8*, i8** %8, align 8
  %85 = call i32 @pfree(i8* %84)
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %87 = load i64, i64* %5, align 8
  %88 = call i32 @_fdvec_resize(%struct.TYPE_8__* %86, i64 %87, i32 1)
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 1
  %91 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %90, align 8
  %92 = load i64, i64* %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %91, i64 %92
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i64 0
  store %struct.TYPE_9__* %95, %struct.TYPE_9__** %7, align 8
  %96 = load i64, i64* %9, align 8
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 1
  store i64 %96, i64* %98, align 8
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 0
  store i64 0, i64* %100, align 8
  br label %101

101:                                              ; preds = %83, %21
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @TablespaceCreateDbspace(i32, i32, i32) #1

declare dso_local i8* @relpath(i64, i64) #1

declare dso_local i64 @PathNameOpenFile(i8*, i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode_for_file_access(...) #1

declare dso_local i32 @errmsg(i8*, i8*) #1

declare dso_local i32 @pfree(i8*) #1

declare dso_local i32 @_fdvec_resize(%struct.TYPE_8__*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
