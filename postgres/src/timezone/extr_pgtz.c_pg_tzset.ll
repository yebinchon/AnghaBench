; ModuleID = '/home/carl/AnghaBench/postgres/src/timezone/extr_pgtz.c_pg_tzset.c'
source_filename = "/home/carl/AnghaBench/postgres/src/timezone/extr_pgtz.c_pg_tzset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_5__ }
%struct.state = type { i32 }

@TZ_STRLEN_MAX = common dso_local global i32 0, align 4
@timezone_cache = common dso_local global i32 0, align 4
@HASH_FIND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"GMT\00", align 1
@ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"could not initialize GMT time zone\00", align 1
@HASH_ENTER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_5__* @pg_tzset(i8* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca %struct.state, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %11 = load i32, i32* @TZ_STRLEN_MAX, align 4
  %12 = add nsw i32 %11, 1
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %6, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %7, align 8
  %16 = load i32, i32* @TZ_STRLEN_MAX, align 4
  %17 = add nsw i32 %16, 1
  %18 = zext i32 %17 to i64
  %19 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %8, align 8
  %20 = load i8*, i8** %3, align 8
  %21 = call i32 @strlen(i8* %20)
  %22 = load i32, i32* @TZ_STRLEN_MAX, align 4
  %23 = icmp sgt i32 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %1
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %2, align 8
  store i32 1, i32* %10, align 4
  br label %99

25:                                               ; preds = %1
  %26 = load i32, i32* @timezone_cache, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %25
  %29 = call i32 (...) @init_timezone_hashtable()
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %28
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %2, align 8
  store i32 1, i32* %10, align 4
  br label %99

32:                                               ; preds = %28
  br label %33

33:                                               ; preds = %32, %25
  store i8* %15, i8** %9, align 8
  br label %34

34:                                               ; preds = %38, %33
  %35 = load i8*, i8** %3, align 8
  %36 = load i8, i8* %35, align 1
  %37 = icmp ne i8 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %34
  %39 = load i8*, i8** %3, align 8
  %40 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %40, i8** %3, align 8
  %41 = load i8, i8* %39, align 1
  %42 = call i32 @pg_toupper(i8 zeroext %41)
  %43 = trunc i32 %42 to i8
  %44 = load i8*, i8** %9, align 8
  %45 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %45, i8** %9, align 8
  store i8 %43, i8* %44, align 1
  br label %34

46:                                               ; preds = %34
  %47 = load i8*, i8** %9, align 8
  store i8 0, i8* %47, align 1
  %48 = load i32, i32* @timezone_cache, align 4
  %49 = load i32, i32* @HASH_FIND, align 4
  %50 = call i64 @hash_search(i32 %48, i8* %15, i32 %49, i32* null)
  %51 = inttoptr i64 %50 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %51, %struct.TYPE_4__** %4, align 8
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %53 = icmp ne %struct.TYPE_4__* %52, null
  br i1 %53, label %54, label %57

54:                                               ; preds = %46
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  store %struct.TYPE_5__* %56, %struct.TYPE_5__** %2, align 8
  store i32 1, i32* %10, align 4
  br label %99

57:                                               ; preds = %46
  %58 = call i64 @strcmp(i8* %15, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %68

60:                                               ; preds = %57
  %61 = call i32 @tzparse(i8* %15, %struct.state* %5, i32 1)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %60
  %64 = load i32, i32* @ERROR, align 4
  %65 = call i32 @elog(i32 %64, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %66

66:                                               ; preds = %63, %60
  %67 = call i32 @strcpy(i8* %19, i8* %15)
  br label %83

68:                                               ; preds = %57
  %69 = call i64 @tzload(i8* %15, i8* %19, %struct.state* %5, i32 1)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %82

71:                                               ; preds = %68
  %72 = getelementptr inbounds i8, i8* %15, i64 0
  %73 = load i8, i8* %72, align 16
  %74 = sext i8 %73 to i32
  %75 = icmp eq i32 %74, 58
  br i1 %75, label %79, label %76

76:                                               ; preds = %71
  %77 = call i32 @tzparse(i8* %15, %struct.state* %5, i32 0)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %76, %71
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %2, align 8
  store i32 1, i32* %10, align 4
  br label %99

80:                                               ; preds = %76
  %81 = call i32 @strcpy(i8* %19, i8* %15)
  br label %82

82:                                               ; preds = %80, %68
  br label %83

83:                                               ; preds = %82, %66
  %84 = load i32, i32* @timezone_cache, align 4
  %85 = load i32, i32* @HASH_ENTER, align 4
  %86 = call i64 @hash_search(i32 %84, i8* %15, i32 %85, i32* null)
  %87 = inttoptr i64 %86 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %87, %struct.TYPE_4__** %4, align 8
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  %91 = load i8*, i8** %90, align 8
  %92 = call i32 @strcpy(i8* %91, i8* %19)
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 1
  %96 = call i32 @memcpy(i32* %95, %struct.state* %5, i32 4)
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  store %struct.TYPE_5__* %98, %struct.TYPE_5__** %2, align 8
  store i32 1, i32* %10, align 4
  br label %99

99:                                               ; preds = %83, %79, %54, %31, %24
  %100 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %100)
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  ret %struct.TYPE_5__* %101
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @init_timezone_hashtable(...) #2

declare dso_local i32 @pg_toupper(i8 zeroext) #2

declare dso_local i64 @hash_search(i32, i8*, i32, i32*) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i32 @tzparse(i8*, %struct.state*, i32) #2

declare dso_local i32 @elog(i32, i8*) #2

declare dso_local i32 @strcpy(i8*, i8*) #2

declare dso_local i64 @tzload(i8*, i8*, %struct.state*, i32) #2

declare dso_local i32 @memcpy(i32*, %struct.state*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
