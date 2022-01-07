; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/psql/extr_command.c_process_file.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/psql/extr_command.c_process_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8* }

@MAXPGPATH = common dso_local global i32 0, align 4
@stdin = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [2 x i8] c"-\00", align 1
@pset = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@PG_BINARY_R = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"%s: %m\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"<stdin>\00", align 1
@PG_LOG_FLAG_TERSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @process_file(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load i32, i32* @MAXPGPATH, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %9, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %10, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %2
  %19 = load i32*, i32** @stdin, align 8
  store i32* %19, i32** %6, align 8
  store i8* null, i8** %4, align 8
  br label %62

20:                                               ; preds = %2
  %21 = load i8*, i8** %4, align 8
  %22 = call i64 @strcmp(i8* %21, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %59

24:                                               ; preds = %20
  %25 = load i8*, i8** %4, align 8
  %26 = call i32 @canonicalize_path(i8* %25)
  %27 = load i32, i32* %5, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %48

29:                                               ; preds = %24
  %30 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pset, i32 0, i32 0), align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %48

32:                                               ; preds = %29
  %33 = load i8*, i8** %4, align 8
  %34 = call i32 @is_absolute_path(i8* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %48, label %36

36:                                               ; preds = %32
  %37 = load i8*, i8** %4, align 8
  %38 = call i32 @has_drive_prefix(i8* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %48, label %40

40:                                               ; preds = %36
  %41 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pset, i32 0, i32 0), align 8
  %42 = trunc i64 %13 to i32
  %43 = call i32 @strlcpy(i8* %15, i8* %41, i32 %42)
  %44 = call i32 @get_parent_directory(i8* %15)
  %45 = load i8*, i8** %4, align 8
  %46 = call i32 @join_path_components(i8* %15, i8* %15, i8* %45)
  %47 = call i32 @canonicalize_path(i8* %15)
  store i8* %15, i8** %4, align 8
  br label %48

48:                                               ; preds = %40, %36, %32, %29, %24
  %49 = load i8*, i8** %4, align 8
  %50 = load i32, i32* @PG_BINARY_R, align 4
  %51 = call i32* @fopen(i8* %49, i32 %50)
  store i32* %51, i32** %6, align 8
  %52 = load i32*, i32** %6, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %58, label %54

54:                                               ; preds = %48
  %55 = load i8*, i8** %4, align 8
  %56 = call i32 @pg_log_error(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %55)
  %57 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %57, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %92

58:                                               ; preds = %48
  br label %61

59:                                               ; preds = %20
  %60 = load i32*, i32** @stdin, align 8
  store i32* %60, i32** %6, align 8
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8** %4, align 8
  br label %61

61:                                               ; preds = %59, %58
  br label %62

62:                                               ; preds = %61, %18
  %63 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pset, i32 0, i32 0), align 8
  store i8* %63, i8** %8, align 8
  %64 = load i8*, i8** %4, align 8
  store i8* %64, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pset, i32 0, i32 0), align 8
  %65 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pset, i32 0, i32 0), align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %67, label %68

67:                                               ; preds = %62
  br label %70

68:                                               ; preds = %62
  %69 = load i32, i32* @PG_LOG_FLAG_TERSE, align 4
  br label %70

70:                                               ; preds = %68, %67
  %71 = phi i32 [ 0, %67 ], [ %69, %68 ]
  %72 = call i32 @pg_logging_config(i32 %71)
  %73 = load i32*, i32** %6, align 8
  %74 = call i32 @MainLoop(i32* %73)
  store i32 %74, i32* %7, align 4
  %75 = load i32*, i32** %6, align 8
  %76 = load i32*, i32** @stdin, align 8
  %77 = icmp ne i32* %75, %76
  br i1 %77, label %78, label %81

78:                                               ; preds = %70
  %79 = load i32*, i32** %6, align 8
  %80 = call i32 @fclose(i32* %79)
  br label %81

81:                                               ; preds = %78, %70
  %82 = load i8*, i8** %8, align 8
  store i8* %82, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pset, i32 0, i32 0), align 8
  %83 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pset, i32 0, i32 0), align 8
  %84 = icmp ne i8* %83, null
  br i1 %84, label %85, label %86

85:                                               ; preds = %81
  br label %88

86:                                               ; preds = %81
  %87 = load i32, i32* @PG_LOG_FLAG_TERSE, align 4
  br label %88

88:                                               ; preds = %86, %85
  %89 = phi i32 [ 0, %85 ], [ %87, %86 ]
  %90 = call i32 @pg_logging_config(i32 %89)
  %91 = load i32, i32* %7, align 4
  store i32 %91, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %92

92:                                               ; preds = %88, %54
  %93 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %93)
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i32 @canonicalize_path(i8*) #2

declare dso_local i32 @is_absolute_path(i8*) #2

declare dso_local i32 @has_drive_prefix(i8*) #2

declare dso_local i32 @strlcpy(i8*, i8*, i32) #2

declare dso_local i32 @get_parent_directory(i8*) #2

declare dso_local i32 @join_path_components(i8*, i8*, i8*) #2

declare dso_local i32* @fopen(i8*, i32) #2

declare dso_local i32 @pg_log_error(i8*, i8*) #2

declare dso_local i32 @pg_logging_config(i32) #2

declare dso_local i32 @MainLoop(i32*) #2

declare dso_local i32 @fclose(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
