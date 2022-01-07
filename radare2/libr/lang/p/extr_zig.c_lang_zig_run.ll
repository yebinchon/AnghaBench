; ModuleID = '/home/carl/AnghaBench/radare2/libr/lang/p/extr_zig.c_lang_zig_run.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/lang/p/extr_zig.c_lang_zig_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"_tmp.zig\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.2 = private unnamed_addr constant [175 x i8] c"extern fn puts(&const u8) void;\0Aextern fn r_core_cmd_str(&u8, &const u8) &u8;\0Aextern fn r_core_new() &u8;\0Aextern fn r_core_free(&u8) void;\0A\0Aexport fn entry(core: &u8) void {\0A\00", align 1
@.str.3 = private unnamed_addr constant [81 x i8] c"\0A}\0Apub fn r2cmd(core: &u8, cmd: u8) &u8 {\0A  return r_core_cmd_str(core, cmd);\0A}\0A\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"Cannot open %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32)* @lang_zig_run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lang_zig_run(i32* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = call i32* @r_sandbox_fopen(i8* %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %12, i32** %8, align 8
  %13 = load i32*, i32** %8, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %32

15:                                               ; preds = %3
  store i8* getelementptr inbounds ([175 x i8], [175 x i8]* @.str.2, i64 0, i64 0), i8** %9, align 8
  store i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.3, i64 0, i64 0), i8** %10, align 8
  %16 = load i8*, i8** %9, align 8
  %17 = load i32*, i32** %8, align 8
  %18 = call i32 @fputs(i8* %16, i32* %17)
  %19 = load i8*, i8** %5, align 8
  %20 = load i32*, i32** %8, align 8
  %21 = call i32 @fputs(i8* %19, i32* %20)
  %22 = load i8*, i8** %10, align 8
  %23 = load i32*, i32** %8, align 8
  %24 = call i32 @fputs(i8* %22, i32* %23)
  %25 = load i32*, i32** %8, align 8
  %26 = call i32 @fclose(i32* %25)
  %27 = load i32*, i32** %4, align 8
  %28 = load i8*, i8** %7, align 8
  %29 = call i32 @lang_zig_file(i32* %27, i8* %28)
  %30 = load i8*, i8** %7, align 8
  %31 = call i32 @r_file_rm(i8* %30)
  br label %35

32:                                               ; preds = %3
  %33 = load i8*, i8** %7, align 8
  %34 = call i32 @eprintf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i8* %33)
  br label %35

35:                                               ; preds = %32, %15
  ret i32 1
}

declare dso_local i32* @r_sandbox_fopen(i8*, i8*) #1

declare dso_local i32 @fputs(i8*, i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @lang_zig_file(i32*, i8*) #1

declare dso_local i32 @r_file_rm(i8*) #1

declare dso_local i32 @eprintf(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
