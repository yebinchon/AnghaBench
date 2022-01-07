; ModuleID = '/home/carl/AnghaBench/lwan/src/bin/lwan/extr_main.c_print_help.c'
source_filename = "/home/carl/AnghaBench/lwan/src/bin/lwan/extr_main.c_print_help.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lwan_config = type { i8* }

@PATH_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"Usage: %s [--root /path/to/root/dir] [--listen addr:port]\0A\00", align 1
@.str.1 = private unnamed_addr constant [65 x i8] c"\09[--config] [--user username] [--chroot] [--modules|--handlers]\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Serve files through HTTP.\0A\0A\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"Options:\0A\00", align 1
@.str.4 = private unnamed_addr constant [65 x i8] c"\09-r, --root      Path to serve files from (default: ./wwwroot).\0A\00", align 1
@.str.5 = private unnamed_addr constant [42 x i8] c"\09-l, --listen    Listener (default: %s).\0A\00", align 1
@.str.6 = private unnamed_addr constant [44 x i8] c"\09-c, --config    Path to config file path.\0A\00", align 1
@.str.7 = private unnamed_addr constant [66 x i8] c"\09-u, --user      Username to drop privileges to (root required).\0A\00", align 1
@.str.8 = private unnamed_addr constant [67 x i8] c"\09-C, --chroot    Chroot to path passed to --root (root required).\0A\00", align 1
@.str.9 = private unnamed_addr constant [61 x i8] c"\09-m, --modules   Print information about available modules.\0A\00", align 1
@.str.10 = private unnamed_addr constant [62 x i8] c"\09-H, --handlers  Print information about available handlers.\0A\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"\09-h, --help      This.\0A\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"Examples:\0A\00", align 1
@.str.14 = private unnamed_addr constant [36 x i8] c"  Serve system-wide documentation:\0A\00", align 1
@.str.15 = private unnamed_addr constant [30 x i8] c"        %s -r /usr/share/doc\0A\00", align 1
@.str.16 = private unnamed_addr constant [30 x i8] c"  Serve on a different port:\0A\00", align 1
@.str.17 = private unnamed_addr constant [24 x i8] c"        %s -l '*:1337'\0A\00", align 1
@.str.18 = private unnamed_addr constant [19 x i8] c"  Use %s from %s:\0A\00", align 1
@.str.19 = private unnamed_addr constant [12 x i8] c"        %s\0A\00", align 1
@.str.20 = private unnamed_addr constant [16 x i8] c"  Use /etc/%s:\0A\00", align 1
@.str.21 = private unnamed_addr constant [23 x i8] c"        %s -c /etc/%s\0A\00", align 1
@.str.22 = private unnamed_addr constant [52 x i8] c"Report bugs at <https://github.com/lpereira/lwan>.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.lwan_config*)* @print_help to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_help(i8* %0, %struct.lwan_config* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.lwan_config*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.lwan_config* %1, %struct.lwan_config** %4, align 8
  %9 = load i32, i32* @PATH_MAX, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %5, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %6, align 8
  %13 = call i8* (...) @get_current_dir_name()
  store i8* %13, i8** %7, align 8
  %14 = trunc i64 %10 to i32
  %15 = call i8* @lwan_get_config_path(i8* %12, i32 %14)
  store i8* %15, i8** %8, align 8
  %16 = load i8*, i8** %3, align 8
  %17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i8* %16)
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i64 0, i64 0))
  %19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.4, i64 0, i64 0))
  %22 = load %struct.lwan_config*, %struct.lwan_config** %4, align 8
  %23 = getelementptr inbounds %struct.lwan_config, %struct.lwan_config* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0), i8* %24)
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i64 0, i64 0))
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.7, i64 0, i64 0))
  %28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.8, i64 0, i64 0))
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.9, i64 0, i64 0))
  %30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.10, i64 0, i64 0))
  %31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i64 0, i64 0))
  %32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  %33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0))
  %34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.14, i64 0, i64 0))
  %35 = load i8*, i8** %3, align 8
  %36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.15, i64 0, i64 0), i8* %35)
  %37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.16, i64 0, i64 0))
  %38 = load i8*, i8** %3, align 8
  %39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.17, i64 0, i64 0), i8* %38)
  %40 = load i8*, i8** %8, align 8
  %41 = load i8*, i8** %7, align 8
  %42 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i64 0, i64 0), i8* %40, i8* %41)
  %43 = load i8*, i8** %3, align 8
  %44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.19, i64 0, i64 0), i8* %43)
  %45 = load i8*, i8** %8, align 8
  %46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.20, i64 0, i64 0), i8* %45)
  %47 = load i8*, i8** %3, align 8
  %48 = load i8*, i8** %8, align 8
  %49 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.21, i64 0, i64 0), i8* %47, i8* %48)
  %50 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  %51 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.22, i64 0, i64 0))
  %52 = load i8*, i8** %7, align 8
  %53 = call i32 @free(i8* %52)
  %54 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %54)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @get_current_dir_name(...) #2

declare dso_local i8* @lwan_get_config_path(i8*, i32) #2

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i32 @free(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
