; ModuleID = '/home/carl/AnghaBench/php-src/sapi/litespeed/extr_lsapilib.c_unset_lsapi_envs.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/litespeed/extr_lsapilib.c_unset_lsapi_envs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@environ = common dso_local global i8** null, align 8
@.str = private unnamed_addr constant [7 x i8] c"LSAPI_\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"PHP_LSAPI_\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"PHPRC=\00", align 1
@s_uid = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @unset_lsapi_envs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unset_lsapi_envs() #0 {
  %1 = alloca i8**, align 8
  %2 = alloca i8**, align 8
  %3 = load i8**, i8*** @environ, align 8
  store i8** %3, i8*** %1, align 8
  br label %4

4:                                                ; preds = %47, %0
  %5 = load i8**, i8*** %1, align 8
  %6 = icmp ne i8** %5, null
  br i1 %6, label %7, label %11

7:                                                ; preds = %4
  %8 = load i8**, i8*** %1, align 8
  %9 = load i8*, i8** %8, align 8
  %10 = icmp ne i8* %9, null
  br label %11

11:                                               ; preds = %7, %4
  %12 = phi i1 [ false, %4 ], [ %10, %7 ]
  br i1 %12, label %13, label %48

13:                                               ; preds = %11
  %14 = load i8**, i8*** %1, align 8
  %15 = load i8*, i8** %14, align 8
  %16 = call i32 @strncmp(i8* %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 6)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %31

18:                                               ; preds = %13
  %19 = load i8**, i8*** %1, align 8
  %20 = load i8*, i8** %19, align 8
  %21 = call i32 @strncmp(i8* %20, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 10)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %18
  %24 = load i8**, i8*** %1, align 8
  %25 = load i8*, i8** %24, align 8
  %26 = call i32 @strncmp(i8* %25, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 6)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %44, label %28

28:                                               ; preds = %23
  %29 = load i32, i32* @s_uid, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %44, label %31

31:                                               ; preds = %28, %18, %13
  %32 = load i8**, i8*** %1, align 8
  store i8** %32, i8*** %2, align 8
  br label %33

33:                                               ; preds = %38, %31
  %34 = load i8**, i8*** %2, align 8
  %35 = getelementptr inbounds i8*, i8** %34, i64 1
  %36 = load i8*, i8** %35, align 8
  %37 = load i8**, i8*** %2, align 8
  store i8* %36, i8** %37, align 8
  br label %38

38:                                               ; preds = %33
  %39 = load i8**, i8*** %2, align 8
  %40 = getelementptr inbounds i8*, i8** %39, i32 1
  store i8** %40, i8*** %2, align 8
  %41 = load i8*, i8** %39, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %33, label %43

43:                                               ; preds = %38
  br label %47

44:                                               ; preds = %28, %23
  %45 = load i8**, i8*** %1, align 8
  %46 = getelementptr inbounds i8*, i8** %45, i32 1
  store i8** %46, i8*** %1, align 8
  br label %47

47:                                               ; preds = %44, %43
  br label %4

48:                                               ; preds = %11
  ret void
}

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
