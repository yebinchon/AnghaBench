; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/extr_cmd_seek.c_cmd_sort.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/extr_cmd_seek.c_cmd_sort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [45 x i8] c"Usage: sort # sort the contents of the file\0A\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"md %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @cmd_sort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmd_sort(i8* %0, i8* %1) #0 {
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
  switch i32 %21, label %24 [
    i32 63, label %22
  ]

22:                                               ; preds = %18
  %23 = call i32 @eprintf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  br label %51

24:                                               ; preds = %18
  %25 = load i8*, i8** %6, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %24
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8** %6, align 8
  br label %28

28:                                               ; preds = %27, %24
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i8*, i8** %6, align 8
  %33 = call i32 @r_fs_check(i32 %31, i8* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %28
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %37 = load i8*, i8** %6, align 8
  %38 = call i32 @r_core_cmdf(%struct.TYPE_3__* %36, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %37)
  br label %50

39:                                               ; preds = %28
  %40 = load i8*, i8** %6, align 8
  %41 = call i8* @r_syscmd_sort(i8* %40)
  store i8* %41, i8** %7, align 8
  %42 = load i8*, i8** %7, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %49

44:                                               ; preds = %39
  %45 = load i8*, i8** %7, align 8
  %46 = call i32 @r_cons_print(i8* %45)
  %47 = load i8*, i8** %7, align 8
  %48 = call i32 @free(i8* %47)
  br label %49

49:                                               ; preds = %44, %39
  br label %50

50:                                               ; preds = %49, %35
  br label %51

51:                                               ; preds = %50, %22
  ret i32 0
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i8* @r_str_trim_ro(i8*) #1

declare dso_local i32 @eprintf(i8*) #1

declare dso_local i32 @r_fs_check(i32, i8*) #1

declare dso_local i32 @r_core_cmdf(%struct.TYPE_3__*, i8*, i8*) #1

declare dso_local i8* @r_syscmd_sort(i8*) #1

declare dso_local i32 @r_cons_print(i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
