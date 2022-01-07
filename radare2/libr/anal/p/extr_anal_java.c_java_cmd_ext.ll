; ModuleID = '/home/carl/AnghaBench/radare2/libr/anal/p/extr_anal_java.c_java_cmd_ext.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/anal/p/extr_anal_java.c_java_cmd_ext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [73 x i8] c"Execute \22af\22 to set the current bin, and this will bind the current bin\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"Command not supported\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*)* @java_cmd_ext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @java_cmd_ext(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = call i64 @get_java_bin_obj(i32* %7)
  %9 = inttoptr i64 %8 to i32*
  store i32* %9, i32** %6, align 8
  %10 = load i32*, i32** %6, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %2
  %13 = call i32 @eprintf(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %41

14:                                               ; preds = %2
  %15 = load i8*, i8** %5, align 8
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  switch i32 %17, label %38 [
    i32 99, label %18
    i32 117, label %20
    i32 115, label %31
  ]

18:                                               ; preds = %14
  %19 = call i32 (...) @r_java_new_method()
  br label %40

20:                                               ; preds = %14
  %21 = load i8*, i8** %5, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 1
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  switch i32 %24, label %29 [
    i32 116, label %25
  ]

25:                                               ; preds = %20
  %26 = load i32*, i32** %4, align 8
  %27 = load i32*, i32** %6, align 8
  %28 = call i32 @java_update_anal_types(i32* %26, i32* %27)
  store i32 1, i32* %3, align 4
  br label %41

29:                                               ; preds = %20
  br label %30

30:                                               ; preds = %29
  br label %40

31:                                               ; preds = %14
  %32 = load i8*, i8** %5, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 1
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  switch i32 %35, label %36 [
  ]

36:                                               ; preds = %31
  br label %37

37:                                               ; preds = %36
  br label %40

38:                                               ; preds = %14
  %39 = call i32 @eprintf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %40

40:                                               ; preds = %38, %37, %30, %18
  store i32 0, i32* %3, align 4
  br label %41

41:                                               ; preds = %40, %25, %12
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i64 @get_java_bin_obj(i32*) #1

declare dso_local i32 @eprintf(i8*) #1

declare dso_local i32 @r_java_new_method(...) #1

declare dso_local i32 @java_update_anal_types(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
