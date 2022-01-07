; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/extr_cmd_anal.c_getViewerPath.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/extr_cmd_anal.c_getViewerPath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"open\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"geeqie\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"gqview\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"eog\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"xdg-open\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* ()* @getViewerPath to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @getViewerPath() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %3 = alloca [6 x i8*], align 16
  %4 = alloca i8*, align 8
  %5 = bitcast [6 x i8*]* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %5, i8 0, i64 48, i1 false)
  %6 = bitcast i8* %5 to [6 x i8*]*
  %7 = getelementptr inbounds [6 x i8*], [6 x i8*]* %6, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8** %7, align 16
  %8 = getelementptr inbounds [6 x i8*], [6 x i8*]* %6, i32 0, i32 1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i8** %8, align 8
  %9 = getelementptr inbounds [6 x i8*], [6 x i8*]* %6, i32 0, i32 2
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i8** %9, align 16
  %10 = getelementptr inbounds [6 x i8*], [6 x i8*]* %6, i32 0, i32 3
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i8** %10, align 8
  %11 = getelementptr inbounds [6 x i8*], [6 x i8*]* %6, i32 0, i32 4
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8** %11, align 16
  store i32 0, i32* %2, align 4
  br label %12

12:                                               ; preds = %39, %0
  %13 = load i32, i32* %2, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [6 x i8*], [6 x i8*]* %3, i64 0, i64 %14
  %16 = load i8*, i8** %15, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %42

18:                                               ; preds = %12
  %19 = load i32, i32* %2, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [6 x i8*], [6 x i8*]* %3, i64 0, i64 %20
  %22 = load i8*, i8** %21, align 8
  %23 = call i8* @r_file_path(i8* %22)
  store i8* %23, i8** %4, align 8
  %24 = load i8*, i8** %4, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %36

26:                                               ; preds = %18
  %27 = load i8*, i8** %4, align 8
  %28 = load i32, i32* %2, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [6 x i8*], [6 x i8*]* %3, i64 0, i64 %29
  %31 = load i8*, i8** %30, align 8
  %32 = call i64 @strcmp(i8* %27, i8* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %26
  %35 = load i8*, i8** %4, align 8
  store i8* %35, i8** %1, align 8
  br label %43

36:                                               ; preds = %26, %18
  %37 = load i8*, i8** %4, align 8
  %38 = call i32 @free(i8* %37)
  br label %39

39:                                               ; preds = %36
  %40 = load i32, i32* %2, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %2, align 4
  br label %12

42:                                               ; preds = %12
  store i8* null, i8** %1, align 8
  br label %43

43:                                               ; preds = %42, %34
  %44 = load i8*, i8** %1, align 8
  ret i8* %44
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i8* @r_file_path(i8*) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i32 @free(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
