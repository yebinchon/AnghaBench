; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_misc1.c_init_homedir.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_misc1.c_init_homedir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@homedir = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [5 x i8] c"HOME\00", align 1
@NUL = common dso_local global i8 0, align 1
@IOSIZE = common dso_local global i64 0, align 8
@IObuff = common dso_local global i8* null, align 8
@MAXPATHL = common dso_local global i64 0, align 8
@NameBuff = common dso_local global i8* null, align 8
@OK = common dso_local global i64 0, align 8
@e_prev_dir = common dso_local global i32 0, align 4
@enc_utf8 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init_homedir() #0 {
  %1 = alloca i8*, align 8
  %2 = load i8*, i8** @homedir, align 8
  %3 = call i32 @vim_free(i8* %2)
  store i8* null, i8** @homedir, align 8
  %4 = call i8* @mch_getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i8* %4, i8** %1, align 8
  %5 = load i8*, i8** %1, align 8
  %6 = icmp ne i8* %5, null
  br i1 %6, label %7, label %15

7:                                                ; preds = %0
  %8 = load i8*, i8** %1, align 8
  %9 = load i8, i8* %8, align 1
  %10 = sext i8 %9 to i32
  %11 = load i8, i8* @NUL, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp eq i32 %10, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %7
  store i8* null, i8** %1, align 8
  br label %15

15:                                               ; preds = %14, %7, %0
  %16 = load i8*, i8** %1, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = load i8*, i8** %1, align 8
  %20 = call i8* @vim_strsave(i8* %19)
  store i8* %20, i8** @homedir, align 8
  br label %21

21:                                               ; preds = %18, %15
  ret void
}

declare dso_local i32 @vim_free(i8*) #1

declare dso_local i8* @mch_getenv(i8*) #1

declare dso_local i8* @vim_strsave(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
