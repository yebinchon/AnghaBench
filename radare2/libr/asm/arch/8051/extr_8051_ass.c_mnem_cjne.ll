; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/8051/extr_8051_ass.c_mnem_cjne.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/8051/extr_8051_ass.c_mnem_cjne.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"a\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i32, i32**)* @mnem_cjne to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mnem_cjne(i8** %0, i32 %1, i32** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8** %0, i8*** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32** %2, i32*** %7, align 8
  %13 = load i8**, i8*** %5, align 8
  %14 = getelementptr inbounds i8*, i8** %13, i64 2
  %15 = load i8*, i8** %14, align 8
  %16 = call i32 @to_address(i8* %15, i32* %8)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %3
  %19 = load i32, i32* %6, align 4
  %20 = add nsw i32 %19, 1
  %21 = load i32, i32* %8, align 4
  %22 = load i32**, i32*** %7, align 8
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 2
  %25 = call i32 @relative_address(i32 %20, i32 %21, i32* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %18, %3
  store i32 0, i32* %4, align 4
  br label %143

28:                                               ; preds = %18
  %29 = load i8**, i8*** %5, align 8
  %30 = getelementptr inbounds i8*, i8** %29, i64 0
  %31 = load i8*, i8** %30, align 8
  %32 = call i32 @r_str_casecmp(i8* %31, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %80, label %34

34:                                               ; preds = %28
  %35 = load i8**, i8*** %5, align 8
  %36 = getelementptr inbounds i8*, i8** %35, i64 1
  %37 = load i8*, i8** %36, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 0
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %40, 35
  br i1 %41, label %42, label %62

42:                                               ; preds = %34
  %43 = load i8**, i8*** %5, align 8
  %44 = getelementptr inbounds i8*, i8** %43, i64 1
  %45 = load i8*, i8** %44, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 1
  %47 = call i32 @resolve_immediate(i8* %46, i32* %9)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %42
  store i32 0, i32* %4, align 4
  br label %143

50:                                               ; preds = %42
  %51 = load i32**, i32*** %7, align 8
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  store i32 180, i32* %53, align 4
  %54 = load i32, i32* %9, align 4
  %55 = and i32 %54, 255
  %56 = load i32**, i32*** %7, align 8
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 1
  store i32 %55, i32* %58, align 4
  %59 = load i32**, i32*** %7, align 8
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 3
  store i32* %61, i32** %59, align 8
  store i32 1, i32* %4, align 4
  br label %143

62:                                               ; preds = %34
  %63 = load i8**, i8*** %5, align 8
  %64 = getelementptr inbounds i8*, i8** %63, i64 1
  %65 = load i8*, i8** %64, align 8
  %66 = call i32 @address_direct(i8* %65, i32* %10)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %62
  store i32 0, i32* %4, align 4
  br label %143

69:                                               ; preds = %62
  %70 = load i32**, i32*** %7, align 8
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 0
  store i32 181, i32* %72, align 4
  %73 = load i32, i32* %10, align 4
  %74 = load i32**, i32*** %7, align 8
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 1
  store i32 %73, i32* %76, align 4
  %77 = load i32**, i32*** %7, align 8
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 3
  store i32* %79, i32** %77, align 8
  store i32 1, i32* %4, align 4
  br label %143

80:                                               ; preds = %28
  %81 = load i8**, i8*** %5, align 8
  %82 = getelementptr inbounds i8*, i8** %81, i64 0
  %83 = load i8*, i8** %82, align 8
  %84 = call i64 @is_reg(i8* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %111

86:                                               ; preds = %80
  %87 = load i8**, i8*** %5, align 8
  %88 = getelementptr inbounds i8*, i8** %87, i64 1
  %89 = load i8*, i8** %88, align 8
  %90 = getelementptr inbounds i8, i8* %89, i64 1
  %91 = call i32 @resolve_immediate(i8* %90, i32* %11)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %94, label %93

93:                                               ; preds = %86
  store i32 0, i32* %4, align 4
  br label %143

94:                                               ; preds = %86
  %95 = load i8**, i8*** %5, align 8
  %96 = getelementptr inbounds i8*, i8** %95, i64 0
  %97 = load i8*, i8** %96, align 8
  %98 = call i32 @register_number(i8* %97)
  %99 = or i32 191, %98
  %100 = load i32**, i32*** %7, align 8
  %101 = load i32*, i32** %100, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 0
  store i32 %99, i32* %102, align 4
  %103 = load i32, i32* %11, align 4
  %104 = and i32 %103, 255
  %105 = load i32**, i32*** %7, align 8
  %106 = load i32*, i32** %105, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 1
  store i32 %104, i32* %107, align 4
  %108 = load i32**, i32*** %7, align 8
  %109 = load i32*, i32** %108, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 3
  store i32* %110, i32** %108, align 8
  store i32 1, i32* %4, align 4
  br label %143

111:                                              ; preds = %80
  %112 = load i8**, i8*** %5, align 8
  %113 = getelementptr inbounds i8*, i8** %112, i64 0
  %114 = load i8*, i8** %113, align 8
  %115 = call i64 @is_indirect_reg(i8* %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %142

117:                                              ; preds = %111
  %118 = load i8**, i8*** %5, align 8
  %119 = getelementptr inbounds i8*, i8** %118, i64 1
  %120 = load i8*, i8** %119, align 8
  %121 = getelementptr inbounds i8, i8* %120, i64 1
  %122 = call i32 @resolve_immediate(i8* %121, i32* %12)
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %125, label %124

124:                                              ; preds = %117
  store i32 0, i32* %4, align 4
  br label %143

125:                                              ; preds = %117
  %126 = load i8**, i8*** %5, align 8
  %127 = getelementptr inbounds i8*, i8** %126, i64 0
  %128 = load i8*, i8** %127, align 8
  %129 = call i32 @register_number(i8* %128)
  %130 = or i32 182, %129
  %131 = load i32**, i32*** %7, align 8
  %132 = load i32*, i32** %131, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 0
  store i32 %130, i32* %133, align 4
  %134 = load i32, i32* %12, align 4
  %135 = and i32 %134, 255
  %136 = load i32**, i32*** %7, align 8
  %137 = load i32*, i32** %136, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 1
  store i32 %135, i32* %138, align 4
  %139 = load i32**, i32*** %7, align 8
  %140 = load i32*, i32** %139, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 3
  store i32* %141, i32** %139, align 8
  store i32 1, i32* %4, align 4
  br label %143

142:                                              ; preds = %111
  store i32 0, i32* %4, align 4
  br label %143

143:                                              ; preds = %142, %125, %124, %94, %93, %69, %68, %50, %49, %27
  %144 = load i32, i32* %4, align 4
  ret i32 %144
}

declare dso_local i32 @to_address(i8*, i32*) #1

declare dso_local i32 @relative_address(i32, i32, i32*) #1

declare dso_local i32 @r_str_casecmp(i8*, i8*) #1

declare dso_local i32 @resolve_immediate(i8*, i32*) #1

declare dso_local i32 @address_direct(i8*, i32*) #1

declare dso_local i64 @is_reg(i8*) #1

declare dso_local i32 @register_number(i8*) #1

declare dso_local i64 @is_indirect_reg(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
