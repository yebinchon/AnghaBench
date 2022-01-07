; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/initdb/extr_initdb.c_readfile.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/initdb/extr_initdb.c_readfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"could not open file \22%s\22 for reading: %m\00", align 1
@EOF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8** (i8*)* @readfile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8** @readfile(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i32 1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %11 = load i8*, i8** %2, align 8
  %12 = call i32* @fopen(i8* %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %12, i32** %3, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = load i8*, i8** %2, align 8
  %16 = call i32 @pg_log_error(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i8* %15)
  %17 = call i32 @exit(i32 1) #3
  unreachable

18:                                               ; preds = %1
  br label %19

19:                                               ; preds = %38, %18
  %20 = load i32*, i32** %3, align 8
  %21 = call i32 @fgetc(i32* %20)
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* @EOF, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %39

24:                                               ; preds = %19
  %25 = load i32, i32* %5, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %10, align 4
  %28 = icmp eq i32 %27, 10
  br i1 %28, label %29, label %38

29:                                               ; preds = %24
  %30 = load i32, i32* %6, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* %4, align 4
  %34 = icmp sgt i32 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = load i32, i32* %5, align 4
  store i32 %36, i32* %4, align 4
  br label %37

37:                                               ; preds = %35, %29
  store i32 0, i32* %5, align 4
  br label %38

38:                                               ; preds = %37, %24
  br label %19

39:                                               ; preds = %19
  %40 = load i32, i32* %5, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = load i32, i32* %6, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %6, align 4
  br label %45

45:                                               ; preds = %42, %39
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* %4, align 4
  %48 = icmp sgt i32 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %45
  %50 = load i32, i32* %5, align 4
  store i32 %50, i32* %4, align 4
  br label %51

51:                                               ; preds = %49, %45
  %52 = load i32, i32* %6, align 4
  %53 = add nsw i32 %52, 1
  %54 = sext i32 %53 to i64
  %55 = mul i64 %54, 8
  %56 = trunc i64 %55 to i32
  %57 = call i64 @pg_malloc(i32 %56)
  %58 = inttoptr i64 %57 to i8**
  store i8** %58, i8*** %8, align 8
  %59 = load i32, i32* %4, align 4
  %60 = add nsw i32 %59, 1
  %61 = call i64 @pg_malloc(i32 %60)
  %62 = inttoptr i64 %61 to i8*
  store i8* %62, i8** %9, align 8
  %63 = load i32*, i32** %3, align 8
  %64 = call i32 @rewind(i32* %63)
  store i32 0, i32* %7, align 4
  br label %65

65:                                               ; preds = %78, %51
  %66 = load i8*, i8** %9, align 8
  %67 = load i32, i32* %4, align 4
  %68 = add nsw i32 %67, 1
  %69 = load i32*, i32** %3, align 8
  %70 = call i32* @fgets(i8* %66, i32 %68, i32* %69)
  %71 = icmp ne i32* %70, null
  br i1 %71, label %72, label %76

72:                                               ; preds = %65
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* %6, align 4
  %75 = icmp slt i32 %73, %74
  br label %76

76:                                               ; preds = %72, %65
  %77 = phi i1 [ false, %65 ], [ %75, %72 ]
  br i1 %77, label %78, label %86

78:                                               ; preds = %76
  %79 = load i8*, i8** %9, align 8
  %80 = call i8* @pg_strdup(i8* %79)
  %81 = load i8**, i8*** %8, align 8
  %82 = load i32, i32* %7, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %7, align 4
  %84 = sext i32 %82 to i64
  %85 = getelementptr inbounds i8*, i8** %81, i64 %84
  store i8* %80, i8** %85, align 8
  br label %65

86:                                               ; preds = %76
  %87 = load i32*, i32** %3, align 8
  %88 = call i32 @fclose(i32* %87)
  %89 = load i8*, i8** %9, align 8
  %90 = call i32 @free(i8* %89)
  %91 = load i8**, i8*** %8, align 8
  %92 = load i32, i32* %7, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i8*, i8** %91, i64 %93
  store i8* null, i8** %94, align 8
  %95 = load i8**, i8*** %8, align 8
  ret i8** %95
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @pg_log_error(i8*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @fgetc(i32*) #1

declare dso_local i64 @pg_malloc(i32) #1

declare dso_local i32 @rewind(i32*) #1

declare dso_local i32* @fgets(i8*, i32, i32*) #1

declare dso_local i8* @pg_strdup(i8*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
