; ModuleID = '/home/carl/AnghaBench/mongoose/extr_mongoose.c_mg_is_file_hidden.c'
source_filename = "/home/carl/AnghaBench/mongoose/extr_mongoose.c_mg_is_file_hidden.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_serve_http_opts = type { i8*, i8* }

@DIRSEP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.mg_serve_http_opts*, i32)* @mg_is_file_hidden to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mg_is_file_hidden(i8* %0, %struct.mg_serve_http_opts* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.mg_serve_http_opts*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.mg_serve_http_opts* %1, %struct.mg_serve_http_opts** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.mg_serve_http_opts*, %struct.mg_serve_http_opts** %5, align 8
  %11 = getelementptr inbounds %struct.mg_serve_http_opts, %struct.mg_serve_http_opts* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  store i8* %12, i8** %7, align 8
  %13 = load %struct.mg_serve_http_opts*, %struct.mg_serve_http_opts** %5, align 8
  %14 = getelementptr inbounds %struct.mg_serve_http_opts, %struct.mg_serve_http_opts* %13, i32 0, i32 1
  %15 = load i8*, i8** %14, align 8
  store i8* %15, i8** %8, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = load i32, i32* @DIRSEP, align 4
  %18 = call i8* @strrchr(i8* %16, i32 %17)
  store i8* %18, i8** %9, align 8
  %19 = load i8*, i8** %9, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load i8*, i8** %9, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 1
  store i8* %23, i8** %4, align 8
  br label %24

24:                                               ; preds = %21, %3
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %24
  %28 = load i8*, i8** %4, align 8
  %29 = call i32 @strcmp(i8* %28, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %59

31:                                               ; preds = %27
  %32 = load i8*, i8** %4, align 8
  %33 = call i32 @strcmp(i8* %32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %59

35:                                               ; preds = %31, %24
  %36 = load i8*, i8** %7, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %47

38:                                               ; preds = %35
  %39 = load i8*, i8** %7, align 8
  %40 = load i8*, i8** %7, align 8
  %41 = call i64 @strlen(i8* %40)
  %42 = load i8*, i8** %4, align 8
  %43 = call i64 @mg_match_prefix(i8* %39, i64 %41, i8* %42)
  %44 = load i8*, i8** %7, align 8
  %45 = call i64 @strlen(i8* %44)
  %46 = icmp eq i64 %43, %45
  br i1 %46, label %59, label %47

47:                                               ; preds = %38, %35
  %48 = load i8*, i8** %8, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %50, label %57

50:                                               ; preds = %47
  %51 = load i8*, i8** %8, align 8
  %52 = load i8*, i8** %8, align 8
  %53 = call i64 @strlen(i8* %52)
  %54 = load i8*, i8** %4, align 8
  %55 = call i64 @mg_match_prefix(i8* %51, i64 %53, i8* %54)
  %56 = icmp sgt i64 %55, 0
  br label %57

57:                                               ; preds = %50, %47
  %58 = phi i1 [ false, %47 ], [ %56, %50 ]
  br label %59

59:                                               ; preds = %57, %38, %31, %27
  %60 = phi i1 [ true, %38 ], [ true, %31 ], [ true, %27 ], [ %58, %57 ]
  %61 = zext i1 %60 to i32
  ret i32 %61
}

declare dso_local i8* @strrchr(i8*, i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i64 @mg_match_prefix(i8*, i64, i8*) #1

declare dso_local i64 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
