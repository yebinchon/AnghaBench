; ModuleID = '/home/carl/AnghaBench/lwan/src/lib/extr_lwan-template.c_lwan_tpl_compile_file.c'
source_filename = "/home/carl/AnghaBench/lwan/src/lib/extr_lwan-template.c_lwan_tpl_compile_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lwan_tpl = type { i32 }
%struct.lwan_var_descriptor = type { i32 }
%struct.stat = type { i64 }

@O_RDONLY = common dso_local global i32 0, align 4
@O_CLOEXEC = common dso_local global i32 0, align 4
@PROT_READ = common dso_local global i32 0, align 4
@MAP_SHARED = common dso_local global i32 0, align 4
@MAP_FAILED = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [7 x i8] c"munmap\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.lwan_tpl* @lwan_tpl_compile_file(i8* %0, %struct.lwan_var_descriptor* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.lwan_var_descriptor*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.stat, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.lwan_tpl*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.lwan_var_descriptor* %1, %struct.lwan_var_descriptor** %4, align 8
  store %struct.lwan_tpl* null, %struct.lwan_tpl** %8, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = load i32, i32* @O_RDONLY, align 4
  %11 = load i32, i32* @O_CLOEXEC, align 4
  %12 = or i32 %10, %11
  %13 = call i32 @open(i8* %9, i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %48

17:                                               ; preds = %2
  %18 = load i32, i32* %5, align 4
  %19 = call i64 @fstat(i32 %18, %struct.stat* %6)
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  br label %45

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i32, i32* @PROT_READ, align 4
  %26 = load i32, i32* @MAP_SHARED, align 4
  %27 = load i32, i32* %5, align 4
  %28 = call i8* @mmap(i32* null, i64 %24, i32 %25, i32 %26, i32 %27, i32 0)
  store i8* %28, i8** %7, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = load i8*, i8** @MAP_FAILED, align 8
  %31 = icmp eq i8* %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %22
  br label %45

33:                                               ; preds = %22
  %34 = load i8*, i8** %7, align 8
  %35 = load %struct.lwan_var_descriptor*, %struct.lwan_var_descriptor** %4, align 8
  %36 = call %struct.lwan_tpl* @lwan_tpl_compile_string(i8* %34, %struct.lwan_var_descriptor* %35)
  store %struct.lwan_tpl* %36, %struct.lwan_tpl** %8, align 8
  %37 = load i8*, i8** %7, align 8
  %38 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = call i64 @munmap(i8* %37, i64 %39)
  %41 = icmp slt i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %33
  %43 = call i32 @lwan_status_perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %44

44:                                               ; preds = %42, %33
  br label %45

45:                                               ; preds = %44, %32, %21
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @close(i32 %46)
  br label %48

48:                                               ; preds = %45, %16
  %49 = load %struct.lwan_tpl*, %struct.lwan_tpl** %8, align 8
  ret %struct.lwan_tpl* %49
}

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i64 @fstat(i32, %struct.stat*) #1

declare dso_local i8* @mmap(i32*, i64, i32, i32, i32, i32) #1

declare dso_local %struct.lwan_tpl* @lwan_tpl_compile_string(i8*, %struct.lwan_var_descriptor*) #1

declare dso_local i64 @munmap(i8*, i64) #1

declare dso_local i32 @lwan_status_perror(i8*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
