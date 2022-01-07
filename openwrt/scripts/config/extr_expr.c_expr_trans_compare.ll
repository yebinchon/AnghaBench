; ModuleID = '/home/carl/AnghaBench/openwrt/scripts/config/extr_expr.c_expr_trans_compare.c'
source_filename = "/home/carl/AnghaBench/openwrt/scripts/config/extr_expr.c_expr_trans_compare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symbol = type { i32 }
%struct.expr = type { i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, %struct.expr* }
%struct.TYPE_3__ = type { %struct.expr* }

@symbol_yes = common dso_local global %struct.symbol zeroinitializer, align 4
@symbol_no = common dso_local global %struct.symbol zeroinitializer, align 4
@symbol_mod = common dso_local global %struct.symbol zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.expr* @expr_trans_compare(%struct.expr* %0, i32 %1, %struct.symbol* %2) #0 {
  %4 = alloca %struct.expr*, align 8
  %5 = alloca %struct.expr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.symbol*, align 8
  %8 = alloca %struct.expr*, align 8
  %9 = alloca %struct.expr*, align 8
  store %struct.expr* %0, %struct.expr** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.symbol* %2, %struct.symbol** %7, align 8
  %10 = load %struct.expr*, %struct.expr** %5, align 8
  %11 = icmp ne %struct.expr* %10, null
  br i1 %11, label %22, label %12

12:                                               ; preds = %3
  %13 = load %struct.symbol*, %struct.symbol** %7, align 8
  %14 = call %struct.expr* @expr_alloc_symbol(%struct.symbol* %13)
  store %struct.expr* %14, %struct.expr** %5, align 8
  %15 = load i32, i32* %6, align 4
  %16 = icmp eq i32 %15, 128
  br i1 %16, label %17, label %20

17:                                               ; preds = %12
  %18 = load %struct.expr*, %struct.expr** %5, align 8
  %19 = call %struct.expr* @expr_alloc_one(i32 132, %struct.expr* %18)
  store %struct.expr* %19, %struct.expr** %5, align 8
  br label %20

20:                                               ; preds = %17, %12
  %21 = load %struct.expr*, %struct.expr** %5, align 8
  store %struct.expr* %21, %struct.expr** %4, align 8
  br label %157

22:                                               ; preds = %3
  %23 = load %struct.expr*, %struct.expr** %5, align 8
  %24 = getelementptr inbounds %struct.expr, %struct.expr* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  switch i32 %25, label %156 [
    i32 140, label %26
    i32 131, label %60
    i32 132, label %94
    i32 128, label %105
    i32 134, label %105
    i32 136, label %105
    i32 137, label %105
    i32 138, label %105
    i32 139, label %105
    i32 129, label %147
    i32 135, label %155
    i32 130, label %155
    i32 133, label %155
  ]

26:                                               ; preds = %22
  %27 = load %struct.expr*, %struct.expr** %5, align 8
  %28 = getelementptr inbounds %struct.expr, %struct.expr* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = load %struct.expr*, %struct.expr** %29, align 8
  %31 = load %struct.symbol*, %struct.symbol** %7, align 8
  %32 = call %struct.expr* @expr_trans_compare(%struct.expr* %30, i32 139, %struct.symbol* %31)
  store %struct.expr* %32, %struct.expr** %8, align 8
  %33 = load %struct.expr*, %struct.expr** %5, align 8
  %34 = getelementptr inbounds %struct.expr, %struct.expr* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load %struct.expr*, %struct.expr** %35, align 8
  %37 = load %struct.symbol*, %struct.symbol** %7, align 8
  %38 = call %struct.expr* @expr_trans_compare(%struct.expr* %36, i32 139, %struct.symbol* %37)
  store %struct.expr* %38, %struct.expr** %9, align 8
  %39 = load %struct.symbol*, %struct.symbol** %7, align 8
  %40 = icmp eq %struct.symbol* %39, @symbol_yes
  br i1 %40, label %41, label %45

41:                                               ; preds = %26
  %42 = load %struct.expr*, %struct.expr** %8, align 8
  %43 = load %struct.expr*, %struct.expr** %9, align 8
  %44 = call %struct.expr* @expr_alloc_two(i32 140, %struct.expr* %42, %struct.expr* %43)
  store %struct.expr* %44, %struct.expr** %5, align 8
  br label %45

45:                                               ; preds = %41, %26
  %46 = load %struct.symbol*, %struct.symbol** %7, align 8
  %47 = icmp eq %struct.symbol* %46, @symbol_no
  br i1 %47, label %48, label %52

48:                                               ; preds = %45
  %49 = load %struct.expr*, %struct.expr** %8, align 8
  %50 = load %struct.expr*, %struct.expr** %9, align 8
  %51 = call %struct.expr* @expr_alloc_two(i32 131, %struct.expr* %49, %struct.expr* %50)
  store %struct.expr* %51, %struct.expr** %5, align 8
  br label %52

52:                                               ; preds = %48, %45
  %53 = load i32, i32* %6, align 4
  %54 = icmp eq i32 %53, 128
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  %56 = load %struct.expr*, %struct.expr** %5, align 8
  %57 = call %struct.expr* @expr_alloc_one(i32 132, %struct.expr* %56)
  store %struct.expr* %57, %struct.expr** %5, align 8
  br label %58

58:                                               ; preds = %55, %52
  %59 = load %struct.expr*, %struct.expr** %5, align 8
  store %struct.expr* %59, %struct.expr** %4, align 8
  br label %157

60:                                               ; preds = %22
  %61 = load %struct.expr*, %struct.expr** %5, align 8
  %62 = getelementptr inbounds %struct.expr, %struct.expr* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 1
  %64 = load %struct.expr*, %struct.expr** %63, align 8
  %65 = load %struct.symbol*, %struct.symbol** %7, align 8
  %66 = call %struct.expr* @expr_trans_compare(%struct.expr* %64, i32 139, %struct.symbol* %65)
  store %struct.expr* %66, %struct.expr** %8, align 8
  %67 = load %struct.expr*, %struct.expr** %5, align 8
  %68 = getelementptr inbounds %struct.expr, %struct.expr* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load %struct.expr*, %struct.expr** %69, align 8
  %71 = load %struct.symbol*, %struct.symbol** %7, align 8
  %72 = call %struct.expr* @expr_trans_compare(%struct.expr* %70, i32 139, %struct.symbol* %71)
  store %struct.expr* %72, %struct.expr** %9, align 8
  %73 = load %struct.symbol*, %struct.symbol** %7, align 8
  %74 = icmp eq %struct.symbol* %73, @symbol_yes
  br i1 %74, label %75, label %79

75:                                               ; preds = %60
  %76 = load %struct.expr*, %struct.expr** %8, align 8
  %77 = load %struct.expr*, %struct.expr** %9, align 8
  %78 = call %struct.expr* @expr_alloc_two(i32 131, %struct.expr* %76, %struct.expr* %77)
  store %struct.expr* %78, %struct.expr** %5, align 8
  br label %79

79:                                               ; preds = %75, %60
  %80 = load %struct.symbol*, %struct.symbol** %7, align 8
  %81 = icmp eq %struct.symbol* %80, @symbol_no
  br i1 %81, label %82, label %86

82:                                               ; preds = %79
  %83 = load %struct.expr*, %struct.expr** %8, align 8
  %84 = load %struct.expr*, %struct.expr** %9, align 8
  %85 = call %struct.expr* @expr_alloc_two(i32 140, %struct.expr* %83, %struct.expr* %84)
  store %struct.expr* %85, %struct.expr** %5, align 8
  br label %86

86:                                               ; preds = %82, %79
  %87 = load i32, i32* %6, align 4
  %88 = icmp eq i32 %87, 128
  br i1 %88, label %89, label %92

89:                                               ; preds = %86
  %90 = load %struct.expr*, %struct.expr** %5, align 8
  %91 = call %struct.expr* @expr_alloc_one(i32 132, %struct.expr* %90)
  store %struct.expr* %91, %struct.expr** %5, align 8
  br label %92

92:                                               ; preds = %89, %86
  %93 = load %struct.expr*, %struct.expr** %5, align 8
  store %struct.expr* %93, %struct.expr** %4, align 8
  br label %157

94:                                               ; preds = %22
  %95 = load %struct.expr*, %struct.expr** %5, align 8
  %96 = getelementptr inbounds %struct.expr, %struct.expr* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 1
  %98 = load %struct.expr*, %struct.expr** %97, align 8
  %99 = load i32, i32* %6, align 4
  %100 = icmp eq i32 %99, 139
  %101 = zext i1 %100 to i64
  %102 = select i1 %100, i32 128, i32 139
  %103 = load %struct.symbol*, %struct.symbol** %7, align 8
  %104 = call %struct.expr* @expr_trans_compare(%struct.expr* %98, i32 %102, %struct.symbol* %103)
  store %struct.expr* %104, %struct.expr** %4, align 8
  br label %157

105:                                              ; preds = %22, %22, %22, %22, %22, %22
  %106 = load i32, i32* %6, align 4
  %107 = icmp eq i32 %106, 139
  br i1 %107, label %108, label %127

108:                                              ; preds = %105
  %109 = load %struct.symbol*, %struct.symbol** %7, align 8
  %110 = icmp eq %struct.symbol* %109, @symbol_yes
  br i1 %110, label %111, label %114

111:                                              ; preds = %108
  %112 = load %struct.expr*, %struct.expr** %5, align 8
  %113 = call %struct.expr* @expr_copy(%struct.expr* %112)
  store %struct.expr* %113, %struct.expr** %4, align 8
  br label %157

114:                                              ; preds = %108
  %115 = load %struct.symbol*, %struct.symbol** %7, align 8
  %116 = icmp eq %struct.symbol* %115, @symbol_mod
  br i1 %116, label %117, label %119

117:                                              ; preds = %114
  %118 = call %struct.expr* @expr_alloc_symbol(%struct.symbol* @symbol_no)
  store %struct.expr* %118, %struct.expr** %4, align 8
  br label %157

119:                                              ; preds = %114
  %120 = load %struct.symbol*, %struct.symbol** %7, align 8
  %121 = icmp eq %struct.symbol* %120, @symbol_no
  br i1 %121, label %122, label %126

122:                                              ; preds = %119
  %123 = load %struct.expr*, %struct.expr** %5, align 8
  %124 = call %struct.expr* @expr_copy(%struct.expr* %123)
  %125 = call %struct.expr* @expr_alloc_one(i32 132, %struct.expr* %124)
  store %struct.expr* %125, %struct.expr** %4, align 8
  br label %157

126:                                              ; preds = %119
  br label %146

127:                                              ; preds = %105
  %128 = load %struct.symbol*, %struct.symbol** %7, align 8
  %129 = icmp eq %struct.symbol* %128, @symbol_yes
  br i1 %129, label %130, label %134

130:                                              ; preds = %127
  %131 = load %struct.expr*, %struct.expr** %5, align 8
  %132 = call %struct.expr* @expr_copy(%struct.expr* %131)
  %133 = call %struct.expr* @expr_alloc_one(i32 132, %struct.expr* %132)
  store %struct.expr* %133, %struct.expr** %4, align 8
  br label %157

134:                                              ; preds = %127
  %135 = load %struct.symbol*, %struct.symbol** %7, align 8
  %136 = icmp eq %struct.symbol* %135, @symbol_mod
  br i1 %136, label %137, label %139

137:                                              ; preds = %134
  %138 = call %struct.expr* @expr_alloc_symbol(%struct.symbol* @symbol_yes)
  store %struct.expr* %138, %struct.expr** %4, align 8
  br label %157

139:                                              ; preds = %134
  %140 = load %struct.symbol*, %struct.symbol** %7, align 8
  %141 = icmp eq %struct.symbol* %140, @symbol_no
  br i1 %141, label %142, label %145

142:                                              ; preds = %139
  %143 = load %struct.expr*, %struct.expr** %5, align 8
  %144 = call %struct.expr* @expr_copy(%struct.expr* %143)
  store %struct.expr* %144, %struct.expr** %4, align 8
  br label %157

145:                                              ; preds = %139
  br label %146

146:                                              ; preds = %145, %126
  br label %156

147:                                              ; preds = %22
  %148 = load i32, i32* %6, align 4
  %149 = load %struct.expr*, %struct.expr** %5, align 8
  %150 = getelementptr inbounds %struct.expr, %struct.expr* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = load %struct.symbol*, %struct.symbol** %7, align 8
  %154 = call %struct.expr* @expr_alloc_comp(i32 %148, i32 %152, %struct.symbol* %153)
  store %struct.expr* %154, %struct.expr** %4, align 8
  br label %157

155:                                              ; preds = %22, %22, %22
  br label %156

156:                                              ; preds = %155, %22, %146
  store %struct.expr* null, %struct.expr** %4, align 8
  br label %157

157:                                              ; preds = %156, %147, %142, %137, %130, %122, %117, %111, %94, %92, %58, %20
  %158 = load %struct.expr*, %struct.expr** %4, align 8
  ret %struct.expr* %158
}

declare dso_local %struct.expr* @expr_alloc_symbol(%struct.symbol*) #1

declare dso_local %struct.expr* @expr_alloc_one(i32, %struct.expr*) #1

declare dso_local %struct.expr* @expr_alloc_two(i32, %struct.expr*, %struct.expr*) #1

declare dso_local %struct.expr* @expr_copy(%struct.expr*) #1

declare dso_local %struct.expr* @expr_alloc_comp(i32, i32, %struct.symbol*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
