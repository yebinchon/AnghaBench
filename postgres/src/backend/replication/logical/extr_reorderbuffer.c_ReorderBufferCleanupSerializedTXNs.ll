; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/replication/logical/extr_reorderbuffer.c_ReorderBufferCleanupSerializedTXNs.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/replication/logical/extr_reorderbuffer.c_ReorderBufferCleanupSerializedTXNs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dirent = type { i8* }
%struct.stat = type { i32 }

@MAXPGPATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"pg_replslot/%s\00", align 1
@INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"xid\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"pg_replslot/%s/%s\00", align 1
@ERROR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [69 x i8] c"could not remove file \22%s\22 during removal of pg_replslot/%s/xid*: %m\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @ReorderBufferCleanupSerializedTXNs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ReorderBufferCleanupSerializedTXNs(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.dirent*, align 8
  %5 = alloca %struct.stat, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %9 = load i32, i32* @MAXPGPATH, align 4
  %10 = mul nsw i32 %9, 2
  %11 = add nsw i32 %10, 12
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %6, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %7, align 8
  %15 = load i8*, i8** %2, align 8
  %16 = call i32 @sprintf(i8* %14, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %15)
  %17 = call i64 @lstat(i8* %14, %struct.stat* %5)
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %1
  %20 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @S_ISDIR(i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %19
  store i32 1, i32* %8, align 4
  br label %58

25:                                               ; preds = %19, %1
  %26 = call i32* @AllocateDir(i8* %14)
  store i32* %26, i32** %3, align 8
  br label %27

27:                                               ; preds = %54, %25
  %28 = load i32*, i32** %3, align 8
  %29 = load i32, i32* @INFO, align 4
  %30 = call %struct.dirent* @ReadDirExtended(i32* %28, i8* %14, i32 %29)
  store %struct.dirent* %30, %struct.dirent** %4, align 8
  %31 = icmp ne %struct.dirent* %30, null
  br i1 %31, label %32, label %55

32:                                               ; preds = %27
  %33 = load %struct.dirent*, %struct.dirent** %4, align 8
  %34 = getelementptr inbounds %struct.dirent, %struct.dirent* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = call i64 @strncmp(i8* %35, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 3)
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %54

38:                                               ; preds = %32
  %39 = trunc i64 %12 to i32
  %40 = load i8*, i8** %2, align 8
  %41 = load %struct.dirent*, %struct.dirent** %4, align 8
  %42 = getelementptr inbounds %struct.dirent, %struct.dirent* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = call i32 @snprintf(i8* %14, i32 %39, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8* %40, i8* %43)
  %45 = call i64 @unlink(i8* %14)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %38
  %48 = load i32, i32* @ERROR, align 4
  %49 = call i32 (...) @errcode_for_file_access()
  %50 = load i8*, i8** %2, align 8
  %51 = call i32 @errmsg(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.3, i64 0, i64 0), i8* %14, i8* %50)
  %52 = call i32 @ereport(i32 %48, i32 %51)
  br label %53

53:                                               ; preds = %47, %38
  br label %54

54:                                               ; preds = %53, %32
  br label %27

55:                                               ; preds = %27
  %56 = load i32*, i32** %3, align 8
  %57 = call i32 @FreeDir(i32* %56)
  store i32 0, i32* %8, align 4
  br label %58

58:                                               ; preds = %55, %24
  %59 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %59)
  %60 = load i32, i32* %8, align 4
  switch i32 %60, label %62 [
    i32 0, label %61
    i32 1, label %61
  ]

61:                                               ; preds = %58, %58
  ret void

62:                                               ; preds = %58
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @sprintf(i8*, i8*, i8*) #2

declare dso_local i64 @lstat(i8*, %struct.stat*) #2

declare dso_local i32 @S_ISDIR(i32) #2

declare dso_local i32* @AllocateDir(i8*) #2

declare dso_local %struct.dirent* @ReadDirExtended(i32*, i8*, i32) #2

declare dso_local i64 @strncmp(i8*, i8*, i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #2

declare dso_local i64 @unlink(i8*) #2

declare dso_local i32 @ereport(i32, i32) #2

declare dso_local i32 @errcode_for_file_access(...) #2

declare dso_local i32 @errmsg(i8*, i8*, i8*) #2

declare dso_local i32 @FreeDir(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
