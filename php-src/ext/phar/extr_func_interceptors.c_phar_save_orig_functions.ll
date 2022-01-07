; ModuleID = '/home/carl/AnghaBench/php-src/ext/phar/extr_func_interceptors.c_phar_save_orig_functions.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/phar/extr_func_interceptors.c_phar_save_orig_functions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@orig_fopen = common dso_local global i32 0, align 4
@phar_orig_functions = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@orig_file_get_contents = common dso_local global i32 0, align 4
@orig_is_file = common dso_local global i32 0, align 4
@orig_is_link = common dso_local global i32 0, align 4
@orig_is_dir = common dso_local global i32 0, align 4
@orig_opendir = common dso_local global i32 0, align 4
@orig_file_exists = common dso_local global i32 0, align 4
@orig_fileperms = common dso_local global i32 0, align 4
@orig_fileinode = common dso_local global i32 0, align 4
@orig_filesize = common dso_local global i32 0, align 4
@orig_fileowner = common dso_local global i32 0, align 4
@orig_filegroup = common dso_local global i32 0, align 4
@orig_fileatime = common dso_local global i32 0, align 4
@orig_filemtime = common dso_local global i32 0, align 4
@orig_filectime = common dso_local global i32 0, align 4
@orig_filetype = common dso_local global i32 0, align 4
@orig_is_writable = common dso_local global i32 0, align 4
@orig_is_readable = common dso_local global i32 0, align 4
@orig_is_executable = common dso_local global i32 0, align 4
@orig_lstat = common dso_local global i32 0, align 4
@orig_readfile = common dso_local global i32 0, align 4
@orig_stat = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @phar_save_orig_functions() #0 {
  %1 = load i32, i32* @orig_fopen, align 4
  %2 = call i8* @PHAR_G(i32 %1)
  store i8* %2, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @phar_orig_functions, i32 0, i32 21), align 8
  %3 = load i32, i32* @orig_file_get_contents, align 4
  %4 = call i8* @PHAR_G(i32 %3)
  store i8* %4, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @phar_orig_functions, i32 0, i32 20), align 8
  %5 = load i32, i32* @orig_is_file, align 4
  %6 = call i8* @PHAR_G(i32 %5)
  store i8* %6, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @phar_orig_functions, i32 0, i32 19), align 8
  %7 = load i32, i32* @orig_is_link, align 4
  %8 = call i8* @PHAR_G(i32 %7)
  store i8* %8, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @phar_orig_functions, i32 0, i32 18), align 8
  %9 = load i32, i32* @orig_is_dir, align 4
  %10 = call i8* @PHAR_G(i32 %9)
  store i8* %10, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @phar_orig_functions, i32 0, i32 17), align 8
  %11 = load i32, i32* @orig_opendir, align 4
  %12 = call i8* @PHAR_G(i32 %11)
  store i8* %12, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @phar_orig_functions, i32 0, i32 16), align 8
  %13 = load i32, i32* @orig_file_exists, align 4
  %14 = call i8* @PHAR_G(i32 %13)
  store i8* %14, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @phar_orig_functions, i32 0, i32 15), align 8
  %15 = load i32, i32* @orig_fileperms, align 4
  %16 = call i8* @PHAR_G(i32 %15)
  store i8* %16, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @phar_orig_functions, i32 0, i32 14), align 8
  %17 = load i32, i32* @orig_fileinode, align 4
  %18 = call i8* @PHAR_G(i32 %17)
  store i8* %18, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @phar_orig_functions, i32 0, i32 13), align 8
  %19 = load i32, i32* @orig_filesize, align 4
  %20 = call i8* @PHAR_G(i32 %19)
  store i8* %20, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @phar_orig_functions, i32 0, i32 12), align 8
  %21 = load i32, i32* @orig_fileowner, align 4
  %22 = call i8* @PHAR_G(i32 %21)
  store i8* %22, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @phar_orig_functions, i32 0, i32 11), align 8
  %23 = load i32, i32* @orig_filegroup, align 4
  %24 = call i8* @PHAR_G(i32 %23)
  store i8* %24, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @phar_orig_functions, i32 0, i32 10), align 8
  %25 = load i32, i32* @orig_fileatime, align 4
  %26 = call i8* @PHAR_G(i32 %25)
  store i8* %26, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @phar_orig_functions, i32 0, i32 9), align 8
  %27 = load i32, i32* @orig_filemtime, align 4
  %28 = call i8* @PHAR_G(i32 %27)
  store i8* %28, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @phar_orig_functions, i32 0, i32 8), align 8
  %29 = load i32, i32* @orig_filectime, align 4
  %30 = call i8* @PHAR_G(i32 %29)
  store i8* %30, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @phar_orig_functions, i32 0, i32 7), align 8
  %31 = load i32, i32* @orig_filetype, align 4
  %32 = call i8* @PHAR_G(i32 %31)
  store i8* %32, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @phar_orig_functions, i32 0, i32 6), align 8
  %33 = load i32, i32* @orig_is_writable, align 4
  %34 = call i8* @PHAR_G(i32 %33)
  store i8* %34, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @phar_orig_functions, i32 0, i32 5), align 8
  %35 = load i32, i32* @orig_is_readable, align 4
  %36 = call i8* @PHAR_G(i32 %35)
  store i8* %36, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @phar_orig_functions, i32 0, i32 4), align 8
  %37 = load i32, i32* @orig_is_executable, align 4
  %38 = call i8* @PHAR_G(i32 %37)
  store i8* %38, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @phar_orig_functions, i32 0, i32 3), align 8
  %39 = load i32, i32* @orig_lstat, align 4
  %40 = call i8* @PHAR_G(i32 %39)
  store i8* %40, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @phar_orig_functions, i32 0, i32 2), align 8
  %41 = load i32, i32* @orig_readfile, align 4
  %42 = call i8* @PHAR_G(i32 %41)
  store i8* %42, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @phar_orig_functions, i32 0, i32 1), align 8
  %43 = load i32, i32* @orig_stat, align 4
  %44 = call i8* @PHAR_G(i32 %43)
  store i8* %44, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @phar_orig_functions, i32 0, i32 0), align 8
  ret void
}

declare dso_local i8* @PHAR_G(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
