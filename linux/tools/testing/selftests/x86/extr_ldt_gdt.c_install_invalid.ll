; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/x86/extr_ldt_gdt.c_install_invalid.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/x86/extr_ldt_gdt.c_install_invalid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.user_desc = type { i64, i32 }

@SYS_modify_ldt = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"[OK]\09modify_ldt returned -ENOSYS\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"[FAIL]\09Unexpected modify_ldt failure %d\0A\00", align 1
@nerrs = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"[OK]\09modify_ldt rejected 16 bit segment\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.user_desc*, i32)* @install_invalid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @install_invalid(%struct.user_desc* %0, i32 %1) #0 {
  %3 = alloca %struct.user_desc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.user_desc* %0, %struct.user_desc** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @SYS_modify_ldt, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  %9 = zext i1 %8 to i64
  %10 = select i1 %8, i32 1, i32 17
  %11 = load %struct.user_desc*, %struct.user_desc** %3, align 8
  %12 = call i32 @syscall(i32 %6, i32 %10, %struct.user_desc* %11, i32 16)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp slt i32 %13, -1
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* %5, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* @errno, align 4
  br label %18

18:                                               ; preds = %15, %2
  %19 = load i32, i32* %5, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %18
  %22 = load %struct.user_desc*, %struct.user_desc** %3, align 8
  %23 = getelementptr inbounds %struct.user_desc, %struct.user_desc* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @check_invalid_segment(i32 %24, i32 1)
  br label %46

26:                                               ; preds = %18
  %27 = load i32, i32* @errno, align 4
  %28 = load i32, i32* @ENOSYS, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %45

32:                                               ; preds = %26
  %33 = load %struct.user_desc*, %struct.user_desc** %3, align 8
  %34 = getelementptr inbounds %struct.user_desc, %struct.user_desc* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %32
  %38 = load i32, i32* @errno, align 4
  %39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* @nerrs, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* @nerrs, align 4
  br label %44

42:                                               ; preds = %32
  %43 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  br label %44

44:                                               ; preds = %42, %37
  br label %45

45:                                               ; preds = %44, %30
  br label %46

46:                                               ; preds = %45, %21
  ret void
}

declare dso_local i32 @syscall(i32, i32, %struct.user_desc*, i32) #1

declare dso_local i32 @check_invalid_segment(i32, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
