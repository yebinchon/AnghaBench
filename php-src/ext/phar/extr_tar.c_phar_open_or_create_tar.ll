; ModuleID = '/home/carl/AnghaBench/php-src/ext/phar/extr_tar.c_phar_open_or_create_tar.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/phar/extr_tar.c_phar_open_or_create_tar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i64, i64, i64 }

@FAILURE = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [122 x i8] c"phar tar error: \22%s\22 already exists as a regular phar and must be deleted from disk prior to creating as a tar-based phar\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @phar_open_or_create_tar(i8* %0, i64 %1, i8* %2, i64 %3, i32 %4, i32 %5, %struct.TYPE_4__** %6, i8** %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_4__**, align 8
  %17 = alloca i8**, align 8
  %18 = alloca %struct.TYPE_4__*, align 8
  %19 = alloca i32, align 4
  store i8* %0, i8** %10, align 8
  store i64 %1, i64* %11, align 8
  store i8* %2, i8** %12, align 8
  store i64 %3, i64* %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store %struct.TYPE_4__** %6, %struct.TYPE_4__*** %16, align 8
  store i8** %7, i8*** %17, align 8
  %20 = load i8*, i8** %10, align 8
  %21 = load i64, i64* %11, align 8
  %22 = load i8*, i8** %12, align 8
  %23 = load i64, i64* %13, align 8
  %24 = load i32, i32* %14, align 4
  %25 = load i32, i32* %15, align 4
  %26 = load i8**, i8*** %17, align 8
  %27 = call i32 @phar_create_or_parse_filename(i8* %20, i64 %21, i8* %22, i64 %23, i32 %24, i32 %25, %struct.TYPE_4__** %18, i8** %26)
  store i32 %27, i32* %19, align 4
  %28 = load i32, i32* @FAILURE, align 4
  %29 = load i32, i32* %19, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %8
  %32 = load i32, i32* @FAILURE, align 4
  store i32 %32, i32* %9, align 4
  br label %71

33:                                               ; preds = %8
  %34 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %16, align 8
  %35 = icmp ne %struct.TYPE_4__** %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %38 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %16, align 8
  store %struct.TYPE_4__* %37, %struct.TYPE_4__** %38, align 8
  br label %39

39:                                               ; preds = %36, %33
  %40 = load i32, i32* %14, align 4
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %39
  %48 = load i32, i32* %19, align 4
  store i32 %48, i32* %9, align 4
  br label %71

49:                                               ; preds = %39
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 4
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %49
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 1
  store i32 1, i32* %56, align 4
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 3
  store i64 0, i64* %58, align 8
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 2
  store i64 0, i64* %60, align 8
  %61 = load i32, i32* @SUCCESS, align 4
  store i32 %61, i32* %9, align 4
  br label %71

62:                                               ; preds = %49
  %63 = load i8**, i8*** %17, align 8
  %64 = icmp ne i8** %63, null
  br i1 %64, label %65, label %69

65:                                               ; preds = %62
  %66 = load i8**, i8*** %17, align 8
  %67 = load i8*, i8** %10, align 8
  %68 = call i32 @spprintf(i8** %66, i32 4096, i8* getelementptr inbounds ([122 x i8], [122 x i8]* @.str, i64 0, i64 0), i8* %67)
  br label %69

69:                                               ; preds = %65, %62
  %70 = load i32, i32* @FAILURE, align 4
  store i32 %70, i32* %9, align 4
  br label %71

71:                                               ; preds = %69, %54, %47, %31
  %72 = load i32, i32* %9, align 4
  ret i32 %72
}

declare dso_local i32 @phar_create_or_parse_filename(i8*, i64, i8*, i64, i32, i32, %struct.TYPE_4__**, i8**) #1

declare dso_local i32 @spprintf(i8**, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
