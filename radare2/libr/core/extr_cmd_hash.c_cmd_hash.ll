; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/extr_cmd_hash.c_cmd_hash.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/extr_cmd_hash.c_cmd_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [45 x i8] c"Usage #!interpreter [<args>] [<file] [<<eof]\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [3 x i8] c" #\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"comment - do nothing\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c" #!\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"list all available interpreters\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c" #!python\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"run python commandline\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c" foo.py\00", align 1
@.str.9 = private unnamed_addr constant [46 x i8] c"run foo.py python script (same as '. foo.py')\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c" arg0 a1 <<q\00", align 1
@.str.11 = private unnamed_addr constant [37 x i8] c"set arg0 and arg1 and read until 'q'\00", align 1
@__const.cmd_hash.helpmsg3 = private unnamed_addr constant [19 x i8*] [i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.11, i32 0, i32 0), i8* null], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @cmd_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmd_hash(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca [19 x i8*], align 16
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to i32*
  store i32* %9, i32** %6, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = load i8, i8* %10, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp eq i32 %12, 33
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load i32*, i32** %6, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = call i32 @cmd_hash_bang(i32* %15, i8* %16)
  store i32 %17, i32* %3, align 4
  br label %29

18:                                               ; preds = %2
  %19 = load i8*, i8** %5, align 8
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %21, 63
  br i1 %22, label %23, label %28

23:                                               ; preds = %18
  %24 = bitcast [19 x i8*]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %24, i8* align 16 bitcast ([19 x i8*]* @__const.cmd_hash.helpmsg3 to i8*), i64 152, i1 false)
  %25 = load i32*, i32** %6, align 8
  %26 = getelementptr inbounds [19 x i8*], [19 x i8*]* %7, i64 0, i64 0
  %27 = call i32 @r_core_cmd_help(i32* %25, i8** %26)
  store i32 0, i32* %3, align 4
  br label %29

28:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %29

29:                                               ; preds = %28, %23, %14
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local i32 @cmd_hash_bang(i32*, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @r_core_cmd_help(i32*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
