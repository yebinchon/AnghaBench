; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/nodes/extr_readfuncs.c__readBitmapset.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/nodes/extr_readfuncs.c__readBitmapset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@length = common dso_local global i32 0, align 4
@token = common dso_local global i8* null, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"incomplete Bitmapset structure\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"unrecognized token: \22%.*s\22\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"unterminated Bitmapset structure\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"unrecognized integer: \22%.*s\22\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* ()* @_readBitmapset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @_readBitmapset() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i32* null, i32** %1, align 8
  %4 = call i32 (...) @READ_TEMP_LOCALS()
  %5 = call i8* @pg_strtok(i32* @length)
  store i8* %5, i8** @token, align 8
  %6 = load i8*, i8** @token, align 8
  %7 = icmp eq i8* %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %0
  %9 = load i32, i32* @ERROR, align 4
  %10 = call i32 (i32, i8*, ...) @elog(i32 %9, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %11

11:                                               ; preds = %8, %0
  %12 = load i32, i32* @length, align 4
  %13 = icmp ne i32 %12, 1
  br i1 %13, label %20, label %14

14:                                               ; preds = %11
  %15 = load i8*, i8** @token, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 0
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp ne i32 %18, 40
  br i1 %19, label %20, label %25

20:                                               ; preds = %14, %11
  %21 = load i32, i32* @ERROR, align 4
  %22 = load i32, i32* @length, align 4
  %23 = load i8*, i8** @token, align 8
  %24 = call i32 (i32, i8*, ...) @elog(i32 %21, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %22, i8* %23)
  br label %25

25:                                               ; preds = %20, %14
  %26 = call i8* @pg_strtok(i32* @length)
  store i8* %26, i8** @token, align 8
  %27 = load i8*, i8** @token, align 8
  %28 = icmp eq i8* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = load i32, i32* @ERROR, align 4
  %31 = call i32 (i32, i8*, ...) @elog(i32 %30, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %32

32:                                               ; preds = %29, %25
  %33 = load i32, i32* @length, align 4
  %34 = icmp ne i32 %33, 1
  br i1 %34, label %41, label %35

35:                                               ; preds = %32
  %36 = load i8*, i8** @token, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 0
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp ne i32 %39, 98
  br i1 %40, label %41, label %46

41:                                               ; preds = %35, %32
  %42 = load i32, i32* @ERROR, align 4
  %43 = load i32, i32* @length, align 4
  %44 = load i8*, i8** @token, align 8
  %45 = call i32 (i32, i8*, ...) @elog(i32 %42, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %43, i8* %44)
  br label %46

46:                                               ; preds = %41, %35
  br label %47

47:                                               ; preds = %79, %46
  %48 = call i8* @pg_strtok(i32* @length)
  store i8* %48, i8** @token, align 8
  %49 = load i8*, i8** @token, align 8
  %50 = icmp eq i8* %49, null
  br i1 %50, label %51, label %54

51:                                               ; preds = %47
  %52 = load i32, i32* @ERROR, align 4
  %53 = call i32 (i32, i8*, ...) @elog(i32 %52, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  br label %54

54:                                               ; preds = %51, %47
  %55 = load i32, i32* @length, align 4
  %56 = icmp eq i32 %55, 1
  br i1 %56, label %57, label %64

57:                                               ; preds = %54
  %58 = load i8*, i8** @token, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 0
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp eq i32 %61, 41
  br i1 %62, label %63, label %64

63:                                               ; preds = %57
  br label %83

64:                                               ; preds = %57, %54
  %65 = load i8*, i8** @token, align 8
  %66 = call i64 @strtol(i8* %65, i8** %3, i32 10)
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %2, align 4
  %68 = load i8*, i8** %3, align 8
  %69 = load i8*, i8** @token, align 8
  %70 = load i32, i32* @length, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8, i8* %69, i64 %71
  %73 = icmp ne i8* %68, %72
  br i1 %73, label %74, label %79

74:                                               ; preds = %64
  %75 = load i32, i32* @ERROR, align 4
  %76 = load i32, i32* @length, align 4
  %77 = load i8*, i8** @token, align 8
  %78 = call i32 (i32, i8*, ...) @elog(i32 %75, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %76, i8* %77)
  br label %79

79:                                               ; preds = %74, %64
  %80 = load i32*, i32** %1, align 8
  %81 = load i32, i32* %2, align 4
  %82 = call i32* @bms_add_member(i32* %80, i32 %81)
  store i32* %82, i32** %1, align 8
  br label %47

83:                                               ; preds = %63
  %84 = load i32*, i32** %1, align 8
  ret i32* %84
}

declare dso_local i32 @READ_TEMP_LOCALS(...) #1

declare dso_local i8* @pg_strtok(i32*) #1

declare dso_local i32 @elog(i32, i8*, ...) #1

declare dso_local i64 @strtol(i8*, i8**, i32) #1

declare dso_local i32* @bms_add_member(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
