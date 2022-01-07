; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/util/extr_platform-nix.c_os_dlopen.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/util/extr_platform-nix.c_os_dlopen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dstr = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c".so\00", align 1
@RTLD_LAZY = common dso_local global i32 0, align 4
@LOG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"os_dlopen(%s->%s): %s\0A\00", align 1
@RTLD_FIRST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @os_dlopen(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.dstr, align 4
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = icmp ne i8* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  store i8* null, i8** %2, align 8
  br label %33

9:                                                ; preds = %1
  %10 = load i8*, i8** %3, align 8
  %11 = call i32 @dstr_init_copy(%struct.dstr* %4, i8* %10)
  %12 = call i32 @dstr_find(%struct.dstr* %4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %9
  %15 = call i32 @dstr_cat(%struct.dstr* %4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  br label %16

16:                                               ; preds = %14, %9
  %17 = getelementptr inbounds %struct.dstr, %struct.dstr* %4, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @RTLD_LAZY, align 4
  %20 = call i8* @dlopen(i32 %18, i32 %19)
  store i8* %20, i8** %5, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %30, label %23

23:                                               ; preds = %16
  %24 = load i32, i32* @LOG_ERROR, align 4
  %25 = load i8*, i8** %3, align 8
  %26 = getelementptr inbounds %struct.dstr, %struct.dstr* %4, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 (...) @dlerror()
  %29 = call i32 @blog(i32 %24, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* %25, i32 %27, i32 %28)
  br label %30

30:                                               ; preds = %23, %16
  %31 = call i32 @dstr_free(%struct.dstr* %4)
  %32 = load i8*, i8** %5, align 8
  store i8* %32, i8** %2, align 8
  br label %33

33:                                               ; preds = %30, %8
  %34 = load i8*, i8** %2, align 8
  ret i8* %34
}

declare dso_local i32 @dstr_init_copy(%struct.dstr*, i8*) #1

declare dso_local i32 @dstr_find(%struct.dstr*, i8*) #1

declare dso_local i32 @dstr_cat(%struct.dstr*, i8*) #1

declare dso_local i8* @dlopen(i32, i32) #1

declare dso_local i32 @blog(i32, i8*, i8*, i32, i32) #1

declare dso_local i32 @dlerror(...) #1

declare dso_local i32 @dstr_free(%struct.dstr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
