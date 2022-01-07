; ModuleID = '/home/carl/AnghaBench/linux/tools/vm/extr_page-types.c_parse_pid.c'
source_filename = "/home/carl/AnghaBench/linux/tools/vm/extr_page-types.c_parse_pid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@opt_pid = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"/proc/%d/pagemap\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@pagemap_fd = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"/proc/%d/maps\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"%lx-%lx %c%c%c%c %llx %x:%x %lu\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"unexpected line: %s\0A\00", align 1
@page_size = common dso_local global i64 0, align 8
@pg_start = common dso_local global i64* null, align 8
@nr_vmas = common dso_local global i64 0, align 8
@pg_end = common dso_local global i64* null, align 8
@MAX_VMAS = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [15 x i8] c"too many VMAs\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @parse_pid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_pid(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca [5000 x i8], align 16
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %16 = load i8*, i8** %2, align 8
  %17 = call i32 @parse_number(i8* %16)
  store i32 %17, i32* @opt_pid, align 4
  %18 = getelementptr inbounds [5000 x i8], [5000 x i8]* %4, i64 0, i64 0
  %19 = load i32, i32* @opt_pid, align 4
  %20 = call i32 @sprintf(i8* %18, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = getelementptr inbounds [5000 x i8], [5000 x i8]* %4, i64 0, i64 0
  %22 = load i32, i32* @O_RDONLY, align 4
  %23 = call i32 @checked_open(i8* %21, i32 %22)
  store i32 %23, i32* @pagemap_fd, align 4
  %24 = getelementptr inbounds [5000 x i8], [5000 x i8]* %4, i64 0, i64 0
  %25 = load i32, i32* @opt_pid, align 4
  %26 = call i32 @sprintf(i8* %24, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %25)
  %27 = getelementptr inbounds [5000 x i8], [5000 x i8]* %4, i64 0, i64 0
  %28 = call i32* @fopen(i8* %27, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i32* %28, i32** %3, align 8
  %29 = load i32*, i32** %3, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %36, label %31

31:                                               ; preds = %1
  %32 = getelementptr inbounds [5000 x i8], [5000 x i8]* %4, i64 0, i64 0
  %33 = call i32 @perror(i8* %32)
  %34 = load i32, i32* @EXIT_FAILURE, align 4
  %35 = call i32 @exit(i32 %34) #3
  unreachable

36:                                               ; preds = %1
  br label %37

37:                                               ; preds = %71, %47, %36
  %38 = getelementptr inbounds [5000 x i8], [5000 x i8]* %4, i64 0, i64 0
  %39 = load i32*, i32** %3, align 8
  %40 = call i32* @fgets(i8* %38, i32 5000, i32* %39)
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %72

42:                                               ; preds = %37
  %43 = getelementptr inbounds [5000 x i8], [5000 x i8]* %4, i64 0, i64 0
  %44 = call i32 @sscanf(i8* %43, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i64* %5, i64* %6, i8* %10, i8* %11, i8* %12, i8* %13, i64* %7, i32* %8, i32* %9, i64* %14)
  store i32 %44, i32* %15, align 4
  %45 = load i32, i32* %15, align 4
  %46 = icmp slt i32 %45, 10
  br i1 %46, label %47, label %51

47:                                               ; preds = %42
  %48 = load i32, i32* @stderr, align 4
  %49 = getelementptr inbounds [5000 x i8], [5000 x i8]* %4, i64 0, i64 0
  %50 = call i32 (i32, i8*, ...) @fprintf(i32 %48, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i8* %49)
  br label %37

51:                                               ; preds = %42
  %52 = load i64, i64* %5, align 8
  %53 = load i64, i64* @page_size, align 8
  %54 = udiv i64 %52, %53
  %55 = load i64*, i64** @pg_start, align 8
  %56 = load i64, i64* @nr_vmas, align 8
  %57 = getelementptr inbounds i64, i64* %55, i64 %56
  store i64 %54, i64* %57, align 8
  %58 = load i64, i64* %6, align 8
  %59 = load i64, i64* @page_size, align 8
  %60 = udiv i64 %58, %59
  %61 = load i64*, i64** @pg_end, align 8
  %62 = load i64, i64* @nr_vmas, align 8
  %63 = getelementptr inbounds i64, i64* %61, i64 %62
  store i64 %60, i64* %63, align 8
  %64 = load i64, i64* @nr_vmas, align 8
  %65 = add i64 %64, 1
  store i64 %65, i64* @nr_vmas, align 8
  %66 = load i64, i64* @MAX_VMAS, align 8
  %67 = icmp uge i64 %65, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %51
  %69 = load i32, i32* @stderr, align 4
  %70 = call i32 (i32, i8*, ...) @fprintf(i32 %69, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  br label %72

71:                                               ; preds = %51
  br label %37

72:                                               ; preds = %68, %37
  %73 = load i32*, i32** %3, align 8
  %74 = call i32 @fclose(i32* %73)
  ret void
}

declare dso_local i32 @parse_number(i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @checked_open(i8*, i32) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @perror(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32* @fgets(i8*, i32, i32*) #1

declare dso_local i32 @sscanf(i8*, i8*, i64*, i64*, i8*, i8*, i8*, i8*, i64*, i32*, i32*, i64*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
