; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/x86/extr_sigreturn.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/x86/extr_sigreturn.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@SIGSTKSZ = common dso_local global i32 0, align 4
@altstack_data = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"sigaltstack\00", align 1
@SIGUSR1 = common dso_local global i32 0, align 4
@sigusr1 = common dso_local global i32 0, align 4
@SIGTRAP = common dso_local global i32 0, align 4
@sigtrap = common dso_local global i32 0, align 4
@SA_ONSTACK = common dso_local global i32 0, align 4
@gdt_data16_idx = common dso_local global i64 0, align 8
@sig_corrupt_final_ss = common dso_local global i32 0, align 4
@SIGSEGV = common dso_local global i32 0, align 4
@SIGBUS = common dso_local global i32 0, align 4
@SIGILL = common dso_local global i32 0, align 4
@ldt_nonexistent_sel = common dso_local global i16 0, align 2
@npcode32_sel = common dso_local global i32 0, align 4
@npdata32_sel = common dso_local global i16 0, align 2
@gdt_npdata32_idx = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i16, align 2
  %4 = alloca i16, align 2
  %5 = alloca %struct.TYPE_3__, align 4
  store i32 0, i32* %1, align 4
  store i32 0, i32* %2, align 4
  %6 = call i16 asm sideeffect "mov %cs,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !2
  store i16 %6, i16* %3, align 2
  %7 = call i16 asm sideeffect "mov %ss,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !3
  store i16 %7, i16* %4, align 2
  %8 = call i32 (...) @setup_ldt()
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %10 = load i32, i32* @SIGSTKSZ, align 4
  store i32 %10, i32* %9, align 4
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  %12 = load i32, i32* @altstack_data, align 4
  store i32 %12, i32* %11, align 4
  %13 = call i64 @sigaltstack(%struct.TYPE_3__* %5, i32* null)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %0
  %16 = call i32 @err(i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  br label %17

17:                                               ; preds = %15, %0
  %18 = load i32, i32* @SIGUSR1, align 4
  %19 = load i32, i32* @sigusr1, align 4
  %20 = call i32 @sethandler(i32 %18, i32 %19, i32 0)
  %21 = load i32, i32* @SIGTRAP, align 4
  %22 = load i32, i32* @sigtrap, align 4
  %23 = load i32, i32* @SA_ONSTACK, align 4
  %24 = call i32 @sethandler(i32 %21, i32 %22, i32 %23)
  %25 = call i64 @test_valid_sigreturn(i32 64, i32 0, i32 -1)
  %26 = load i32, i32* %2, align 4
  %27 = sext i32 %26 to i64
  %28 = add nsw i64 %27, %25
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %2, align 4
  %30 = call i64 @test_valid_sigreturn(i32 32, i32 0, i32 -1)
  %31 = load i32, i32* %2, align 4
  %32 = sext i32 %31 to i64
  %33 = add nsw i64 %32, %30
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %2, align 4
  %35 = call i64 @test_valid_sigreturn(i32 16, i32 0, i32 -1)
  %36 = load i32, i32* %2, align 4
  %37 = sext i32 %36 to i64
  %38 = add nsw i64 %37, %35
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %2, align 4
  %40 = call i64 @test_valid_sigreturn(i32 64, i32 1, i32 -1)
  %41 = load i32, i32* %2, align 4
  %42 = sext i32 %41 to i64
  %43 = add nsw i64 %42, %40
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %2, align 4
  %45 = call i64 @test_valid_sigreturn(i32 32, i32 1, i32 -1)
  %46 = load i32, i32* %2, align 4
  %47 = sext i32 %46 to i64
  %48 = add nsw i64 %47, %45
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %2, align 4
  %50 = call i64 @test_valid_sigreturn(i32 16, i32 1, i32 -1)
  %51 = load i32, i32* %2, align 4
  %52 = sext i32 %51 to i64
  %53 = add nsw i64 %52, %50
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %2, align 4
  %55 = load i64, i64* @gdt_data16_idx, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %82

57:                                               ; preds = %17
  %58 = load i64, i64* @gdt_data16_idx, align 8
  %59 = call zeroext i16 @GDT3(i64 %58)
  %60 = zext i16 %59 to i32
  %61 = call i64 @test_valid_sigreturn(i32 64, i32 1, i32 %60)
  %62 = load i32, i32* %2, align 4
  %63 = sext i32 %62 to i64
  %64 = add nsw i64 %63, %61
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* %2, align 4
  %66 = load i64, i64* @gdt_data16_idx, align 8
  %67 = call zeroext i16 @GDT3(i64 %66)
  %68 = zext i16 %67 to i32
  %69 = call i64 @test_valid_sigreturn(i32 32, i32 1, i32 %68)
  %70 = load i32, i32* %2, align 4
  %71 = sext i32 %70 to i64
  %72 = add nsw i64 %71, %69
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* %2, align 4
  %74 = load i64, i64* @gdt_data16_idx, align 8
  %75 = call zeroext i16 @GDT3(i64 %74)
  %76 = zext i16 %75 to i32
  %77 = call i64 @test_valid_sigreturn(i32 16, i32 1, i32 %76)
  %78 = load i32, i32* %2, align 4
  %79 = sext i32 %78 to i64
  %80 = add nsw i64 %79, %77
  %81 = trunc i64 %80 to i32
  store i32 %81, i32* %2, align 4
  br label %82

82:                                               ; preds = %57, %17
  store i32 1, i32* @sig_corrupt_final_ss, align 4
  %83 = call i64 @test_valid_sigreturn(i32 32, i32 0, i32 -1)
  %84 = load i32, i32* %2, align 4
  %85 = sext i32 %84 to i64
  %86 = add nsw i64 %85, %83
  %87 = trunc i64 %86 to i32
  store i32 %87, i32* %2, align 4
  %88 = call i64 @test_valid_sigreturn(i32 32, i32 1, i32 -1)
  %89 = load i32, i32* %2, align 4
  %90 = sext i32 %89 to i64
  %91 = add nsw i64 %90, %88
  %92 = trunc i64 %91 to i32
  store i32 %92, i32* %2, align 4
  store i32 0, i32* @sig_corrupt_final_ss, align 4
  %93 = load i32, i32* @SIGTRAP, align 4
  %94 = call i32 @clearhandler(i32 %93)
  %95 = load i32, i32* @SIGSEGV, align 4
  %96 = load i32, i32* @sigtrap, align 4
  %97 = load i32, i32* @SA_ONSTACK, align 4
  %98 = call i32 @sethandler(i32 %95, i32 %96, i32 %97)
  %99 = load i32, i32* @SIGBUS, align 4
  %100 = load i32, i32* @sigtrap, align 4
  %101 = load i32, i32* @SA_ONSTACK, align 4
  %102 = call i32 @sethandler(i32 %99, i32 %100, i32 %101)
  %103 = load i32, i32* @SIGILL, align 4
  %104 = load i32, i32* @sigtrap, align 4
  %105 = load i32, i32* @SA_ONSTACK, align 4
  %106 = call i32 @sethandler(i32 %103, i32 %104, i32 %105)
  %107 = load i16, i16* @ldt_nonexistent_sel, align 2
  %108 = call i32 @test_bad_iret(i32 64, i16 zeroext %107, i32 -1)
  %109 = load i16, i16* @ldt_nonexistent_sel, align 2
  %110 = call i32 @test_bad_iret(i32 32, i16 zeroext %109, i32 -1)
  %111 = load i16, i16* @ldt_nonexistent_sel, align 2
  %112 = call i32 @test_bad_iret(i32 16, i16 zeroext %111, i32 -1)
  %113 = load i16, i16* %3, align 2
  %114 = call i32 @test_bad_iret(i32 64, i16 zeroext %113, i32 -1)
  %115 = load i16, i16* %3, align 2
  %116 = call i32 @test_bad_iret(i32 32, i16 zeroext %115, i32 -1)
  %117 = load i16, i16* %3, align 2
  %118 = call i32 @test_bad_iret(i32 16, i16 zeroext %117, i32 -1)
  %119 = load i16, i16* %4, align 2
  %120 = load i32, i32* @npcode32_sel, align 4
  %121 = call i32 @test_bad_iret(i32 32, i16 zeroext %119, i32 %120)
  %122 = load i16, i16* @npdata32_sel, align 2
  %123 = call i32 @test_bad_iret(i32 32, i16 zeroext %122, i32 -1)
  %124 = load i64, i64* @gdt_npdata32_idx, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %130

126:                                              ; preds = %82
  %127 = load i64, i64* @gdt_npdata32_idx, align 8
  %128 = call zeroext i16 @GDT3(i64 %127)
  %129 = call i32 @test_bad_iret(i32 32, i16 zeroext %128, i32 -1)
  br label %130

130:                                              ; preds = %126, %82
  %131 = call i64 (...) @test_nonstrict_ss()
  %132 = load i32, i32* %2, align 4
  %133 = sext i32 %132 to i64
  %134 = add nsw i64 %133, %131
  %135 = trunc i64 %134 to i32
  store i32 %135, i32* %2, align 4
  %136 = load i32, i32* %2, align 4
  %137 = icmp ne i32 %136, 0
  %138 = zext i1 %137 to i64
  %139 = select i1 %137, i32 1, i32 0
  ret i32 %139
}

declare dso_local i32 @setup_ldt(...) #1

declare dso_local i64 @sigaltstack(%struct.TYPE_3__*, i32*) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @sethandler(i32, i32, i32) #1

declare dso_local i64 @test_valid_sigreturn(i32, i32, i32) #1

declare dso_local zeroext i16 @GDT3(i64) #1

declare dso_local i32 @clearhandler(i32) #1

declare dso_local i32 @test_bad_iret(i32, i16 zeroext, i32) #1

declare dso_local i64 @test_nonstrict_ss(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 980}
!3 = !{i32 1026}
