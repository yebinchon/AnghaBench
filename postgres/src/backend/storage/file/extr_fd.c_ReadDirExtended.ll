; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/file/extr_fd.c_ReadDirExtended.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/file/extr_fd.c_ReadDirExtended.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dirent = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"could not open directory \22%s\22: %m\00", align 1
@errno = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"could not read directory \22%s\22: %m\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dirent* @ReadDirExtended(i32* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.dirent*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dirent*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32*, i32** %5, align 8
  %10 = icmp eq i32* %9, null
  br i1 %10, label %11, label %17

11:                                               ; preds = %3
  %12 = load i32, i32* %7, align 4
  %13 = call i32 (...) @errcode_for_file_access()
  %14 = load i8*, i8** %6, align 8
  %15 = call i32 @errmsg(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* %14)
  %16 = call i32 @ereport(i32 %12, i32 %15)
  store %struct.dirent* null, %struct.dirent** %4, align 8
  br label %33

17:                                               ; preds = %3
  store i64 0, i64* @errno, align 8
  %18 = load i32*, i32** %5, align 8
  %19 = call %struct.dirent* @readdir(i32* %18)
  store %struct.dirent* %19, %struct.dirent** %8, align 8
  %20 = icmp ne %struct.dirent* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = load %struct.dirent*, %struct.dirent** %8, align 8
  store %struct.dirent* %22, %struct.dirent** %4, align 8
  br label %33

23:                                               ; preds = %17
  %24 = load i64, i64* @errno, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %23
  %27 = load i32, i32* %7, align 4
  %28 = call i32 (...) @errcode_for_file_access()
  %29 = load i8*, i8** %6, align 8
  %30 = call i32 @errmsg(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i8* %29)
  %31 = call i32 @ereport(i32 %27, i32 %30)
  br label %32

32:                                               ; preds = %26, %23
  store %struct.dirent* null, %struct.dirent** %4, align 8
  br label %33

33:                                               ; preds = %32, %21, %11
  %34 = load %struct.dirent*, %struct.dirent** %4, align 8
  ret %struct.dirent* %34
}

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode_for_file_access(...) #1

declare dso_local i32 @errmsg(i8*, i8*) #1

declare dso_local %struct.dirent* @readdir(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
