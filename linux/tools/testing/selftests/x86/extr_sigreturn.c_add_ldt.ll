; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/x86/extr_sigreturn.c_add_ldt.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/x86/extr_sigreturn.c_add_ldt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.user_desc = type { i32 }

@SYS_modify_ldt = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"[NOTE]\09Failed to create %s segment\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.user_desc*, i16*, i8*)* @add_ldt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_ldt(%struct.user_desc* %0, i16* %1, i8* %2) #0 {
  %4 = alloca %struct.user_desc*, align 8
  %5 = alloca i16*, align 8
  %6 = alloca i8*, align 8
  store %struct.user_desc* %0, %struct.user_desc** %4, align 8
  store i16* %1, i16** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load i32, i32* @SYS_modify_ldt, align 4
  %8 = load %struct.user_desc*, %struct.user_desc** %4, align 8
  %9 = call i64 @syscall(i32 %7, i32 1, %struct.user_desc* %8, i32 4)
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %3
  %12 = load %struct.user_desc*, %struct.user_desc** %4, align 8
  %13 = getelementptr inbounds %struct.user_desc, %struct.user_desc* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call zeroext i16 @LDT3(i32 %14)
  %16 = load i16*, i16** %5, align 8
  store i16 %15, i16* %16, align 2
  br label %21

17:                                               ; preds = %3
  %18 = load i8*, i8** %6, align 8
  %19 = call i32 @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8* %18)
  %20 = load i16*, i16** %5, align 8
  store i16 0, i16* %20, align 2
  br label %21

21:                                               ; preds = %17, %11
  ret void
}

declare dso_local i64 @syscall(i32, i32, %struct.user_desc*, i32) #1

declare dso_local zeroext i16 @LDT3(i32) #1

declare dso_local i32 @printf(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
