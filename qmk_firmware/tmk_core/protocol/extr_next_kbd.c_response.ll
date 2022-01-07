; ModuleID = '/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/extr_next_kbd.c_response.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/extr_next_kbd.c_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NEXT_KBD_READ = common dso_local global i64 0, align 8
@NEXT_KBD_TIMING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @response() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = call i32 (...) @cli()
  store i32 0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  store i32 50000, i32* %4, align 4
  br label %6

6:                                                ; preds = %14, %0
  %7 = load i64, i64* @NEXT_KBD_READ, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %6
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br label %12

12:                                               ; preds = %9, %6
  %13 = phi i1 [ false, %6 ], [ %11, %9 ]
  br i1 %13, label %14, label %18

14:                                               ; preds = %12
  call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !2
  %15 = call i32 @_delay_us(i32 1)
  %16 = load i32, i32* %4, align 4
  %17 = add nsw i32 %16, -1
  store i32 %17, i32* %4, align 4
  br label %6

18:                                               ; preds = %12
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %18
  %22 = call i32 (...) @reset()
  %23 = call i32 (...) @sei()
  store i32 0, i32* %1, align 4
  br label %67

24:                                               ; preds = %18
  %25 = load i32, i32* @NEXT_KBD_TIMING, align 4
  %26 = sdiv i32 %25, 2
  %27 = call i32 @_delay_us(i32 %26)
  br label %28

28:                                               ; preds = %61, %24
  %29 = load i32, i32* %2, align 4
  %30 = icmp slt i32 %29, 22
  br i1 %30, label %31, label %64

31:                                               ; preds = %28
  %32 = load i64, i64* @NEXT_KBD_READ, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %53

34:                                               ; preds = %31
  %35 = load i32, i32* %2, align 4
  %36 = shl i32 1, %35
  %37 = load i32, i32* %3, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %3, align 4
  %39 = load i32, i32* %2, align 4
  %40 = icmp eq i32 %39, 10
  br i1 %40, label %41, label %52

41:                                               ; preds = %34
  %42 = load i32, i32* %2, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %2, align 4
  br label %44

44:                                               ; preds = %47, %41
  %45 = load i64, i64* @NEXT_KBD_READ, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  br label %44

48:                                               ; preds = %44
  %49 = load i32, i32* @NEXT_KBD_TIMING, align 4
  %50 = sdiv i32 %49, 2
  %51 = call i32 @_delay_us(i32 %50)
  br label %52

52:                                               ; preds = %48, %34
  br label %58

53:                                               ; preds = %31
  %54 = load i32, i32* %2, align 4
  %55 = shl i32 0, %54
  %56 = load i32, i32* %3, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %53, %52
  %59 = load i32, i32* @NEXT_KBD_TIMING, align 4
  %60 = call i32 @_delay_us(i32 %59)
  br label %61

61:                                               ; preds = %58
  %62 = load i32, i32* %2, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %2, align 4
  br label %28

64:                                               ; preds = %28
  %65 = call i32 (...) @sei()
  %66 = load i32, i32* %3, align 4
  store i32 %66, i32* %1, align 4
  br label %67

67:                                               ; preds = %64, %21
  %68 = load i32, i32* %1, align 4
  ret i32 %68
}

declare dso_local i32 @cli(...) #1

declare dso_local i32 @_delay_us(i32) #1

declare dso_local i32 @reset(...) #1

declare dso_local i32 @sei(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 540}
