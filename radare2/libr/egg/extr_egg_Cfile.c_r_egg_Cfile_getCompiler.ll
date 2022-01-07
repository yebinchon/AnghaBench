; ModuleID = '/home/carl/AnghaBench/radare2/libr/egg/extr_egg_Cfile.c_r_egg_Cfile_getCompiler.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/egg/extr_egg_Cfile.c_r_egg_Cfile_getCompiler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"llvm-gcc\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"clang\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"gcc\00", align 1
@__const.r_egg_Cfile_getCompiler.compilers = private unnamed_addr constant [3 x i8*] [i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0)], align 16
@.str.3 = private unnamed_addr constant [3 x i8] c"CC\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"Couldn't find a compiler ! Please, set CC.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* ()* @r_egg_Cfile_getCompiler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @r_egg_Cfile_getCompiler() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca [3 x i8*], align 16
  %4 = alloca i8*, align 8
  %5 = bitcast [3 x i8*]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %5, i8* align 16 bitcast ([3 x i8*]* @__const.r_egg_Cfile_getCompiler.compilers to i8*), i64 24, i1 false)
  %6 = call i8* @r_sys_getenv(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  store i8* %6, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %0
  %10 = load i8*, i8** %4, align 8
  store i8* %10, i8** %1, align 8
  br label %41

11:                                               ; preds = %0
  store i64 0, i64* %2, align 8
  br label %12

12:                                               ; preds = %36, %11
  %13 = load i64, i64* %2, align 8
  %14 = icmp ult i64 %13, 3
  br i1 %14, label %15, label %39

15:                                               ; preds = %12
  %16 = load i64, i64* %2, align 8
  %17 = getelementptr inbounds [3 x i8*], [3 x i8*]* %3, i64 0, i64 %16
  %18 = load i8*, i8** %17, align 8
  %19 = call i8* @r_file_path(i8* %18)
  store i8* %19, i8** %4, align 8
  %20 = load i8*, i8** %4, align 8
  %21 = load i64, i64* %2, align 8
  %22 = getelementptr inbounds [3 x i8*], [3 x i8*]* %3, i64 0, i64 %21
  %23 = load i8*, i8** %22, align 8
  %24 = call i64 @strcmp(i8* %20, i8* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %15
  %27 = load i8*, i8** %4, align 8
  %28 = call i32 @free(i8* %27)
  %29 = load i64, i64* %2, align 8
  %30 = getelementptr inbounds [3 x i8*], [3 x i8*]* %3, i64 0, i64 %29
  %31 = load i8*, i8** %30, align 8
  %32 = call i8* @strdup(i8* %31)
  store i8* %32, i8** %1, align 8
  br label %41

33:                                               ; preds = %15
  %34 = load i8*, i8** %4, align 8
  %35 = call i32 @free(i8* %34)
  br label %36

36:                                               ; preds = %33
  %37 = load i64, i64* %2, align 8
  %38 = add i64 %37, 1
  store i64 %38, i64* %2, align 8
  br label %12

39:                                               ; preds = %12
  %40 = call i32 @eprintf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0))
  store i8* null, i8** %1, align 8
  br label %41

41:                                               ; preds = %39, %26, %9
  %42 = load i8*, i8** %1, align 8
  ret i8* %42
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i8* @r_sys_getenv(i8*) #2

declare dso_local i8* @r_file_path(i8*) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i8* @strdup(i8*) #2

declare dso_local i32 @eprintf(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
