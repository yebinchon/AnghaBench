; ModuleID = '/home/carl/AnghaBench/lz4/programs/extr_bench.c_BMK_loadFiles.c'
source_filename = "/home/carl/AnghaBench/lz4/programs/extr_bench.c_BMK_loadFiles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [33 x i8] c"Ignoring %s directory...       \0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"impossible to open file %s\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"Loading %s...       \0D\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"could not read %s\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"no data to bench\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64, i64*, i8**, i32)* @BMK_loadFiles to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @BMK_loadFiles(i8* %0, i64 %1, i64* %2, i8** %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64* %2, i64** %8, align 8
  store i8** %3, i8*** %9, align 8
  store i32 %4, i32* %10, align 4
  store i64 0, i64* %11, align 8
  store i64 0, i64* %12, align 8
  store i32 0, i32* %13, align 4
  br label %17

17:                                               ; preds = %110, %5
  %18 = load i32, i32* %13, align 4
  %19 = load i32, i32* %10, align 4
  %20 = icmp ult i32 %18, %19
  br i1 %20, label %21, label %113

21:                                               ; preds = %17
  %22 = load i8**, i8*** %9, align 8
  %23 = load i32, i32* %13, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds i8*, i8** %22, i64 %24
  %26 = load i8*, i8** %25, align 8
  %27 = call i64 @UTIL_getFileSize(i8* %26)
  store i64 %27, i64* %15, align 8
  %28 = load i8**, i8*** %9, align 8
  %29 = load i32, i32* %13, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds i8*, i8** %28, i64 %30
  %32 = load i8*, i8** %31, align 8
  %33 = call i64 @UTIL_isDirectory(i8* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %46

35:                                               ; preds = %21
  %36 = load i8**, i8*** %9, align 8
  %37 = load i32, i32* %13, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds i8*, i8** %36, i64 %38
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 @DISPLAYLEVEL(i32 2, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* %40)
  %42 = load i64*, i64** %8, align 8
  %43 = load i32, i32* %13, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds i64, i64* %42, i64 %44
  store i64 0, i64* %45, align 8
  br label %110

46:                                               ; preds = %21
  %47 = load i8**, i8*** %9, align 8
  %48 = load i32, i32* %13, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds i8*, i8** %47, i64 %49
  %51 = load i8*, i8** %50, align 8
  %52 = call i32* @fopen(i8* %51, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i32* %52, i32** %14, align 8
  %53 = load i32*, i32** %14, align 8
  %54 = icmp eq i32* %53, null
  br i1 %54, label %55, label %62

55:                                               ; preds = %46
  %56 = load i8**, i8*** %9, align 8
  %57 = load i32, i32* %13, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds i8*, i8** %56, i64 %58
  %60 = load i8*, i8** %59, align 8
  %61 = call i32 (i32, i8*, ...) @EXM_THROW(i32 10, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i8* %60)
  br label %62

62:                                               ; preds = %55, %46
  %63 = load i8**, i8*** %9, align 8
  %64 = load i32, i32* %13, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds i8*, i8** %63, i64 %65
  %67 = load i8*, i8** %66, align 8
  %68 = call i32 @DISPLAYUPDATE(i32 2, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i8* %67)
  %69 = load i64, i64* %15, align 8
  %70 = load i64, i64* %7, align 8
  %71 = load i64, i64* %11, align 8
  %72 = sub i64 %70, %71
  %73 = icmp ugt i64 %69, %72
  br i1 %73, label %74, label %79

74:                                               ; preds = %62
  %75 = load i64, i64* %7, align 8
  %76 = load i64, i64* %11, align 8
  %77 = sub i64 %75, %76
  store i64 %77, i64* %15, align 8
  %78 = load i32, i32* %13, align 4
  store i32 %78, i32* %10, align 4
  br label %79

79:                                               ; preds = %74, %62
  %80 = load i8*, i8** %6, align 8
  %81 = load i64, i64* %11, align 8
  %82 = getelementptr inbounds i8, i8* %80, i64 %81
  %83 = load i64, i64* %15, align 8
  %84 = load i32*, i32** %14, align 8
  %85 = call i64 @fread(i8* %82, i32 1, i64 %83, i32* %84)
  store i64 %85, i64* %16, align 8
  %86 = load i64, i64* %16, align 8
  %87 = load i64, i64* %15, align 8
  %88 = icmp ne i64 %86, %87
  br i1 %88, label %89, label %96

89:                                               ; preds = %79
  %90 = load i8**, i8*** %9, align 8
  %91 = load i32, i32* %13, align 4
  %92 = zext i32 %91 to i64
  %93 = getelementptr inbounds i8*, i8** %90, i64 %92
  %94 = load i8*, i8** %93, align 8
  %95 = call i32 (i32, i8*, ...) @EXM_THROW(i32 11, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i8* %94)
  br label %96

96:                                               ; preds = %89, %79
  %97 = load i64, i64* %16, align 8
  %98 = load i64, i64* %11, align 8
  %99 = add i64 %98, %97
  store i64 %99, i64* %11, align 8
  %100 = load i64, i64* %15, align 8
  %101 = load i64*, i64** %8, align 8
  %102 = load i32, i32* %13, align 4
  %103 = zext i32 %102 to i64
  %104 = getelementptr inbounds i64, i64* %101, i64 %103
  store i64 %100, i64* %104, align 8
  %105 = load i64, i64* %15, align 8
  %106 = load i64, i64* %12, align 8
  %107 = add i64 %106, %105
  store i64 %107, i64* %12, align 8
  %108 = load i32*, i32** %14, align 8
  %109 = call i32 @fclose(i32* %108)
  br label %110

110:                                              ; preds = %96, %35
  %111 = load i32, i32* %13, align 4
  %112 = add i32 %111, 1
  store i32 %112, i32* %13, align 4
  br label %17

113:                                              ; preds = %17
  %114 = load i64, i64* %12, align 8
  %115 = icmp eq i64 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %113
  %117 = call i32 (i32, i8*, ...) @EXM_THROW(i32 12, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  br label %118

118:                                              ; preds = %116, %113
  ret void
}

declare dso_local i64 @UTIL_getFileSize(i8*) #1

declare dso_local i64 @UTIL_isDirectory(i8*) #1

declare dso_local i32 @DISPLAYLEVEL(i32, i8*, i8*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @EXM_THROW(i32, i8*, ...) #1

declare dso_local i32 @DISPLAYUPDATE(i32, i8*, i8*) #1

declare dso_local i64 @fread(i8*, i32, i64, i32*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
