; ModuleID = '/home/carl/AnghaBench/lwan/src/lib/extr_lwan-request.c_get_temp_dir.c'
source_filename = "/home/carl/AnghaBench/lwan/src/lib/extr_lwan-request.c_get_temp_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"TMPDIR\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"TMP\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"TEMP\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"/var/tmp\00", align 1
@P_tmpdir = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* ()* @get_temp_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_temp_dir() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = call i8* @secure_getenv(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %4 = call i8* @is_dir(i8* %3)
  store i8* %4, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = icmp ne i8* %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %0
  %8 = load i8*, i8** %2, align 8
  store i8* %8, i8** %1, align 8
  br label %37

9:                                                ; preds = %0
  %10 = call i8* @secure_getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %11 = call i8* @is_dir(i8* %10)
  store i8* %11, i8** %2, align 8
  %12 = load i8*, i8** %2, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %9
  %15 = load i8*, i8** %2, align 8
  store i8* %15, i8** %1, align 8
  br label %37

16:                                               ; preds = %9
  %17 = call i8* @secure_getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %18 = call i8* @is_dir(i8* %17)
  store i8* %18, i8** %2, align 8
  %19 = load i8*, i8** %2, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = load i8*, i8** %2, align 8
  store i8* %22, i8** %1, align 8
  br label %37

23:                                               ; preds = %16
  %24 = call i8* @is_dir(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  store i8* %24, i8** %2, align 8
  %25 = load i8*, i8** %2, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = load i8*, i8** %2, align 8
  store i8* %28, i8** %1, align 8
  br label %37

29:                                               ; preds = %23
  %30 = load i8*, i8** @P_tmpdir, align 8
  %31 = call i8* @is_dir(i8* %30)
  store i8* %31, i8** %2, align 8
  %32 = load i8*, i8** %2, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = load i8*, i8** %2, align 8
  store i8* %35, i8** %1, align 8
  br label %37

36:                                               ; preds = %29
  store i8* null, i8** %1, align 8
  br label %37

37:                                               ; preds = %36, %34, %27, %21, %14, %7
  %38 = load i8*, i8** %1, align 8
  ret i8* %38
}

declare dso_local i8* @is_dir(i8*) #1

declare dso_local i8* @secure_getenv(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
