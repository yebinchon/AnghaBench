; ModuleID = '/home/carl/AnghaBench/netdata/libnetdata/extr_libnetdata.c_path_is_dir.c'
source_filename = "/home/carl/AnghaBench/netdata/libnetdata/extr_libnetdata.c_path_is_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@S_IFMT = common dso_local global i32 0, align 4
@S_IFDIR = common dso_local global i32 0, align 4
@S_IFLNK = common dso_local global i32 0, align 4
@FILENAME_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @path_is_dir(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.stat, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %13 = load i8*, i8** %3, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = call i8* @strdupz_path_subpath(i8* %13, i8* %14)
  store i8* %15, i8** %5, align 8
  store i64 100, i64* %6, align 8
  store i32 0, i32* %7, align 4
  br label %16

16:                                               ; preds = %59, %2
  %17 = load i64, i64* %6, align 8
  %18 = add i64 %17, -1
  store i64 %18, i64* %6, align 8
  %19 = icmp ne i64 %17, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = load i8*, i8** %5, align 8
  %22 = call i64 @stat(i8* %21, %struct.stat* %8)
  %23 = icmp eq i64 %22, 0
  br label %24

24:                                               ; preds = %20, %16
  %25 = phi i1 [ false, %16 ], [ %23, %20 ]
  br i1 %25, label %26, label %63

26:                                               ; preds = %24
  %27 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @S_IFMT, align 4
  %30 = and i32 %28, %29
  %31 = load i32, i32* @S_IFDIR, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  store i32 1, i32* %7, align 4
  br label %63

34:                                               ; preds = %26
  %35 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @S_IFMT, align 4
  %38 = and i32 %36, %37
  %39 = load i32, i32* @S_IFLNK, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %62

41:                                               ; preds = %34
  %42 = load i32, i32* @FILENAME_MAX, align 4
  %43 = add nsw i32 %42, 1
  %44 = zext i32 %43 to i64
  %45 = call i8* @llvm.stacksave()
  store i8* %45, i8** %9, align 8
  %46 = alloca i8, i64 %44, align 16
  store i64 %44, i64* %10, align 8
  %47 = load i8*, i8** %5, align 8
  %48 = load i32, i32* @FILENAME_MAX, align 4
  %49 = call i64 @readlink(i8* %47, i8* %46, i32 %48)
  store i64 %49, i64* %11, align 8
  %50 = load i64, i64* %11, align 8
  %51 = icmp ugt i64 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %41
  %53 = load i64, i64* %11, align 8
  %54 = getelementptr inbounds i8, i8* %46, i64 %53
  store i8 0, i8* %54, align 1
  %55 = load i8*, i8** %5, align 8
  %56 = call i32 @freez(i8* %55)
  %57 = call i8* @strdupz(i8* %46)
  store i8* %57, i8** %5, align 8
  store i32 2, i32* %12, align 4
  br label %59

58:                                               ; preds = %41
  store i32 0, i32* %7, align 4
  store i32 3, i32* %12, align 4
  br label %59

59:                                               ; preds = %58, %52
  %60 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %60)
  %61 = load i32, i32* %12, align 4
  switch i32 %61, label %67 [
    i32 2, label %16
    i32 3, label %63
  ]

62:                                               ; preds = %34
  store i32 0, i32* %7, align 4
  br label %63

63:                                               ; preds = %62, %59, %33, %24
  %64 = load i8*, i8** %5, align 8
  %65 = call i32 @freez(i8* %64)
  %66 = load i32, i32* %7, align 4
  ret i32 %66

67:                                               ; preds = %59
  unreachable
}

declare dso_local i8* @strdupz_path_subpath(i8*, i8*) #1

declare dso_local i64 @stat(i8*, %struct.stat*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @readlink(i8*, i8*, i32) #1

declare dso_local i32 @freez(i8*) #1

declare dso_local i8* @strdupz(i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
