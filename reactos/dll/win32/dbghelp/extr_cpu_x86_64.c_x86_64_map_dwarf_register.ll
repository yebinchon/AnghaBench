; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_cpu_x86_64.c_x86_64_map_dwarf_register.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_cpu_x86_64.c_x86_64_map_dwarf_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CV_AMD64_XMM0 = common dso_local global i32 0, align 4
@CV_AMD64_XMM8 = common dso_local global i32 0, align 4
@CV_AMD64_ST0 = common dso_local global i32 0, align 4
@CV_AMD64_RAX = common dso_local global i32 0, align 4
@CV_AMD64_RDX = common dso_local global i32 0, align 4
@CV_AMD64_RCX = common dso_local global i32 0, align 4
@CV_AMD64_RBX = common dso_local global i32 0, align 4
@CV_AMD64_RSI = common dso_local global i32 0, align 4
@CV_AMD64_RDI = common dso_local global i32 0, align 4
@CV_AMD64_RBP = common dso_local global i32 0, align 4
@CV_AMD64_RSP = common dso_local global i32 0, align 4
@CV_AMD64_R8 = common dso_local global i32 0, align 4
@CV_AMD64_R9 = common dso_local global i32 0, align 4
@CV_AMD64_R10 = common dso_local global i32 0, align 4
@CV_AMD64_R11 = common dso_local global i32 0, align 4
@CV_AMD64_R12 = common dso_local global i32 0, align 4
@CV_AMD64_R13 = common dso_local global i32 0, align 4
@CV_AMD64_R14 = common dso_local global i32 0, align 4
@CV_AMD64_R15 = common dso_local global i32 0, align 4
@CV_AMD64_RIP = common dso_local global i32 0, align 4
@CV_AMD64_EFLAGS = common dso_local global i32 0, align 4
@CV_AMD64_ES = common dso_local global i32 0, align 4
@CV_AMD64_CS = common dso_local global i32 0, align 4
@CV_AMD64_SS = common dso_local global i32 0, align 4
@CV_AMD64_DS = common dso_local global i32 0, align 4
@CV_AMD64_FS = common dso_local global i32 0, align 4
@CV_AMD64_GS = common dso_local global i32 0, align 4
@CV_AMD64_TR = common dso_local global i32 0, align 4
@CV_AMD64_LDTR = common dso_local global i32 0, align 4
@CV_AMD64_MXCSR = common dso_local global i32 0, align 4
@CV_AMD64_CTRL = common dso_local global i32 0, align 4
@CV_AMD64_STAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Don't know how to map register %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @x86_64_map_dwarf_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @x86_64_map_dwarf_register(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp uge i32 %7, 17
  br i1 %8, label %9, label %17

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  %11 = icmp ule i32 %10, 24
  br i1 %11, label %12, label %17

12:                                               ; preds = %9
  %13 = load i32, i32* @CV_AMD64_XMM0, align 4
  %14 = load i32, i32* %4, align 4
  %15 = add i32 %13, %14
  %16 = sub i32 %15, 17
  store i32 %16, i32* %6, align 4
  br label %105

17:                                               ; preds = %9, %2
  %18 = load i32, i32* %4, align 4
  %19 = icmp uge i32 %18, 25
  br i1 %19, label %20, label %28

20:                                               ; preds = %17
  %21 = load i32, i32* %4, align 4
  %22 = icmp ule i32 %21, 32
  br i1 %22, label %23, label %28

23:                                               ; preds = %20
  %24 = load i32, i32* @CV_AMD64_XMM8, align 4
  %25 = load i32, i32* %4, align 4
  %26 = add i32 %24, %25
  %27 = sub i32 %26, 25
  store i32 %27, i32* %6, align 4
  br label %104

28:                                               ; preds = %20, %17
  %29 = load i32, i32* %4, align 4
  %30 = icmp uge i32 %29, 33
  br i1 %30, label %31, label %39

31:                                               ; preds = %28
  %32 = load i32, i32* %4, align 4
  %33 = icmp ule i32 %32, 40
  br i1 %33, label %34, label %39

34:                                               ; preds = %31
  %35 = load i32, i32* @CV_AMD64_ST0, align 4
  %36 = load i32, i32* %4, align 4
  %37 = add i32 %35, %36
  %38 = sub i32 %37, 33
  store i32 %38, i32* %6, align 4
  br label %103

39:                                               ; preds = %31, %28
  %40 = load i32, i32* %4, align 4
  switch i32 %40, label %99 [
    i32 0, label %41
    i32 1, label %43
    i32 2, label %45
    i32 3, label %47
    i32 4, label %49
    i32 5, label %51
    i32 6, label %53
    i32 7, label %55
    i32 8, label %57
    i32 9, label %59
    i32 10, label %61
    i32 11, label %63
    i32 12, label %65
    i32 13, label %67
    i32 14, label %69
    i32 15, label %71
    i32 16, label %73
    i32 49, label %75
    i32 50, label %77
    i32 51, label %79
    i32 52, label %81
    i32 53, label %83
    i32 54, label %85
    i32 55, label %87
    i32 62, label %89
    i32 63, label %91
    i32 64, label %93
    i32 65, label %95
    i32 66, label %97
  ]

41:                                               ; preds = %39
  %42 = load i32, i32* @CV_AMD64_RAX, align 4
  store i32 %42, i32* %6, align 4
  br label %102

43:                                               ; preds = %39
  %44 = load i32, i32* @CV_AMD64_RDX, align 4
  store i32 %44, i32* %6, align 4
  br label %102

45:                                               ; preds = %39
  %46 = load i32, i32* @CV_AMD64_RCX, align 4
  store i32 %46, i32* %6, align 4
  br label %102

47:                                               ; preds = %39
  %48 = load i32, i32* @CV_AMD64_RBX, align 4
  store i32 %48, i32* %6, align 4
  br label %102

49:                                               ; preds = %39
  %50 = load i32, i32* @CV_AMD64_RSI, align 4
  store i32 %50, i32* %6, align 4
  br label %102

51:                                               ; preds = %39
  %52 = load i32, i32* @CV_AMD64_RDI, align 4
  store i32 %52, i32* %6, align 4
  br label %102

53:                                               ; preds = %39
  %54 = load i32, i32* @CV_AMD64_RBP, align 4
  store i32 %54, i32* %6, align 4
  br label %102

55:                                               ; preds = %39
  %56 = load i32, i32* @CV_AMD64_RSP, align 4
  store i32 %56, i32* %6, align 4
  br label %102

57:                                               ; preds = %39
  %58 = load i32, i32* @CV_AMD64_R8, align 4
  store i32 %58, i32* %6, align 4
  br label %102

59:                                               ; preds = %39
  %60 = load i32, i32* @CV_AMD64_R9, align 4
  store i32 %60, i32* %6, align 4
  br label %102

61:                                               ; preds = %39
  %62 = load i32, i32* @CV_AMD64_R10, align 4
  store i32 %62, i32* %6, align 4
  br label %102

63:                                               ; preds = %39
  %64 = load i32, i32* @CV_AMD64_R11, align 4
  store i32 %64, i32* %6, align 4
  br label %102

65:                                               ; preds = %39
  %66 = load i32, i32* @CV_AMD64_R12, align 4
  store i32 %66, i32* %6, align 4
  br label %102

67:                                               ; preds = %39
  %68 = load i32, i32* @CV_AMD64_R13, align 4
  store i32 %68, i32* %6, align 4
  br label %102

69:                                               ; preds = %39
  %70 = load i32, i32* @CV_AMD64_R14, align 4
  store i32 %70, i32* %6, align 4
  br label %102

71:                                               ; preds = %39
  %72 = load i32, i32* @CV_AMD64_R15, align 4
  store i32 %72, i32* %6, align 4
  br label %102

73:                                               ; preds = %39
  %74 = load i32, i32* @CV_AMD64_RIP, align 4
  store i32 %74, i32* %6, align 4
  br label %102

75:                                               ; preds = %39
  %76 = load i32, i32* @CV_AMD64_EFLAGS, align 4
  store i32 %76, i32* %6, align 4
  br label %102

77:                                               ; preds = %39
  %78 = load i32, i32* @CV_AMD64_ES, align 4
  store i32 %78, i32* %6, align 4
  br label %102

79:                                               ; preds = %39
  %80 = load i32, i32* @CV_AMD64_CS, align 4
  store i32 %80, i32* %6, align 4
  br label %102

81:                                               ; preds = %39
  %82 = load i32, i32* @CV_AMD64_SS, align 4
  store i32 %82, i32* %6, align 4
  br label %102

83:                                               ; preds = %39
  %84 = load i32, i32* @CV_AMD64_DS, align 4
  store i32 %84, i32* %6, align 4
  br label %102

85:                                               ; preds = %39
  %86 = load i32, i32* @CV_AMD64_FS, align 4
  store i32 %86, i32* %6, align 4
  br label %102

87:                                               ; preds = %39
  %88 = load i32, i32* @CV_AMD64_GS, align 4
  store i32 %88, i32* %6, align 4
  br label %102

89:                                               ; preds = %39
  %90 = load i32, i32* @CV_AMD64_TR, align 4
  store i32 %90, i32* %6, align 4
  br label %102

91:                                               ; preds = %39
  %92 = load i32, i32* @CV_AMD64_LDTR, align 4
  store i32 %92, i32* %6, align 4
  br label %102

93:                                               ; preds = %39
  %94 = load i32, i32* @CV_AMD64_MXCSR, align 4
  store i32 %94, i32* %6, align 4
  br label %102

95:                                               ; preds = %39
  %96 = load i32, i32* @CV_AMD64_CTRL, align 4
  store i32 %96, i32* %6, align 4
  br label %102

97:                                               ; preds = %39
  %98 = load i32, i32* @CV_AMD64_STAT, align 4
  store i32 %98, i32* %6, align 4
  br label %102

99:                                               ; preds = %39
  %100 = load i32, i32* %4, align 4
  %101 = call i32 @FIXME(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %100)
  store i32 0, i32* %3, align 4
  br label %107

102:                                              ; preds = %97, %95, %93, %91, %89, %87, %85, %83, %81, %79, %77, %75, %73, %71, %69, %67, %65, %63, %61, %59, %57, %55, %53, %51, %49, %47, %45, %43, %41
  br label %103

103:                                              ; preds = %102, %34
  br label %104

104:                                              ; preds = %103, %23
  br label %105

105:                                              ; preds = %104, %12
  %106 = load i32, i32* %6, align 4
  store i32 %106, i32* %3, align 4
  br label %107

107:                                              ; preds = %105, %99
  %108 = load i32, i32* %3, align 4
  ret i32 %108
}

declare dso_local i32 @FIXME(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
