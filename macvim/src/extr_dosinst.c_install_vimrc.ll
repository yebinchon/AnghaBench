; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_dosinst.c_install_vimrc.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_dosinst.c_install_vimrc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@oldvimrc = common dso_local global i64* null, align 8
@NUL = common dso_local global i64 0, align 8
@vimrc = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"\0AERROR: Cannot open \22%s\22 for writing.\0A\00", align 1
@compat_choice = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"set compatible\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"set nocompatible\0A\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"source $VIMRUNTIME/vimrc_example.vim\0A\00", align 1
@remap_choice = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [30 x i8] c"source $VIMRUNTIME/mswin.vim\0A\00", align 1
@mouse_choice = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [14 x i8] c"behave xterm\0A\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"behave mswin\0A\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"diff.exe\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"set diffexpr=MyDiff()\0A\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"function MyDiff()\0A\00", align 1
@.str.13 = private unnamed_addr constant [28 x i8] c"  let opt = '-a --binary '\0A\00", align 1
@.str.14 = private unnamed_addr constant [58 x i8] c"  if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif\0A\00", align 1
@.str.15 = private unnamed_addr constant [59 x i8] c"  if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif\0A\00", align 1
@.str.16 = private unnamed_addr constant [25 x i8] c"  let arg1 = v:fname_in\0A\00", align 1
@.str.17 = private unnamed_addr constant [56 x i8] c"  if arg1 =~ ' ' | let arg1 = '\22' . arg1 . '\22' | endif\0A\00", align 1
@.str.18 = private unnamed_addr constant [26 x i8] c"  let arg2 = v:fname_new\0A\00", align 1
@.str.19 = private unnamed_addr constant [56 x i8] c"  if arg2 =~ ' ' | let arg2 = '\22' . arg2 . '\22' | endif\0A\00", align 1
@.str.20 = private unnamed_addr constant [26 x i8] c"  let arg3 = v:fname_out\0A\00", align 1
@.str.21 = private unnamed_addr constant [56 x i8] c"  if arg3 =~ ' ' | let arg3 = '\22' . arg3 . '\22' | endif\0A\00", align 1
@.str.22 = private unnamed_addr constant [25 x i8] c"  if $VIMRUNTIME =~ ' '\0A\00", align 1
@.str.23 = private unnamed_addr constant [23 x i8] c"    if &sh =~ '\\<cmd'\0A\00", align 1
@.str.24 = private unnamed_addr constant [30 x i8] c"      if empty(&shellxquote)\0A\00", align 1
@.str.25 = private unnamed_addr constant [29 x i8] c"        let l:shxq_sav = ''\0A\00", align 1
@.str.26 = private unnamed_addr constant [26 x i8] c"        set shellxquote&\0A\00", align 1
@.str.27 = private unnamed_addr constant [13 x i8] c"      endif\0A\00", align 1
@.str.28 = private unnamed_addr constant [46 x i8] c"      let cmd = '\22' . $VIMRUNTIME . '\\diff\22'\0A\00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"    else\0A\00", align 1
@.str.30 = private unnamed_addr constant [67 x i8] c"      let cmd = substitute($VIMRUNTIME, ' ', '\22 ', '') . '\\diff\22'\0A\00", align 1
@.str.31 = private unnamed_addr constant [11 x i8] c"    endif\0A\00", align 1
@.str.32 = private unnamed_addr constant [8 x i8] c"  else\0A\00", align 1
@.str.33 = private unnamed_addr constant [37 x i8] c"    let cmd = $VIMRUNTIME . '\\diff'\0A\00", align 1
@.str.34 = private unnamed_addr constant [9 x i8] c"  endif\0A\00", align 1
@.str.35 = private unnamed_addr constant [75 x i8] c"  silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3\0A\00", align 1
@.str.36 = private unnamed_addr constant [27 x i8] c"  if exists('l:shxq_sav')\0A\00", align 1
@.str.37 = private unnamed_addr constant [33 x i8] c"    let &shellxquote=l:shxq_sav\0A\00", align 1
@.str.38 = private unnamed_addr constant [13 x i8] c"endfunction\0A\00", align 1
@.str.39 = private unnamed_addr constant [21 x i8] c"%s has been written\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @install_vimrc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @install_vimrc(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  %6 = load i64*, i64** @oldvimrc, align 8
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @NUL, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load i64*, i64** @oldvimrc, align 8
  %12 = bitcast i64* %11 to i8*
  store i8* %12, i8** %5, align 8
  br label %15

13:                                               ; preds = %1
  %14 = load i8*, i8** @vimrc, align 8
  store i8* %14, i8** %5, align 8
  br label %15

15:                                               ; preds = %13, %10
  %16 = load i8*, i8** %5, align 8
  %17 = call i32* @fopen(i8* %16, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %17, i32** %3, align 8
  %18 = load i32*, i32** %3, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = load i8*, i8** %5, align 8
  %22 = call i32 @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i8* %21)
  br label %123

23:                                               ; preds = %15
  %24 = load i32, i32* @compat_choice, align 4
  switch i32 %24, label %36 [
    i32 132, label %25
    i32 133, label %28
    i32 134, label %31
  ]

25:                                               ; preds = %23
  %26 = load i32*, i32** %3, align 8
  %27 = call i32 @fprintf(i32* %26, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  br label %36

28:                                               ; preds = %23
  %29 = load i32*, i32** %3, align 8
  %30 = call i32 @fprintf(i32* %29, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  br label %36

31:                                               ; preds = %23
  %32 = load i32*, i32** %3, align 8
  %33 = call i32 @fprintf(i32* %32, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %34 = load i32*, i32** %3, align 8
  %35 = call i32 @fprintf(i32* %34, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0))
  br label %36

36:                                               ; preds = %23, %31, %28, %25
  %37 = load i32, i32* @remap_choice, align 4
  switch i32 %37, label %42 [
    i32 129, label %38
    i32 128, label %39
  ]

38:                                               ; preds = %36
  br label %42

39:                                               ; preds = %36
  %40 = load i32*, i32** %3, align 8
  %41 = call i32 @fprintf(i32* %40, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
  br label %42

42:                                               ; preds = %36, %39, %38
  %43 = load i32, i32* @mouse_choice, align 4
  switch i32 %43, label %50 [
    i32 130, label %44
    i32 131, label %47
  ]

44:                                               ; preds = %42
  %45 = load i32*, i32** %3, align 8
  %46 = call i32 @fprintf(i32* %45, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  br label %50

47:                                               ; preds = %42
  %48 = load i32*, i32** %3, align 8
  %49 = call i32 @fprintf(i32* %48, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0))
  br label %50

50:                                               ; preds = %42, %47, %44
  %51 = call i32* @fopen(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  store i32* %51, i32** %4, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %53, label %118

53:                                               ; preds = %50
  %54 = load i32*, i32** %4, align 8
  %55 = call i32 @fclose(i32* %54)
  %56 = load i32*, i32** %3, align 8
  %57 = call i32 @fprintf(i32* %56, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0))
  %58 = load i32*, i32** %3, align 8
  %59 = call i32 @fprintf(i32* %58, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i64 0, i64 0))
  %60 = load i32*, i32** %3, align 8
  %61 = call i32 @fprintf(i32* %60, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i64 0, i64 0))
  %62 = load i32*, i32** %3, align 8
  %63 = call i32 @fprintf(i32* %62, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.13, i64 0, i64 0))
  %64 = load i32*, i32** %3, align 8
  %65 = call i32 @fprintf(i32* %64, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.14, i64 0, i64 0))
  %66 = load i32*, i32** %3, align 8
  %67 = call i32 @fprintf(i32* %66, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.15, i64 0, i64 0))
  %68 = load i32*, i32** %3, align 8
  %69 = call i32 @fprintf(i32* %68, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.16, i64 0, i64 0))
  %70 = load i32*, i32** %3, align 8
  %71 = call i32 @fprintf(i32* %70, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.17, i64 0, i64 0))
  %72 = load i32*, i32** %3, align 8
  %73 = call i32 @fprintf(i32* %72, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.18, i64 0, i64 0))
  %74 = load i32*, i32** %3, align 8
  %75 = call i32 @fprintf(i32* %74, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.19, i64 0, i64 0))
  %76 = load i32*, i32** %3, align 8
  %77 = call i32 @fprintf(i32* %76, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.20, i64 0, i64 0))
  %78 = load i32*, i32** %3, align 8
  %79 = call i32 @fprintf(i32* %78, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.21, i64 0, i64 0))
  %80 = load i32*, i32** %3, align 8
  %81 = call i32 @fprintf(i32* %80, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.22, i64 0, i64 0))
  %82 = load i32*, i32** %3, align 8
  %83 = call i32 @fprintf(i32* %82, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.23, i64 0, i64 0))
  %84 = load i32*, i32** %3, align 8
  %85 = call i32 @fprintf(i32* %84, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.24, i64 0, i64 0))
  %86 = load i32*, i32** %3, align 8
  %87 = call i32 @fprintf(i32* %86, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.25, i64 0, i64 0))
  %88 = load i32*, i32** %3, align 8
  %89 = call i32 @fprintf(i32* %88, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.26, i64 0, i64 0))
  %90 = load i32*, i32** %3, align 8
  %91 = call i32 @fprintf(i32* %90, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.27, i64 0, i64 0))
  %92 = load i32*, i32** %3, align 8
  %93 = call i32 @fprintf(i32* %92, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.28, i64 0, i64 0))
  %94 = load i32*, i32** %3, align 8
  %95 = call i32 @fprintf(i32* %94, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.29, i64 0, i64 0))
  %96 = load i32*, i32** %3, align 8
  %97 = call i32 @fprintf(i32* %96, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.30, i64 0, i64 0))
  %98 = load i32*, i32** %3, align 8
  %99 = call i32 @fprintf(i32* %98, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.31, i64 0, i64 0))
  %100 = load i32*, i32** %3, align 8
  %101 = call i32 @fprintf(i32* %100, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.32, i64 0, i64 0))
  %102 = load i32*, i32** %3, align 8
  %103 = call i32 @fprintf(i32* %102, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.33, i64 0, i64 0))
  %104 = load i32*, i32** %3, align 8
  %105 = call i32 @fprintf(i32* %104, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.34, i64 0, i64 0))
  %106 = load i32*, i32** %3, align 8
  %107 = call i32 @fprintf(i32* %106, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.35, i64 0, i64 0))
  %108 = load i32*, i32** %3, align 8
  %109 = call i32 @fprintf(i32* %108, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.36, i64 0, i64 0))
  %110 = load i32*, i32** %3, align 8
  %111 = call i32 @fprintf(i32* %110, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.37, i64 0, i64 0))
  %112 = load i32*, i32** %3, align 8
  %113 = call i32 @fprintf(i32* %112, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.34, i64 0, i64 0))
  %114 = load i32*, i32** %3, align 8
  %115 = call i32 @fprintf(i32* %114, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.38, i64 0, i64 0))
  %116 = load i32*, i32** %3, align 8
  %117 = call i32 @fprintf(i32* %116, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0))
  br label %118

118:                                              ; preds = %53, %50
  %119 = load i32*, i32** %3, align 8
  %120 = call i32 @fclose(i32* %119)
  %121 = load i8*, i8** %5, align 8
  %122 = call i32 @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.39, i64 0, i64 0), i8* %121)
  br label %123

123:                                              ; preds = %118, %20
  ret void
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @fprintf(i32*, i8*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
