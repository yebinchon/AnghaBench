; ModuleID = '/home/carl/AnghaBench/radare2/shlr/sdb/src/extr_main.c_createdb.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/sdb/src/extr_main.c_createdb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@s = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Cannot create database\0A\00", align 1
@options = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8**, i32)* @createdb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @createdb(i8* %0, i8** %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i8*, i8** %5, align 8
  %11 = call i32 @sdb_new(i32* null, i8* %10, i32 0)
  store i32 %11, i32* @s, align 4
  %12 = load i32, i32* @s, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %3
  %15 = load i32, i32* @s, align 4
  %16 = call i32 @sdb_disk_create(i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %14, %3
  %19 = call i32 @eprintf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %4, align 4
  br label %48

20:                                               ; preds = %14
  %21 = load i32, i32* @s, align 4
  %22 = load i8**, i8*** %6, align 8
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @insertkeys(i32 %21, i8** %22, i32 %23, i8 signext 61)
  %25 = load i32, i32* @s, align 4
  %26 = load i32, i32* @options, align 4
  %27 = call i32 @sdb_config(i32 %25, i32 %26)
  br label %28

28:                                               ; preds = %42, %20
  %29 = call i8* @stdin_slurp(i32* null)
  store i8* %29, i8** %8, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %45

31:                                               ; preds = %28
  %32 = load i8*, i8** %8, align 8
  %33 = call i8* @strchr(i8* %32, i8 signext 61)
  store i8* %33, i8** %9, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %42

35:                                               ; preds = %31
  %36 = load i8*, i8** %9, align 8
  %37 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %37, i8** %9, align 8
  store i8 0, i8* %36, align 1
  %38 = load i32, i32* @s, align 4
  %39 = load i8*, i8** %8, align 8
  %40 = load i8*, i8** %9, align 8
  %41 = call i32 @sdb_disk_insert(i32 %38, i8* %39, i8* %40)
  br label %42

42:                                               ; preds = %35, %31
  %43 = load i8*, i8** %8, align 8
  %44 = call i32 @free(i8* %43)
  br label %28

45:                                               ; preds = %28
  %46 = load i32, i32* @s, align 4
  %47 = call i32 @sdb_disk_finish(i32 %46)
  store i32 0, i32* %4, align 4
  br label %48

48:                                               ; preds = %45, %18
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local i32 @sdb_new(i32*, i8*, i32) #1

declare dso_local i32 @sdb_disk_create(i32) #1

declare dso_local i32 @eprintf(i8*) #1

declare dso_local i32 @insertkeys(i32, i8**, i32, i8 signext) #1

declare dso_local i32 @sdb_config(i32, i32) #1

declare dso_local i8* @stdin_slurp(i32*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @sdb_disk_insert(i32, i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @sdb_disk_finish(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
