; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/file/extr_fd.c_RemovePgTempRelationFiles.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/file/extr_fd.c_RemovePgTempRelationFiles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dirent = type { i8* }

@MAXPGPATH = common dso_local global i32 0, align 4
@LOG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"0123456789\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @RemovePgTempRelationFiles to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @RemovePgTempRelationFiles(i8* %0) #0 {
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

14:                                               ; preds = %31, %30, %1
  %15 = load i32*, i32** %3, align 8
  %16 = load i8*, i8** %2, align 8
  %17 = load i32, i32* @LOG, align 4
  %18 = call %struct.dirent* @ReadDirExtended(i32* %15, i8* %16, i32 %17)
  store %struct.dirent* %18, %struct.dirent** %4, align 8
  %19 = icmp ne %struct.dirent* %18, null
  br i1 %19, label %20, label %39

20:                                               ; preds = %14
  %21 = load %struct.dirent*, %struct.dirent** %4, align 8
  %22 = getelementptr inbounds %struct.dirent, %struct.dirent* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = call i64 @strspn(i8* %23, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %25 = load %struct.dirent*, %struct.dirent** %4, align 8
  %26 = getelementptr inbounds %struct.dirent, %struct.dirent* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = call i64 @strlen(i8* %27)
  %29 = icmp ne i64 %24, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %20
  br label %14

31:                                               ; preds = %20
  %32 = trunc i64 %9 to i32
  %33 = load i8*, i8** %2, align 8
  %34 = load %struct.dirent*, %struct.dirent** %4, align 8
  %35 = getelementptr inbounds %struct.dirent, %struct.dirent* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = call i32 @snprintf(i8* %11, i32 %32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %33, i8* %36)
  %38 = call i32 @RemovePgTempRelationFilesInDbspace(i8* %11)
  br label %14

39:                                               ; preds = %14
  %40 = load i32*, i32** %3, align 8
  %41 = call i32 @FreeDir(i32* %40)
  %42 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %42)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @AllocateDir(i8*) #2

declare dso_local %struct.dirent* @ReadDirExtended(i32*, i8*, i32) #2

declare dso_local i64 @strspn(i8*, i8*) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #2

declare dso_local i32 @RemovePgTempRelationFilesInDbspace(i8*) #2

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
