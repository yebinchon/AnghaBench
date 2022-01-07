; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/alignment/extr_alignment_handler.c_test_alignment_handler_integer.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/alignment/extr_alignment_handler.c_test_alignment_handler_integer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"Integer\0A\00", align 1
@lbz = common dso_local global i32 0, align 4
@lbzu = common dso_local global i32 0, align 4
@lbzx = common dso_local global i32 0, align 4
@lbzux = common dso_local global i32 0, align 4
@lhz = common dso_local global i32 0, align 4
@lhzu = common dso_local global i32 0, align 4
@lhzx = common dso_local global i32 0, align 4
@lhzux = common dso_local global i32 0, align 4
@lha = common dso_local global i32 0, align 4
@lhau = common dso_local global i32 0, align 4
@lhax = common dso_local global i32 0, align 4
@lhaux = common dso_local global i32 0, align 4
@lhbrx = common dso_local global i32 0, align 4
@lwz = common dso_local global i32 0, align 4
@lwzu = common dso_local global i32 0, align 4
@lwzx = common dso_local global i32 0, align 4
@lwzux = common dso_local global i32 0, align 4
@lwa = common dso_local global i32 0, align 4
@lwax = common dso_local global i32 0, align 4
@lwaux = common dso_local global i32 0, align 4
@lwbrx = common dso_local global i32 0, align 4
@ld = common dso_local global i32 0, align 4
@ldu = common dso_local global i32 0, align 4
@ldx = common dso_local global i32 0, align 4
@ldux = common dso_local global i32 0, align 4
@lmw = common dso_local global i32 0, align 4
@stb = common dso_local global i32 0, align 4
@stbx = common dso_local global i32 0, align 4
@stbu = common dso_local global i32 0, align 4
@stbux = common dso_local global i32 0, align 4
@sth = common dso_local global i32 0, align 4
@sthx = common dso_local global i32 0, align 4
@sthu = common dso_local global i32 0, align 4
@sthux = common dso_local global i32 0, align 4
@sthbrx = common dso_local global i32 0, align 4
@stw = common dso_local global i32 0, align 4
@stwx = common dso_local global i32 0, align 4
@stwu = common dso_local global i32 0, align 4
@stwux = common dso_local global i32 0, align 4
@stwbrx = common dso_local global i32 0, align 4
@std = common dso_local global i32 0, align 4
@stdx = common dso_local global i32 0, align 4
@stdu = common dso_local global i32 0, align 4
@stdux = common dso_local global i32 0, align 4
@stmw = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test_alignment_handler_integer() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = call i32 (...) @can_open_fb0()
  %3 = icmp ne i32 %2, 0
  %4 = xor i1 %3, true
  %5 = zext i1 %4 to i32
  %6 = call i32 @SKIP_IF(i32 %5)
  %7 = call i32 @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %8 = load i32, i32* @lbz, align 4
  %9 = call i32 @LOAD_DFORM_TEST(i32 %8)
  %10 = load i32, i32* @lbzu, align 4
  %11 = call i32 @LOAD_DFORM_TEST(i32 %10)
  %12 = load i32, i32* @lbzx, align 4
  %13 = call i32 @LOAD_XFORM_TEST(i32 %12)
  %14 = load i32, i32* @lbzux, align 4
  %15 = call i32 @LOAD_XFORM_TEST(i32 %14)
  %16 = load i32, i32* @lhz, align 4
  %17 = call i32 @LOAD_DFORM_TEST(i32 %16)
  %18 = load i32, i32* @lhzu, align 4
  %19 = call i32 @LOAD_DFORM_TEST(i32 %18)
  %20 = load i32, i32* @lhzx, align 4
  %21 = call i32 @LOAD_XFORM_TEST(i32 %20)
  %22 = load i32, i32* @lhzux, align 4
  %23 = call i32 @LOAD_XFORM_TEST(i32 %22)
  %24 = load i32, i32* @lha, align 4
  %25 = call i32 @LOAD_DFORM_TEST(i32 %24)
  %26 = load i32, i32* @lhau, align 4
  %27 = call i32 @LOAD_DFORM_TEST(i32 %26)
  %28 = load i32, i32* @lhax, align 4
  %29 = call i32 @LOAD_XFORM_TEST(i32 %28)
  %30 = load i32, i32* @lhaux, align 4
  %31 = call i32 @LOAD_XFORM_TEST(i32 %30)
  %32 = load i32, i32* @lhbrx, align 4
  %33 = call i32 @LOAD_XFORM_TEST(i32 %32)
  %34 = load i32, i32* @lwz, align 4
  %35 = call i32 @LOAD_DFORM_TEST(i32 %34)
  %36 = load i32, i32* @lwzu, align 4
  %37 = call i32 @LOAD_DFORM_TEST(i32 %36)
  %38 = load i32, i32* @lwzx, align 4
  %39 = call i32 @LOAD_XFORM_TEST(i32 %38)
  %40 = load i32, i32* @lwzux, align 4
  %41 = call i32 @LOAD_XFORM_TEST(i32 %40)
  %42 = load i32, i32* @lwa, align 4
  %43 = call i32 @LOAD_DFORM_TEST(i32 %42)
  %44 = load i32, i32* @lwax, align 4
  %45 = call i32 @LOAD_XFORM_TEST(i32 %44)
  %46 = load i32, i32* @lwaux, align 4
  %47 = call i32 @LOAD_XFORM_TEST(i32 %46)
  %48 = load i32, i32* @lwbrx, align 4
  %49 = call i32 @LOAD_XFORM_TEST(i32 %48)
  %50 = load i32, i32* @ld, align 4
  %51 = call i32 @LOAD_DFORM_TEST(i32 %50)
  %52 = load i32, i32* @ldu, align 4
  %53 = call i32 @LOAD_DFORM_TEST(i32 %52)
  %54 = load i32, i32* @ldx, align 4
  %55 = call i32 @LOAD_XFORM_TEST(i32 %54)
  %56 = load i32, i32* @ldux, align 4
  %57 = call i32 @LOAD_XFORM_TEST(i32 %56)
  %58 = load i32, i32* @lmw, align 4
  %59 = call i32 @LOAD_DFORM_TEST(i32 %58)
  %60 = load i32, i32* @stb, align 4
  %61 = call i32 @STORE_DFORM_TEST(i32 %60)
  %62 = load i32, i32* @stbx, align 4
  %63 = call i32 @STORE_XFORM_TEST(i32 %62)
  %64 = load i32, i32* @stbu, align 4
  %65 = call i32 @STORE_DFORM_TEST(i32 %64)
  %66 = load i32, i32* @stbux, align 4
  %67 = call i32 @STORE_XFORM_TEST(i32 %66)
  %68 = load i32, i32* @sth, align 4
  %69 = call i32 @STORE_DFORM_TEST(i32 %68)
  %70 = load i32, i32* @sthx, align 4
  %71 = call i32 @STORE_XFORM_TEST(i32 %70)
  %72 = load i32, i32* @sthu, align 4
  %73 = call i32 @STORE_DFORM_TEST(i32 %72)
  %74 = load i32, i32* @sthux, align 4
  %75 = call i32 @STORE_XFORM_TEST(i32 %74)
  %76 = load i32, i32* @sthbrx, align 4
  %77 = call i32 @STORE_XFORM_TEST(i32 %76)
  %78 = load i32, i32* @stw, align 4
  %79 = call i32 @STORE_DFORM_TEST(i32 %78)
  %80 = load i32, i32* @stwx, align 4
  %81 = call i32 @STORE_XFORM_TEST(i32 %80)
  %82 = load i32, i32* @stwu, align 4
  %83 = call i32 @STORE_DFORM_TEST(i32 %82)
  %84 = load i32, i32* @stwux, align 4
  %85 = call i32 @STORE_XFORM_TEST(i32 %84)
  %86 = load i32, i32* @stwbrx, align 4
  %87 = call i32 @STORE_XFORM_TEST(i32 %86)
  %88 = load i32, i32* @std, align 4
  %89 = call i32 @STORE_DFORM_TEST(i32 %88)
  %90 = load i32, i32* @stdx, align 4
  %91 = call i32 @STORE_XFORM_TEST(i32 %90)
  %92 = load i32, i32* @stdu, align 4
  %93 = call i32 @STORE_DFORM_TEST(i32 %92)
  %94 = load i32, i32* @stdux, align 4
  %95 = call i32 @STORE_XFORM_TEST(i32 %94)
  %96 = load i32, i32* @stmw, align 4
  %97 = call i32 @STORE_DFORM_TEST(i32 %96)
  %98 = load i32, i32* %1, align 4
  ret i32 %98
}

declare dso_local i32 @SKIP_IF(i32) #1

declare dso_local i32 @can_open_fb0(...) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @LOAD_DFORM_TEST(i32) #1

declare dso_local i32 @LOAD_XFORM_TEST(i32) #1

declare dso_local i32 @STORE_DFORM_TEST(i32) #1

declare dso_local i32 @STORE_XFORM_TEST(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
