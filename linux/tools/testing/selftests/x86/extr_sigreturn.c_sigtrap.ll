; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/x86/extr_sigreturn.c_sigtrap.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/x86/extr_sigreturn.c_sigtrap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64* }

@REG_ERR = common dso_local global i64 0, align 8
@sig_err = common dso_local global i64 0, align 8
@REG_TRAPNO = common dso_local global i64 0, align 8
@sig_trapno = common dso_local global i64 0, align 8
@REG_CX = common dso_local global i64 0, align 8
@sig_ss = common dso_local global i64 0, align 8
@SIGTRAP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"[FAIL]\09SIGTRAP: ss = %hx, frame ss = %hx, ax = %llx\0A\00", align 1
@nerrs = common dso_local global i32 0, align 4
@resulting_regs = common dso_local global i64* null, align 8
@initial_regs = common dso_local global i64* null, align 8
@sig_corrupt_final_ss = common dso_local global i64 0, align 8
@UC_STRICT_RESTORE_SS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [53 x i8] c"[FAIL]\09UC_STRICT_RESTORE_SS was set inappropriately\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"\09Corrupting SS on return to 64-bit mode\0A\00", align 1
@sig_trapped = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*, i8*)* @sigtrap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sigtrap(i32 %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i16, align 2
  %9 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %11, %struct.TYPE_6__** %7, align 8
  %12 = load i32, i32* %4, align 4
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %14 = call i32 @validate_signal_ss(i32 %12, %struct.TYPE_6__* %13)
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i64*, i64** %17, align 8
  %19 = load i64, i64* @REG_ERR, align 8
  %20 = getelementptr inbounds i64, i64* %18, i64 %19
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* @sig_err, align 8
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i64*, i64** %24, align 8
  %26 = load i64, i64* @REG_TRAPNO, align 8
  %27 = getelementptr inbounds i64, i64* %25, i64 %26
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* @sig_trapno, align 8
  %29 = call i16 asm "mov %ss,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !2
  store i16 %29, i16* %8, align 2
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i64*, i64** %32, align 8
  %34 = load i64, i64* @REG_CX, align 8
  %35 = getelementptr inbounds i64, i64* %33, i64 %34
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %9, align 8
  %37 = load i64, i64* %9, align 8
  %38 = load i64, i64* @sig_ss, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %54

40:                                               ; preds = %3
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* @SIGTRAP, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %54

44:                                               ; preds = %40
  %45 = load i16, i16* %8, align 2
  %46 = zext i16 %45 to i32
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %48 = call i64* @ssptr(%struct.TYPE_6__* %47)
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* %9, align 8
  %51 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %46, i64 %49, i64 %50)
  %52 = load i32, i32* @nerrs, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* @nerrs, align 4
  br label %54

54:                                               ; preds = %44, %40, %3
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = call i32 @memcpy(i64** @resulting_regs, i64** %57, i32 4)
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = call i32 @memcpy(i64** %61, i64** @initial_regs, i32 4)
  %63 = load i64, i64* @sig_corrupt_final_ss, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %81

65:                                               ; preds = %54
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @UC_STRICT_RESTORE_SS, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %65
  %73 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0))
  %74 = load i32, i32* @nerrs, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* @nerrs, align 4
  br label %80

76:                                               ; preds = %65
  %77 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %79 = call i64* @ssptr(%struct.TYPE_6__* %78)
  store i64 0, i64* %79, align 8
  br label %80

80:                                               ; preds = %76, %72
  br label %81

81:                                               ; preds = %80, %54
  %82 = load i32, i32* %4, align 4
  store i32 %82, i32* @sig_trapped, align 4
  ret void
}

declare dso_local i32 @validate_signal_ss(i32, %struct.TYPE_6__*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64* @ssptr(%struct.TYPE_6__*) #1

declare dso_local i32 @memcpy(i64**, i64**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 1136}
