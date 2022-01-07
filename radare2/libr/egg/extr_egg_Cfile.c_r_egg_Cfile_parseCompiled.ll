; ModuleID = '/home/carl/AnghaBench/radare2/libr/egg/extr_egg_Cfile.c_r_egg_Cfile_parseCompiled.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/egg/extr_egg_Cfile.c_r_egg_Cfile_parseCompiled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"%s.tmp\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"rdata\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"text\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"rodata\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"get_pc_thunk.bx\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"__getesp__\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c".cstring\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"___main\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"section\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"__alloca\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"zero\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"cfi\00", align 1
@__const.r_egg_Cfile_parseCompiled.words = private unnamed_addr constant [7 x i8*] [i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0)], align 16
@.str.13 = private unnamed_addr constant [5 x i8] c"%s.s\00", align 1
@.str.14 = private unnamed_addr constant [26 x i8] c"Error while opening %s.s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @r_egg_Cfile_parseCompiled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r_egg_Cfile_parseCompiled(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca [7 x i8*], align 16
  %7 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = call i8* @r_str_newf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %8)
  store i8* %9, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = call i8* @r_file_slurp(i8* %10, i32* null)
  store i8* %11, i8** %5, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = call i8* @r_str_replace(i8* %12, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 0)
  store i8* %13, i8** %5, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = call i8* @r_str_replace(i8* %14, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 0)
  store i8* %15, i8** %5, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = call i8* @r_str_replace(i8* %16, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 1)
  store i8* %17, i8** %5, align 8
  %18 = bitcast [7 x i8*]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %18, i8* align 16 bitcast ([7 x i8*]* @__const.r_egg_Cfile_parseCompiled.words to i8*), i64 56, i1 false)
  store i64 0, i64* %7, align 8
  br label %19

19:                                               ; preds = %28, %1
  %20 = load i64, i64* %7, align 8
  %21 = icmp ult i64 %20, 7
  br i1 %21, label %22, label %31

22:                                               ; preds = %19
  %23 = load i8*, i8** %5, align 8
  %24 = load i64, i64* %7, align 8
  %25 = getelementptr inbounds [7 x i8*], [7 x i8*]* %6, i64 0, i64 %24
  %26 = load i8*, i8** %25, align 8
  %27 = call i32 @r_str_stripLine(i8* %23, i8* %26)
  br label %28

28:                                               ; preds = %22
  %29 = load i64, i64* %7, align 8
  %30 = add i64 %29, 1
  store i64 %30, i64* %7, align 8
  br label %19

31:                                               ; preds = %19
  %32 = load i8*, i8** %4, align 8
  %33 = call i32 @free(i8* %32)
  %34 = load i8*, i8** %3, align 8
  %35 = call i8* @r_str_newf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i8* %34)
  store i8* %35, i8** %4, align 8
  %36 = load i8*, i8** %4, align 8
  %37 = load i8*, i8** %5, align 8
  %38 = bitcast i8* %37 to i32*
  %39 = load i8*, i8** %5, align 8
  %40 = call i32 @strlen(i8* %39)
  %41 = call i32 @r_file_dump(i8* %36, i32* %38, i32 %40, i32 1)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %31
  %44 = load i8*, i8** %3, align 8
  %45 = call i32 @eprintf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.14, i64 0, i64 0), i8* %44)
  br label %51

46:                                               ; preds = %31
  %47 = load i8*, i8** %5, align 8
  %48 = call i32 @free(i8* %47)
  %49 = load i8*, i8** %4, align 8
  %50 = call i32 @free(i8* %49)
  store i32 1, i32* %2, align 4
  br label %56

51:                                               ; preds = %43
  %52 = load i8*, i8** %5, align 8
  %53 = call i32 @free(i8* %52)
  %54 = load i8*, i8** %4, align 8
  %55 = call i32 @free(i8* %54)
  store i32 0, i32* %2, align 4
  br label %56

56:                                               ; preds = %51, %46
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i8* @r_str_newf(i8*, i8*) #1

declare dso_local i8* @r_file_slurp(i8*, i32*) #1

declare dso_local i8* @r_str_replace(i8*, i8*, i8*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @r_str_stripLine(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @r_file_dump(i8*, i32*, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @eprintf(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
