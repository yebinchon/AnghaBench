; ModuleID = '/home/carl/AnghaBench/nnn/src/extr_nnn.c_getreadline.c'
source_filename = "/home/carl/AnghaBench/nnn/src/extr_nnn.c_getreadline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g_buf = common dso_local global i8* null, align 8
@CMD_LEN_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8*, i8*, i32*)* @getreadline to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @getreadline(i8* %0, i8* %1, i8* %2, i32* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = call i32 @chdir(i8* %11)
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %14, label %17

14:                                               ; preds = %4
  %15 = load i32*, i32** %9, align 8
  %16 = call i32 @printwarn(i32* %15)
  store i8* null, i8** %5, align 8
  br label %52

17:                                               ; preds = %4
  %18 = call i32 (...) @exitcurses()
  %19 = load i8*, i8** %6, align 8
  %20 = call i8* @readline(i8* %19)
  store i8* %20, i8** %10, align 8
  %21 = call i32 (...) @refresh()
  %22 = load i8*, i8** %8, align 8
  %23 = call i32 @chdir(i8* %22)
  %24 = icmp eq i32 %23, -1
  br i1 %24, label %25, label %30

25:                                               ; preds = %17
  %26 = load i32*, i32** %9, align 8
  %27 = call i32 @printwarn(i32* %26)
  %28 = load i8*, i8** %10, align 8
  %29 = call i32 @free(i8* %28)
  store i8* null, i8** %5, align 8
  br label %52

30:                                               ; preds = %17
  %31 = load i8*, i8** %10, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %49

33:                                               ; preds = %30
  %34 = load i8*, i8** %10, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 0
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %49

39:                                               ; preds = %33
  %40 = load i8*, i8** %10, align 8
  %41 = call i32 @add_history(i8* %40)
  %42 = load i8*, i8** @g_buf, align 8
  %43 = load i8*, i8** %10, align 8
  %44 = load i32, i32* @CMD_LEN_MAX, align 4
  %45 = call i32 @xstrlcpy(i8* %42, i8* %43, i32 %44)
  %46 = load i8*, i8** %10, align 8
  %47 = call i32 @free(i8* %46)
  %48 = load i8*, i8** @g_buf, align 8
  store i8* %48, i8** %5, align 8
  br label %52

49:                                               ; preds = %33, %30
  %50 = load i8*, i8** %10, align 8
  %51 = call i32 @free(i8* %50)
  store i8* null, i8** %5, align 8
  br label %52

52:                                               ; preds = %49, %39, %25, %14
  %53 = load i8*, i8** %5, align 8
  ret i8* %53
}

declare dso_local i32 @chdir(i8*) #1

declare dso_local i32 @printwarn(i32*) #1

declare dso_local i32 @exitcurses(...) #1

declare dso_local i8* @readline(i8*) #1

declare dso_local i32 @refresh(...) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @add_history(i8*) #1

declare dso_local i32 @xstrlcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
