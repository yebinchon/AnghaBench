; ModuleID = '/home/carl/AnghaBench/radare2/libr/io/p/extr_io_default.c_r_io_def_mmap_check_default.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/io/p/extr_io_default.c_r_io_def_mmap_check_default.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"file://\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"nocache://\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"://\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @r_io_def_mmap_check_default to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r_io_def_mmap_check_default(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = icmp ne i8* %4, null
  br i1 %5, label %6, label %11

6:                                                ; preds = %1
  %7 = load i8*, i8** %2, align 8
  %8 = load i8, i8* %7, align 1
  %9 = sext i8 %8 to i32
  %10 = icmp ne i32 %9, 0
  br label %11

11:                                               ; preds = %6, %1
  %12 = phi i1 [ false, %1 ], [ %10, %6 ]
  %13 = zext i1 %12 to i32
  %14 = call i32 @r_return_val_if_fail(i32 %13, i32 0)
  %15 = load i8*, i8** %2, align 8
  %16 = call i64 @r_str_startswith(i8* %15, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %11
  %19 = call i32 @strlen(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %20 = load i8*, i8** %2, align 8
  %21 = sext i32 %19 to i64
  %22 = getelementptr inbounds i8, i8* %20, i64 %21
  store i8* %22, i8** %2, align 8
  br label %23

23:                                               ; preds = %18, %11
  %24 = load i8*, i8** %2, align 8
  %25 = call i32 @strncmp(i8* %24, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 10)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %23
  br label %31

28:                                               ; preds = %23
  %29 = load i8*, i8** %2, align 8
  %30 = call i8* @strstr(i8* %29, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  br label %31

31:                                               ; preds = %28, %27
  %32 = phi i8* [ null, %27 ], [ %30, %28 ]
  store i8* %32, i8** %3, align 8
  %33 = load i8*, i8** %3, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %42

35:                                               ; preds = %31
  %36 = load i8*, i8** %3, align 8
  %37 = load i8*, i8** %2, align 8
  %38 = ptrtoint i8* %36 to i64
  %39 = ptrtoint i8* %37 to i64
  %40 = sub i64 %38, %39
  %41 = icmp sgt i64 %40, 10
  br label %42

42:                                               ; preds = %35, %31
  %43 = phi i1 [ true, %31 ], [ %41, %35 ]
  %44 = zext i1 %43 to i32
  ret i32 %44
}

declare dso_local i32 @r_return_val_if_fail(i32, i32) #1

declare dso_local i64 @r_str_startswith(i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i8* @strstr(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
