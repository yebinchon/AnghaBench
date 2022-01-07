; ModuleID = '/home/carl/AnghaBench/openssl/crypto/extr_LPdir_unix.c_LP_find_file.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/extr_LPdir_unix.c_LP_find_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i8*, i32, i32* }
%struct.dirent = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @LP_find_file(%struct.TYPE_6__** %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_6__**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.dirent*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_6__** %0, %struct.TYPE_6__*** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.dirent* null, %struct.dirent** %6, align 8
  %8 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %4, align 8
  %9 = icmp eq %struct.TYPE_6__** %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = load i8*, i8** %5, align 8
  %12 = icmp eq i8* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %10, %2
  %14 = load i32, i32* @EINVAL, align 4
  store i32 %14, i32* @errno, align 4
  store i8* null, i8** %3, align 8
  br label %71

15:                                               ; preds = %10
  store i32 0, i32* @errno, align 4
  %16 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %4, align 8
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = icmp eq %struct.TYPE_6__* %17, null
  br i1 %18, label %19, label %49

19:                                               ; preds = %15
  %20 = call %struct.TYPE_6__* @malloc(i32 32)
  %21 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %4, align 8
  store %struct.TYPE_6__* %20, %struct.TYPE_6__** %21, align 8
  %22 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %4, align 8
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = icmp eq %struct.TYPE_6__* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = load i32, i32* @ENOMEM, align 4
  store i32 %26, i32* @errno, align 4
  store i8* null, i8** %3, align 8
  br label %71

27:                                               ; preds = %19
  %28 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %4, align 8
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = call i32 @memset(%struct.TYPE_6__* %29, i32 0, i32 32)
  %31 = load i8*, i8** %5, align 8
  %32 = call i32* @opendir(i8* %31)
  %33 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %4, align 8
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 3
  store i32* %32, i32** %35, align 8
  %36 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %4, align 8
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 3
  %39 = load i32*, i32** %38, align 8
  %40 = icmp eq i32* %39, null
  br i1 %40, label %41, label %48

41:                                               ; preds = %27
  %42 = load i32, i32* @errno, align 4
  store i32 %42, i32* %7, align 4
  %43 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %4, align 8
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = call i32 @free(%struct.TYPE_6__* %44)
  %46 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %4, align 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %46, align 8
  %47 = load i32, i32* %7, align 4
  store i32 %47, i32* @errno, align 4
  store i8* null, i8** %3, align 8
  br label %71

48:                                               ; preds = %27
  br label %49

49:                                               ; preds = %48, %15
  %50 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %4, align 8
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 3
  %53 = load i32*, i32** %52, align 8
  %54 = call %struct.dirent* @readdir(i32* %53)
  store %struct.dirent* %54, %struct.dirent** %6, align 8
  %55 = load %struct.dirent*, %struct.dirent** %6, align 8
  %56 = icmp eq %struct.dirent* %55, null
  br i1 %56, label %57, label %58

57:                                               ; preds = %49
  store i8* null, i8** %3, align 8
  br label %71

58:                                               ; preds = %49
  %59 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %4, align 8
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 1
  %62 = load i8*, i8** %61, align 8
  %63 = load %struct.dirent*, %struct.dirent** %6, align 8
  %64 = getelementptr inbounds %struct.dirent, %struct.dirent* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @OPENSSL_strlcpy(i8* %62, i32 %65, i32 8)
  %67 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %4, align 8
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 1
  %70 = load i8*, i8** %69, align 8
  store i8* %70, i8** %3, align 8
  br label %71

71:                                               ; preds = %58, %57, %41, %25, %13
  %72 = load i8*, i8** %3, align 8
  ret i8* %72
}

declare dso_local %struct.TYPE_6__* @malloc(i32) #1

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32* @opendir(i8*) #1

declare dso_local i32 @free(%struct.TYPE_6__*) #1

declare dso_local %struct.dirent* @readdir(i32*) #1

declare dso_local i32 @OPENSSL_strlcpy(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
