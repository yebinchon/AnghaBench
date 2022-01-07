; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/extr_cmd_type.c_cmd_tail.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/extr_cmd_type.c_cmd_tail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [51 x i8] c"Usage: tail [file] # to list last n lines in file\0A\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"md %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @cmd_tail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmd_tail(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = call i8* @strdup(i8* %12)
  store i8* %13, i8** %5, align 8
  %14 = load i8*, i8** %3, align 8
  %15 = bitcast i8* %14 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %15, %struct.TYPE_3__** %6, align 8
  store i32 5, i32* %7, align 4
  %16 = load i8*, i8** %5, align 8
  %17 = call i8* @strchr(i8* %16, i8 signext 32)
  store i8* %17, i8** %8, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %39

20:                                               ; preds = %2
  %21 = load i8*, i8** %8, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 1
  %23 = call i64 @r_str_trim_ro(i8* %22)
  %24 = inttoptr i64 %23 to i8*
  store i8* %24, i8** %8, align 8
  %25 = load i8*, i8** %8, align 8
  %26 = call i8* @strchr(i8* %25, i8 signext 32)
  store i8* %26, i8** %10, align 8
  %27 = load i8*, i8** %10, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %38

29:                                               ; preds = %20
  %30 = load i8*, i8** %10, align 8
  store i8 0, i8* %30, align 1
  %31 = load i8*, i8** %10, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 1
  %33 = call i64 @r_str_trim_ro(i8* %32)
  %34 = inttoptr i64 %33 to i8*
  store i8* %34, i8** %9, align 8
  %35 = load i8*, i8** %8, align 8
  %36 = call i32 @atoi(i8* %35)
  store i32 %36, i32* %7, align 4
  %37 = load i8*, i8** %9, align 8
  store i8* %37, i8** %8, align 8
  br label %38

38:                                               ; preds = %29, %20
  br label %39

39:                                               ; preds = %38, %2
  %40 = load i8*, i8** %5, align 8
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  switch i32 %42, label %45 [
    i32 63, label %43
  ]

43:                                               ; preds = %39
  %44 = call i32 @eprintf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  br label %73

45:                                               ; preds = %39
  %46 = load i8*, i8** %8, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %45
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8** %8, align 8
  br label %49

49:                                               ; preds = %48, %45
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i8*, i8** %8, align 8
  %54 = call i32 @r_fs_check(i32 %52, i8* %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %49
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %58 = load i8*, i8** %8, align 8
  %59 = call i32 @r_core_cmdf(%struct.TYPE_3__* %57, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %58)
  br label %72

60:                                               ; preds = %49
  %61 = load i8*, i8** %8, align 8
  %62 = load i32, i32* %7, align 4
  %63 = call i8* @r_syscmd_tail(i8* %61, i32 %62)
  store i8* %63, i8** %11, align 8
  %64 = load i8*, i8** %11, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %66, label %71

66:                                               ; preds = %60
  %67 = load i8*, i8** %11, align 8
  %68 = call i32 @r_cons_print(i8* %67)
  %69 = load i8*, i8** %11, align 8
  %70 = call i32 @free(i8* %69)
  br label %71

71:                                               ; preds = %66, %60
  br label %72

72:                                               ; preds = %71, %56
  br label %73

73:                                               ; preds = %72, %43
  %74 = load i8*, i8** %5, align 8
  %75 = call i32 @free(i8* %74)
  ret i32 0
}

declare dso_local i8* @strdup(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @r_str_trim_ro(i8*) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @eprintf(i8*) #1

declare dso_local i32 @r_fs_check(i32, i8*) #1

declare dso_local i32 @r_core_cmdf(%struct.TYPE_3__*, i8*, i8*) #1

declare dso_local i8* @r_syscmd_tail(i8*, i32) #1

declare dso_local i32 @r_cons_print(i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
