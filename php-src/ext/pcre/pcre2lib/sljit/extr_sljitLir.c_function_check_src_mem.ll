; ModuleID = '/home/carl/AnghaBench/php-src/ext/pcre/pcre2lib/sljit/extr_sljitLir.c_function_check_src_mem.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/pcre/pcre2lib/sljit/extr_sljitLir.c_function_check_src_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sljit_compiler = type { i32, i32 }

@SLJIT_MEM = common dso_local global i32 0, align 4
@REG_MASK = common dso_local global i32 0, align 4
@SLJIT_UNUSED = common dso_local global i32 0, align 4
@OFFS_REG_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sljit_compiler*, i32, i32)* @function_check_src_mem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @function_check_src_mem(%struct.sljit_compiler* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sljit_compiler*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.sljit_compiler* %0, %struct.sljit_compiler** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load %struct.sljit_compiler*, %struct.sljit_compiler** %5, align 8
  %9 = getelementptr inbounds %struct.sljit_compiler, %struct.sljit_compiler* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %17, label %12

12:                                               ; preds = %3
  %13 = load %struct.sljit_compiler*, %struct.sljit_compiler** %5, align 8
  %14 = getelementptr inbounds %struct.sljit_compiler, %struct.sljit_compiler* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %17, label %18

17:                                               ; preds = %12, %3
  store i32 0, i32* %4, align 4
  br label %85

18:                                               ; preds = %12
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @SLJIT_MEM, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %18
  store i32 0, i32* %4, align 4
  br label %85

24:                                               ; preds = %18
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @REG_MASK, align 4
  %27 = and i32 %25, %26
  %28 = load i32, i32* @SLJIT_UNUSED, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %37, label %30

30:                                               ; preds = %24
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @REG_MASK, align 4
  %33 = and i32 %31, %32
  %34 = call i64 @FUNCTION_CHECK_IS_REG(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %30
  store i32 0, i32* %4, align 4
  br label %85

37:                                               ; preds = %30, %24
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @REG_MASK, align 4
  %40 = and i32 %38, %39
  %41 = call i64 @CHECK_IF_VIRTUAL_REGISTER(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  store i32 0, i32* %4, align 4
  br label %85

44:                                               ; preds = %37
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* @OFFS_REG_MASK, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %74

49:                                               ; preds = %44
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* @REG_MASK, align 4
  %52 = and i32 %50, %51
  %53 = load i32, i32* @SLJIT_UNUSED, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %49
  store i32 0, i32* %4, align 4
  br label %85

56:                                               ; preds = %49
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @OFFS_REG(i32 %57)
  %59 = call i64 @FUNCTION_CHECK_IS_REG(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %56
  store i32 0, i32* %4, align 4
  br label %85

62:                                               ; preds = %56
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @OFFS_REG(i32 %63)
  %65 = call i64 @CHECK_IF_VIRTUAL_REGISTER(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %62
  store i32 0, i32* %4, align 4
  br label %85

68:                                               ; preds = %62
  %69 = load i32, i32* %7, align 4
  %70 = and i32 %69, -4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %68
  store i32 0, i32* %4, align 4
  br label %85

73:                                               ; preds = %68
  br label %74

74:                                               ; preds = %73, %44
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* @SLJIT_MEM, align 4
  %77 = load i32, i32* @REG_MASK, align 4
  %78 = or i32 %76, %77
  %79 = load i32, i32* @OFFS_REG_MASK, align 4
  %80 = or i32 %78, %79
  %81 = xor i32 %80, -1
  %82 = and i32 %75, %81
  %83 = icmp eq i32 %82, 0
  %84 = zext i1 %83 to i32
  store i32 %84, i32* %4, align 4
  br label %85

85:                                               ; preds = %74, %72, %67, %61, %55, %43, %36, %23, %17
  %86 = load i32, i32* %4, align 4
  ret i32 %86
}

declare dso_local i64 @FUNCTION_CHECK_IS_REG(i32) #1

declare dso_local i64 @CHECK_IF_VIRTUAL_REGISTER(i32) #1

declare dso_local i32 @OFFS_REG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
