; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/extr_cmd_meta.c_print_addrinfo.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/extr_cmd_meta.c_print_addrinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UT64_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@filter_offset = common dso_local global i64 0, align 8
@filter_format = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"CL %s %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"file: %s\0Aline: %s\0A\00", align 1
@filter_count = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*)* @print_addrinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @print_addrinfo(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = call i64 @sdb_atoi(i8* %11)
  store i64 %12, i64* %8, align 8
  %13 = load i64, i64* %8, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %3
  %16 = load i64, i64* %8, align 8
  %17 = load i64, i64* @UT64_MAX, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %15, %3
  store i32 1, i32* %4, align 4
  br label %67

20:                                               ; preds = %15
  %21 = load i8*, i8** %7, align 8
  %22 = call i8* @strdup(i8* %21)
  store i8* %22, i8** %9, align 8
  %23 = load i8*, i8** %9, align 8
  %24 = call i8* @strchr(i8* %23, i8 signext 124)
  store i8* %24, i8** %10, align 8
  %25 = load i8*, i8** %10, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %20
  %28 = load i8*, i8** %9, align 8
  %29 = call i8* @strchr(i8* %28, i8 signext 58)
  store i8* %29, i8** %10, align 8
  br label %30

30:                                               ; preds = %27, %20
  %31 = load i8*, i8** %10, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %30
  %34 = load i8*, i8** %9, align 8
  %35 = call i32 (i8*, i8*, ...) @r_cons_printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %34)
  br label %36

36:                                               ; preds = %33, %30
  %37 = load i8*, i8** %10, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %64

39:                                               ; preds = %36
  %40 = load i64, i64* @filter_offset, align 8
  %41 = load i64, i64* @UT64_MAX, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %47, label %43

43:                                               ; preds = %39
  %44 = load i64, i64* @filter_offset, align 8
  %45 = load i64, i64* %8, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %64

47:                                               ; preds = %43, %39
  %48 = load i64, i64* @filter_format, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %47
  %51 = load i8*, i8** %10, align 8
  store i8 58, i8* %51, align 1
  %52 = load i8*, i8** %6, align 8
  %53 = load i8*, i8** %9, align 8
  %54 = call i32 (i8*, i8*, ...) @r_cons_printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* %52, i8* %53)
  br label %61

55:                                               ; preds = %47
  %56 = load i8*, i8** %10, align 8
  store i8 0, i8* %56, align 1
  %57 = load i8*, i8** %9, align 8
  %58 = load i8*, i8** %10, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 1
  %60 = call i32 (i8*, i8*, ...) @r_cons_printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i8* %57, i8* %59)
  br label %61

61:                                               ; preds = %55, %50
  %62 = load i32, i32* @filter_count, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* @filter_count, align 4
  br label %64

64:                                               ; preds = %61, %43, %36
  %65 = load i8*, i8** %9, align 8
  %66 = call i32 @free(i8* %65)
  store i32 1, i32* %4, align 4
  br label %67

67:                                               ; preds = %64, %19
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local i64 @sdb_atoi(i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @r_cons_printf(i8*, i8*, ...) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
