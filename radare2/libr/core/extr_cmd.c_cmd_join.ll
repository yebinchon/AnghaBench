; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/extr_cmd.c_cmd_join.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/extr_cmd.c_cmd_join.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [66 x i8] c"Usage: join [file1] [file2] # join the contents of the two files\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @cmd_join to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmd_join(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_2__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = bitcast i8* %12 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %13, %struct.TYPE_2__** %6, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = call i8* @strdup(i8* %14)
  store i8* %15, i8** %7, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = call i8* @strchr(i8* %16, i8 signext 32)
  store i8* %17, i8** %8, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %2
  br label %81

21:                                               ; preds = %2
  %22 = load i8*, i8** %8, align 8
  %23 = call i8* @r_str_trim_ro(i8* %22)
  store i8* %23, i8** %8, align 8
  %24 = load i8*, i8** %8, align 8
  %25 = call i8* @strchr(i8* %24, i8 signext 32)
  store i8* %25, i8** %9, align 8
  %26 = load i8*, i8** %9, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %21
  br label %81

29:                                               ; preds = %21
  %30 = load i8*, i8** %9, align 8
  store i8 0, i8* %30, align 1
  %31 = load i8*, i8** %9, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 1
  store i8* %32, i8** %10, align 8
  %33 = load i8*, i8** %10, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %29
  br label %81

36:                                               ; preds = %29
  %37 = load i8*, i8** %10, align 8
  %38 = call i8* @r_str_trim_ro(i8* %37)
  store i8* %38, i8** %10, align 8
  %39 = load i8*, i8** %5, align 8
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  switch i32 %41, label %43 [
    i32 63, label %42
  ]

42:                                               ; preds = %36
  br label %81

43:                                               ; preds = %36
  %44 = load i8*, i8** %8, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %43
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  br label %47

47:                                               ; preds = %46, %43
  %48 = load i8*, i8** %10, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %47
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %10, align 8
  br label %51

51:                                               ; preds = %50, %47
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i8*, i8** %8, align 8
  %56 = call i32 @r_fs_check(i32 %54, i8* %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %77, label %58

58:                                               ; preds = %51
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i8*, i8** %10, align 8
  %63 = call i32 @r_fs_check(i32 %61, i8* %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %77, label %65

65:                                               ; preds = %58
  %66 = load i8*, i8** %8, align 8
  %67 = load i8*, i8** %10, align 8
  %68 = call i8* @r_syscmd_join(i8* %66, i8* %67)
  store i8* %68, i8** %11, align 8
  %69 = load i8*, i8** %11, align 8
  %70 = icmp ne i8* %69, null
  br i1 %70, label %71, label %76

71:                                               ; preds = %65
  %72 = load i8*, i8** %11, align 8
  %73 = call i32 @r_cons_print(i8* %72)
  %74 = load i8*, i8** %11, align 8
  %75 = call i32 @free(i8* %74)
  br label %76

76:                                               ; preds = %71, %65
  br label %77

77:                                               ; preds = %76, %58, %51
  br label %78

78:                                               ; preds = %77
  %79 = load i8*, i8** %7, align 8
  %80 = call i32 @free(i8* %79)
  store i32 0, i32* %3, align 4
  br label %85

81:                                               ; preds = %42, %35, %28, %20
  %82 = call i32 @eprintf(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i64 0, i64 0))
  %83 = load i8*, i8** %7, align 8
  %84 = call i32 @free(i8* %83)
  store i32 0, i32* %3, align 4
  br label %85

85:                                               ; preds = %81, %78
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local i8* @strdup(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i8* @r_str_trim_ro(i8*) #1

declare dso_local i32 @r_fs_check(i32, i8*) #1

declare dso_local i8* @r_syscmd_join(i8*, i8*) #1

declare dso_local i32 @r_cons_print(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @eprintf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
