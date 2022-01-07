; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_ctl/extr_pg_ctl.c_get_pgpid.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_ctl/extr_pg_ctl.c_get_pgpid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@pg_data = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"%s: directory \22%s\22 does not exist\0A\00", align 1
@progname = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"%s: could not access directory \22%s\22: %s\0A\00", align 1
@version_file = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [56 x i8] c"%s: directory \22%s\22 is not a database cluster directory\0A\00", align 1
@pid_file = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"%s: could not open PID file \22%s\22: %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"%s: the PID file \22%s\22 is empty\0A\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"%s: invalid data in PID file \22%s\22\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @get_pgpid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_pgpid(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.stat, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* @pg_data, align 4
  %8 = call i64 @stat(i32 %7, %struct.stat* %6)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %32

10:                                               ; preds = %1
  %11 = load i64, i64* @errno, align 8
  %12 = load i64, i64* @ENOENT, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %10
  %15 = call i32 @_(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @progname, align 4
  %17 = load i32, i32* @pg_data, align 4
  %18 = call i32 (i32, i32, i32, ...) @write_stderr(i32 %15, i32 %16, i32 %17)
  br label %26

19:                                               ; preds = %10
  %20 = call i32 @_(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %21 = load i32, i32* @progname, align 4
  %22 = load i32, i32* @pg_data, align 4
  %23 = load i64, i64* @errno, align 8
  %24 = call i32 @strerror(i64 %23)
  %25 = call i32 (i32, i32, i32, ...) @write_stderr(i32 %20, i32 %21, i32 %22, i32 %24)
  br label %26

26:                                               ; preds = %19, %14
  %27 = load i32, i32* %3, align 4
  %28 = icmp ne i32 %27, 0
  %29 = zext i1 %28 to i64
  %30 = select i1 %28, i32 4, i32 1
  %31 = call i32 @exit(i32 %30) #3
  unreachable

32:                                               ; preds = %1
  %33 = load i32, i32* @version_file, align 4
  %34 = call i64 @stat(i32 %33, %struct.stat* %6)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %50

36:                                               ; preds = %32
  %37 = load i64, i64* @errno, align 8
  %38 = load i64, i64* @ENOENT, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %50

40:                                               ; preds = %36
  %41 = call i32 @_(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0))
  %42 = load i32, i32* @progname, align 4
  %43 = load i32, i32* @pg_data, align 4
  %44 = call i32 (i32, i32, i32, ...) @write_stderr(i32 %41, i32 %42, i32 %43)
  %45 = load i32, i32* %3, align 4
  %46 = icmp ne i32 %45, 0
  %47 = zext i1 %46 to i64
  %48 = select i1 %46, i32 4, i32 1
  %49 = call i32 @exit(i32 %48) #3
  unreachable

50:                                               ; preds = %36, %32
  %51 = load i32, i32* @pid_file, align 4
  %52 = call i32* @fopen(i32 %51, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i32* %52, i32** %4, align 8
  %53 = load i32*, i32** %4, align 8
  %54 = icmp eq i32* %53, null
  br i1 %54, label %55, label %68

55:                                               ; preds = %50
  %56 = load i64, i64* @errno, align 8
  %57 = load i64, i64* @ENOENT, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %55
  store i32 0, i32* %2, align 4
  br label %97

60:                                               ; preds = %55
  %61 = call i32 @_(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0))
  %62 = load i32, i32* @progname, align 4
  %63 = load i32, i32* @pid_file, align 4
  %64 = load i64, i64* @errno, align 8
  %65 = call i32 @strerror(i64 %64)
  %66 = call i32 (i32, i32, i32, ...) @write_stderr(i32 %61, i32 %62, i32 %63, i32 %65)
  %67 = call i32 @exit(i32 1) #3
  unreachable

68:                                               ; preds = %50
  %69 = load i32*, i32** %4, align 8
  %70 = call i32 @fscanf(i32* %69, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i64* %5)
  %71 = icmp ne i32 %70, 1
  br i1 %71, label %72, label %92

72:                                               ; preds = %68
  %73 = load i32*, i32** %4, align 8
  %74 = call i64 @ftell(i32* %73)
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %85

76:                                               ; preds = %72
  %77 = load i32*, i32** %4, align 8
  %78 = call i64 @feof(i32* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %76
  %81 = call i32 @_(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0))
  %82 = load i32, i32* @progname, align 4
  %83 = load i32, i32* @pid_file, align 4
  %84 = call i32 (i32, i32, i32, ...) @write_stderr(i32 %81, i32 %82, i32 %83)
  br label %90

85:                                               ; preds = %76, %72
  %86 = call i32 @_(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0))
  %87 = load i32, i32* @progname, align 4
  %88 = load i32, i32* @pid_file, align 4
  %89 = call i32 (i32, i32, i32, ...) @write_stderr(i32 %86, i32 %87, i32 %88)
  br label %90

90:                                               ; preds = %85, %80
  %91 = call i32 @exit(i32 1) #3
  unreachable

92:                                               ; preds = %68
  %93 = load i32*, i32** %4, align 8
  %94 = call i32 @fclose(i32* %93)
  %95 = load i64, i64* %5, align 8
  %96 = trunc i64 %95 to i32
  store i32 %96, i32* %2, align 4
  br label %97

97:                                               ; preds = %92, %59
  %98 = load i32, i32* %2, align 4
  ret i32 %98
}

declare dso_local i64 @stat(i32, %struct.stat*) #1

declare dso_local i32 @write_stderr(i32, i32, i32, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @strerror(i64) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32* @fopen(i32, i8*) #1

declare dso_local i32 @fscanf(i32*, i8*, i64*) #1

declare dso_local i64 @ftell(i32*) #1

declare dso_local i64 @feof(i32*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
