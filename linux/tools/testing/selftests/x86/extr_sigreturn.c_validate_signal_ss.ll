; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/x86/extr_sigreturn.c_validate_signal_ss.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/x86/extr_sigreturn.c_validate_signal_ss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@UC_SIGCONTEXT_SS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"[FAIL]\09UC_SIGCONTEXT_SS was not set\0A\00", align 1
@nerrs = common dso_local global i32 0, align 4
@UC_STRICT_RESTORE_SS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"[FAIL]\09UC_STRICT_RESTORE_SS was wrong in signal %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"[FAIL]\09HW SS didn't match saved SS\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_5__*)* @validate_signal_ss to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @validate_signal_ss(i32 %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i16, align 2
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %4, align 8
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %8 = call i32* @csptr(%struct.TYPE_5__* %7)
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @cs_bitness(i32 %9)
  %11 = icmp eq i32 %10, 64
  %12 = zext i1 %11 to i32
  store i32 %12, i32* %5, align 4
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @UC_SIGCONTEXT_SS, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %2
  %20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @nerrs, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* @nerrs, align 4
  br label %59

23:                                               ; preds = %2
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @UC_STRICT_RESTORE_SS, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = load i32, i32* %5, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %40

35:                                               ; preds = %23
  %36 = load i32, i32* %3, align 4
  %37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* @nerrs, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* @nerrs, align 4
  br label %40

40:                                               ; preds = %35, %23
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %42 = call i16* @ssptr(%struct.TYPE_5__* %41)
  %43 = load i16, i16* %42, align 2
  %44 = call i64 @is_valid_ss(i16 zeroext %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %59

46:                                               ; preds = %40
  call void asm "mov %ss, $0", "=*rm,~{dirflag},~{fpsr},~{flags}"(i16* %6) #2, !srcloc !2
  %47 = load i16, i16* %6, align 2
  %48 = zext i16 %47 to i32
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %50 = call i16* @ssptr(%struct.TYPE_5__* %49)
  %51 = load i16, i16* %50, align 2
  %52 = zext i16 %51 to i32
  %53 = icmp ne i32 %48, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %46
  %55 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %56 = load i32, i32* @nerrs, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* @nerrs, align 4
  br label %58

58:                                               ; preds = %54, %46
  br label %59

59:                                               ; preds = %19, %58, %40
  ret void
}

declare dso_local i32 @cs_bitness(i32) #1

declare dso_local i32* @csptr(%struct.TYPE_5__*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @is_valid_ss(i16 zeroext) #1

declare dso_local i16* @ssptr(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 953}
