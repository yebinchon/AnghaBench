; ModuleID = '/home/carl/AnghaBench/radare2/shlr/sdb/src/extr_disk.c_r_sys_mkdirp.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/sdb/src/extr_disk.c_r_sys_mkdirp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DIRSEP = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [33 x i8] c"r_sys_mkdirp: fail '%s' of '%s'\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @r_sys_mkdirp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r_sys_mkdirp(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i32 1, i32* %4, align 4
  %8 = load i8, i8* @DIRSEP, align 1
  store i8 %8, i8* %5, align 1
  %9 = load i8*, i8** %3, align 8
  store i8* %9, i8** %6, align 8
  %10 = load i8*, i8** %6, align 8
  store i8* %10, i8** %7, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  %14 = load i8, i8* %5, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp eq i32 %13, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load i8*, i8** %7, align 8
  %19 = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %19, i8** %7, align 8
  br label %20

20:                                               ; preds = %17, %1
  br label %21

21:                                               ; preds = %40, %20
  %22 = load i8*, i8** %7, align 8
  %23 = load i8, i8* %5, align 1
  %24 = call i8* @strchr(i8* %22, i8 signext %23)
  store i8* %24, i8** %7, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %45

26:                                               ; preds = %21
  %27 = load i8*, i8** %7, align 8
  store i8 0, i8* %27, align 1
  %28 = load i8*, i8** %6, align 8
  %29 = call i32 @r_sys_mkdir(i8* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %40, label %31

31:                                               ; preds = %26
  %32 = call i64 (...) @r_sys_mkdir_failed()
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %31
  %35 = load i8*, i8** %6, align 8
  %36 = load i8*, i8** %3, align 8
  %37 = call i32 @eprintf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* %35, i8* %36)
  %38 = load i8, i8* %5, align 1
  %39 = load i8*, i8** %7, align 8
  store i8 %38, i8* %39, align 1
  store i32 0, i32* %2, align 4
  br label %47

40:                                               ; preds = %31, %26
  %41 = load i8, i8* %5, align 1
  %42 = load i8*, i8** %7, align 8
  store i8 %41, i8* %42, align 1
  %43 = load i8*, i8** %7, align 8
  %44 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %44, i8** %7, align 8
  br label %21

45:                                               ; preds = %21
  %46 = load i32, i32* %4, align 4
  store i32 %46, i32* %2, align 4
  br label %47

47:                                               ; preds = %45, %34
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @r_sys_mkdir(i8*) #1

declare dso_local i64 @r_sys_mkdir_failed(...) #1

declare dso_local i32 @eprintf(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
