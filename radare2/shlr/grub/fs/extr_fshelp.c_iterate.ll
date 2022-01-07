; ModuleID = '/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_fshelp.c_iterate.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_fshelp.c_iterate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.find_file_closure = type { i32*, i32*, i32*, i32 }

@GRUB_FSHELP_UNKNOWN = common dso_local global i32 0, align 4
@GRUB_FSHELP_CASE_INSENSITIVE = common dso_local global i32 0, align 4
@GRUB_LONG_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32, i8*)* @iterate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iterate(i8* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.find_file_closure*, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %11 = load i8*, i8** %9, align 8
  %12 = bitcast i8* %11 to %struct.find_file_closure*
  store %struct.find_file_closure* %12, %struct.find_file_closure** %10, align 8
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @GRUB_FSHELP_UNKNOWN, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %36, label %16

16:                                               ; preds = %4
  %17 = load %struct.find_file_closure*, %struct.find_file_closure** %10, align 8
  %18 = getelementptr inbounds %struct.find_file_closure, %struct.find_file_closure* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = call i64 @grub_strcmp(i32 %19, i8* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %39

23:                                               ; preds = %16
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @GRUB_FSHELP_CASE_INSENSITIVE, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %23
  %29 = load %struct.find_file_closure*, %struct.find_file_closure** %10, align 8
  %30 = getelementptr inbounds %struct.find_file_closure, %struct.find_file_closure* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = load i32, i32* @GRUB_LONG_MAX, align 4
  %34 = call i64 @grub_strncasecmp(i32 %31, i8* %32, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %28, %23, %4
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @grub_free(i32 %37)
  store i32 0, i32* %5, align 4
  br label %58

39:                                               ; preds = %28, %16
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @GRUB_FSHELP_CASE_INSENSITIVE, align 4
  %42 = xor i32 %41, -1
  %43 = and i32 %40, %42
  %44 = load %struct.find_file_closure*, %struct.find_file_closure** %10, align 8
  %45 = getelementptr inbounds %struct.find_file_closure, %struct.find_file_closure* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  store i32 %43, i32* %46, align 4
  %47 = load %struct.find_file_closure*, %struct.find_file_closure** %10, align 8
  %48 = getelementptr inbounds %struct.find_file_closure, %struct.find_file_closure* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.find_file_closure*, %struct.find_file_closure** %10, align 8
  %52 = getelementptr inbounds %struct.find_file_closure, %struct.find_file_closure* %51, i32 0, i32 2
  %53 = load i32*, i32** %52, align 8
  store i32 %50, i32* %53, align 4
  %54 = load i32, i32* %8, align 4
  %55 = load %struct.find_file_closure*, %struct.find_file_closure** %10, align 8
  %56 = getelementptr inbounds %struct.find_file_closure, %struct.find_file_closure* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  store i32 %54, i32* %57, align 4
  store i32 1, i32* %5, align 4
  br label %58

58:                                               ; preds = %39, %36
  %59 = load i32, i32* %5, align 4
  ret i32 %59
}

declare dso_local i64 @grub_strcmp(i32, i8*) #1

declare dso_local i64 @grub_strncasecmp(i32, i8*, i32) #1

declare dso_local i32 @grub_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
