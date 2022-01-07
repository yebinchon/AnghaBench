; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/ptrace/extr_ptrace-vsx.c_vsx.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/ptrace/extr_ptrace-vsx.c_vsx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@shm_id = common dso_local global i32 0, align 4
@cptr = common dso_local global i32* null, align 8
@fp_load = common dso_local global i32 0, align 4
@fp_store = common dso_local global i32 0, align 4
@fp_load_new = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vsx() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @shm_id, align 4
  %3 = call i64 @shmat(i32 %2, i32* null, i32 0)
  %4 = inttoptr i64 %3 to i32*
  store i32* %4, i32** @cptr, align 8
  %5 = load i32, i32* @fp_load, align 4
  %6 = call i32 @loadvsx(i32 %5, i32 0)
  %7 = load i32*, i32** @cptr, align 8
  %8 = getelementptr inbounds i32, i32* %7, i64 1
  store i32 1, i32* %8, align 4
  br label %9

9:                                                ; preds = %15, %0
  %10 = load i32*, i32** @cptr, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  br i1 %14, label %15, label %16

15:                                               ; preds = %9
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #3, !srcloc !2
  br label %9

16:                                               ; preds = %9
  %17 = load i32*, i32** @cptr, align 8
  %18 = bitcast i32* %17 to i8*
  %19 = call i32 @shmdt(i8* %18)
  %20 = load i32, i32* @fp_store, align 4
  %21 = call i32 @storevsx(i32 %20, i32 0)
  %22 = load i32, i32* @fp_store, align 4
  %23 = load i32, i32* @fp_load_new, align 4
  %24 = call i32 @compare_vsx_vmx(i32 %22, i32 %23)
  store i32 %24, i32* %1, align 4
  %25 = load i32, i32* %1, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %16
  %28 = call i32 @exit(i32 1) #4
  unreachable

29:                                               ; preds = %16
  %30 = call i32 @exit(i32 0) #4
  unreachable
}

declare dso_local i64 @shmat(i32, i32*, i32) #1

declare dso_local i32 @loadvsx(i32, i32) #1

declare dso_local i32 @shmdt(i8*) #1

declare dso_local i32 @storevsx(i32, i32) #1

declare dso_local i32 @compare_vsx_vmx(i32, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 521}
