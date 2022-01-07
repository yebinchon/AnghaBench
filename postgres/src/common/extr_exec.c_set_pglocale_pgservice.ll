; ModuleID = '/home/carl/AnghaBench/postgres/src/common/extr_exec.c_set_pglocale_pgservice.c'
source_filename = "/home/carl/AnghaBench/postgres/src/common/extr_exec.c_set_pglocale_pgservice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAXPGPATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"postgres\00", align 1
@LC_ALL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"PGSYSCONFDIR\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"PGSYSCONFDIR=%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_pglocale_pgservice(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %11 = load i32, i32* @MAXPGPATH, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %5, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %6, align 8
  %15 = load i32, i32* @MAXPGPATH, align 4
  %16 = zext i32 %15 to i64
  %17 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %7, align 8
  %18 = load i32, i32* @MAXPGPATH, align 4
  %19 = sext i32 %18 to i64
  %20 = add i64 %19, 14
  %21 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %8, align 8
  %22 = load i8*, i8** %4, align 8
  %23 = call i32 @PG_TEXTDOMAIN(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %24 = call i64 @strcmp(i8* %22, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %2
  %27 = load i32, i32* @LC_ALL, align 4
  %28 = call i32 @setlocale(i32 %27, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  br label %29

29:                                               ; preds = %26, %2
  %30 = load i8*, i8** %3, align 8
  %31 = call i64 @find_my_exec(i8* %30, i8* %17)
  %32 = icmp slt i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  store i32 1, i32* %10, align 4
  br label %51

34:                                               ; preds = %29
  %35 = call i32* @getenv(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %36 = icmp eq i32* %35, null
  br i1 %36, label %37, label %50

37:                                               ; preds = %34
  %38 = call i32 @get_etc_path(i8* %17, i8* %14)
  %39 = trunc i64 %20 to i32
  %40 = call i32 @snprintf(i8* %21, i32 %39, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i8* %14)
  %41 = getelementptr inbounds i8, i8* %21, i64 13
  %42 = call i32 @canonicalize_path(i8* %41)
  %43 = call i8* @strdup(i8* %21)
  store i8* %43, i8** %9, align 8
  %44 = load i8*, i8** %9, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %46, label %49

46:                                               ; preds = %37
  %47 = load i8*, i8** %9, align 8
  %48 = call i32 @putenv(i8* %47)
  br label %49

49:                                               ; preds = %46, %37
  br label %50

50:                                               ; preds = %49, %34
  store i32 0, i32* %10, align 4
  br label %51

51:                                               ; preds = %50, %33
  %52 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %52)
  %53 = load i32, i32* %10, align 4
  switch i32 %53, label %55 [
    i32 0, label %54
    i32 1, label %54
  ]

54:                                               ; preds = %51, %51
  ret void

55:                                               ; preds = %51
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @strcmp(i8*, i32) #2

declare dso_local i32 @PG_TEXTDOMAIN(i8*) #2

declare dso_local i32 @setlocale(i32, i8*) #2

declare dso_local i64 @find_my_exec(i8*, i8*) #2

declare dso_local i32* @getenv(i8*) #2

declare dso_local i32 @get_etc_path(i8*, i8*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #2

declare dso_local i32 @canonicalize_path(i8*) #2

declare dso_local i8* @strdup(i8*) #2

declare dso_local i32 @putenv(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
