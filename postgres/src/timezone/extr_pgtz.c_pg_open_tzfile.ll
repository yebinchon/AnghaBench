; ModuleID = '/home/carl/AnghaBench/postgres/src/timezone/extr_pgtz.c_pg_open_tzfile.c'
source_filename = "/home/carl/AnghaBench/postgres/src/timezone/extr_pgtz.c_pg_open_tzfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAXPGPATH = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@PG_BINARY = common dso_local global i32 0, align 4
@TZ_STRLEN_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pg_open_tzfile(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %15 = load i32, i32* @MAXPGPATH, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %7, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %8, align 8
  %19 = call i8* (...) @pg_TZDIR()
  %20 = trunc i64 %16 to i32
  %21 = call i32 @strlcpy(i8* %18, i8* %19, i32 %20)
  %22 = call i32 @strlen(i8* %18)
  store i32 %22, i32* %9, align 4
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %9, align 4
  %24 = add nsw i32 %23, 1
  %25 = load i8*, i8** %4, align 8
  %26 = call i32 @strlen(i8* %25)
  %27 = add nsw i32 %24, %26
  %28 = load i32, i32* @MAXPGPATH, align 4
  %29 = icmp sge i32 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %122

31:                                               ; preds = %2
  %32 = load i8*, i8** %5, align 8
  %33 = icmp eq i8* %32, null
  br i1 %33, label %34, label %56

34:                                               ; preds = %31
  %35 = load i32, i32* %9, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8, i8* %18, i64 %36
  store i8 47, i8* %37, align 1
  %38 = load i32, i32* %9, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8, i8* %18, i64 %39
  %41 = getelementptr inbounds i8, i8* %40, i64 1
  %42 = load i8*, i8** %4, align 8
  %43 = call i32 @strcpy(i8* %41, i8* %42)
  %44 = load i32, i32* @O_RDONLY, align 4
  %45 = load i32, i32* @PG_BINARY, align 4
  %46 = or i32 %44, %45
  %47 = call i32 @open(i8* %18, i32 %46, i32 0)
  store i32 %47, i32* %12, align 4
  %48 = load i32, i32* %12, align 4
  %49 = icmp sge i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %34
  %51 = load i32, i32* %12, align 4
  store i32 %51, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %122

52:                                               ; preds = %34
  %53 = load i32, i32* %9, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8, i8* %18, i64 %54
  store i8 0, i8* %55, align 1
  br label %56

56:                                               ; preds = %52, %31
  %57 = load i8*, i8** %4, align 8
  store i8* %57, i8** %6, align 8
  br label %58

58:                                               ; preds = %104, %56
  %59 = load i8*, i8** %6, align 8
  %60 = call i8* @strchr(i8* %59, i8 signext 47)
  store i8* %60, i8** %13, align 8
  %61 = load i8*, i8** %13, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %63, label %70

63:                                               ; preds = %58
  %64 = load i8*, i8** %13, align 8
  %65 = load i8*, i8** %6, align 8
  %66 = ptrtoint i8* %64 to i64
  %67 = ptrtoint i8* %65 to i64
  %68 = sub i64 %66, %67
  %69 = trunc i64 %68 to i32
  store i32 %69, i32* %14, align 4
  br label %73

70:                                               ; preds = %58
  %71 = load i8*, i8** %6, align 8
  %72 = call i32 @strlen(i8* %71)
  store i32 %72, i32* %14, align 4
  br label %73

73:                                               ; preds = %70, %63
  %74 = load i8*, i8** %6, align 8
  %75 = load i32, i32* %14, align 4
  %76 = load i32, i32* %9, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8, i8* %18, i64 %77
  %79 = getelementptr inbounds i8, i8* %78, i64 1
  %80 = load i32, i32* @MAXPGPATH, align 4
  %81 = load i32, i32* %9, align 4
  %82 = sub nsw i32 %80, %81
  %83 = sub nsw i32 %82, 1
  %84 = call i32 @scan_directory_ci(i8* %18, i8* %74, i32 %75, i8* %79, i32 %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %87, label %86

86:                                               ; preds = %73
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %122

87:                                               ; preds = %73
  %88 = load i32, i32* %9, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %9, align 4
  %90 = sext i32 %88 to i64
  %91 = getelementptr inbounds i8, i8* %18, i64 %90
  store i8 47, i8* %91, align 1
  %92 = load i32, i32* %9, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i8, i8* %18, i64 %93
  %95 = call i32 @strlen(i8* %94)
  %96 = load i32, i32* %9, align 4
  %97 = add nsw i32 %96, %95
  store i32 %97, i32* %9, align 4
  %98 = load i8*, i8** %13, align 8
  %99 = icmp ne i8* %98, null
  br i1 %99, label %100, label %103

100:                                              ; preds = %87
  %101 = load i8*, i8** %13, align 8
  %102 = getelementptr inbounds i8, i8* %101, i64 1
  store i8* %102, i8** %6, align 8
  br label %104

103:                                              ; preds = %87
  br label %105

104:                                              ; preds = %100
  br label %58

105:                                              ; preds = %103
  %106 = load i8*, i8** %5, align 8
  %107 = icmp ne i8* %106, null
  br i1 %107, label %108, label %117

108:                                              ; preds = %105
  %109 = load i8*, i8** %5, align 8
  %110 = load i32, i32* %10, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i8, i8* %18, i64 %111
  %113 = getelementptr inbounds i8, i8* %112, i64 1
  %114 = load i32, i32* @TZ_STRLEN_MAX, align 4
  %115 = add nsw i32 %114, 1
  %116 = call i32 @strlcpy(i8* %109, i8* %113, i32 %115)
  br label %117

117:                                              ; preds = %108, %105
  %118 = load i32, i32* @O_RDONLY, align 4
  %119 = load i32, i32* @PG_BINARY, align 4
  %120 = or i32 %118, %119
  %121 = call i32 @open(i8* %18, i32 %120, i32 0)
  store i32 %121, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %122

122:                                              ; preds = %117, %86, %50, %30
  %123 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %123)
  %124 = load i32, i32* %3, align 4
  ret i32 %124
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @strlcpy(i8*, i8*, i32) #2

declare dso_local i8* @pg_TZDIR(...) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @strcpy(i8*, i8*) #2

declare dso_local i32 @open(i8*, i32, i32) #2

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i32 @scan_directory_ci(i8*, i8*, i32, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
