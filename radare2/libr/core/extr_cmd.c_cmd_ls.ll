; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/extr_cmd.c_cmd_ls.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/extr_cmd.c_cmd_ls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [56 x i8] c"Usage: l[es] # ls to list files, le[ss] to less a file\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"cat %s~..\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"Usage: less [file]\0A\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"md %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @cmd_ls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmd_ls(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = bitcast i8* %8 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %9, %struct.TYPE_3__** %5, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = call i8* @strchr(i8* %10, i8 signext 32)
  store i8* %11, i8** %6, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load i8*, i8** %6, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 1
  %17 = call i8* @r_str_trim_ro(i8* %16)
  store i8* %17, i8** %6, align 8
  br label %18

18:                                               ; preds = %14, %2
  %19 = load i8*, i8** %4, align 8
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  switch i32 %21, label %34 [
    i32 63, label %22
    i32 101, label %24
  ]

22:                                               ; preds = %18
  %23 = call i32 @eprintf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  br label %61

24:                                               ; preds = %18
  %25 = load i8*, i8** %6, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %24
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %29 = load i8*, i8** %6, align 8
  %30 = call i32 @r_core_cmdf(%struct.TYPE_3__* %28, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* %29)
  br label %33

31:                                               ; preds = %24
  %32 = call i32 @eprintf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  br label %33

33:                                               ; preds = %31, %27
  br label %61

34:                                               ; preds = %18
  %35 = load i8*, i8** %6, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %34
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8** %6, align 8
  br label %38

38:                                               ; preds = %37, %34
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i8*, i8** %6, align 8
  %43 = call i32 @r_fs_check(i32 %41, i8* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %38
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %47 = load i8*, i8** %6, align 8
  %48 = call i32 @r_core_cmdf(%struct.TYPE_3__* %46, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* %47)
  br label %60

49:                                               ; preds = %38
  %50 = load i8*, i8** %6, align 8
  %51 = call i8* @r_syscmd_ls(i8* %50)
  store i8* %51, i8** %7, align 8
  %52 = load i8*, i8** %7, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %54, label %59

54:                                               ; preds = %49
  %55 = load i8*, i8** %7, align 8
  %56 = call i32 @r_cons_print(i8* %55)
  %57 = load i8*, i8** %7, align 8
  %58 = call i32 @free(i8* %57)
  br label %59

59:                                               ; preds = %54, %49
  br label %60

60:                                               ; preds = %59, %45
  br label %61

61:                                               ; preds = %60, %33, %22
  ret i32 0
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i8* @r_str_trim_ro(i8*) #1

declare dso_local i32 @eprintf(i8*) #1

declare dso_local i32 @r_core_cmdf(%struct.TYPE_3__*, i8*, i8*) #1

declare dso_local i32 @r_fs_check(i32, i8*) #1

declare dso_local i8* @r_syscmd_ls(i8*) #1

declare dso_local i32 @r_cons_print(i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
