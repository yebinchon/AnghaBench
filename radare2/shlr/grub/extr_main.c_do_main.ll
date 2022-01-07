; ModuleID = '/home/carl/AnghaBench/radare2/shlr/grub/extr_main.c_do_main.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/grub/extr_main.c_do_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grub_fs = type { i64 (%struct.grub_file.0*, i8*)*, i64 (%struct.grub_file.1*, i8*, i32)*, i64 (i32, i8*, i32, i32)*, i32 (%struct.grub_file.2*)* }
%struct.grub_file.0 = type opaque
%struct.grub_file.1 = type opaque
%struct.grub_file.2 = type opaque
%struct.grub_file = type { i32, i32 }

@grub_ext2_fs = common dso_local global %struct.grub_fs zeroinitializer, align 8
@IMGFILE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"oops\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"/test\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@dirhook = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"error is : %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.grub_file*, align 8
  %3 = alloca %struct.grub_fs*, align 8
  %4 = alloca i64, align 8
  %5 = alloca [1024 x i8], align 16
  store %struct.grub_fs* @grub_ext2_fs, %struct.grub_fs** %3, align 8
  %6 = load %struct.grub_fs*, %struct.grub_fs** %3, align 8
  %7 = load i32, i32* @IMGFILE, align 4
  %8 = call %struct.grub_file* @openimage(%struct.grub_fs* %6, i32 %7)
  store %struct.grub_file* %8, %struct.grub_file** %2, align 8
  %9 = load %struct.grub_file*, %struct.grub_file** %2, align 8
  %10 = icmp eq %struct.grub_file* %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %0
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %62

13:                                               ; preds = %0
  %14 = load %struct.grub_fs*, %struct.grub_fs** %3, align 8
  %15 = getelementptr inbounds %struct.grub_fs, %struct.grub_fs* %14, i32 0, i32 0
  %16 = load i64 (%struct.grub_file.0*, i8*)*, i64 (%struct.grub_file.0*, i8*)** %15, align 8
  %17 = load %struct.grub_file*, %struct.grub_file** %2, align 8
  %18 = bitcast %struct.grub_file* %17 to %struct.grub_file.0*
  %19 = call i64 %16(%struct.grub_file.0* %18, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  store i64 %19, i64* %4, align 8
  %20 = load i64, i64* %4, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %57

22:                                               ; preds = %13
  %23 = load %struct.grub_fs*, %struct.grub_fs** %3, align 8
  %24 = getelementptr inbounds %struct.grub_fs, %struct.grub_fs* %23, i32 0, i32 1
  %25 = load i64 (%struct.grub_file.1*, i8*, i32)*, i64 (%struct.grub_file.1*, i8*, i32)** %24, align 8
  %26 = load %struct.grub_file*, %struct.grub_file** %2, align 8
  %27 = bitcast %struct.grub_file* %26 to %struct.grub_file.1*
  %28 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %29 = load %struct.grub_file*, %struct.grub_file** %2, align 8
  %30 = getelementptr inbounds %struct.grub_file, %struct.grub_file* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i64 %25(%struct.grub_file.1* %27, i8* %28, i32 %31)
  store i64 %32, i64* %4, align 8
  %33 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %34 = load %struct.grub_file*, %struct.grub_file** %2, align 8
  %35 = getelementptr inbounds %struct.grub_file, %struct.grub_file* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @write(i32 1, i8* %33, i32 %36)
  %38 = load %struct.grub_fs*, %struct.grub_fs** %3, align 8
  %39 = getelementptr inbounds %struct.grub_fs, %struct.grub_fs* %38, i32 0, i32 3
  %40 = load i32 (%struct.grub_file.2*)*, i32 (%struct.grub_file.2*)** %39, align 8
  %41 = load %struct.grub_file*, %struct.grub_file** %2, align 8
  %42 = bitcast %struct.grub_file* %41 to %struct.grub_file.2*
  %43 = call i32 %40(%struct.grub_file.2* %42)
  %44 = load %struct.grub_fs*, %struct.grub_fs** %3, align 8
  %45 = getelementptr inbounds %struct.grub_fs, %struct.grub_fs* %44, i32 0, i32 2
  %46 = load i64 (i32, i8*, i32, i32)*, i64 (i32, i8*, i32, i32)** %45, align 8
  %47 = load %struct.grub_file*, %struct.grub_file** %2, align 8
  %48 = getelementptr inbounds %struct.grub_file, %struct.grub_file* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @dirhook, align 4
  %51 = call i64 %46(i32 %49, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 %50, i32 0)
  store i64 %51, i64* %4, align 8
  %52 = load i64, i64* %4, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %22
  %55 = call i32 (...) @grub_print_error()
  br label %56

56:                                               ; preds = %54, %22
  br label %61

57:                                               ; preds = %13
  %58 = call i32 (...) @grub_print_error()
  %59 = load i64, i64* %4, align 8
  %60 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i64 %59)
  store i32 0, i32* %1, align 4
  br label %62

61:                                               ; preds = %56
  store i32 1, i32* %1, align 4
  br label %62

62:                                               ; preds = %61, %57, %11
  %63 = load i32, i32* %1, align 4
  ret i32 %63
}

declare dso_local %struct.grub_file* @openimage(%struct.grub_fs*, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @write(i32, i8*, i32) #1

declare dso_local i32 @grub_print_error(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
