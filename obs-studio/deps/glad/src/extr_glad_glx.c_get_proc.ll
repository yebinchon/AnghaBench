; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/glad/src/extr_glad_glx.c_get_proc.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/glad/src/extr_glad_glx.c_get_proc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@libGL = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @get_proc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_proc(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* null, i8** %4, align 8
  %5 = load i32*, i32** @libGL, align 8
  %6 = icmp eq i32* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i8* null, i8** %2, align 8
  br label %19

8:                                                ; preds = %1
  %9 = load i8*, i8** %3, align 8
  %10 = call i8* @gladGetProcAddressPtr(i8* %9)
  store i8* %10, i8** %4, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = icmp eq i8* %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %8
  %14 = load i32*, i32** @libGL, align 8
  %15 = load i8*, i8** %3, align 8
  %16 = call i8* @dlsym(i32* %14, i8* %15)
  store i8* %16, i8** %4, align 8
  br label %17

17:                                               ; preds = %13, %8
  %18 = load i8*, i8** %4, align 8
  store i8* %18, i8** %2, align 8
  br label %19

19:                                               ; preds = %17, %7
  %20 = load i8*, i8** %2, align 8
  ret i8* %20
}

declare dso_local i8* @gladGetProcAddressPtr(i8*) #1

declare dso_local i8* @dlsym(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
