; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/tm/extr_tm-tmspr.c_texasr.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/tm/extr_tm-tmspr.c_texasr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@num_loops = common dso_local global i64 0, align 8
@SPRN_TEXASR = common dso_local global i32 0, align 4
@TEXASR_FS = common dso_local global i32 0, align 4
@passed = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @texasr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %4, align 4
  store i64 0, i64* %3, align 8
  br label %5

5:                                                ; preds = %18, %1
  %6 = load i64, i64* %3, align 8
  %7 = load i64, i64* @num_loops, align 8
  %8 = icmp ult i64 %6, %7
  br i1 %8, label %9, label %21

9:                                                ; preds = %5
  call void asm sideeffect "tbegin.;beq    3f ;tabort. 0 ;tend.;3: ;", "~{memory},~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !2
  %10 = load i32, i32* @SPRN_TEXASR, align 4
  %11 = call i32 @mfspr(i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @TEXASR_FS, align 4
  %14 = and i32 %12, %13
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %9
  store i64 0, i64* @passed, align 8
  br label %22

17:                                               ; preds = %9
  br label %18

18:                                               ; preds = %17
  %19 = load i64, i64* %3, align 8
  %20 = add i64 %19, 1
  store i64 %20, i64* %3, align 8
  br label %5

21:                                               ; preds = %5
  br label %22

22:                                               ; preds = %21, %16
  ret void
}

declare dso_local i32 @mfspr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 392}
