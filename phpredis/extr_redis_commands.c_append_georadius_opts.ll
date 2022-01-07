; ModuleID = '/home/carl/AnghaBench/phpredis/extr_redis_commands.c_append_georadius_opts.c'
source_filename = "/home/carl/AnghaBench/phpredis/extr_redis_commands.c_append_georadius_opts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i32*, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [10 x i8] c"WITHCOORD\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"WITHDIST\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"WITHHASH\00", align 1
@SORT_ASC = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [4 x i8] c"ASC\00", align 1
@SORT_DESC = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [5 x i8] c"DESC\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"COUNT\00", align 1
@STORE_NONE = common dso_local global i64 0, align 8
@STORE_COORD = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [6 x i8] c"STORE\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"STOREDIST\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @append_georadius_opts(i32* %0, i32* %1, i16* %2, %struct.TYPE_3__* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i16*, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i16* %2, i16** %7, align 8
  store %struct.TYPE_3__* %3, %struct.TYPE_3__** %8, align 8
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 6
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %4
  %17 = load i32*, i32** %6, align 8
  %18 = call i32 @REDIS_CMD_APPEND_SSTR_STATIC(i32* %17, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  br label %19

19:                                               ; preds = %16, %4
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 5
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load i32*, i32** %6, align 8
  %26 = call i32 @REDIS_CMD_APPEND_SSTR_STATIC(i32* %25, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  br label %27

27:                                               ; preds = %24, %19
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 4
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load i32*, i32** %6, align 8
  %34 = call i32 @REDIS_CMD_APPEND_SSTR_STATIC(i32* %33, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  br label %35

35:                                               ; preds = %32, %27
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @SORT_ASC, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %35
  %42 = load i32*, i32** %6, align 8
  %43 = call i32 @REDIS_CMD_APPEND_SSTR_STATIC(i32* %42, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  br label %54

44:                                               ; preds = %35
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @SORT_DESC, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %44
  %51 = load i32*, i32** %6, align 8
  %52 = call i32 @REDIS_CMD_APPEND_SSTR_STATIC(i32* %51, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  br label %53

53:                                               ; preds = %50, %44
  br label %54

54:                                               ; preds = %53, %41
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 3
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %67

59:                                               ; preds = %54
  %60 = load i32*, i32** %6, align 8
  %61 = call i32 @REDIS_CMD_APPEND_SSTR_STATIC(i32* %60, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %62 = load i32*, i32** %6, align 8
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 3
  %65 = load i64, i64* %64, align 8
  %66 = call i32 @redis_cmd_append_sstr_long(i32* %62, i64 %65)
  br label %67

67:                                               ; preds = %59, %54
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @STORE_NONE, align 8
  %72 = icmp ne i64 %70, %71
  br i1 %72, label %73, label %115

73:                                               ; preds = %67
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 2
  %76 = load i32*, i32** %75, align 8
  %77 = icmp ne i32* %76, null
  br i1 %77, label %78, label %115

78:                                               ; preds = %73
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 2
  %81 = load i32*, i32** %80, align 8
  %82 = call i8* @ZSTR_VAL(i32* %81)
  store i8* %82, i8** %9, align 8
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 2
  %85 = load i32*, i32** %84, align 8
  %86 = call i64 @ZSTR_LEN(i32* %85)
  store i64 %86, i64* %10, align 8
  %87 = load i32*, i32** %5, align 8
  %88 = call i32 @redis_key_prefix(i32* %87, i8** %9, i64* %10)
  store i32 %88, i32* %11, align 4
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @STORE_COORD, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %97

94:                                               ; preds = %78
  %95 = load i32*, i32** %6, align 8
  %96 = call i32 @REDIS_CMD_APPEND_SSTR_STATIC(i32* %95, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  br label %100

97:                                               ; preds = %78
  %98 = load i32*, i32** %6, align 8
  %99 = call i32 @REDIS_CMD_APPEND_SSTR_STATIC(i32* %98, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  br label %100

100:                                              ; preds = %97, %94
  %101 = load i32*, i32** %6, align 8
  %102 = load i8*, i8** %9, align 8
  %103 = load i64, i64* %10, align 8
  %104 = call i32 @redis_cmd_append_sstr(i32* %101, i8* %102, i64 %103)
  %105 = load i16*, i16** %7, align 8
  %106 = load i8*, i8** %9, align 8
  %107 = load i64, i64* %10, align 8
  %108 = call i32 @CMD_SET_SLOT(i16* %105, i8* %106, i64 %107)
  %109 = load i32, i32* %11, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %100
  %112 = load i8*, i8** %9, align 8
  %113 = call i32 @free(i8* %112)
  br label %114

114:                                              ; preds = %111, %100
  br label %115

115:                                              ; preds = %114, %73, %67
  ret void
}

declare dso_local i32 @REDIS_CMD_APPEND_SSTR_STATIC(i32*, i8*) #1

declare dso_local i32 @redis_cmd_append_sstr_long(i32*, i64) #1

declare dso_local i8* @ZSTR_VAL(i32*) #1

declare dso_local i64 @ZSTR_LEN(i32*) #1

declare dso_local i32 @redis_key_prefix(i32*, i8**, i64*) #1

declare dso_local i32 @redis_cmd_append_sstr(i32*, i8*, i64) #1

declare dso_local i32 @CMD_SET_SLOT(i16*, i8*, i64) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
