; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/8051/extr_8051_ass.c_mnem_anl.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/8051/extr_8051_ass.c_mnem_anl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i32, i32**)* @mnem_anl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mnem_anl(i8** %0, i32 %1, i32** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8** %0, i8*** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32** %2, i32*** %7, align 8
  %10 = load i8**, i8*** %5, align 8
  %11 = getelementptr inbounds i8*, i8** %10, i64 0
  %12 = load i8*, i8** %11, align 8
  %13 = call i32 @strcmp(i8* %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %36, label %15

15:                                               ; preds = %3
  %16 = load i8**, i8*** %5, align 8
  %17 = getelementptr inbounds i8*, i8** %16, i64 1
  %18 = load i8*, i8** %17, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 0
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %21, 47
  br i1 %22, label %23, label %30

23:                                               ; preds = %15
  %24 = load i8**, i8*** %5, align 8
  %25 = getelementptr inbounds i8*, i8** %24, i64 1
  %26 = load i8*, i8** %25, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 1
  %28 = load i32**, i32*** %7, align 8
  %29 = call i32 @singlearg_bit(i32 176, i8* %27, i32** %28)
  store i32 %29, i32* %4, align 4
  br label %137

30:                                               ; preds = %15
  %31 = load i8**, i8*** %5, align 8
  %32 = getelementptr inbounds i8*, i8** %31, i64 1
  %33 = load i8*, i8** %32, align 8
  %34 = load i32**, i32*** %7, align 8
  %35 = call i32 @singlearg_bit(i32 130, i8* %33, i32** %34)
  store i32 %35, i32* %4, align 4
  br label %137

36:                                               ; preds = %3
  %37 = load i8**, i8*** %5, align 8
  %38 = getelementptr inbounds i8*, i8** %37, i64 0
  %39 = load i8*, i8** %38, align 8
  %40 = call i32 @strcmp(i8* %39, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %86, label %42

42:                                               ; preds = %36
  %43 = load i8**, i8*** %5, align 8
  %44 = getelementptr inbounds i8*, i8** %43, i64 1
  %45 = load i8*, i8** %44, align 8
  %46 = call i64 @is_indirect_reg(i8* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %42
  %49 = load i8**, i8*** %5, align 8
  %50 = getelementptr inbounds i8*, i8** %49, i64 1
  %51 = load i8*, i8** %50, align 8
  %52 = load i32**, i32*** %7, align 8
  %53 = call i32 @singlearg_register(i32 86, i8* %51, i32** %52)
  store i32 %53, i32* %4, align 4
  br label %137

54:                                               ; preds = %42
  %55 = load i8**, i8*** %5, align 8
  %56 = getelementptr inbounds i8*, i8** %55, i64 1
  %57 = load i8*, i8** %56, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 0
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp eq i32 %60, 35
  br i1 %61, label %62, label %68

62:                                               ; preds = %54
  %63 = load i8**, i8*** %5, align 8
  %64 = getelementptr inbounds i8*, i8** %63, i64 1
  %65 = load i8*, i8** %64, align 8
  %66 = load i32**, i32*** %7, align 8
  %67 = call i32 @singlearg_immediate(i32 84, i8* %65, i32** %66)
  store i32 %67, i32* %4, align 4
  br label %137

68:                                               ; preds = %54
  %69 = load i8**, i8*** %5, align 8
  %70 = getelementptr inbounds i8*, i8** %69, i64 1
  %71 = load i8*, i8** %70, align 8
  %72 = call i64 @is_reg(i8* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %68
  %75 = load i8**, i8*** %5, align 8
  %76 = getelementptr inbounds i8*, i8** %75, i64 1
  %77 = load i8*, i8** %76, align 8
  %78 = load i32**, i32*** %7, align 8
  %79 = call i32 @singlearg_register(i32 88, i8* %77, i32** %78)
  store i32 %79, i32* %4, align 4
  br label %137

80:                                               ; preds = %68
  %81 = load i8**, i8*** %5, align 8
  %82 = getelementptr inbounds i8*, i8** %81, i64 1
  %83 = load i8*, i8** %82, align 8
  %84 = load i32**, i32*** %7, align 8
  %85 = call i32 @singlearg_direct(i32 85, i8* %83, i32** %84)
  store i32 %85, i32* %4, align 4
  br label %137

86:                                               ; preds = %36
  %87 = load i8**, i8*** %5, align 8
  %88 = getelementptr inbounds i8*, i8** %87, i64 0
  %89 = load i8*, i8** %88, align 8
  %90 = call i32 @address_direct(i8* %89, i32* %8)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %93, label %92

92:                                               ; preds = %86
  store i32 0, i32* %4, align 4
  br label %137

93:                                               ; preds = %86
  %94 = load i8**, i8*** %5, align 8
  %95 = getelementptr inbounds i8*, i8** %94, i64 1
  %96 = load i8*, i8** %95, align 8
  %97 = call i32 @r_str_casecmp(i8* %96, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %105, label %99

99:                                               ; preds = %93
  %100 = load i8**, i8*** %5, align 8
  %101 = getelementptr inbounds i8*, i8** %100, i64 0
  %102 = load i8*, i8** %101, align 8
  %103 = load i32**, i32*** %7, align 8
  %104 = call i32 @singlearg_direct(i32 82, i8* %102, i32** %103)
  store i32 %104, i32* %4, align 4
  br label %137

105:                                              ; preds = %93
  %106 = load i8**, i8*** %5, align 8
  %107 = getelementptr inbounds i8*, i8** %106, i64 1
  %108 = load i8*, i8** %107, align 8
  %109 = getelementptr inbounds i8, i8* %108, i64 0
  %110 = load i8, i8* %109, align 1
  %111 = sext i8 %110 to i32
  %112 = icmp ne i32 %111, 35
  br i1 %112, label %120, label %113

113:                                              ; preds = %105
  %114 = load i8**, i8*** %5, align 8
  %115 = getelementptr inbounds i8*, i8** %114, i64 1
  %116 = load i8*, i8** %115, align 8
  %117 = getelementptr inbounds i8, i8* %116, i64 1
  %118 = call i32 @resolve_immediate(i8* %117, i32* %9)
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %121, label %120

120:                                              ; preds = %113, %105
  store i32 0, i32* %4, align 4
  br label %137

121:                                              ; preds = %113
  %122 = load i32**, i32*** %7, align 8
  %123 = load i32*, i32** %122, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 0
  store i32 83, i32* %124, align 4
  %125 = load i32, i32* %8, align 4
  %126 = load i32**, i32*** %7, align 8
  %127 = load i32*, i32** %126, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 1
  store i32 %125, i32* %128, align 4
  %129 = load i32, i32* %9, align 4
  %130 = and i32 %129, 255
  %131 = load i32**, i32*** %7, align 8
  %132 = load i32*, i32** %131, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 2
  store i32 %130, i32* %133, align 4
  %134 = load i32**, i32*** %7, align 8
  %135 = load i32*, i32** %134, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 3
  store i32* %136, i32** %134, align 8
  store i32 1, i32* %4, align 4
  br label %137

137:                                              ; preds = %121, %120, %99, %92, %80, %74, %62, %48, %30, %23
  %138 = load i32, i32* %4, align 4
  ret i32 %138
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @singlearg_bit(i32, i8*, i32**) #1

declare dso_local i64 @is_indirect_reg(i8*) #1

declare dso_local i32 @singlearg_register(i32, i8*, i32**) #1

declare dso_local i32 @singlearg_immediate(i32, i8*, i32**) #1

declare dso_local i64 @is_reg(i8*) #1

declare dso_local i32 @singlearg_direct(i32, i8*, i32**) #1

declare dso_local i32 @address_direct(i8*, i32*) #1

declare dso_local i32 @r_str_casecmp(i8*, i8*) #1

declare dso_local i32 @resolve_immediate(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
