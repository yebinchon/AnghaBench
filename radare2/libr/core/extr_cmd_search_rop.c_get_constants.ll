; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/extr_cmd_search_rop.c_get_constants.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/extr_cmd_search_rop.c_get_constants.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c",\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*)* @get_constants to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @get_constants(i8* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store i32* null, i32** %2, align 8
  br label %34

10:                                               ; preds = %1
  %11 = load i8*, i8** %3, align 8
  %12 = call i8* @strdup(i8* %11)
  store i8* %12, i8** %6, align 8
  %13 = call i32* @r_list_newf(i32 (i8*)* @free)
  store i32* %13, i32** %4, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = call i8* @strtok(i8* %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %15, i8** %5, align 8
  br label %16

16:                                               ; preds = %28, %10
  %17 = load i8*, i8** %5, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %30

19:                                               ; preds = %16
  %20 = load i8*, i8** %5, align 8
  %21 = call i64 @strtol(i8* %20, i32* null, i32 0)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %19
  %24 = load i32*, i32** %4, align 8
  %25 = load i8*, i8** %5, align 8
  %26 = call i8* @strdup(i8* %25)
  %27 = call i32 @r_list_append(i32* %24, i8* %26)
  br label %28

28:                                               ; preds = %23, %19
  %29 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %29, i8** %5, align 8
  br label %16

30:                                               ; preds = %16
  %31 = load i8*, i8** %6, align 8
  %32 = call i32 @free(i8* %31)
  %33 = load i32*, i32** %4, align 8
  store i32* %33, i32** %2, align 8
  br label %34

34:                                               ; preds = %30, %9
  %35 = load i32*, i32** %2, align 8
  ret i32* %35
}

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32* @r_list_newf(i32 (i8*)*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @strtok(i8*, i8*) #1

declare dso_local i64 @strtol(i8*, i32*, i32) #1

declare dso_local i32 @r_list_append(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
