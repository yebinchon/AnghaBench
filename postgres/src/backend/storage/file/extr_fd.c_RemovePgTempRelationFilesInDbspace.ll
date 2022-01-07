; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/file/extr_fd.c_RemovePgTempRelationFilesInDbspace.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/file/extr_fd.c_RemovePgTempRelationFilesInDbspace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dirent = type { i8* }

@MAXPGPATH = common dso_local global i32 0, align 4
@LOG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"could not remove file \22%s\22: %m\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @RemovePgTempRelationFilesInDbspace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @RemovePgTempRelationFilesInDbspace(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.dirent*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %7 = load i32, i32* @MAXPGPATH, align 4
  %8 = mul nsw i32 %7, 2
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %5, align 8
  %11 = alloca i8, i64 %9, align 16
  store i64 %9, i64* %6, align 8
  %12 = load i8*, i8** %2, align 8
  %13 = call i32* @AllocateDir(i8* %12)
  store i32* %13, i32** %3, align 8
  br label %14

14:                                               ; preds = %41, %26, %1
  %15 = load i32*, i32** %3, align 8
  %16 = load i8*, i8** %2, align 8
  %17 = load i32, i32* @LOG, align 4
  %18 = call %struct.dirent* @ReadDirExtended(i32* %15, i8* %16, i32 %17)
  store %struct.dirent* %18, %struct.dirent** %4, align 8
  %19 = icmp ne %struct.dirent* %18, null
  br i1 %19, label %20, label %42

20:                                               ; preds = %14
  %21 = load %struct.dirent*, %struct.dirent** %4, align 8
  %22 = getelementptr inbounds %struct.dirent, %struct.dirent* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = call i32 @looks_like_temp_rel_name(i8* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %20
  br label %14

27:                                               ; preds = %20
  %28 = trunc i64 %9 to i32
  %29 = load i8*, i8** %2, align 8
  %30 = load %struct.dirent*, %struct.dirent** %4, align 8
  %31 = getelementptr inbounds %struct.dirent, %struct.dirent* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = call i32 @snprintf(i8* %11, i32 %28, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %29, i8* %32)
  %34 = call i64 @unlink(i8* %11)
  %35 = icmp slt i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %27
  %37 = load i32, i32* @LOG, align 4
  %38 = call i32 (...) @errcode_for_file_access()
  %39 = call i32 @errmsg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i8* %11)
  %40 = call i32 @ereport(i32 %37, i32 %39)
  br label %41

41:                                               ; preds = %36, %27
  br label %14

42:                                               ; preds = %14
  %43 = load i32*, i32** %3, align 8
  %44 = call i32 @FreeDir(i32* %43)
  %45 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %45)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @AllocateDir(i8*) #2

declare dso_local %struct.dirent* @ReadDirExtended(i32*, i8*, i32) #2

declare dso_local i32 @looks_like_temp_rel_name(i8*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #2

declare dso_local i64 @unlink(i8*) #2

declare dso_local i32 @ereport(i32, i32) #2

declare dso_local i32 @errcode_for_file_access(...) #2

declare dso_local i32 @errmsg(i8*, i8*) #2

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
