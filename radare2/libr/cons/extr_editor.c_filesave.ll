; ModuleID = '/home/carl/AnghaBench/radare2/libr/cons/extr_editor.c_filesave.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/cons/extr_editor.c_filesave.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@path = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"File: \00", align 1
@stdin = common dso_local global i32 0, align 4
@lines = common dso_local global i8* null, align 8
@bytes = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"File '%s' saved (%d byte(s))\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"Cannot save file\0A\00", align 1
@nlines = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @filesave to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @filesave() #0 {
  %1 = alloca [128 x i8], align 16
  %2 = alloca i32, align 4
  %3 = load i64, i64* @path, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %29, label %5

5:                                                ; preds = %0
  %6 = call i32 (i8*, ...) @eprintf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %7 = getelementptr inbounds [128 x i8], [128 x i8]* %1, i64 0, i64 0
  store i8 0, i8* %7, align 16
  %8 = getelementptr inbounds [128 x i8], [128 x i8]* %1, i64 0, i64 0
  %9 = load i32, i32* @stdin, align 4
  %10 = call i64 @fgets(i8* %8, i32 127, i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %28

12:                                               ; preds = %5
  %13 = getelementptr inbounds [128 x i8], [128 x i8]* %1, i64 0, i64 127
  store i8 0, i8* %13, align 1
  %14 = getelementptr inbounds [128 x i8], [128 x i8]* %1, i64 0, i64 0
  %15 = call i32 @strlen(i8* %14)
  store i32 %15, i32* %2, align 4
  %16 = load i32, i32* %2, align 4
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %12
  %19 = load i32, i32* %2, align 4
  %20 = sub nsw i32 %19, 1
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [128 x i8], [128 x i8]* %1, i64 0, i64 %21
  store i8 0, i8* %22, align 1
  %23 = load i64, i64* @path, align 8
  %24 = call i32 @free(i64 %23)
  %25 = getelementptr inbounds [128 x i8], [128 x i8]* %1, i64 0, i64 0
  %26 = call i64 @strdup(i8* %25)
  store i64 %26, i64* @path, align 8
  br label %27

27:                                               ; preds = %18, %12
  br label %28

28:                                               ; preds = %27, %5
  br label %29

29:                                               ; preds = %28, %0
  %30 = load i8*, i8** @lines, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %55

32:                                               ; preds = %29
  store i32 0, i32* %2, align 4
  br label %33

33:                                               ; preds = %51, %32
  %34 = load i32, i32* %2, align 4
  %35 = load i32, i32* @bytes, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %54

37:                                               ; preds = %33
  %38 = load i8*, i8** @lines, align 8
  %39 = load i32, i32* %2, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %38, i64 %40
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %37
  %46 = load i8*, i8** @lines, align 8
  %47 = load i32, i32* %2, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8, i8* %46, i64 %48
  store i8 10, i8* %49, align 1
  br label %50

50:                                               ; preds = %45, %37
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %2, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %2, align 4
  br label %33

54:                                               ; preds = %33
  br label %55

55:                                               ; preds = %54, %29
  %56 = load i64, i64* @path, align 8
  %57 = load i8*, i8** @lines, align 8
  %58 = bitcast i8* %57 to i32*
  %59 = load i32, i32* @bytes, align 4
  %60 = call i64 @r_file_dump(i64 %56, i32* %58, i32 %59, i32 0)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %55
  %63 = load i64, i64* @path, align 8
  %64 = load i32, i32* @bytes, align 4
  %65 = call i32 (i8*, ...) @eprintf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i64 %63, i32 %64)
  br label %68

66:                                               ; preds = %55
  %67 = call i32 (i8*, ...) @eprintf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  br label %68

68:                                               ; preds = %66, %62
  %69 = load i8*, i8** @lines, align 8
  %70 = call i32 @r_str_split(i8* %69, i8 signext 10)
  store i32 %70, i32* @nlines, align 4
  ret void
}

declare dso_local i32 @eprintf(i8*, ...) #1

declare dso_local i64 @fgets(i8*, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @free(i64) #1

declare dso_local i64 @strdup(i8*) #1

declare dso_local i64 @r_file_dump(i64, i32*, i32, i32) #1

declare dso_local i32 @r_str_split(i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
