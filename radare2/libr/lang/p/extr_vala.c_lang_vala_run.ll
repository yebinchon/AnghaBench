; ModuleID = '/home/carl/AnghaBench/radare2/libr/lang/p/extr_vala.c_lang_vala_run.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/lang/p/extr_vala.c_lang_vala_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"-s\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c".tmp.vala\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.3 = private unnamed_addr constant [55 x i8] c"using Radare;\0A\0Apublic static void entry(RCore core) {\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c";\0A}\0A\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"Cannot open .tmp.vala\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32)* @lang_vala_run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lang_vala_run(i32* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i8*, i8** %6, align 8
  %11 = call i32 @strncmp(i8* %10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 2)
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  store i32 %14, i32* %8, align 4
  %15 = call i32* @r_sandbox_fopen(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i32* %15, i32** %9, align 8
  %16 = load i32*, i32** %9, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %38

18:                                               ; preds = %3
  %19 = load i32, i32* %8, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load i8*, i8** %6, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 2
  store i8* %23, i8** %6, align 8
  br label %24

24:                                               ; preds = %21, %18
  %25 = load i32*, i32** %9, align 8
  %26 = call i32 @fputs(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0), i32* %25)
  %27 = load i8*, i8** %6, align 8
  %28 = load i32*, i32** %9, align 8
  %29 = call i32 @fputs(i8* %27, i32* %28)
  %30 = load i32*, i32** %9, align 8
  %31 = call i32 @fputs(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32* %30)
  %32 = load i32*, i32** %9, align 8
  %33 = call i32 @fclose(i32* %32)
  %34 = load i32*, i32** %5, align 8
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @lang_vala_file(i32* %34, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  %37 = call i32 @r_file_rm(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %4, align 4
  br label %40

38:                                               ; preds = %3
  %39 = call i32 @eprintf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %40

40:                                               ; preds = %38, %24
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32* @r_sandbox_fopen(i8*, i8*) #1

declare dso_local i32 @fputs(i8*, i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @lang_vala_file(i32*, i8*, i32) #1

declare dso_local i32 @r_file_rm(i8*) #1

declare dso_local i32 @eprintf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
