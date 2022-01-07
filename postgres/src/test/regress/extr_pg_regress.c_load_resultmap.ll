; ModuleID = '/home/carl/AnghaBench/postgres/src/test/regress/extr_pg_regress.c_load_resultmap.c'
source_filename = "/home/carl/AnghaBench/postgres/src/test/regress/extr_pg_regress.c_load_resultmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_4__*, i8*, i8*, i8* }

@MAXPGPATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"%s/resultmap\00", align 1
@inputdir = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"%s: could not open file \22%s\22 for reading: %s\0A\00", align 1
@progname = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [43 x i8] c"incorrectly formatted resultmap entry: %s\0A\00", align 1
@host_platform = common dso_local global i32 0, align 4
@resultmap = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @load_resultmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @load_resultmap() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = load i32, i32* @MAXPGPATH, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %1, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %2, align 8
  %14 = trunc i64 %11 to i32
  %15 = load i8*, i8** @inputdir, align 8
  %16 = call i32 @snprintf(i8* %13, i32 %14, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* %15)
  %17 = call i32* @fopen(i8* %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %17, i32** %3, align 8
  %18 = load i32*, i32** %3, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %33, label %20

20:                                               ; preds = %0
  %21 = load i64, i64* @errno, align 8
  %22 = load i64, i64* @ENOENT, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  store i32 1, i32* %4, align 4
  br label %120

25:                                               ; preds = %20
  %26 = load i32, i32* @stderr, align 4
  %27 = call i8* @_(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0))
  %28 = load i8*, i8** @progname, align 8
  %29 = load i64, i64* @errno, align 8
  %30 = call i8* @strerror(i64 %29)
  %31 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %26, i8* %27, i8* %28, i8* %13, i8* %30)
  %32 = call i32 @exit(i32 2) #4
  unreachable

33:                                               ; preds = %0
  br label %34

34:                                               ; preds = %116, %33
  %35 = trunc i64 %11 to i32
  %36 = load i32*, i32** %3, align 8
  %37 = call i64 @fgets(i8* %13, i32 %35, i32* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %117

39:                                               ; preds = %34
  %40 = call i32 @strlen(i8* %13)
  store i32 %40, i32* %8, align 4
  br label %41

41:                                               ; preds = %54, %39
  %42 = load i32, i32* %8, align 4
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %41
  %45 = load i32, i32* %8, align 4
  %46 = sub nsw i32 %45, 1
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8, i8* %13, i64 %47
  %49 = load i8, i8* %48, align 1
  %50 = call i64 @isspace(i8 zeroext %49)
  %51 = icmp ne i64 %50, 0
  br label %52

52:                                               ; preds = %44, %41
  %53 = phi i1 [ false, %41 ], [ %51, %44 ]
  br i1 %53, label %54, label %59

54:                                               ; preds = %52
  %55 = load i32, i32* %8, align 4
  %56 = add nsw i32 %55, -1
  store i32 %56, i32* %8, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %13, i64 %57
  store i8 0, i8* %58, align 1
  br label %41

59:                                               ; preds = %52
  %60 = call i8* @strchr(i8* %13, i8 signext 58)
  store i8* %60, i8** %6, align 8
  %61 = load i8*, i8** %6, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %68, label %63

63:                                               ; preds = %59
  %64 = load i32, i32* @stderr, align 4
  %65 = call i8* @_(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0))
  %66 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %64, i8* %65, i8* %13)
  %67 = call i32 @exit(i32 2) #4
  unreachable

68:                                               ; preds = %59
  %69 = load i8*, i8** %6, align 8
  %70 = getelementptr inbounds i8, i8* %69, i32 1
  store i8* %70, i8** %6, align 8
  store i8 0, i8* %69, align 1
  %71 = load i8*, i8** %6, align 8
  %72 = call i8* @strchr(i8* %71, i8 signext 58)
  store i8* %72, i8** %5, align 8
  %73 = load i8*, i8** %5, align 8
  %74 = icmp ne i8* %73, null
  br i1 %74, label %80, label %75

75:                                               ; preds = %68
  %76 = load i32, i32* @stderr, align 4
  %77 = call i8* @_(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0))
  %78 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %76, i8* %77, i8* %13)
  %79 = call i32 @exit(i32 2) #4
  unreachable

80:                                               ; preds = %68
  %81 = load i8*, i8** %5, align 8
  %82 = getelementptr inbounds i8, i8* %81, i32 1
  store i8* %82, i8** %5, align 8
  store i8 0, i8* %81, align 1
  %83 = load i8*, i8** %5, align 8
  %84 = call i8* @strchr(i8* %83, i8 signext 61)
  store i8* %84, i8** %7, align 8
  %85 = load i8*, i8** %7, align 8
  %86 = icmp ne i8* %85, null
  br i1 %86, label %92, label %87

87:                                               ; preds = %80
  %88 = load i32, i32* @stderr, align 4
  %89 = call i8* @_(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0))
  %90 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %88, i8* %89, i8* %13)
  %91 = call i32 @exit(i32 2) #4
  unreachable

92:                                               ; preds = %80
  %93 = load i8*, i8** %7, align 8
  %94 = getelementptr inbounds i8, i8* %93, i32 1
  store i8* %94, i8** %7, align 8
  store i8 0, i8* %93, align 1
  %95 = load i32, i32* @host_platform, align 4
  %96 = load i8*, i8** %5, align 8
  %97 = call i64 @string_matches_pattern(i32 %95, i8* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %116

99:                                               ; preds = %92
  %100 = call %struct.TYPE_4__* @pg_malloc(i32 32)
  store %struct.TYPE_4__* %100, %struct.TYPE_4__** %9, align 8
  %101 = call i8* @pg_strdup(i8* %13)
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 3
  store i8* %101, i8** %103, align 8
  %104 = load i8*, i8** %6, align 8
  %105 = call i8* @pg_strdup(i8* %104)
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 2
  store i8* %105, i8** %107, align 8
  %108 = load i8*, i8** %7, align 8
  %109 = call i8* @pg_strdup(i8* %108)
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 1
  store i8* %109, i8** %111, align 8
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** @resultmap, align 8
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 0
  store %struct.TYPE_4__* %112, %struct.TYPE_4__** %114, align 8
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  store %struct.TYPE_4__* %115, %struct.TYPE_4__** @resultmap, align 8
  br label %116

116:                                              ; preds = %99, %92
  br label %34

117:                                              ; preds = %34
  %118 = load i32*, i32** %3, align 8
  %119 = call i32 @fclose(i32* %118)
  store i32 0, i32* %4, align 4
  br label %120

120:                                              ; preds = %117, %24
  %121 = load i8*, i8** %1, align 8
  call void @llvm.stackrestore(i8* %121)
  %122 = load i32, i32* %4, align 4
  switch i32 %122, label %124 [
    i32 0, label %123
    i32 1, label %123
  ]

123:                                              ; preds = %120, %120
  ret void

124:                                              ; preds = %120
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #2

declare dso_local i32* @fopen(i8*, i8*) #2

declare dso_local i32 @fprintf(i32, i8*, i8*, ...) #2

declare dso_local i8* @_(i8*) #2

declare dso_local i8* @strerror(i64) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i64 @fgets(i8*, i32, i32*) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i64 @isspace(i8 zeroext) #2

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i64 @string_matches_pattern(i32, i8*) #2

declare dso_local %struct.TYPE_4__* @pg_malloc(i32) #2

declare dso_local i8* @pg_strdup(i8*) #2

declare dso_local i32 @fclose(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
