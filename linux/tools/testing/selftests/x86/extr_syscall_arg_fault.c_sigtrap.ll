; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/x86/extr_syscall_arg_fault.c_sigtrap.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/x86/extr_syscall_arg_fault.c_sigtrap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64* }

@REG_IP = common dso_local global i64 0, align 8
@sigtrap_consecutive_syscalls = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [65 x i8] c"[WARN]\09Got stuck single-stepping -- you probably have a KVM bug\0A\00", align 1
@jmpbuf = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*, i8*)* @sigtrap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sigtrap(i32 %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i16*, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = bitcast i8* %9 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %10, %struct.TYPE_4__** %7, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i64*, i64** %13, align 8
  %15 = load i64, i64* @REG_IP, align 8
  %16 = getelementptr inbounds i64, i64* %14, i64 %15
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to i16*
  store i16* %18, i16** %8, align 8
  %19 = load i16*, i16** %8, align 8
  %20 = load i16, i16* %19, align 2
  %21 = zext i16 %20 to i32
  %22 = icmp eq i32 %21, 13327
  br i1 %22, label %28, label %23

23:                                               ; preds = %3
  %24 = load i16*, i16** %8, align 8
  %25 = load i16, i16* %24, align 2
  %26 = zext i16 %25 to i32
  %27 = icmp eq i32 %26, 1295
  br i1 %27, label %28, label %38

28:                                               ; preds = %23, %3
  %29 = load i32, i32* @sigtrap_consecutive_syscalls, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* @sigtrap_consecutive_syscalls, align 4
  %31 = load i32, i32* @sigtrap_consecutive_syscalls, align 4
  %32 = icmp sgt i32 %31, 3
  br i1 %32, label %33, label %37

33:                                               ; preds = %28
  %34 = call i32 @printf(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0))
  %35 = load i32, i32* @jmpbuf, align 4
  %36 = call i32 @siglongjmp(i32 %35, i32 1)
  br label %37

37:                                               ; preds = %33, %28
  br label %39

38:                                               ; preds = %23
  store i32 0, i32* @sigtrap_consecutive_syscalls, align 4
  br label %39

39:                                               ; preds = %38, %37
  ret void
}

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @siglongjmp(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
