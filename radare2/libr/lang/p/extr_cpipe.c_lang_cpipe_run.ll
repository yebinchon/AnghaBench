; ModuleID = '/home/carl/AnghaBench/radare2/libr/lang/p/extr_cpipe.c_lang_cpipe_run.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/lang/p/extr_cpipe.c_lang_cpipe_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c".tmp.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"Cannot open .tmp.c\0A\00", align 1
@.str.3 = private unnamed_addr constant [114 x i8] c"#include <r_socket.h>\0A\0A#define R2P(x,y...) r2pipe_cmdf(r2p,x,##y)\0Aint main() {\0A  R2Pipe *r2p = r2pipe_open(NULL);\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"\0A}\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32)* @lang_cpipe_run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lang_cpipe_run(i32* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = call i32* @r_sandbox_fopen(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %9, i32** %8, align 8
  %10 = load i32*, i32** %8, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %3
  %13 = call i32 @eprintf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %27

14:                                               ; preds = %3
  %15 = load i32*, i32** %8, align 8
  %16 = call i32 @fputs(i8* getelementptr inbounds ([114 x i8], [114 x i8]* @.str.3, i64 0, i64 0), i32* %15)
  %17 = load i8*, i8** %6, align 8
  %18 = load i32*, i32** %8, align 8
  %19 = call i32 @fputs(i8* %17, i32* %18)
  %20 = load i32*, i32** %8, align 8
  %21 = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32* %20)
  %22 = load i32*, i32** %8, align 8
  %23 = call i32 @fclose(i32* %22)
  %24 = load i32*, i32** %5, align 8
  %25 = call i32 @lang_cpipe_file(i32* %24, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %26 = call i32 @r_file_rm(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %4, align 4
  br label %27

27:                                               ; preds = %14, %12
  %28 = load i32, i32* %4, align 4
  ret i32 %28
}

declare dso_local i32* @r_sandbox_fopen(i8*, i8*) #1

declare dso_local i32 @eprintf(i8*) #1

declare dso_local i32 @fputs(i8*, i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @lang_cpipe_file(i32*, i8*) #1

declare dso_local i32 @r_file_rm(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
