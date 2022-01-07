; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/mm/extr_subpage_prot.c_check_faulted.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/mm/extr_subpage_prot.c_check_faulted.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@faulted = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"Failed at %p (p=%ld,sp=%ld,w=%d), want=%s, got=%s !\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"fault\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"pass\00", align 1
@errors = common dso_local global i32 0, align 4
@dar = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [43 x i8] c"Fault expected at %p and happened at %p !\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64, i64, i32)* @check_faulted to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_faulted(i8* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load i64, i64* %7, align 8
  %11 = load i64, i64* %6, align 8
  %12 = add nsw i64 %11, 3
  %13 = srem i64 %12, 16
  %14 = icmp eq i64 %10, %13
  %15 = zext i1 %14 to i32
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %4
  %19 = load i64, i64* %7, align 8
  %20 = load i64, i64* %6, align 8
  %21 = add nsw i64 %20, 1
  %22 = srem i64 %21, 16
  %23 = icmp eq i64 %19, %22
  %24 = zext i1 %23 to i32
  %25 = load i32, i32* %9, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %9, align 4
  br label %27

27:                                               ; preds = %18, %4
  %28 = load i32, i32* @faulted, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %48

31:                                               ; preds = %27
  %32 = load i8*, i8** %5, align 8
  %33 = load i64, i64* %6, align 8
  %34 = inttoptr i64 %33 to i8*
  %35 = load i64, i64* %7, align 8
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* %9, align 4
  %38 = icmp ne i32 %37, 0
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %41 = load i32, i32* @faulted, align 4
  %42 = icmp ne i32 %41, 0
  %43 = zext i1 %42 to i64
  %44 = select i1 %42, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %45 = call i32 (i8*, i8*, i8*, ...) @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i8* %32, i8* %34, i64 %35, i32 %36, i8* %40, i8* %44)
  %46 = load i32, i32* @errors, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* @errors, align 4
  br label %48

48:                                               ; preds = %31, %27
  %49 = load i32, i32* @faulted, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %60

51:                                               ; preds = %48
  %52 = load i8*, i8** @dar, align 8
  %53 = load i8*, i8** %5, align 8
  %54 = icmp ne i8* %52, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %51
  %56 = load i8*, i8** %5, align 8
  %57 = load i8*, i8** @dar, align 8
  %58 = call i32 (i8*, i8*, i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i8* %56, i8* %57)
  br label %59

59:                                               ; preds = %55, %51
  store i32 0, i32* @faulted, align 4
  call void asm sideeffect "sync", "~{memory},~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !2
  br label %60

60:                                               ; preds = %59, %48
  ret void
}

declare dso_local i32 @printf(i8*, i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 808}
