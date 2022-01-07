; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/ecpg/preproc/extr_ecpg.c_add_preprocessor_define.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/ecpg/preproc/extr_ecpg.c_add_preprocessor_define.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._defines = type { i8*, i8*, i32, %struct._defines*, i32* }

@defines = common dso_local global %struct._defines* null, align 8
@.str = private unnamed_addr constant [2 x i8] c"1\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @add_preprocessor_define to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_preprocessor_define(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct._defines*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %7 = load %struct._defines*, %struct._defines** @defines, align 8
  store %struct._defines* %7, %struct._defines** %3, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = call i8* @mm_strdup(i8* %8)
  store i8* %9, i8** %5, align 8
  %10 = call %struct._defines* @mm_alloc(i32 40)
  store %struct._defines* %10, %struct._defines** @defines, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = call i8* @strchr(i8* %11, i8 signext 61)
  store i8* %12, i8** %4, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %37

15:                                               ; preds = %1
  %16 = load i8*, i8** %4, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 -1
  store i8* %17, i8** %6, align 8
  br label %18

18:                                               ; preds = %24, %15
  %19 = load i8*, i8** %6, align 8
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %21, 32
  br i1 %22, label %23, label %27

23:                                               ; preds = %18
  br label %24

24:                                               ; preds = %23
  %25 = load i8*, i8** %6, align 8
  %26 = getelementptr inbounds i8, i8* %25, i32 -1
  store i8* %26, i8** %6, align 8
  br label %18

27:                                               ; preds = %18
  %28 = load i8*, i8** %6, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 1
  store i8 0, i8* %29, align 1
  %30 = load i8*, i8** %5, align 8
  %31 = load %struct._defines*, %struct._defines** @defines, align 8
  %32 = getelementptr inbounds %struct._defines, %struct._defines* %31, i32 0, i32 0
  store i8* %30, i8** %32, align 8
  %33 = load i8*, i8** %4, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 1
  %35 = load %struct._defines*, %struct._defines** @defines, align 8
  %36 = getelementptr inbounds %struct._defines, %struct._defines* %35, i32 0, i32 1
  store i8* %34, i8** %36, align 8
  br label %44

37:                                               ; preds = %1
  %38 = load i8*, i8** %5, align 8
  %39 = load %struct._defines*, %struct._defines** @defines, align 8
  %40 = getelementptr inbounds %struct._defines, %struct._defines* %39, i32 0, i32 0
  store i8* %38, i8** %40, align 8
  %41 = call i8* @mm_strdup(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %42 = load %struct._defines*, %struct._defines** @defines, align 8
  %43 = getelementptr inbounds %struct._defines, %struct._defines* %42, i32 0, i32 1
  store i8* %41, i8** %43, align 8
  br label %44

44:                                               ; preds = %37, %27
  %45 = load %struct._defines*, %struct._defines** @defines, align 8
  %46 = getelementptr inbounds %struct._defines, %struct._defines* %45, i32 0, i32 2
  store i32 1, i32* %46, align 8
  %47 = load %struct._defines*, %struct._defines** @defines, align 8
  %48 = getelementptr inbounds %struct._defines, %struct._defines* %47, i32 0, i32 4
  store i32* null, i32** %48, align 8
  %49 = load %struct._defines*, %struct._defines** %3, align 8
  %50 = load %struct._defines*, %struct._defines** @defines, align 8
  %51 = getelementptr inbounds %struct._defines, %struct._defines* %50, i32 0, i32 3
  store %struct._defines* %49, %struct._defines** %51, align 8
  ret void
}

declare dso_local i8* @mm_strdup(i8*) #1

declare dso_local %struct._defines* @mm_alloc(i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
